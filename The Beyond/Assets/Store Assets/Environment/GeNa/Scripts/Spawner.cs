using System;
using UnityEngine;
using System.Collections.Generic;
using UnityEngine.Rendering;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace GeNa
{
    /// <summary>
    /// Core GeNa spawner class
    /// </summary>
    public class Spawner : MonoBehaviour
    {
        #region Spawner variables - public so that they can be accessed via editor - see documentation
        public string m_parentName = "GeNa Spawner";
        public bool m_mergeSpawns = true;
        public List<Prototype> m_spawnPrototypes = new List<Prototype>();

        //Spawn origin
        public Vector3 m_spawnOriginLocation = Vector3.zero;
        public Vector3 m_spawnOriginNormal = Vector3.up;
        public int     m_spawnOriginObjectID = int.MinValue;
        public bool    m_spawnOriginIsTerrain = false;
        public Bounds  m_spawnOriginBounds = new Bounds();
        public Transform m_spawnOriginGroundTransform = null;

        //Spawn algorithm 
        public Constants.LocationAlgorithm m_spawnAlgorithm = Constants.LocationAlgorithm.Organic;

        //Spawn controls
        public long m_minInstances = 1;
        public long m_maxInstances = 1;
        public long m_instancesSpawned = 0;
        public float m_seedThrowRange = 5f;
        public float m_seedThrowJitter = 1f;
        public float m_maxSpawnRange = 50f;
        public Constants.SpawnRangeShape m_spawnRangeShape = Constants.SpawnRangeShape.Circle;

        //Spawn criteria - based on similarity / variance from where you clicked
        public Constants.VirginCheckType m_critVirginCheckType = Constants.VirginCheckType.Point;
        public float m_critBoundsBorder = 0f;
        public bool m_critCheckHeight = true;
        public float m_critMinSpawnHeight = 50f;
        public float m_critHeightVariance = 30f;
        public bool m_critCheckSlope = true;
        public float m_critSlopeVariance = 30f;
        public bool m_critCheckTextures = false;
        public float m_critTextureStrength = 0f;
        public float m_critTextureVariance = 0.1f;
        public int m_critSelectedTextureIdx = 0;
        public string m_critSelectedTextureName = "";
        public int m_critMaxSelectedTexture = 1;
        public bool m_critCheckMask = false;
        public Constants.MaskType m_critMaskType = Constants.MaskType.Perlin;
        public Fractal m_critMaskFractal = new Fractal();
        public float m_critMaskFractalMidpoint = 0.5f;
        public float m_critMaskFractalRange = 0.5f;
        public Texture2D m_critMaskImage;
        public Heightmap m_critMaskImageData;
        public Heightmap m_critMaskAlphaData;
        public bool m_critMaskInvert = false;

        //Private local - per spawn - criteria
        private Vector3 m_critSpawnCentre = Vector3.zero;
        private float m_critMinHeight = 0f;
        private float m_critMaxHeight = 1000f;
        private float m_critMinSlope = 0f;
        private float m_critMaxSlope = 90f;
        private float m_critMinTextureStrength = 0f;
        private float m_critMaxTextureStrength = 1f;
        private float m_critMaskFractalMin = 0f;
        private float m_critMaskFractalMax = 1f;

        //Placement criteria
        public GeNa.Constants.RotationAlgorithm m_rotationAlgorithm = Constants.RotationAlgorithm.Ranged;
        public float m_rotationYOffsetXX = 0f;
        public float m_minRotationY = 0f;
        public float m_maxRotationY = 360f;
        public bool m_sameScale = true;
        public bool m_scaleToNearestInt = true;
        public float m_minScaleX = 0.7f;
        public float m_maxScaleX = 1.3f;
        public float m_minScaleY = 1f;
        public float m_maxScaleY = 1f;
        public float m_minScaleZ = 1f;
        public float m_maxScaleZ = 1f;
        public bool  m_useGravity = false;
        public bool m_enableRotationDragUpdate = false;
        public bool m_autoOptimise = true;
        public float m_maxSizeToOptimize = Constants.MaximumOptimisationSize;
        public float m_minProbeGroupDistance = Constants.MinimimProbeGroupDistance;
        public float m_minProbeDistance = Constants.MinimimProbeDistance;
        public bool m_autoProbe = true;

        //Gravity so
        public Gravity m_gravity;

        //Advanced settings
        public bool m_advUseLargeRanges = false;
        public bool m_advShowMouseOverHelp = true;
        public bool m_advShowDetailedHelp = true;
        public bool m_advForcePlaceAtClickLocation = true;
        public bool m_advAddColliderToSpawnedPrefabs = false;

        //Editor section view flags
        public bool m_showSpawnCriteria = false;
        public bool m_showPlacementCriteria = false;
        public bool m_showPrototypes = false;
        public bool m_showGizmos = false;
        public bool m_showAdvancedSettings = false;

        //Gizmo / visialisation related
        public bool m_needsVisualisationUpdate = true;
        public int m_maxVisualisationDimensions = 50;
        private float[,] m_fitnessArray = new float[1, 1];

        //Control the resolution of the bounds checker
        public float m_metersPerScan = 1f;
        public float m_metersPerScanVisualisation = 4f;

        //Tree manager - for tree related collisions
        private TreeManager m_treeManager = new TreeManager();

        //Probe manager - for light probe related queries
        private ProbeManager m_probeManager = new ProbeManager();
        private GameObject m_probeParent = null;

        //Last spawn object - for prefab spawner rotation
        public GameObject m_lastSpawnedObject = null;

        //List of lists of spawned game objects for undo all support
        public List<GameObject> m_prefabUndoList = new List<GameObject>();

        //Child spawners - used when childing children for chained spawns
        private List<Spawner> m_childSpawners = new List<Spawner>();

        //When last updated - used for gravity calculations
        private DateTime m_lastUpdated = DateTime.MinValue;

        //Defaults for key presses etc
        public GenaDefaults m_defaults;

        //Random number generation
        public int m_randomSeed = 1000;
        public GeNa.XorshiftPlus m_randomGenerator = new XorshiftPlus(1000);

        #endregion

        #region Pre-Spawning / spawner initialisation methods

        /// <summary>
        /// Set or create the gena defaults - GenaDefaults is a scriptable object allows people to override keys,
        /// do other startup here as well.
        /// </summary>
        /// <returns></returns>
        public void SetDefaults()
        {
            //Dont reset if we already have them
            if (m_defaults != null)
            {
                return;
            }

            #if UNITY_EDITOR
            string[] guids = AssetDatabase.FindAssets("GenaDefaults");
            for (int idx = 0; idx < guids.Length; idx++)
            {
                string path = AssetDatabase.GUIDToAssetPath(guids[idx]);
                if (path.Contains("GenaDefaults.asset"))
                {
                    m_defaults = AssetDatabase.LoadAssetAtPath<GenaDefaults>(path);
                }
            }
            #endif
            if (m_defaults == null)
            {
                m_defaults = ScriptableObject.CreateInstance<GenaDefaults>();
                #if UNITY_EDITOR
                AssetDatabase.CreateAsset(m_defaults, "Assets/GenaDefaults.asset");
                AssetDatabase.SaveAssets();
                AssetDatabase.Refresh();
                #endif
            }
            m_advShowDetailedHelp = m_defaults.m_showDetailedHelp;
            m_advShowMouseOverHelp = m_defaults.m_showTooltips;
            m_autoProbe = m_defaults.m_autoLightProbe;
            m_minProbeGroupDistance = m_defaults.m_minProbeGroupDistance;
            m_minProbeDistance = m_defaults.m_minProbeDistance;
            m_autoOptimise = m_defaults.m_autoOptimize;
            m_maxSizeToOptimize = m_defaults.m_maxOptimizeSize;
            m_randomSeed = UnityEngine.Random.Range(100, 999999);
            m_randomGenerator = new XorshiftPlus(m_randomSeed);
        }

        /// <summary>
        /// Set the location of the spawn and update the target ranges. Must be called prior to a spawn in order to ensure
        /// that the correct information will be used in order to control where the spawn will be applied. 
        /// </summary>
        /// <param name="groundObject">This is the object that will be treated as ground by the spawn.</param>
        /// <param name="location">The location of the spawn</param>
        /// <param name="normal">The normal of the spawn at that location</param>
        public void SetSpawnOriginAndUpdateRanges(Transform groundObject, Vector3 location, Vector3 normal)
        {
            m_spawnOriginLocation = location;
            m_spawnOriginNormal = normal;
            m_spawnOriginBounds = new Bounds(location, new Vector3(m_maxSpawnRange, 5000f, m_maxSpawnRange));
            m_spawnOriginGroundTransform = groundObject;
            if (groundObject != null)
            {
                m_spawnOriginObjectID = groundObject.GetInstanceID();
                if (groundObject.GetComponent<Terrain>() != null)
                {
                    m_spawnOriginIsTerrain = true;
                }
                else
                {
                    m_spawnOriginIsTerrain = false;
                }
            }
            else
            {
                m_spawnOriginObjectID = int.MinValue;
                m_spawnOriginIsTerrain = false;
            }

            //Pukc up the textures at this location and update them if there is nothing there
            if (m_critCheckTextures)
            {
                Terrain terrain = GetTerrain(m_spawnOriginLocation);
                if (terrain != null)
                {
                    Vector3 terrainLocalPos = terrain.transform.InverseTransformPoint(m_spawnOriginLocation);
                    Vector3 normalizedLocalPos =
                        new Vector3(Mathf.InverseLerp(0f, terrain.terrainData.size.x, terrainLocalPos.x),
                            Mathf.InverseLerp(0f, terrain.terrainData.size.y, terrainLocalPos.y),
                            Mathf.InverseLerp(0f, terrain.terrainData.size.z, terrainLocalPos.z));
                    float[,,] hms =
                        terrain.terrainData.GetAlphamaps(
                            (int)(normalizedLocalPos.x * (float)(terrain.terrainData.alphamapWidth - 1)),
                            (int)(normalizedLocalPos.z * (float)(terrain.terrainData.alphamapHeight - 1)), 1, 1);
                    m_critMaxSelectedTexture = hms.GetLength(2) - 1;
                    float max = 0f;
                    for (int idx = 0; idx <= m_critMaxSelectedTexture; idx++)
                    {
                        if (hms[0, 0, idx] > max)
                        {
                            max = hms[0, 0, idx];
                            m_critTextureStrength = max;
                            m_critSelectedTextureIdx = idx;
                        }
                    }
                    m_critSelectedTextureName =
                        terrain.terrainData.splatPrototypes[m_critSelectedTextureIdx].texture.name;
                }
                else
                {
                    m_critSelectedTextureName = "Missing terrain";
                }
            }
            //Update the tree & probe managers
            if (!Application.isPlaying)
            {
                m_treeManager.LoadTreesFromTerrain();
            }

            //Load image mask if we are using one
            if (m_critCheckMask && m_critMaskType == Constants.MaskType.Image)
            {
                if (m_critMaskImage != null)
                {
                    int width = m_critMaskImage.width;
                    int height = m_critMaskImage.height;
                    Color color;
                    m_critMaskImageData = new Heightmap(width, height);
                    m_critMaskAlphaData = new Heightmap(width, height);
                    for (int x = 0; x < width; x++)
                    {
                        for (int z = 0; z < height; z++)
                        {
                            //Color.RGBToHSV(m_critMaskImage.GetPixel(x, z), out h, out s, out v);
                            color = m_critMaskImage.GetPixel(x, z);
                            m_critMaskImageData[x, z] = (color.r * 255000000f) + (color.g * 255000f) + (color.b * 255f);
                            m_critMaskAlphaData[x, z] = color.a;
                        }
                    }
                }
            }

            //Perform the range calcs
            UpdateTargetSpawnerRanges();

            //Setup any child spawner dependencies
            UpdateChildSpawners();

            //Iterate through the children and pass this information on 
            foreach (Spawner spawner in m_childSpawners)
            {
                if (spawner != null)
                {
                    spawner.SetSpawnOriginAndUpdateRanges(groundObject, location, normal);
                }
            }
        }

        /// <summary>
        /// Update the spawner ranges that are used to target where the spawner will spawn. Assumes that primary settings have already been made.
        /// </summary>
        public void UpdateTargetSpawnerRanges()
        {
            m_critMinHeight = m_spawnOriginLocation.y - (m_critHeightVariance / 2f);
            if (m_critMinHeight < m_critMinSpawnHeight)
            {
                m_critMinHeight = m_critMinSpawnHeight;
            }
            m_critMaxHeight = m_spawnOriginLocation.y + (m_critHeightVariance / 2f);
            if (m_critMaxHeight < m_critMinHeight)
            {
                m_critMaxHeight = m_critMinHeight;
            }
            float slope = Vector3.Angle(Vector3.up, m_spawnOriginNormal);
            m_critMinSlope = Mathf.Clamp(slope - (m_critSlopeVariance / 2f), 0f, 90f);
            m_critMaxSlope = Mathf.Clamp(slope + (m_critSlopeVariance / 2f), 0f, 90f);
            m_critMinTextureStrength = Mathf.Clamp01(m_critTextureStrength - (m_critTextureVariance / 2f));
            m_critMaxTextureStrength = Mathf.Clamp01(m_critTextureStrength + (m_critTextureVariance / 2f));
            m_critMaskFractalMin = Mathf.Clamp01(m_critMaskFractalMidpoint - (m_critMaskFractalRange / 2f));
            m_critMaskFractalMax = Mathf.Clamp01(m_critMaskFractalMidpoint + (m_critMaskFractalRange / 2f));

            m_needsVisualisationUpdate = true;
        }

        /// <summary>
        /// Set the location for the spawn, but dont update the target ranges. Ensures that spawning is properly bounds checked from this location.
        /// </summary>
        /// <param name="location"></param>
        private void SetSpawnOrigin(Vector3 location)
        {
            m_spawnOriginLocation = location;
            if (m_spawnOriginIsTerrain)
            {
                Terrain terrain = GetTerrain(location);
                if (terrain != null)
                {
                    //Needed to handle the distance criterion
                    m_spawnOriginLocation.y = terrain.SampleHeight(location);
                }
            }
            m_spawnOriginBounds = new Bounds(location, new Vector3(m_maxSpawnRange, 5000f, m_maxSpawnRange));
        }

        /// <summary>
        /// Update the array used for visualisation. Edit mode function that does the hard work for visualisation.
        /// </summary>
        private void UpdateSpawnerVisualisation()
        {
            //Signal that we have been updated
            m_needsVisualisationUpdate = false;

            //Variables
            int x, z;
            Vector3 position = Vector3.zero;
            float halfSpawnRange = m_maxSpawnRange / 2f;
            Vector3 maxPosition = m_spawnOriginLocation + (Vector3.one * halfSpawnRange);
            Vector3 hitLocation = Vector3.zero;
            Vector3 hitNormal = Vector3.zero;
            float hitAlpha = 1f;
            Vector3 minExtents = Vector3.zero;

            //Build active proto list
            List<Prototype> protoList = new List<Prototype>();
            foreach (Prototype proto in m_spawnPrototypes)
            {
                if (proto.m_active == true)
                {
                    protoList.Add(proto);
                }
            }

            //Calculate steps and update array size to handle different dimensions
            int dimensions = (int)m_maxSpawnRange + 1;
            if (dimensions > m_maxVisualisationDimensions)
            {
                dimensions = m_maxVisualisationDimensions + 1;
            }
            float stepIncrement = m_maxSpawnRange / ((float)dimensions - 1f);
            if (dimensions != m_fitnessArray.GetLength(0))
            {
                m_fitnessArray = new float[dimensions, dimensions];
            }
            for (x = 0; x < dimensions; x++)
            {
                for (z = 0; z < dimensions; z++)
                {
                    m_fitnessArray[x, z] = float.MinValue;
                }
            }

            //Exit if nothing to do
            if (protoList.Count == 0)
            {
                return;
            }

            //Calculate extents if its bounds checked
            if (m_critVirginCheckType == Constants.VirginCheckType.Bounds)
            {
                float area = 0f;
                float minArea = 0f;
                Vector3 extents = Vector3.zero;

                for (int idx = 0; idx < m_spawnPrototypes.Count; idx++)
                {
                    extents = m_spawnPrototypes[idx].m_extents;
                    extents += new Vector3((m_critBoundsBorder + m_spawnPrototypes[idx].m_boundsBorder) * extents.x, (m_critBoundsBorder + m_spawnPrototypes[idx].m_boundsBorder) * extents.y, (m_critBoundsBorder + m_spawnPrototypes[idx].m_boundsBorder) * extents.z);
                    area = extents.x * extents.z;
                    if (minArea == 0f)
                    {
                        minArea = area;
                        minExtents = extents;
                    }
                    else if (area < minArea)
                    {
                        minArea = area;
                        minExtents = extents;
                    }
                }
            }

            //Timeout
            DateTime started = DateTime.Now;

            //Bounds border
            minExtents += new Vector3(m_critBoundsBorder * minExtents.x, m_critBoundsBorder * minExtents.y, m_critBoundsBorder * minExtents.z);

            //Iterate through and calculate the visualisation
            Prototype selectedPrototype = null;
            float rotation = 0f;
            if (ApproximatelyEqual(m_minRotationY, m_maxRotationY))
            {
                rotation = m_minRotationY;
            }
            
            for (x = 0, position.x = m_spawnOriginLocation.x - halfSpawnRange; position.x < maxPosition.x; x++, position.x += stepIncrement)
            {
                for (z = 0, position.z = m_spawnOriginLocation.z - halfSpawnRange; position.z < maxPosition.z; z++, position.z += stepIncrement)
                {
                    if (CheckLocationForSpawn(position, rotation, protoList, out selectedPrototype, out hitLocation, out hitNormal, out hitAlpha))
                    {
                        m_fitnessArray[x, z] = hitLocation.y;
                        if (m_critVirginCheckType == Constants.VirginCheckType.Bounds)
                        {
                            if (CheckBoundedLocationForSpawn(hitLocation, rotation, null, minExtents, true))
                            {
                                m_fitnessArray[x, z] = hitLocation.y;
                            }
                            else
                            {
                                m_fitnessArray[x, z] = float.MinValue;
                            }
                        }
                    }
                }
            }

            //Dynamically adjust visualiser resolution if it is really slow
            if ((DateTime.Now - started).TotalMilliseconds > 200)
            {
                double ms = (DateTime.Now - started).TotalMilliseconds;
                m_maxVisualisationDimensions = (int)((float)m_maxVisualisationDimensions * (200 / ms));
                if (m_maxVisualisationDimensions < 1)
                {
                    m_maxVisualisationDimensions = 1;
                }
            }
        }

        /// <summary>
        /// Iterate through any children and update the child spawner lists - needed to support childed spawning
        /// </summary>
        private void UpdateChildSpawners()
        {
            m_childSpawners.Clear();
            Spawner childSpawner = null;
            foreach (Transform child in transform)
            {
                childSpawner = child.gameObject.GetComponent<Spawner>();
                if (childSpawner != null)
                {
                    m_childSpawners.Add(childSpawner);
                    childSpawner.m_showGizmos = false;
                    childSpawner.UpdateChildSpawners();
                }
            }
        }

        #endregion

        #region Spawning methods

        /// <summary>
        /// Run a spawn instance across the entire target object
        /// </summary>
        public void SpawnGlobally()
        {
            //Work out the bounds of the environment
            float minX = float.NaN;
            float minY = float.NaN;
            float minZ = float.NaN;
            float maxX = float.NaN;
            float maxZ = float.NaN;

            if (m_spawnOriginIsTerrain)
            {
                foreach (Terrain terrain in Terrain.activeTerrains)
                {
                    if (float.IsNaN(minY))
                    {
                        minY = terrain.transform.position.y;
                        minX = terrain.transform.position.x;
                        minZ = terrain.transform.position.z;
                        maxX = minX + terrain.terrainData.size.x;
                        maxZ = minZ + terrain.terrainData.size.z;
                    }
                    else
                    {
                        if (terrain.transform.position.x < minX)
                        {
                            minX = terrain.transform.position.x;
                        }
                        if (terrain.transform.position.z < minZ)
                        {
                            minZ = terrain.transform.position.z;
                        }
                        if ((terrain.transform.position.x + terrain.terrainData.size.x) > maxX)
                        {
                            maxX = terrain.transform.position.x + terrain.terrainData.size.x;
                        }
                        if ((terrain.transform.position.z + terrain.terrainData.size.z) > maxZ)
                        {
                            maxZ = terrain.transform.position.z + terrain.terrainData.size.z;
                        }
                    }
                }
            }
            else
            {
                if (m_spawnOriginGroundTransform != null)
                {
                    Bounds b = new Bounds();
                    if (GetObjectBounds(m_spawnOriginGroundTransform.gameObject, ref b))
                    {
                        minX = b.min.x;
                        minY = m_spawnOriginGroundTransform.position.y;
                        minZ = b.min.z;
                        maxX = b.max.x;
                        maxZ = b.max.z;
                    }
                }
            }

            //Grab the original location
            Vector3 originalLocation = m_spawnOriginLocation;

            //Display a progress bar
            #if UNITY_EDITOR
            string displayName = string.Format("Global {0} spawn progress...", m_parentName);
            if (!Application.isPlaying)
            {
                EditorUtility.DisplayProgressBar("Spawning", displayName, 0f);
            }
            #endif

            //Get trees from terrain
            if (!Application.isPlaying)
            {
                m_treeManager.LoadTreesFromTerrain();
                if (m_autoProbe)
                {
                    m_probeManager.LoadProbesFromScene();
                    if (m_probeParent == null)
                    {
                        m_probeParent = GameObject.Find("GeNa Light Probes");
                        if (m_probeParent == null)
                        {
                            m_probeParent = new GameObject("GeNa Light Probes");
                        }
                    }
                }
            }

            //Step across the entire terrain and run a series of spawns across it
            bool cancelled = false;
            Vector3 newLocation = new Vector3(minX, minY, minZ);
            for (float x = minX + JitterAsPct(m_maxSpawnRange, 0.25f);
                x < maxX;
                x += JitterAsPct(m_maxSpawnRange, 0.25f))
            {
                for (float z = minZ + JitterAsPct(m_maxSpawnRange, 0.25f);
                    z < maxZ;
                    z += JitterAsPct(m_maxSpawnRange, 0.25f))
                {
                    newLocation.x = JitterAround(x, m_maxSpawnRange);
                    newLocation.z = JitterAround(z, m_maxSpawnRange);
                    Spawn(newLocation, true);

                    //Display a progress bar
                    #if UNITY_EDITOR
                    if (!Application.isPlaying)
                    {
                        if (EditorUtility.DisplayCancelableProgressBar("Spawning", displayName,
                            (x - minX)/(maxX - minX)))
                        {
                            Debug.LogWarning("Spawn cancelled by user.");
                            cancelled = true;
                            break;
                        }
                    }
                    #endif
                }
                if (cancelled)
                {
                    break;
                }
            }

            //Restore original location for visualisation
            SetSpawnOrigin(originalLocation);

            //Hide progress bar
            #if UNITY_EDITOR
            if (!Application.isPlaying)
            {
                EditorUtility.ClearProgressBar();
            }
            #endif
        }

        /// <summary>
        /// Run a spawn instance at this point in the terrain with the specified rotation
        /// </summary>
        /// <param name="location">Location to spawn at</param>
        /// <param name="rotation">Overall Y rotation to be spawned at</param>
        /// <param name="subSpawn">Set to true if this is a sub spawn</param>
        public void Spawn(Vector3 location, float rotation, bool subSpawn)
        {
            m_minRotationY = m_maxRotationY = rotation;
            Spawn(location, subSpawn);
        }

        /// <summary>
        /// Run a spawn instance at this point on the terrain
        /// </summary>
        /// <param name="location">Location to start from</param>
        /// <param name="subSpawn">Set to true if this is a sub spawn</param>
        public void Spawn(Vector3 location, bool subSpawn)
        {
            if (m_spawnPrototypes.Count == 0)
            {
                Debug.LogWarning("No prototypes to spawn.");
                return;
            }

            //Set the spawn origin
            SetSpawnOrigin(location);

            //Set location and normal
            float halfRange = m_maxSpawnRange / 2f;
            Vector3 newLocation = location;
            Vector3 hitLocation = location;
            float   hitAlpha = 1f;
            Vector3 minLocation = new Vector3(-halfRange, 0f, -halfRange);
            Vector3 maxLocation = new Vector3(halfRange, 0f, halfRange);
            Vector3 spawnOffset = minLocation;
            Vector3 spawnProgress = minLocation;
            spawnProgress.x -= m_seedThrowRange; //Will be fixed in first loop iteration
            Vector3 scaleMultiplier = Vector3.one;
            Vector3 extents = Vector3.zero;
            Vector3 hitNormal = m_spawnOriginNormal;
            Prototype selectedPrototype = null;

            //Iterate through until we have spawned the requested number of instances or exceeded a safety factor
            long currLoop = 0;
            long instancesSpawned = 0;
            long instancesToSpawn = m_randomGenerator.Next((int)m_minInstances, (int)m_maxInstances);
            long maxLoops = instancesToSpawn * 20;
            int currSpawnIdx = 0;
            float rotation = m_randomGenerator.Next(m_minRotationY, m_maxRotationY);
            GameObject spawnedGo = null;
            List<Vector3> spawnLocations = new List<Vector3>();
            List<Prototype> protoList = new List<Prototype>();
            List<GameObject> goList = new List<GameObject>();

            //Copy the active prototypes - dont want to waste spawn cycles on inactive prototypes
            foreach (Prototype proto in m_spawnPrototypes)
            {
                if (proto.m_active == true)
                {
                    protoList.Add(proto);
                }
            }

            //Exit if nothing to spawn
            if (protoList.Count == 0)
            {
                Debug.LogWarning("No active prototypes to spawn.");
                return;
            }

            //Increase the resolution of the physics system to improve collisions - only when in editor - dont want to mess with actual game
            float physicsContactOffset = Physics.defaultContactOffset;
            #if UNITY_5_4_OR_NEWER
            int physicsIterationCount = Physics.defaultSolverIterations;
            #else
            int physicsIterationCount = Physics.solverIterationCount;
            #endif
            if (!Application.isPlaying)
            {
                Physics.defaultContactOffset = 0.003f;
                #if UNITY_5_4_OR_NEWER
                Physics.defaultSolverIterations = 25;
                #else
                Physics.solverIterationCount = 25;
                #endif
            }

            //Load the trees - when a sub spawn this is done by higher level method
            if (!subSpawn && !Application.isPlaying)
            {
                m_treeManager.LoadTreesFromTerrain();
                if (m_autoProbe)
                {
                    m_probeManager.LoadProbesFromScene();
                    if (m_probeParent == null)
                    {
                        m_probeParent = GameObject.Find("GeNa Light Probes");
                        if (m_probeParent == null)
                        {
                            m_probeParent = new GameObject("GeNa Light Probes");
                        }
                    }
                }
            }

            //Update if we are every
            if (m_spawnAlgorithm == Constants.LocationAlgorithm.Every)
            {
                maxLoops = (long)((m_maxSpawnRange / m_seedThrowRange) + 1f);
                maxLoops *= maxLoops;
            }

            //Display a progress bar
#if UNITY_EDITOR
            bool displayProgress = (!Application.isPlaying) && (!subSpawn) && (instancesToSpawn > 200);
            string displayName = string.Format("Local {0} spawn progress...", m_parentName);
            if (displayProgress)
            {
                EditorUtility.DisplayCancelableProgressBar("Spawning", displayName, 0f);
            }
#endif

            //Now iterate until all instances spawned or spawnlimit exceeded
            for (; (instancesSpawned < instancesToSpawn) && (currLoop < maxLoops); currLoop++)
            {
                spawnedGo = null;

                //Select a prototype
                selectedPrototype = protoList[m_randomGenerator.Next(0, protoList.Count-1)];

                //Update rotation
                rotation = m_randomGenerator.Next(m_minRotationY, m_maxRotationY);

                //Update rotation based on last position and new position
                if (m_lastSpawnedObject != null && m_rotationAlgorithm != Constants.RotationAlgorithm.Ranged)
                {
                    if (m_rotationAlgorithm == Constants.RotationAlgorithm.LastSpawnClosest)
                    {
                        //See if we can get the closest point - thats what we will use as our from position
                        Collider[] c = m_lastSpawnedObject.GetComponentsInChildren<Collider>();
                        if (c.Length > 0)
                        {
                            Vector3 closest = new Vector3(float.MaxValue, float.MaxValue, float.MaxValue);
                            Vector3 tmpClosest = Vector3.zero;
                            for (int idx = 0; idx < c.Length; idx++)
                            {
                                tmpClosest = c[idx].ClosestPointOnBounds(newLocation);
                                if (Vector3.Distance(tmpClosest, newLocation) < Vector3.Distance(closest, newLocation))
                                {
                                    closest = tmpClosest;
                                }
                            }
                            Quaternion r = Quaternion.LookRotation(closest - newLocation);
                            rotation = r.eulerAngles.y;
                        }
                        else
                        {
                            Quaternion r = Quaternion.LookRotation(m_lastSpawnedObject.transform.position - newLocation);
                            rotation = r.eulerAngles.y;
                        }
                    }
                    else
                    {
                        Quaternion r = Quaternion.LookRotation(m_lastSpawnedObject.transform.position - newLocation);
                        rotation = r.eulerAngles.y;
                    }
                }

                //Set the new scale
                if (m_sameScale)
                {
                    float scale = m_randomGenerator.Next(m_minScaleX, m_maxScaleX);
                    scaleMultiplier = new Vector3(scale, scale, scale);
                }
                else
                {
                    scaleMultiplier = new Vector3(m_randomGenerator.Next(m_minScaleX, m_maxScaleX),
                        m_randomGenerator.Next(m_minScaleY, m_maxScaleY),
                        m_randomGenerator.Next(m_minScaleZ, m_maxScaleZ));
                }

                if (instancesSpawned == 0 && !subSpawn && m_advForcePlaceAtClickLocation)
                {
                    if (PaintPrototype(selectedPrototype, newLocation, hitNormal, hitAlpha, scaleMultiplier, rotation, true, out spawnedGo))
                    {
                        instancesSpawned++;
                    }
                    spawnLocations.Add(newLocation);
                }
                else
                {
                    //Create a spawn offset
                    if (m_spawnAlgorithm == Constants.LocationAlgorithm.Every)
                    {
                        //Incremented constrained spawn offset
                        if (spawnProgress.x < maxLocation.x)
                        {
                            spawnProgress.x += m_seedThrowRange;
                        }
                        else
                        {
                            spawnProgress.x = minLocation.x;
                            spawnProgress.z += m_seedThrowRange;
                            if (spawnProgress.z > maxLocation.z)
                            {
                                currLoop = maxLoops; //Exit out
                                continue;
                            }
                        }

                        //Apply jitter
                        spawnOffset.x = spawnProgress.x + (m_seedThrowJitter * m_randomGenerator.Next(-m_seedThrowRange, m_seedThrowRange));
                        spawnOffset.z = spawnProgress.z + (m_seedThrowJitter * m_randomGenerator.Next(-m_seedThrowRange, m_seedThrowRange));
                    }
                    else
                    {
                        //Random spawn offset
                        spawnOffset = new Vector3(m_randomGenerator.Next(-m_seedThrowRange, m_seedThrowRange), 0f, m_randomGenerator.Next(-m_seedThrowRange, m_seedThrowRange));
                    }

                    //Then work out new location
                    if (m_spawnAlgorithm == Constants.LocationAlgorithm.LastSpawn)
                    {
                        //Create new location
                        if (spawnLocations.Count > 0)
                        {
                            newLocation = spawnLocations[spawnLocations.Count - 1] + spawnOffset;
                        }
                        else
                        {
                            newLocation = location + spawnOffset;
                        }
                    }
                    else if (m_spawnAlgorithm == Constants.LocationAlgorithm.Organic)
                    {
                        //Create new location
                        if (spawnLocations.Count > 0)
                        {
                            newLocation = spawnLocations[currSpawnIdx++] + spawnOffset;
                            if (currSpawnIdx >= spawnLocations.Count)
                            {
                                currSpawnIdx = 0;
                            }
                        }
                        else
                        {
                            newLocation = location + spawnOffset;
                        }
                    }
                    else
                    {
                        //Centred or all
                        newLocation = location + spawnOffset;
                    }

                    //Update rotation based on last position and new position
                    if (m_lastSpawnedObject != null && m_rotationAlgorithm != Constants.RotationAlgorithm.Ranged)
                    {
                        if (m_rotationAlgorithm == Constants.RotationAlgorithm.LastSpawnClosest)
                        {
                            //See if we can get the closest point - thats what we will use as our from position
                            Collider[] c = m_lastSpawnedObject.GetComponentsInChildren<Collider>();
                            if (c.Length > 0)
                            {
                                Vector3 closest = new Vector3(float.MaxValue, float.MaxValue, float.MaxValue);
                                Vector3 tmpClosest = Vector3.zero;
                                for (int idx = 0; idx < c.Length; idx++)
                                {
                                    tmpClosest = c[idx].ClosestPointOnBounds(newLocation);
                                    if (Vector3.Distance(tmpClosest, newLocation) < Vector3.Distance(closest, newLocation))
                                    {
                                        closest = tmpClosest;
                                    }
                                }
                                Quaternion r = Quaternion.LookRotation(closest - newLocation);
                                rotation = r.eulerAngles.y + m_randomGenerator.Next(m_minRotationY, m_maxRotationY);
                            }
                            else
                            {
                                Quaternion r = Quaternion.LookRotation(m_lastSpawnedObject.transform.position - newLocation);
                                rotation = r.eulerAngles.y + m_randomGenerator.Next(m_minRotationY, m_maxRotationY);
                            }
                        }
                        else
                        {
                            Quaternion r = Quaternion.LookRotation(m_lastSpawnedObject.transform.position - newLocation);
                            rotation = r.eulerAngles.y + m_randomGenerator.Next(m_minRotationY, m_maxRotationY);
                        }
                    }

                    //First make initial check for spawn location and select a prototype
                    if (CheckLocationForSpawn(newLocation, rotation, protoList, out selectedPrototype, out hitLocation, out hitNormal, out hitAlpha) == true)
                    {
                        //Then choose path based on whether bounded or not
                        if (m_critVirginCheckType != Constants.VirginCheckType.Bounds)
                        {
                            if (PaintPrototype(selectedPrototype, hitLocation, hitNormal, hitAlpha, scaleMultiplier, rotation, false, out spawnedGo))
                            {
                                instancesSpawned++;
                                spawnLocations.Add(hitLocation);
                            }
                        }
                        else
                        {
                            extents = Vector3.Scale(selectedPrototype.m_extents, scaleMultiplier);
                            extents += new Vector3((m_critBoundsBorder + selectedPrototype.m_boundsBorder) * selectedPrototype.m_extents.x, (m_critBoundsBorder + selectedPrototype.m_boundsBorder) * selectedPrototype.m_extents.y, (m_critBoundsBorder + selectedPrototype.m_boundsBorder) * selectedPrototype.m_extents.z);
                            newLocation = hitLocation;
                            if (CheckBoundedLocationForSpawn(newLocation, rotation, selectedPrototype, extents, false) == true)
                            {
                                if (PaintPrototype(selectedPrototype, hitLocation, hitNormal, hitAlpha, scaleMultiplier, rotation, false, out spawnedGo))
                                {
                                    instancesSpawned++;
                                    spawnLocations.Add(hitLocation);
                                }
                            }
                        }
                    }
                }
                if (spawnedGo != null)
                {
                    goList.Add(spawnedGo);
                    m_lastSpawnedObject = spawnedGo;
                }

#if UNITY_EDITOR
                if (displayProgress && (instancesSpawned % 200 == 0))
                {
                    if (EditorUtility.DisplayCancelableProgressBar("Spawning", displayName, (float) instancesSpawned/(float)instancesToSpawn))
                    {
                        currLoop = maxLoops; //Exit out
                        continue;
                    }
                }
#endif
            }

            //Parent them
            if (goList.Count > 0)
            {
                GameObject parent = null;
                if (m_mergeSpawns)
                {
                    parent = GameObject.Find(m_parentName);
                }

                if (parent == null)
                {
                    parent = new GameObject(m_parentName);
                    parent.transform.position = location;
                }

                //Now add a bunch of stuff to it
                for (int idx = 0; idx < goList.Count; idx++)
                {
                    goList[idx].transform.parent = parent.transform;
                }
            }

            //Restore physics
            if (!Application.isPlaying)
            {
                Physics.defaultContactOffset = physicsContactOffset;
                #if UNITY_5_4_OR_NEWER
                Physics.defaultSolverIterations = physicsIterationCount;
                #else
                Physics.solverIterationCount = physicsIterationCount;
                #endif
            }

#if UNITY_EDITOR
            if (displayProgress)
            {
                EditorUtility.ClearProgressBar();
            }
#endif

            //Now call this on all the children
            foreach (Spawner spawner in m_childSpawners)
            {
                if (spawner != null && spawner.gameObject.activeInHierarchy)
                {
                    spawner.Spawn(location, rotation, true);
                }
            }
        }

        /// <summary>
        /// Load the light probes into memory
        /// </summary>
        public void LoadLightProbes()
        {
            #if UNITY_EDITOR
            if (!Application.isPlaying)
            {
                if (m_autoProbe)
                {
                    m_probeManager.LoadProbesFromScene();
                    if (m_probeParent == null)
                    {
                        m_probeParent = GameObject.Find("GeNa Light Probes");
                        if (m_probeParent == null)
                        {
                            m_probeParent = new GameObject("GeNa Light Probes");
                        }
                    }
                }
            }
            #endif
        }

        /// <summary>
        /// Instantiate the prototype at the location provided
        /// </summary>
        /// <param name="prototype">The prototype of be spawned</param>
        /// <param name="location">The location to spawn at</param>
        /// <param name="normal">The normal at the location to spawn at</param>
        /// <param name="alpha">The alpha value at the location - can be used to overide some aspects of the spawn</param>
        /// <param name="scaleFactor">The scale factor to apply to what has been spawned</param>
        /// <param name="rotation">The overal rotation to apply to what has been spawned</param>
        /// <param name="spawnAtLeastOneResource">Force at least one instance to be spawned</param>
        /// <param name="spawnedInstance">The spawned instance</param>
        /// <returns>True if something was spawned</returns>
        private bool PaintPrototype(Prototype prototype, Vector3 location, Vector3 normal, float alpha, Vector3 scaleFactor, float rotation, bool spawnAtLeastOneResource, out GameObject spawnedInstance)
        {
            //Zap out the spawned instance
            spawnedInstance = null;

            //Exit if no prototype supplied
            if (prototype == null)
            {
                Debug.Log("Missing prototype - aborting paint");
                return false;
            }

            GameObject go;
            List<GameObject> gos = new List<GameObject>();
            List<Gravity.GravityInstance> gis = new List<Gravity.GravityInstance>();
            Terrain terrain = null;
            Vector3 newLocation = location;
            Vector3 newNormal = normal;
            Vector3 terrainLocalPos = Vector3.zero;
            Vector3 normalizedLocalPos = Vector3.zero;
            bool spawnedSomething = false;

            //Update rotation to account for original spawn rotation
            rotation += prototype.m_forwardRotation;

            //Check for prototype level image maska alpha based overrides
            if (!spawnAtLeastOneResource && m_critMaskType == Constants.MaskType.Image)
            {
                //Invert alpha if necessary
                if (prototype.m_invertMaskedAlpha)
                {
                    alpha = 1f - alpha;
                }

                //Do a success check on the alpha
                if (prototype.m_successOnMaskedAlpha)
                {
                    if (m_randomGenerator.Next() > alpha)
                    {
                        return false;
                    }
                }

                //Modify scale based on alpha
                if (prototype.m_scaleOnMaskedAlpha)
                {
                    //Translate alpha to scale
                    float scale = prototype.m_scaleOnMaskedAlphaMin + ((prototype.m_scaleOnMaskedAlphaMax - prototype.m_scaleOnMaskedAlphaMin) * alpha);
                    if (ApproximatelyEqual(scale, 0f))
                    {
                        return false;
                    }
                    scaleFactor *= scale;
                }
            }

            foreach (Resource res in prototype.m_resources)
            {
                //Work out if we want to run a success failure check
                if (spawnAtLeastOneResource)
                {
                    //Run the success check only if we already have at least one thing spawned
                    if (gos.Count > 0)
                    {
                        if (m_randomGenerator.Next() > res.m_successRate)
                        {
                            continue;
                        }
                    }
                }
                else
                {
                    //Otherwise always run success check
                    if (m_randomGenerator.Next() > res.m_successRate)
                    {
                        continue;
                    }
                }

                newLocation = location + new Vector3(
                    m_randomGenerator.Next(res.m_minOffset.x, res.m_maxOffset.x),
                    m_randomGenerator.Next(res.m_minOffset.y, res.m_maxOffset.y),
                    m_randomGenerator.Next(res.m_minOffset.z, res.m_maxOffset.z));

                //Now handle its rotation around the pivot
                newLocation = RotatePointAroundPivot(newLocation, location, new Vector3(0f, rotation, 0f));

                //If terrain, then what is the terrain height and normal at this location - update accordingly
                if (m_spawnOriginIsTerrain)
                {
                    terrain = GetTerrain(newLocation);
                    if (terrain != null)
                    {
                        //Set the height based on height at that location
                        newLocation.y = terrain.SampleHeight(newLocation) + terrain.transform.position.y + m_randomGenerator.Next(res.m_minOffset.y, res.m_maxOffset.y);

                        //Set the normal based on normal at that location
                        terrainLocalPos = terrain.transform.InverseTransformPoint(newLocation);
                        normalizedLocalPos =
                            new Vector3(Mathf.InverseLerp(0f, terrain.terrainData.size.x, terrainLocalPos.x),
                                Mathf.InverseLerp(0f, terrain.terrainData.size.y, terrainLocalPos.y),
                                Mathf.InverseLerp(0f, terrain.terrainData.size.z, terrainLocalPos.z));
                        newNormal = terrain.terrainData.GetInterpolatedNormal(normalizedLocalPos.x, normalizedLocalPos.z);
                    }
                }
                else
                //Just copy originals along with height mod
                {
                    newLocation.y += m_randomGenerator.Next(res.m_minOffset.y, res.m_maxOffset.y);
                    newNormal = normal;
                }

                //Now instantiate it

                //Prefabs
                if (res.m_resourceType == Constants.ResourceType.Prefab)
                {
#if UNITY_EDITOR
                    go = PrefabUtility.InstantiatePrefab(res.m_prefab) as GameObject;
#else
                    go = Instantiate(res.m_prefab);
#endif
                    go.name = "_Sp_" + res.m_name;

                    if (res.m_conformToSlope == true)
                    {
                        go.name = "_Sp_" + res.m_name + " C";
                    }

                    go.transform.position = newLocation;
                    if (m_scaleToNearestInt == true)
                    {
                        go.transform.localScale = ScaleToNearestInt(Vector3.Scale(res.m_baseScale, scaleFactor));
                    }
                    else
                    {
                        go.transform.localScale = Vector3.Scale(res.m_baseScale, scaleFactor);
                    }

                    //Set its rotation
                    go.transform.rotation =
                        Quaternion.Euler(m_randomGenerator.Next(res.m_minRotation.x, res.m_maxRotation.x),
                            m_randomGenerator.Next(res.m_minRotation.y + rotation, res.m_maxRotation.y + rotation),
                            m_randomGenerator.Next(res.m_minRotation.z, res.m_maxRotation.z));
                    if (res.m_conformToSlope)
                    {
                        go.transform.rotation = Quaternion.FromToRotation(Vector3.up, newNormal) * go.transform.rotation;
                    }

                    //Set up for gravity if necessary
                    if (m_gravity != null)
                    {
#if UNITY_EDITOR
                        //Set it and its childrens flags to 'nothing' so that it drops properly
                        GameObjectUtility.SetStaticEditorFlags(go, 0);
                        for (int childIdx = go.transform.childCount - 1; childIdx > -1; childIdx--)
                        {
                            GameObjectUtility.SetStaticEditorFlags(go.transform.GetChild(childIdx).gameObject, 0);
                        }
#endif

                        if (!res.m_hasRootCollider)
                        {
                            BoxCollider bc = go.AddComponent<BoxCollider>();
                            bc.center = res.m_baseColliderCenter;
                            if (res.m_baseColliderUseConstScale)
                            {
                                bc.size = res.m_baseColliderScale * res.m_baseColliderConstScaleAmount;
                            }
                            else
                            {
                                bc.size = res.m_baseColliderScale;
                            }
                        }

                        if (!res.m_hasRigidBody)
                        {
                            go.AddComponent<Rigidbody>();
                        }

                        Gravity.GravityInstance gi = new Gravity.GravityInstance();
                        gi.m_resource = res;
                        gi.m_instance = go;
                        gi.m_startPosition = go.transform.position;
                        gi.m_startRotation = go.transform.rotation.eulerAngles;
                        gis.Add(gi);
                    }
                    else
                    {
                        //Handle optimisation and flags
                        AutoOptimiseGameObject(res, go);

                        //Handle light probes
                        AutoProbeGameObject(res, go);
                    }
                    gos.Add(go);

                    res.m_instancesSpawned++;
                    spawnedSomething = true;
                }
                //Terrain trees
                else if (res.m_resourceType == Constants.ResourceType.TerrainTree)
                {
                    if (terrain != null && res.m_terrainProtoIdx < terrain.terrainData.treePrototypes.Length)
                    {
                        TreeInstance t = new TreeInstance();
                        t.prototypeIndex = res.m_terrainProtoIdx;
                        t.position = normalizedLocalPos;
                        if (m_scaleToNearestInt == true)
                        {
                            t.widthScale = Mathf.Ceil(scaleFactor.x);
                            t.heightScale = Mathf.Ceil(scaleFactor.y);
                        }
                        else
                        {
                            t.widthScale = scaleFactor.x;
                            t.heightScale = scaleFactor.y;
                        }
                        rotation += m_randomGenerator.Next(res.m_minRotation.y + rotation, res.m_maxRotation.y + rotation);
                        t.rotation = rotation * (Mathf.PI / 180f); //In radians
                        t.color = Color.white;
                        t.lightmapColor = Color.white;
                        terrain.AddTreeInstance(t);

                        //Add into the tree manager
                        m_treeManager.AddTree(newLocation, t.prototypeIndex);

                        res.m_instancesSpawned++;
                        spawnedSomething = true;
                    }
                }
                //Terrain grass
                else
                {
                    if (terrain != null && res.m_terrainProtoIdx < terrain.terrainData.detailPrototypes.Length)
                    {
                        int x = (int)(normalizedLocalPos.x * (float)(terrain.terrainData.detailWidth - 1));
                        int z = (int)(normalizedLocalPos.z * (float)(terrain.terrainData.detailHeight - 1));
                        terrain.terrainData.SetDetailLayer(x, z, res.m_terrainProtoIdx,
                            new int[1, 1] { { (int)m_randomGenerator.Next(res.m_minScale.x * 16f, res.m_maxScale.x * 16f) } });
                        res.m_instancesSpawned++;
                        spawnedSomething = true;
                    }
                }
            }

            //Pass gravity instances to the gravity object for tracking
            if (m_gravity != null)
            {
                m_gravity.AddInstances(gis);
            }

            if (gos.Count == 1)
            {
                spawnedInstance = gos[0];
                m_prefabUndoList.Add(spawnedInstance);
            }
            else if (gos.Count > 1)
            {
                go = new GameObject(prototype.m_name);
                go.transform.position = location;
                foreach (GameObject g in gos)
                {
                    g.transform.parent = go.transform;
                }
                //Add a sphere collider - this enables bounds radius to be honoured
                if (m_advAddColliderToSpawnedPrefabs == true)
                {
                    //Add the collider to the parent
                    SphereCollider sc = go.AddComponent<SphereCollider>();
                    Vector3 sff = Vector3.Scale(prototype.m_extents, scaleFactor);
                    sc.radius = Mathf.Max(sff.x, sff.z);

                    //Add a disable on awake to stop them from influencing game play
                    go.AddComponent<DisableColliderOnAwake>();

                    #if UNITY_EDITOR
                    //Make it navigation static
                    GameObjectUtility.SetStaticEditorFlags(go, StaticEditorFlags.NavigationStatic);
                    #endif
                }
                spawnedInstance = go;
                m_prefabUndoList.Add(spawnedInstance);
            }

            //Update counters
            if (spawnedSomething)
            {
                prototype.m_instancesSpawned++;
                m_instancesSpawned++;
            }

            //And let caller know we spawned something
            return spawnedSomething;
        }

        /// <summary>
        /// Check if the spawned game object can be optimised
        /// </summary>
        /// <param name="resource">The type of resource this game object is an instance of</param>
        /// <param name="go">The game object being checked</param>
        /// <returns>True if it can be optimised, false otherwise</returns>
        private bool CanOptimiseGameObject(Resource resource, GameObject go)
        {
            //Check if spawner optimisation switched off
            if (m_autoOptimise == false)
            {
                return false;
            }

            //Check force optimise flag
            if (resource.m_flagForceOptimise == true)
            {
                return true;
            }

            //Check for can optimise flag
            if (resource.m_flagCanBeOptimised == false)
            {
                return false;
            }

            //Work out size to determine if to auto optimise
            Vector3 newSize = Vector3.Scale(resource.m_baseSize, go.transform.localScale);
            if (newSize.x < m_maxSizeToOptimize && newSize.y < m_maxSizeToOptimize && newSize.z < m_maxSizeToOptimize)
            {
                return true;
            }

            //Ok, we are too small
            return false;
        }

        /// <summary>
        /// Optimise this game object based on spawner and resource settings 
        /// </summary>
        /// <param name="resource">The resource that this game object is an instance of</param>
        /// <param name="go">The game object being optimised</param>
        private void OptimiseGameObject(Resource resource, GameObject go)
        {
#if UNITY_EDITOR
            //If there is are any mesh renderers, then set blend probes on, lightprobes need them to work
            MeshRenderer[] renderers = go.GetComponentsInChildren<MeshRenderer>();
            for (int renderIdx = 0; renderIdx < renderers.Length; renderIdx++)
            {
#if UNITY_5_4_OR_NEWER
                renderers[renderIdx].lightProbeUsage = LightProbeUsage.BlendProbes;
#endif
                if (resource.m_flagIsOutdoorObject)
                {
                    renderers[renderIdx].reflectionProbeUsage = ReflectionProbeUsage.BlendProbesAndSkybox;
                }
                else
                {
                    renderers[renderIdx].reflectionProbeUsage = ReflectionProbeUsage.BlendProbes;
                }
            }

            //Then see if we can optimise the editor flags
            StaticEditorFlags flag = 0;

            //Mark everything as static as possible if not moving
            if (!resource.m_flagMovingObject)
            {
                flag |= StaticEditorFlags.BatchingStatic;
                flag |= StaticEditorFlags.OccludeeStatic;
                flag |= StaticEditorFlags.OccluderStatic;
                flag |= StaticEditorFlags.NavigationStatic;
                flag |= StaticEditorFlags.OffMeshLinkGeneration;
                flag |= StaticEditorFlags.ReflectionProbeStatic;
            }

            //And do it to the game object and all its children
            SetGoFlags(go, flag);
#endif
        }

        /// <summary>
        /// Handles optimisation and flag settings for the sepcified game object - editor mode only
        /// </summary>
        /// <param name="resource">The resource this game object is an instance of</param>
        /// <param name="go"></param>
        public void AutoOptimiseGameObject(Resource resource, GameObject go)
        {
#if UNITY_EDITOR
            if (!CanOptimiseGameObject(resource, go))
            {
                //Non optimised - set the flags as specified in its settings
                StaticEditorFlags flag = 0;
                flag |= resource.m_flagBatchingStatic ? StaticEditorFlags.BatchingStatic : flag;
                flag |= resource.m_flagOccludeeStatic ? StaticEditorFlags.OccludeeStatic : flag;
                flag |= resource.m_flagOccluderStatic ? StaticEditorFlags.OccluderStatic : flag;
                flag |= resource.m_flagLightmapStatic ? StaticEditorFlags.LightmapStatic : flag;
                flag |= resource.m_flagNavigationStatic ? StaticEditorFlags.NavigationStatic : flag;
                flag |= resource.m_flagOffMeshLinkGeneration ? StaticEditorFlags.OffMeshLinkGeneration : flag;
                flag |= resource.m_flagReflectionProbeStatic ? StaticEditorFlags.ReflectionProbeStatic : flag;

                //And do same to game object children
                SetGoFlags(go, flag);
            }
            else
            {
                OptimiseGameObject(resource, go);
            }
#endif
        }

        /// <summary>
        /// Return true if this game object could potentially have a light probe added
        /// </summary>
        /// <param name="resource">Resource the game object is an instance of</param>
        /// <param name="go">The game object</param>
        /// <returns></returns>
        private bool CanProbeGameObject(Resource resource, GameObject go)
        {
            if (m_autoProbe != true)
            {
                return false;
            }

            if (Application.isPlaying == true)
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// Try and add light probes to this game object - but only if area constraints are met
        /// </summary>
        /// <param name="resource">Resource being probed</param>
        /// <param name="go">Game object being probed</param>
        private void ProbeGameObject(Resource resource, GameObject go)
        {
#if UNITY_EDITOR
            bool canProbe = false;
            LightProbeGroup lpg = GetOrCreateNearestProbeGroup(go.transform.position, out canProbe);
            if (canProbe == true)
            {
                Vector3 newSize = Vector3.Scale(resource.m_baseSize, go.transform.localScale);
                List<Vector3> probePositions = new List<Vector3>(lpg.probePositions);
                Vector3 position = go.transform.position - lpg.transform.position; //Translate to local space relative to lpg
                position += new Vector3(0f, 0.5f, 0f);
                probePositions.Add(position);
                position += new Vector3(0f, newSize.y, 0f);
                probePositions.Add(position);
                position += new Vector3(0f, 5f, 0f);
                probePositions.Add(position);
                lpg.probePositions = probePositions.ToArray();
                m_probeManager.AddProbe(go.transform.position, lpg);
            }
#endif
        }

        /// <summary>
        /// Return probe group with the nearest probe to the given position, or create a new one
        /// </summary>
        /// <param name="position">Position to check for in world coordinates</param>
        /// <param name="canAddNewProbes">Returns whether or not can add new probes at this location</param>
        /// <returns>Nearest probe group or null</returns>
        private LightProbeGroup GetOrCreateNearestProbeGroup(Vector3 position, out bool canAddNewProbes)
        {
            List<LightProbeGroup> probeGroups = m_probeManager.GetProbeGroups(position, m_minProbeDistance);
            if (probeGroups.Count != 0)
            {
                canAddNewProbes = false;
                return probeGroups[0];
            }
            else
            {
                canAddNewProbes = true;
                probeGroups = m_probeManager.GetProbeGroups(position, m_minProbeGroupDistance);
                if (probeGroups.Count != 0)
                {
                    return probeGroups[0];
                }
                else
                {
                    //Create new probe group and return it
                    GameObject probeGo = new GameObject(string.Format("Light Probe Group {0:0}x {1:0}z", position.x, position.z));
                    probeGo.transform.position = position;
                    if (m_probeParent == null)
                    {
                        m_probeParent = GameObject.Find("GeNa Light Probes");
                        if (m_probeParent == null)
                        {
                            m_probeParent = new GameObject("GeNa Light Probes");
                        }
                    }
                    probeGo.transform.parent = m_probeParent.transform;
                    LightProbeGroup lpg = probeGo.AddComponent<LightProbeGroup>();
                    lpg.probePositions = new Vector3[0];
                    return lpg;
                }
            }
        }

        /// <summary>
        /// Automatically handle light probing for this game object - editor mode only
        /// </summary>
        /// <param name="resource">Resource the game object is an instance of</param>
        /// <param name="go">The game object being probed</param>
        public void AutoProbeGameObject(Resource resource, GameObject go)
        {
#if UNITY_EDITOR
            if (CanProbeGameObject(resource, go))
            {
                ProbeGameObject(resource, go);
            }
#endif
        }


        /// <summary>
        /// Set the editor flags on the game object and all its children (recursively)
        /// </summary>
        /// <param name="go">Game object to set flags on</param>
        /// <param name="flags">Flags to set</param>
#if UNITY_EDITOR
        private void SetGoFlags(GameObject go, StaticEditorFlags flags)
        {
            //Handle rubbish
            if (go == null)
            {
                return;
            }
            //Set on this game object
            GameObjectUtility.SetStaticEditorFlags(go, flags);

            //Do same for all child game objects
            for (int childIdx = 0; childIdx < go.transform.childCount; childIdx++)
            {
                SetGoFlags(go.transform.GetChild(childIdx).gameObject, flags);
            }
        }
#endif

        /// <summary>
        /// Check a location to see if it can be spawned in
        /// </summary>
        /// <param name="location">The location the be checked</param>
        /// <param name="rotation">The Y rotation of the prototype be checked</param>
        /// <param name="prototypes">The list of protoypes we have to choose from - assumed to be active</param>
        /// <param name="selectedPrototype">The protoype what was chose for spawning</param>
        /// <param name="hitLocation">The location of the spot the colision occurred</param>
        /// <param name="hitNormal">The normal of the spot the colision occurred</param>
        /// <param name="hitAlhpaMask">The alpha mask value of the spot the colision occurred</param>
        /// <returns>True if the location is ok to spawn in</returns>
        private bool CheckLocationForSpawn(Vector3 location, float rotation, List<Prototype> prototypes, out Prototype selectedPrototype, out Vector3 hitLocation, out Vector3 hitNormal, out float hitAlpha)
        {
            //Setup output
            selectedPrototype = null;
            hitLocation = location;
            hitNormal = Vector3.up;
            hitAlpha = 0f;

            //Select initial spawned resource
            if (prototypes.Count > 0)
            {
                //Select the prototype we will check - might be overridden further down in the mask tests
                selectedPrototype = prototypes[m_randomGenerator.Next(0, prototypes.Count-1)];
            }
            else
            {
                //Cant spawn if no resources
                return false;
            }

            //Lift the ray check point slightly as we may already be on the ground
            Ray ray = new Ray(new Vector3(location.x, location.y + 10000f, location.z), Vector3.down);
            RaycastHit hitInfo;
            if (Physics.Raycast(ray, out hitInfo, 20000f))
            {
                //Assign the output values
                hitLocation = hitInfo.point;
                hitNormal = hitInfo.normal;

                //Check range
                if (m_spawnRangeShape == Constants.SpawnRangeShape.Circle)
                {
                    if (Vector3.Distance(m_spawnOriginLocation, hitLocation) > (m_maxSpawnRange / 2f))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!m_spawnOriginBounds.Contains(hitLocation))
                    {
                        return false;
                    }
                }

                //Check height
                if (m_critCheckHeight == true)
                {
                    if (hitLocation.y < m_critMinHeight || hitLocation.y > m_critMaxHeight)
                    {
                        return false;
                    }
                }

                //Check slope
                if (m_critCheckSlope == true)
                {
                    float slope = Vector3.Angle(Vector3.up, hitNormal);
                    if (slope < m_critMinSlope || slope > m_critMaxSlope)
                    {
                        return false;
                    }
                }

                //Check mask - may result in a different prototype being selected
                if (m_critCheckMask == true)
                {
                    if (m_critMaskType != Constants.MaskType.Image)
                    {
                        float value = m_critMaskFractal.GetNormalisedValue(100000f + hitLocation.x, 100000f + hitLocation.z);
                        if (m_critMaskInvert == true)
                        {
                            if (value >= m_critMaskFractalMin && value <= m_critMaskFractalMax)
                            {
                                return false;
                            }
                        }
                        else
                        {
                            if (value < m_critMaskFractalMin || value > m_critMaskFractalMax)
                            {
                                return false;
                            }
                        }
                    }
                    else
                    {
                        if (m_critMaskImageData != null && m_critMaskImageData.HasData())
                        {
                            //Need to rotate the image mask to remain consistent with overall spawm rotation
                            Vector3 newLocation = RotatePointAroundPivot(hitLocation, m_spawnOriginLocation, new Vector3(0f, 180f - rotation, 0f));
                            float xN = ((m_spawnOriginLocation.x - newLocation.x) / m_maxSpawnRange) + 0.5f;
                            float zN = ((m_spawnOriginLocation.z - newLocation.z) / m_maxSpawnRange) + 0.5f;

                            //Drop out if out of bounds
                            if (xN < 0f || xN >= 1f || zN < 0f || zN > 1f)
                            {
                                return false;
                            }

                            //Grab the alpha at this point
                            hitAlpha = m_critMaskAlphaData[xN, zN];

                            //Recreate the colour at this point in the map
                            float v = m_critMaskImageData[xN, zN];
                            Color c = new Color();
                            c.b = v % 1000f;
                            v -= c.b;
                            v /= 1000f;
                            c.b /= 255f;
                            c.g = v % 1000f;
                            v -= c.g;
                            v /= 1000f;
                            c.g /= 255f;
                            c.r = v;
                            c.r /= 255f;

                            //Build a cut down list of prototypes that can match this colour
                            Prototype proto;
                            List<Prototype> newProtoList = new List<Prototype>();
                            for (int idx = 0; idx < prototypes.Count; idx++)
                            {
                                proto = prototypes[idx];
                                if (RGBDifference(c, proto.m_imageFilterColour) < ((1f - proto.m_imageFilterFuzzyMatch) * 100f))
                                {
                                    newProtoList.Add(proto);
                                }
                            }

                            //And exit false if nothing matches
                            if (newProtoList.Count == 0)
                            {
                                selectedPrototype = null;
                                return false;
                            }

                            //Further refine this list for alpha success when it has been chosen
                            for (int idx = 0; idx < newProtoList.Count;)
                            {
                                if (newProtoList[idx].m_successOnMaskedAlpha == true)
                                {
                                    if (!newProtoList[idx].m_invertMaskedAlpha)
                                    {
                                        if (ApproximatelyEqual(hitAlpha, 0f))
                                        {
                                            newProtoList.RemoveAt(idx);
                                            continue;
                                        }
                                    }
                                    else
                                    {
                                        if (ApproximatelyEqual(1f - hitAlpha, 0f))
                                        {
                                            newProtoList.RemoveAt(idx);
                                            continue;
                                        }
                                    }
                                }
                                idx++;
                            }

                            //Then exit if no resources left
                            if (newProtoList.Count == 0)
                            {
                                selectedPrototype = null;
                                return false;
                            }

                            //Select the prototype we will use from whats left
                            selectedPrototype = newProtoList[m_randomGenerator.Next(0, newProtoList.Count-1)];
                        }
                    }
                }

                //Get the terrain if we are a hit on terrain, and store it for later
                Terrain terrain = null;
                if (hitInfo.collider is TerrainCollider)
                {
                    terrain = hitInfo.transform.GetComponent<Terrain>();
                }

                //Virgin is 'when we collide with ourselves', except for terrain, in which it is 'when we collide with ourselves, and its not a tree'
                if (m_critVirginCheckType != Constants.VirginCheckType.None)
                {
                    //If the original was a terrain, then we must have any terrain, or fail
                    if (m_spawnOriginIsTerrain)
                    {
                        //If we started on terrain, and are no longer on terrain, then exit false
                        if (terrain == null)
                        {
                            return false;
                        }
                        //Use the tree manager to do hits on trees
                        if (m_treeManager.Count(hitLocation, 0.5f) > 0)
                        {
                            return false;
                        }
                    }
                    //Otherwise we have to hit the original object to be considered virgin
                    else
                    {
                        //If we hit something else then we are not virgin, except when its terrain, as we want to spawn across all terrains
                        if (hitInfo.transform.GetInstanceID() != m_spawnOriginObjectID)
                        {
                            return false;
                        }
                    }
                }

                //Do the texture test
                if (m_critCheckTextures == true)
                {
                    if (terrain != null)
                    {
                        Vector3 terrainLocalPos = terrain.transform.InverseTransformPoint(hitLocation);
                        Vector3 normalizedLocalPos =
                            new Vector3(Mathf.InverseLerp(0f, terrain.terrainData.size.x, terrainLocalPos.x),
                                Mathf.InverseLerp(0f, terrain.terrainData.size.y, terrainLocalPos.y),
                                Mathf.InverseLerp(0f, terrain.terrainData.size.z, terrainLocalPos.z));
                        float[,,] hms =
                            terrain.terrainData.GetAlphamaps(
                                (int)(normalizedLocalPos.x * (float)(terrain.terrainData.alphamapWidth - 1)),
                                (int)(normalizedLocalPos.z * (float)(terrain.terrainData.alphamapHeight - 1)), 1, 1);
                        if (hms.GetLength(2) - 1 < m_critSelectedTextureIdx)
                        {
                            return false;
                        }
                        if (hms[0, 0, m_critSelectedTextureIdx] < m_critMinTextureStrength ||
                            hms[0, 0, m_critSelectedTextureIdx] > m_critMaxTextureStrength)
                        {
                            return false;
                        }
                    }
                }

                //Ok, all tests passed, return true
                return true;
            }

            //Failed hit test, return false
            return false;
        }

        /// <summary>
        /// Check a bounded location to see if it can be spawned in - assumes crit check type is bounds
        /// </summary>
        /// <param name="location">The location the be checked</param>
        /// <param name="rotation">The Y rotation of the prototype be checked</param>
        /// <param name="prototype">The prototype that has been selected</param>
        /// <param name="extents">The extents of the area to checked</param>
        /// <param name="visualising">If this is a check for visualisation - will lower the resolution and cpu overhead</param>
        /// <returns>True if the location is ok to spawn in</returns>
        private bool CheckBoundedLocationForSpawn(Vector3 location, float rotation, Prototype prototype, Vector3 extents, bool visualising)
        {
            //First things first - do a extents based tree collision check - will bypass a bunch of other expensive operations
            if (m_spawnOriginIsTerrain)
            {
                //Use the tree manager to do approximate hits
                if (m_treeManager.Count(location, Mathf.Max(extents.x, extents.z)) > 0)
                {
                    return false;
                }
            }

            //Then iterate over the bounded area and check other criteria
            float xIncrement = m_metersPerScan;
            float zIncrement = m_metersPerScan;
            if (visualising)
            {
                xIncrement = m_metersPerScanVisualisation;
                zIncrement = m_metersPerScanVisualisation;
            }
            Vector3 checkLocation = new Vector3(location.x - extents.x, location.y + 10000f, location.z - extents.z);
            Vector3 endLocation = new Vector3(location.x + extents.x, location.y + 10000f, location.z + extents.z);
            Terrain terrain = null;

            //Iterate across the domain and run the ray casts
            for (checkLocation.x = location.x - extents.x; checkLocation.x < endLocation.x; checkLocation.x += xIncrement)
            {
                for (checkLocation.z = location.z - extents.z; checkLocation.z < endLocation.z; checkLocation.z += zIncrement)
                {
                    //Lift the ray check point slightly as we may already be on the ground
                    Ray ray = new Ray(checkLocation, Vector3.down);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 20000f))
                    {
                        //Do the height test
                        if (m_critCheckHeight == true)
                        {
                            if (hitInfo.point.y < m_critMinHeight || hitInfo.point.y > m_critMaxHeight)
                            {
                                return false;
                            }
                        }

                        //Do the slope test
                        if (m_critCheckSlope == true)
                        {
                            float slope = Vector3.Angle(Vector3.up, hitInfo.normal);
                            if (slope < m_critMinSlope || slope > m_critMaxSlope)
                            {
                                return false;
                            }
                        }

                        //Get the terrain if we are a hit on terrain, and store it for later
                        terrain = null;
                        if (hitInfo.collider is TerrainCollider)
                        {
                            terrain = hitInfo.transform.GetComponent<Terrain>();
                        }

                        //If the original was a terrain, then we must have any terrain, or fail
                        if (m_spawnOriginIsTerrain)
                        {
                            if (terrain == null)
                            {
                                return false;
                            }
                        }
                        //Otherwise we have to hit the original object to be considered virgin
                        else
                        {
                            //If we hit something else then we are not virgin, except when its terrain, as we want to spawn across all terrains
                            if (hitInfo.transform.GetInstanceID() != m_spawnOriginObjectID)
                            {
                                return false;
                            }
                        }

                        //Check mask
                        if (m_critCheckMask == true && m_critMaskType == Constants.MaskType.Image && prototype != null && prototype.m_constrainWithinMaskedBounds)
                        {
                            if (m_critMaskImageData != null && m_critMaskImageData.HasData())
                            {
                                //Need to rotate the image mask to remain consistent with overall spawn rotation
                                Vector3 newLocation = RotatePointAroundPivot(hitInfo.point, m_spawnOriginLocation, new Vector3(0f, 180f - rotation, 0f));
                                float xN = ((m_spawnOriginLocation.x - newLocation.x) / m_maxSpawnRange) + 0.5f;
                                float zN = ((m_spawnOriginLocation.z - newLocation.z) / m_maxSpawnRange) + 0.5f;

                                //Drop out if out of bounds
                                if (xN < 0f || xN >= 1f || zN < 0f || zN > 1f)
                                {
                                    return false;
                                }

                                float v = m_critMaskImageData[xN, zN];
                                Color c = new Color();
                                c.b = v % 1000f;
                                v -= c.b;
                                v /= 1000f;
                                c.b /= 255f;
                                c.g = v % 1000f;
                                v -= c.g;
                                v /= 1000f;
                                c.g /= 255f;
                                c.r = v;
                                c.r /= 255f;

                                //Check the colour match
                                if (RGBDifference(c, prototype.m_imageFilterColour) > ((1f - prototype.m_imageFilterFuzzyMatch) * 100f))
                                {
                                    return false;
                                }

                                //Check the alpha success match
                                if (prototype.m_successOnMaskedAlpha == true)
                                {
                                    float hitAlpha = m_critMaskAlphaData[xN, zN];
                                    if (!prototype.m_invertMaskedAlpha)
                                    {
                                        if (ApproximatelyEqual(hitAlpha, 0f))
                                        {
                                            return false;
                                        }
                                    }
                                    else
                                    {
                                        if (ApproximatelyEqual(1f - hitAlpha, 0f))
                                        {
                                            return false;
                                        }
                                    }
                                }
                            }
                        }

                        //Do the texture test
                        if (m_critCheckTextures == true)
                        {
                            //Introduce a random sampling for performance
                            if (terrain != null && UnityEngine.Random.Range(0, 5) == 1)
                            {
                                Vector3 terrainLocalPos = terrain.transform.InverseTransformPoint(hitInfo.point);
                                Vector3 normalizedLocalPos =
                                    new Vector3(Mathf.InverseLerp(0f, terrain.terrainData.size.x, terrainLocalPos.x),
                                        Mathf.InverseLerp(0f, terrain.terrainData.size.y, terrainLocalPos.y),
                                        Mathf.InverseLerp(0f, terrain.terrainData.size.z, terrainLocalPos.z));
                                float[,,] hms =
                                    terrain.terrainData.GetAlphamaps(
                                        (int)(normalizedLocalPos.x * (float)(terrain.terrainData.alphamapWidth - 1)),
                                        (int)(normalizedLocalPos.z * (float)(terrain.terrainData.alphamapHeight - 1)), 1,
                                        1);
                                if (hms.GetLength(2) - 1 < m_critSelectedTextureIdx)
                                {
                                    return false;
                                }
                                if (hms[0, 0, m_critSelectedTextureIdx] < m_critMinTextureStrength ||
                                    hms[0, 0, m_critSelectedTextureIdx] > m_critMaxTextureStrength)
                                {
                                    return false;
                                }
                            }
                        }
                    }
                    else
                    {
                        return false;
                    }
                }
            }

            return true;
        }

        /// <summary>
        /// Used when spawning using gravity feature
        /// </summary>
        private void LateUpdate()
        {
            if (m_gravity != null)
            {
                if ((DateTime.Now - m_lastUpdated).TotalSeconds > 2)
                {
                    m_lastUpdated = DateTime.Now;
                    m_gravity.UpdateInstances();
                }
            }
        }

        #endregion

        #region Unspawning methods

        /// <summary>
        /// Unspawn every resource referred to by this spawner
        /// </summary>
        public void UnspawnAll()
        {
            m_randomGenerator.Reset();

            //Delete all the game objects in the prefab list
            foreach (var go in m_prefabUndoList)
            {
                DestroyImmediate(go);
            }
            m_prefabUndoList.Clear();

            foreach (var prototype in m_spawnPrototypes)
            {
                switch (prototype.m_resourceType)
                {
                    case Constants.ResourceType.TerrainTree:
                        UnspawnTree(prototype);
                        break;
                    case Constants.ResourceType.TerrainGrass:
                        UnspawnGrass(prototype);
                        break;
                }

                //Hard code a counter reset
                prototype.m_instancesSpawned = 0;
                foreach (var resource in prototype.m_resources)
                {
                    resource.m_instancesSpawned = 0;
                }
            }
            m_instancesSpawned = 0;

            //Now call this on all the children
            foreach (Spawner spawner in m_childSpawners)
            {
                if (spawner != null && spawner.gameObject.activeInHierarchy)
                {
                    spawner.UnspawnAll();
                }
            }
        }

        /// <summary>
        /// Unspawn all instances of this game obtect type from the scene
        /// </summary>
        /// <param name="protoIdx">Zero based index of the referenced game object</param>
        public void UnspawnGameObject(Prototype proto)
        {
            //Make sure we are in right place
            if (proto.m_resourceType != Constants.ResourceType.Prefab)
            {
                return;
            }
#if UNITY_EDITOR
            GameObject prefabParent;
            GameObject[] allGameObjects = UnityEngine.Object.FindObjectsOfType<GameObject>();
            foreach (var go in allGameObjects)
            {
                prefabParent = PrefabUtility.GetPrefabParent(go) as GameObject;
                if (prefabParent != null)
                {
                    foreach (var resource in proto.m_resources)
                    {
                        if (resource.m_resourceType == Constants.ResourceType.Prefab)
                        {
                            if (prefabParent.GetInstanceID() == resource.m_prefab.GetInstanceID())
                            {
                                m_instancesSpawned--;
                                proto.m_instancesSpawned--;
                                resource.m_instancesSpawned--;
                                DestroyImmediate(go);
                                continue;
                            }
                        }
                    }
                }
            }
#endif
        }

        /// <summary>
        /// Unspawn all instances of this grass from the terrains in the scene
        /// </summary>
        /// <param name="proto">The prototype of the referenced grass object</param>
        public void UnspawnGrass(Prototype proto)
        {
            //Make sure we are in right place
            if (proto.m_resourceType != Constants.ResourceType.TerrainGrass)
            {
                return;
            }
            Resource res = proto.m_resources[0];
            foreach (var terrain in Terrain.activeTerrains)
            {
                terrain.terrainData.SetDetailLayer(0, 0, res.m_terrainProtoIdx, new int[terrain.terrainData.detailWidth, terrain.terrainData.detailWidth]);
            }
            proto.m_instancesSpawned -= res.m_instancesSpawned;
            m_instancesSpawned -= res.m_instancesSpawned;
            res.m_instancesSpawned = 0;
        }

        /// <summary>
        /// Unspawn all instances of this tree from the terrains in the scene
        /// </summary>
        /// <param name="proto">The prototype of the referenced tree object</param>
        public void UnspawnTree(Prototype proto)
        {
            //Make sure we are in right place
            if (proto.m_resourceType != Constants.ResourceType.TerrainTree)
            {
                return;
            }
            TreeInstance instance;
            List<TreeInstance> trees = new List<TreeInstance>();
            Resource res = proto.m_resources[0];
            foreach (var terrain in Terrain.activeTerrains)
            {
                for (int idx = 0; idx < terrain.terrainData.treeInstances.Length; idx++)
                {
                    instance = terrain.terrainData.treeInstances[idx];
                    if (instance.prototypeIndex != res.m_terrainProtoIdx)
                    {
                        trees.Add(instance);
                    }
                    else
                    {
                        res.m_instancesSpawned--;
                        proto.m_instancesSpawned--;
                        m_instancesSpawned--;
                    }
                }
                terrain.terrainData.treeInstances = trees.ToArray();
                trees.Clear();
            }
        }

        #endregion

        #region General helper methods

        /// <summary>
        /// Handy random functions
        /// </summary>
        /// <param name="value"></param>
        /// <param name="percent"></param>
        /// <returns></returns>
        private float JitterAsPct(float value, float percent)
        {
            return m_randomGenerator.Next(Mathf.Clamp01(percent) * value, value);
        }

        /// <summary>
        /// Handy random functions
        /// </summary>
        /// <param name="value"></param>
        /// <param name="delta"></param>
        /// <returns></returns>
        private float JitterAround(float value, float delta)
        {
            return m_randomGenerator.Next(value - delta, value + delta);
        }

        /// <summary>
        /// Scale the suplied vector to the nearest integer number, same number if already there
        /// </summary>
        /// <param name="sourceScale"></param>
        /// <returns></returns>
        private Vector3 ScaleToNearestInt(Vector3 sourceScale)
        {
            float x = sourceScale.x;
            float y = sourceScale.y;
            float z = sourceScale.z;

            if (x - Mathf.Floor(x) < Mathf.Ceil(x) - x)
            {
                x = Mathf.Floor(x);
            }
            else
            {
                x = Mathf.Ceil(x);
            }
            if (x < 1f)
            {
                x = 1f;
            }

            if (y - Mathf.Floor(y) < Mathf.Ceil(y) - y)
            {
                y = Mathf.Floor(y);
            }
            else
            {
                y = Mathf.Ceil(y);
            }
            if (y < 1f)
            {
                y = 1f;
            }

            if (z - Mathf.Floor(z) < Mathf.Ceil(z) - z)
            {
                z = Mathf.Floor(z);
            }
            else
            {
                z = Mathf.Ceil(z);
            }
            if (z < 1f)
            {
                z = 1f;
            }

            return new Vector3(x, y, z);
        }

        /// <summary>
        /// Combine meshes 
        /// </summary>
        /// <param name="go"></param>
        private void CombineMeshes(GameObject go)
        {
            //Zero transformation is needed because of localToWorldMatrix transform
            Vector3 position = go.transform.position;
            go.transform.position = Vector3.zero;

            //whatever man
            MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
            CombineInstance[] combine = new CombineInstance[meshFilters.Length];
            int i = 0;
            while (i < meshFilters.Length)
            {
                combine[i].mesh = meshFilters[i].sharedMesh;
                combine[i].transform = meshFilters[i].transform.localToWorldMatrix;
                meshFilters[i].gameObject.SetActive(false);
                i++;
            }
            if (go.transform.GetComponent<MeshFilter>() == null)
            {
                go.AddComponent<MeshFilter>();
            }
            go.transform.GetComponent<MeshFilter>().sharedMesh = new Mesh();
            //obj.transform.GetComponent<MeshFilter>().mesh = new Mesh();
            go.transform.GetComponent<MeshFilter>().sharedMesh.CombineMeshes(combine, true, true);
            go.transform.gameObject.SetActive(true);

            //Reset position
            go.transform.position = position;

            //Adds collider to mesh
            go.AddComponent<MeshCollider>();
        }

        /// <summary>
        /// Get the terrain that matches this location, otherwise return null
        /// </summary>
        /// <param name="location">Location to check in world units</param>
        /// <returns>Terrain here or null</returns>
        private Terrain GetTerrain(Vector3 location)
        {
            Terrain terrain;
            Vector3 terrainMin = new Vector3();
            Vector3 terrainMax = new Vector3();

            //First check active terrain - most likely already selected
            terrain = Terrain.activeTerrain;
            if (terrain != null)
            {
                terrainMin = terrain.GetPosition();
                terrainMax = terrainMin + terrain.terrainData.size;
                if (location.x >= terrainMin.x && location.x <= terrainMax.x)
                {
                    if (location.z >= terrainMin.z && location.z <= terrainMax.z)
                    {
                        return terrain;
                    }
                }
            }

            //Then check rest of terrains
            for (int idx = 0; idx < Terrain.activeTerrains.Length; idx++)
            {
                terrain = Terrain.activeTerrains[idx];
                terrainMin = terrain.GetPosition();
                terrainMax = terrainMin + terrain.terrainData.size;
                if (location.x >= terrainMin.x && location.x <= terrainMax.x)
                {
                    if (location.z >= terrainMin.z && location.z <= terrainMax.z)
                    {
                        return terrain;
                    }
                }
            }
            return null;
        }

        /// <summary>
        /// Get the bounds of the terrain at this location or fail with a null
        /// </summary>
        /// <param name="location">Location to check and get terrain for</param>
        /// <returns>Bounds of selected terrain or null if invalid for some reason</returns>
        private bool GetTerrainBounds(Vector3 location, ref Bounds bounds)
        {
            Terrain terrain = GetTerrain(location);
            if (terrain == null)
            {
                return false;
            }
            bounds.center = terrain.transform.position;
            bounds.size = terrain.terrainData.size;
            bounds.center += bounds.extents;
            return true;
        }

        /// <summary>
        /// Get the bounds of the object supplied or fail with a null
        /// </summary>
        /// <param name="go">The object to check and get bounds for</param>
        /// <returns>Bounds of selected object or null if invalid for some reason</returns>
        private bool GetObjectBounds(GameObject go, ref Bounds bounds)
        {
            if (go == null)
            {
                return false;
            }
            bounds.center = go.transform.position;
            bounds.size = Vector3.zero;
            foreach (Renderer r in go.GetComponentsInChildren<Renderer>())
            {
                bounds.Encapsulate(r.bounds);
            }
            foreach (Collider c in go.GetComponentsInChildren<Collider>())
            {
                bounds.Encapsulate(c.bounds);
            }
            return true;
        }

        /// <summary>
        /// Return true if the values are approximately equal
        /// </summary>
        /// <param name="a">Parameter A</param>
        /// <param name="b">Parameter B</param>
        /// <returns>True if approximately equal</returns>
        public static bool ApproximatelyEqual(float a, float b, float delta = float.Epsilon)
        {
            if (a == b || Mathf.Abs(a - b) < delta)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// Rotate the point around the pivot - used to handle rotation
        /// </summary>
        /// <param name="point">Point to move</param>
        /// <param name="pivot">Pivot</param>
        /// <param name="angle">Angle to pivot</param>
        /// <returns>New location</returns>
        public static Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Vector3 angle)
        {
            Vector3 dir = point - pivot;
            dir = Quaternion.Euler(angle) * dir;
            point = dir + pivot;
            return point;
        }

        #endregion

        #region Colour conversion utilties used by image masking

        /// <summary>
        /// Calculate the CIE76 difference between two colours
        /// </summary>
        /// <param name="c1"></param>
        /// <param name="c2"></param>
        /// <returns></returns>
        private float RGBDifference(Color c1, Color c2)
        {
            if (ApproximatelyEqual(c1.r, c2.r) && ApproximatelyEqual(c1.g, c2.g) && ApproximatelyEqual(c1.b, c2.b))
            {
                return 0f;
            }
            Vector3 l1 = RGBtoLAB(c1);
            Vector3 l2 = RGBtoLAB(c2);
            float sum = 0f;
            sum += Mathf.Pow(l1.x - l2.x, 2f);
            sum += Mathf.Pow(l1.y - l2.y, 2f);
            sum += Mathf.Pow(l1.z - l2.z, 2f);
            return Mathf.Max(Mathf.Min(Mathf.Sqrt(sum), 100f), 0f);
        }

        /// <summary>
        /// Convert rgb to lab colour
        /// </summary>
        /// <param name="c">Source colour to convert</param>
        /// <returns>Lab colour x = L, y = a, z = b</returns>
        private Vector3 RGBtoLAB(Color c)
        {
            return XYZtoLAB(RGBtoXYZ(c));
        }

        /// <summary>
        /// Conver RGB to XYZ colour
        /// </summary>
        /// <param name="c">Source colour to convert</param>
        /// <returns>Source colour as xyz colour</returns>
        private Vector3 RGBtoXYZ(Color c)
        {
            // Based on http://www.easyrgb.com/index.php?X=MATH&H=02
            float R = c.r;
            float G = c.g;
            float B = c.b;

            if (R > 0.04045f)
                R = Mathf.Pow(((R + 0.055f) / 1.055f), 2.4f);
            else
                R = R / 12.92f;
            if (G > 0.04045f)
                G = Mathf.Pow(((G + 0.055f) / 1.055f), 2.4f);
            else
                G = G / 12.92f;
            if (B > 0.04045f)
                B = Mathf.Pow(((B + 0.055f) / 1.055f), 2.4f);
            else
                B = B / 12.92f;

            R *= 100f;
            G *= 100f;
            B *= 100f;

            // Observer. = 2°, Illuminant = D65
            float X = R * 0.4124f + G * 0.3576f + B * 0.1805f;
            float Y = R * 0.2126f + G * 0.7152f + B * 0.0722f;
            float Z = R * 0.0193f + G * 0.1192f + B * 0.9505f;
            return new Vector3(X, Y, Z);
        }

        /// <summary>
        /// Convert XYZ colour to LAB colour, where resulting x = L, y = a, z = b
        /// </summary>
        /// <param name="c">Source xyz colour</param>
        /// <returns>LAB colour where x = L, y = a, z = b</returns>
        private Vector3 XYZtoLAB(Vector3 c)
        {
            // Based on http://www.easyrgb.com/index.php?X=MATH&H=07
            float ref_Y = 100f;
            float ref_Z = 108.883f;
            float ref_X = 95.047f; // Observer= 2°, Illuminant= D65
            float Y = c.y / ref_Y;
            float Z = c.z / ref_Z;
            float X = c.x / ref_X;
            if (X > 0.008856f)
                X = Mathf.Pow(X, 1f / 3f);
            else
                X = (7.787f * X) + (16f / 116f);
            if (Y > 0.008856)
                Y = Mathf.Pow(Y, 1f / 3f);
            else
                Y = (7.787f * Y) + (16f / 116f);
            if (Z > 0.008856f)
                Z = Mathf.Pow(Z, 1f / 3f);
            else
                Z = (7.787f * Z) + (16f / 116f);
            float L = (116f * Y) - 16f;
            float a = 500f * (X - Y);
            float b = 200f * (Y - Z);
            return new Vector3(L, a, b);
        }
        #endregion

        #region Gizmos

        /// <summary>
        /// Draw our gizmos
        /// </summary>
        void OnDrawGizmosSelected()
        {
            //Exit if we dont want to display gizmos
            if (m_showGizmos != true)
            {
                return;
            }

            //Exit if we have not chosen an origin yet
            if (m_spawnOriginLocation == Vector3.zero)
            {
                return;
            }

            //Calculate steps and work out if we need to recalculate
            float halfSpawnRange = m_maxSpawnRange/2f;
            int dimensions = (int) m_maxSpawnRange + 1;
            if (dimensions > m_maxVisualisationDimensions)
            {
                dimensions = m_maxVisualisationDimensions + 1;
            }
            float stepIncrement = m_maxSpawnRange/((float) dimensions - 1f);
            if (dimensions != m_fitnessArray.GetLength(0))
            {
                m_needsVisualisationUpdate = true;
            }
            if (m_needsVisualisationUpdate == true)
            {
                UpdateSpawnerVisualisation();
            }

            //Now draw it
            int x, z;
            Vector3 position = Vector3.zero;
            Vector3 maxPosition = m_spawnOriginLocation + (Vector3.one*halfSpawnRange);

            Gizmos.color = Color.green;
            for (x = 0, position.x = m_spawnOriginLocation.x - halfSpawnRange;
                position.x < maxPosition.x;
                x++, position.x += stepIncrement)
            {
                for (z = 0, position.z = m_spawnOriginLocation.z - halfSpawnRange;
                    position.z < maxPosition.z;
                    z++, position.z += stepIncrement)
                {
                    position.y = m_fitnessArray[x, z];
                    if (position.y > float.MinValue)
                    {
                        Gizmos.DrawSphere(position, stepIncrement/4f);
                    }
                }
            }

            //If we are doing min height, then show that as well
            if (m_critCheckHeight == true)
            {
                Bounds bounds = new Bounds();
                if (GetTerrainBounds(m_critSpawnCentre, ref bounds) == true)
                {
                    bounds.center = new Vector3(bounds.center.x, m_critMinSpawnHeight, bounds.center.z);
                    bounds.size = new Vector3(bounds.size.x, 0.05f, bounds.size.z);
                    Gizmos.color = new Color(Color.blue.r, Color.blue.g, Color.blue.b, Color.blue.a/2f);
                    Gizmos.DrawCube(bounds.center, bounds.size);
                }
            }
        }

        #endregion
    }
}

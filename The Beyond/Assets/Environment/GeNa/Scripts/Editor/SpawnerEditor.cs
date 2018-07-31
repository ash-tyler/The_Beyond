using System;
using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;

namespace GeNa
{
    /// <summary>
    /// Editor for GeNa spawning system
    /// </summary>
    [CustomEditor(typeof(Spawner))]
    public class SpawnerEditor : Editor
    {
        private GUIStyle m_boxStyle;
        private GUIStyle m_wrapStyle;
        private Vector2 m_scrollPosition = Vector2.zero;
        private Spawner m_spawner;
        int m_editor_control_id = 0;

        #region Menu Commands
        /// <summary>
        /// Add spawner
        /// </summary>
        [MenuItem("GameObject/GeNa/Add Spawner", false, 14)]
        public static void AddGeNaSpawner(MenuCommand menuCommand)
        {
            //Create the spawner
            GameObject genaGo = new GameObject("GeNa Spawner");
            Spawner spawner = genaGo.AddComponent<Spawner>();
            spawner.SetDefaults();

            GameObject parent = menuCommand.context as GameObject;
            if (parent == null)
            {
                parent = GameObject.Find("GeNa Spawners");
                if (parent == null)
                {
                    parent = new GameObject("GeNa Spawners");
                }
            }

            // Reparent it
            GameObjectUtility.SetParentAndAlign(genaGo, parent);

            // Register the creation in the undo system
            Undo.RegisterCreatedObjectUndo(genaGo, "Created " + genaGo.name);

            //Make it active
            Selection.activeObject = genaGo;
        }

        /// <summary>
        /// Show the forum
        /// </summary>
        [MenuItem("GameObject/GeNa/Show GeNa Forum...", false, 40)]
        public static void ShowGeNaForum()
        {
            Application.OpenURL("https://forum.unity3d.com/threads/gena-sophisticated-procedural-content-spawner.437566/");
        }

        /// <summary>
        /// Show tutorial
        /// </summary>
        [MenuItem("GameObject/GeNa/Show GeNa Tutorials...", false, 41)]
        public static void ShowGeNaTutorial()
        {
            Application.OpenURL("http://www.procedural-worlds.com/gena/tutorials/");
        }

        /// <summary>
        /// Show documentation
        /// </summary>
        [MenuItem("GameObject/GeNa/Show GeNa Documentation...", false, 42)]
        public static void ShowPegasusDocumentation()
        {
            Application.OpenURL("http://www.procedural-worlds.com/gena/documentation/");
        }

        /// <summary>
        /// Show review option
        /// </summary>
        [MenuItem("GameObject/GeNa/Please Review GeNa...", false, 43)]
        public static void ShowGenaAssetStore()
        {
            Application.OpenURL("https://www.assetstore.unity3d.com/en/#!/content/74407");
        }

        /// <summary>
        /// Show review option
        /// </summary>
        [MenuItem("GameObject/GeNa/Procedural Worlds...", false, 44)]
        public static void ShowAssetStore()
        {
            Application.OpenURL("https://www.assetstore.unity3d.com/en/#!/search/page=1/sortby=popularity/query=publisher:15277");
        }

        #endregion

        /// <summary>
        /// Called when we select this in the scene
        /// </summary>
        void OnEnable()
        {
            //Check for target
            if (target == null)
            {
                return;
            }

            //Setup target
            m_spawner = (Spawner)target;

            //Setup defaults
            m_spawner.SetDefaults();

            //Hide its transform
            m_spawner.transform.hideFlags = HideFlags.HideInInspector;

            //Tell target to update
            m_spawner.m_needsVisualisationUpdate = true;

            //Get the control id
            m_editor_control_id = GUIUtility.GetControlID(this.GetHashCode(), FocusType.Passive);
        }

        /// <summary>
        /// Editor UX
        /// </summary>
        public override void OnInspectorGUI()
        {
            //Set the target
            m_spawner = (Spawner)target;

            #region Introduction

            //Set up the box style
            if (m_boxStyle == null)
            {
                m_boxStyle = new GUIStyle(GUI.skin.box);
                m_boxStyle.normal.textColor = GUI.skin.label.normal.textColor;
                m_boxStyle.fontStyle = FontStyle.Bold;
                m_boxStyle.alignment = TextAnchor.UpperLeft;
            }

            //Setup the wrap style
            if (m_wrapStyle == null)
            {
                m_wrapStyle = new GUIStyle(GUI.skin.label);
                m_wrapStyle.fontStyle = FontStyle.Normal;
                m_wrapStyle.wordWrap = true;
            }

            //Scroll
            m_scrollPosition = GUILayout.BeginScrollView(m_scrollPosition, false, false);

            //Text intro
            GUILayout.BeginVertical(string.Format("GeNa ({0}.{1})", Constants.MajorVersion, Constants.MinorVersion), m_boxStyle);
            GUILayout.Space(20);
            if (m_spawner.m_advShowDetailedHelp)
            {
                EditorGUILayout.LabelField(
                    "Add your Assets then...\nVisualise: Shift + Left click.\nModify Rotation: Shift Left + drag.\nModify Range: Shift + Scroll wheel.\nModify Instances: Ctrl + Scroll wheel.\nMove Last Spawn: Ctrl Shift Arrows.\nDelete Instances: Ctrl + Backspace.\nSingle Spawn: Ctrl + Left click.\nGlobal Spawn: Ctrl + Shift + Left click.",
                    m_wrapStyle);
            }
            else
            {
                EditorGUILayout.LabelField("Add your Assets then...\nVisualise: Shift + Left click.\nSingle Spawn: Ctrl + Left click.\nGlobal Spawn: Ctrl + Shift + Left click.", m_wrapStyle);
            }
            GUILayout.EndVertical();

            #endregion

            //Monitor for changes
            EditorGUI.BeginChangeCheck();

            GUILayout.Space(5);

            #region Overview

            GUILayout.BeginVertical("Overview", m_boxStyle);
            GUILayout.Space(20);

            List<Prototype> protoList = CopyPrototypes(m_spawner.m_spawnPrototypes);

            bool hasPrefabs = HasPrefabs(protoList);
            bool hasTrees = HasTrees(protoList);

            string parentName = EditorGUILayout.TextField(GetLabel("Name"), m_spawner.m_parentName);
            long minInstances = m_spawner.m_minInstances;
            long maxInstances = m_spawner.m_maxInstances;
            float range = m_spawner.m_maxSpawnRange;
            float seedThrowRange = m_spawner.m_seedThrowRange;
            float seedThrowJitter = m_spawner.m_seedThrowJitter;
            bool advUseLargeRanges = m_spawner.m_advUseLargeRanges;
            int randomSeed = m_spawner.m_randomSeed;
            if (!advUseLargeRanges)
            {
                minInstances = (int)EditorGUILayout.IntSlider(GetLabel("Min Instances"), (int)minInstances, 1, (int)((range * range) / (0.33f *seedThrowRange)));
                maxInstances = (int)EditorGUILayout.IntSlider(GetLabel("Max Instances"), (int)maxInstances, 1, (int)((range * range) / (0.33f * seedThrowRange)));
                seedThrowRange = EditorGUILayout.Slider(GetLabel("Throw Distance"), seedThrowRange, 0.5f, range);
                range = EditorGUILayout.Slider(GetLabel("Spawn Range"), range, 1f, 200f);
            }
            else
            {
                minInstances = EditorGUILayout.LongField(GetLabel("Min Instances"), (long)minInstances);
                maxInstances = EditorGUILayout.LongField(GetLabel("Max Instances"), (long)maxInstances);
                seedThrowRange = EditorGUILayout.FloatField(GetLabel("Throw Distance"), seedThrowRange);
                range = EditorGUILayout.FloatField(GetLabel("Spawn Range"), range);
            }

            Constants.SpawnRangeShape rangeShape = m_spawner.m_spawnRangeShape;
            rangeShape = (Constants.SpawnRangeShape)EditorGUILayout.EnumPopup(GetLabel("Spawn Shape"), rangeShape);

            randomSeed = EditorGUILayout.IntSlider(GetLabel("Spawn Seed"), randomSeed, 1, 65335);

            EditorGUILayout.LabelField(GetLabel("Instances Spawned"), GetLabel(m_spawner.m_instancesSpawned.ToString()));

            bool mergeSpawns = m_spawner.m_mergeSpawns;
            if (hasPrefabs == true)
            {
                mergeSpawns = EditorGUILayout.Toggle(GetLabel("Merge Instances"), mergeSpawns);
            }
            bool showGizmos = EditorGUILayout.Toggle(GetLabel("Show Gimzos"), m_spawner.m_showGizmos);

            GUILayout.EndVertical();

            #endregion

            GUILayout.Space(5);

            #region Placement Criteria

            //Show placement critera
            GUILayout.BeginVertical(m_boxStyle);
            bool showPlacementCriteria = EditorGUILayout.BeginToggleGroup(GetLabel(" Placement Criteria"), m_spawner.m_showPlacementCriteria);

            Constants.LocationAlgorithm spawnAlgorithm = m_spawner.m_spawnAlgorithm;
            Constants.RotationAlgorithm rotationAlgorithm = m_spawner.m_rotationAlgorithm;
            float minRotationY = m_spawner.m_minRotationY;
            float maxRotationY = m_spawner.m_maxRotationY;
            bool sameScale = m_spawner.m_sameScale;
            float minScaleX = m_spawner.m_minScaleX;
            float maxScaleX = m_spawner.m_maxScaleX;
            float minScaleY = m_spawner.m_minScaleY;
            float maxScaleY = m_spawner.m_maxScaleY;
            float minScaleZ = m_spawner.m_minScaleZ;
            float maxScaleZ = m_spawner.m_maxScaleZ;
            bool useGravity = m_spawner.m_useGravity;
            
            Gravity gravity = m_spawner.m_gravity;

            if (showPlacementCriteria)
            {
                EditorGUILayout.LabelField("Control how and where we can spawn.", m_wrapStyle);

                spawnAlgorithm = (Constants.LocationAlgorithm)EditorGUILayout.EnumPopup(GetLabel("Spawn Type"), spawnAlgorithm);

                if (spawnAlgorithm == Constants.LocationAlgorithm.Every)
                {
                    EditorGUI.indentLevel++;
                    seedThrowJitter = EditorGUILayout.Slider(GetLabel("Jitter Strength"), seedThrowJitter, 0f, 1f);
                    EditorGUI.indentLevel--;
                }

                if (hasPrefabs == true || hasTrees == true ||  (m_spawner.m_critCheckMask && m_spawner.m_critMaskType == Constants.MaskType.Image))
                {
                    rotationAlgorithm = (Constants.RotationAlgorithm)EditorGUILayout.EnumPopup(GetLabel("Rotation Type"), rotationAlgorithm);

                    if (rotationAlgorithm == Constants.RotationAlgorithm.Ranged)
                    {
                        EditorGUI.indentLevel++;
                        minRotationY = EditorGUILayout.Slider(GetLabel("Min Rotation"), minRotationY, 0f, 360f);
                        maxRotationY = EditorGUILayout.Slider(GetLabel("Max Rotation"), maxRotationY, 0f, 360f);
                        EditorGUI.indentLevel--;
                    }

                    sameScale = EditorGUILayout.Toggle(GetLabel("Same Scale XYZ"), sameScale);
                    EditorGUI.indentLevel++;
                    if (sameScale)
                    {
                        if (!m_spawner.m_scaleToNearestInt)
                        {
                            minScaleX = EditorGUILayout.Slider(GetLabel("Min Scale"), minScaleX, 0.1f, 100f);
                            maxScaleX = EditorGUILayout.Slider(GetLabel("Max Scale"), maxScaleX, 0.1f, 100f);
                        }
                        else
                        {
                            minScaleX = (float)EditorGUILayout.IntSlider(GetLabel("Min Scale"), (int)minScaleX, 1, 100);
                            if (minScaleX < 1f)
                            {
                                minScaleX = 1f;
                            }
                            maxScaleX = (float)EditorGUILayout.IntSlider(GetLabel("Max Scale"), (int)maxScaleX, 1, 100);
                            if (maxScaleX < 1f)
                            {
                                maxScaleX = 1f;
                            }
                        }
                    }
                    else
                    {
                        if (!m_spawner.m_scaleToNearestInt)
                        {
                            minScaleX = EditorGUILayout.Slider(GetLabel("Min Scale X"), minScaleX, 0.1f, 1000f);
                            maxScaleX = EditorGUILayout.Slider(GetLabel("Max Scale X"), maxScaleX, 0.1f, 1000f);
                            minScaleY = EditorGUILayout.Slider(GetLabel("Min Scale Y"), minScaleY, 0.1f, 1000f);
                            maxScaleY = EditorGUILayout.Slider(GetLabel("Max Scale Y"), maxScaleY, 0.1f, 1000f);
                            minScaleZ = EditorGUILayout.Slider(GetLabel("Min Scale Z"), minScaleZ, 0.1f, 1000f);
                            maxScaleZ = EditorGUILayout.Slider(GetLabel("Max Scale Z"), maxScaleZ, 0.1f, 1000f);
                        }
                        else
                        {
                            minScaleX = (float)EditorGUILayout.IntSlider(GetLabel("Min Scale X"), (int)minScaleX, 1, 1000);
                            maxScaleX = (float)EditorGUILayout.IntSlider(GetLabel("Max Scale X"), (int)maxScaleX, 1, 1000);
                            minScaleY = (float)EditorGUILayout.IntSlider(GetLabel("Min Scale Y"), (int)minScaleY, 1, 1000);
                            maxScaleY = (float)EditorGUILayout.IntSlider(GetLabel("Max Scale Y"), (int)maxScaleY, 1, 1000);
                            minScaleZ = (float)EditorGUILayout.IntSlider(GetLabel("Min Scale Z"), (int)minScaleZ, 1, 1000);
                            maxScaleZ = (float)EditorGUILayout.IntSlider(GetLabel("Max Scale Z"), (int)maxScaleZ, 1, 1000);
                        }
                    }
                    EditorGUI.indentLevel--;
                }

                if (hasPrefabs == true)
                {
                    useGravity = EditorGUILayout.Toggle(GetLabel("Use Gravity"), useGravity);
                }

                //And show the new ones
                if (useGravity == true && m_spawner.m_gravity != null)
                {
                    if (gravity.m_haveGravity == false)
                    {
                        if (gravity.m_instances.Count == 0)
                        {
                            EditorGUILayout.LabelField(GetLabel("You must spawn Prefab based instances!"));
                        }
                        else
                        {
                            EditorGUILayout.LabelField(GetLabel("You must press Play to run Gravity!"));
                        }
                    }
                    else
                    {
                        if (GUILayout.Button(new GUIContent("Original Position")))
                        {
                            m_spawner.m_gravity.UpdateOriginalsToStart();
                        }
                        if (GUILayout.Button(new GUIContent("Final Position")))
                        {
                            m_spawner.m_gravity.UpdateOriginalsToEnd();
                        }
                        if (GUILayout.Button(new GUIContent("Apply Gravity")))
                        {
                            m_spawner.m_gravity.FinaliseGravity(m_spawner);
                        }
                    }
                }
            }
            EditorGUILayout.EndToggleGroup();
            GUILayout.Space(3);
            GUILayout.EndVertical();

            #endregion

            GUILayout.Space(5);

            #region Spawn Criteria 

            GUILayout.BeginVertical(m_boxStyle);
            bool showSpawnCriteria = EditorGUILayout.BeginToggleGroup(GetLabel(" Spawn Criteria"), m_spawner.m_showSpawnCriteria);
            Constants.VirginCheckType critVirginCheckType = m_spawner.m_critVirginCheckType;
            float critBoundsBorder = m_spawner.m_critBoundsBorder;
            bool critCheckHeight = m_spawner.m_critCheckHeight;
            float critMinSpawnHeight = m_spawner.m_critMinSpawnHeight;
            float critHeightVariance = m_spawner.m_critHeightVariance;
            bool critCheckSlope = m_spawner.m_critCheckSlope;
            float critSlopeVariance = m_spawner.m_critSlopeVariance;
            bool critCheckTextures = m_spawner.m_critCheckTextures;
            float critTextureStrength = m_spawner.m_critTextureStrength;
            float critTextureVariance = m_spawner.m_critTextureVariance;
            int critSelectedTextureIdx = m_spawner.m_critSelectedTextureIdx;
            bool critCheckMask = m_spawner.m_critCheckMask;
            Constants.MaskType critMaskType = m_spawner.m_critMaskType;
            Fractal critMaskFractal = new Fractal(m_spawner.m_critMaskFractal);
            float critMaskFractalMidpoint = m_spawner.m_critMaskFractalMidpoint;
            float critMaskFractalRange = m_spawner.m_critMaskFractalRange;
            Texture2D critMaskImage = m_spawner.m_critMaskImage;
            bool critMaskInvert = m_spawner.m_critMaskInvert;

            if (showSpawnCriteria)
            {
                EditorGUILayout.LabelField("Control when we can spawn.", m_wrapStyle);
                critVirginCheckType = (Constants.VirginCheckType)EditorGUILayout.EnumPopup(GetLabel("Check Collisions"), critVirginCheckType);
                if (critVirginCheckType == Constants.VirginCheckType.Bounds)
                {
                    critBoundsBorder = EditorGUILayout.Slider(GetLabel("Modify Bounds"), critBoundsBorder, -0.9f, +5f);
                }

                critCheckHeight = EditorGUILayout.Toggle(GetLabel("Check Height"), critCheckHeight);
                if (critCheckHeight)
                {
                    EditorGUI.indentLevel++;
                    if (advUseLargeRanges)
                    {
                        critMinSpawnHeight = EditorGUILayout.FloatField(GetLabel("Min Height"), critMinSpawnHeight);
                        critHeightVariance = EditorGUILayout.FloatField(GetLabel("Height Range"), critHeightVariance);
                    }
                    else
                    {
                        critMinSpawnHeight = EditorGUILayout.Slider(GetLabel("Min Height"), critMinSpawnHeight, -20f, 500f);
                        critHeightVariance = EditorGUILayout.Slider(GetLabel("Height Range"), critHeightVariance, 0.1f, 200f);
                    }
                    EditorGUI.indentLevel--;
                }

                critCheckSlope = EditorGUILayout.Toggle(GetLabel("Check Slope"), critCheckSlope);
                if (critCheckSlope)
                {
                    EditorGUI.indentLevel++;
                    critSlopeVariance = EditorGUILayout.Slider(GetLabel("Slope Range"), critSlopeVariance, 0.1f, 90f);
                    EditorGUI.indentLevel--;
                }

                critCheckTextures = EditorGUILayout.Toggle(GetLabel("Check Textures"), critCheckTextures);
                if (critCheckTextures)
                {
                    EditorGUI.indentLevel++;
                    EditorGUILayout.LabelField(GetLabel("Texture"), GetLabel(string.Format("({0}) {1}", critSelectedTextureIdx, m_spawner.m_critSelectedTextureName)));
                    critTextureStrength = EditorGUILayout.Slider(GetLabel("Texture Strength"), critTextureStrength, 0.0f, 1f);
                    critTextureVariance = EditorGUILayout.Slider(GetLabel("Texture Range"), critTextureVariance, 0.0f, 1f);
                    EditorGUI.indentLevel--;
                }

                critCheckMask = EditorGUILayout.Toggle(GetLabel("Check Mask"), critCheckMask);
                if (critCheckMask)
                {
                    EditorGUI.indentLevel++;
                    critMaskType = (Constants.MaskType)EditorGUILayout.EnumPopup(GetLabel("Mask Type"), critMaskType);
                    if (critMaskType != Constants.MaskType.Image)
                    {
                        critMaskFractal.Seed = EditorGUILayout.IntSlider(GetLabel("Seed"), (int)critMaskFractal.Seed, 0, 65000);
                        critMaskFractal.Octaves = EditorGUILayout.IntSlider(GetLabel("Octaves"), critMaskFractal.Octaves, 1, 12);
                        if (advUseLargeRanges)
                        {
                            critMaskFractal.Frequency = EditorGUILayout.Slider(GetLabel("Frequency"), critMaskFractal.Frequency, 0f, 1f);
                        }
                        else
                        {
                            critMaskFractal.Frequency = EditorGUILayout.Slider(GetLabel("Frequency"), critMaskFractal.Frequency, 0f, 0.3f);
                        }
                        critMaskFractal.Persistence = EditorGUILayout.Slider(GetLabel("Persistence"), critMaskFractal.Persistence, 0f, 1f);
                        critMaskFractal.Lacunarity = EditorGUILayout.Slider(GetLabel("Lacunarity"), critMaskFractal.Lacunarity, 1.5f, 3.5f);
                        critMaskFractalMidpoint = EditorGUILayout.Slider(GetLabel("Midpoint"), critMaskFractalMidpoint, 0f, 1f);
                        critMaskFractalRange = EditorGUILayout.Slider(GetLabel("Range"), critMaskFractalRange, 0f, 1f);
                        critMaskInvert = EditorGUILayout.Toggle(GetLabel("Invert Mask"), critMaskInvert);
                    }
                    else
                    {
                        critMaskImage = (Texture2D)EditorGUILayout.ObjectField(GetLabel("Image Mask"), critMaskImage, typeof(Texture2D), false);
                    }
                    EditorGUI.indentLevel--;
                }

            }
            EditorGUILayout.EndToggleGroup();
            GUILayout.Space(3);
            GUILayout.EndVertical();

            #endregion

            GUILayout.Space(5);

            #region Prototypes

            //Show prototypes
            GUILayout.BeginVertical(m_boxStyle);
            bool showPrototypes = EditorGUILayout.BeginToggleGroup(GetLabel(" Spawn Prototypes (" + protoList.Count + ")"), m_spawner.m_showPrototypes);
            if (showPrototypes == true)
            {
                EditorGUILayout.LabelField("Control what we can spawn.", m_wrapStyle);
                for (int protoIdx = 0; protoIdx < protoList.Count; protoIdx++)
                {
                    GUILayout.BeginVertical(m_boxStyle);
                    Prototype proto = protoList[protoIdx];
                    string protoName = " " + proto.m_name;
                    switch (proto.m_resourceType)
                    {
                        case Constants.ResourceType.Prefab:
                            protoName += " (P)";
                            if (proto.m_resources.Count == 1)
                            {
                                if (proto.m_resources[0].m_conformToSlope)
                                {
                                    protoName += " *C*";
                                }
                            }
                            break;
                        case Constants.ResourceType.TerrainTree:
                            protoName += " (T)";
                            break;
                        case Constants.ResourceType.TerrainGrass:
                            protoName += " (G)";
                            break;
                        default:
                            throw new ArgumentOutOfRangeException();
                    }
                    if (proto.m_active != true)
                    {
                        protoName += " [inactive]";
                    }
                    else
                    {
                        protoName += string.Format(" {0:0}% [{1}]", proto.GetSuccessChance()*100f, proto.m_instancesSpawned);
                    }
                    proto.m_active = EditorGUILayout.BeginToggleGroup(GetLabel(protoName), proto.m_active);
                    if (proto.m_active == true)
                    {
                        EditorGUI.indentLevel++;

                        proto.m_displayedInEditor = EditorGUILayout.Foldout(proto.m_displayedInEditor, GetLabel("Detail"));
                        if (proto.m_displayedInEditor == true)
                        {
                            if (critCheckMask && critMaskType == Constants.MaskType.Image)
                            {
                                EditorGUILayout.LabelField("Mask Settings:");
                                EditorGUI.indentLevel++;
                                proto.m_imageFilterColour = EditorGUILayout.ColorField(GetLabel("Selection Color"), proto.m_imageFilterColour);
                                proto.m_imageFilterFuzzyMatch = EditorGUILayout.Slider(GetLabel("Selection Accuracy"), proto.m_imageFilterFuzzyMatch, 0f, 1f);
                                proto.m_constrainWithinMaskedBounds = EditorGUILayout.Toggle(GetLabel("Fit Within Mask"), proto.m_constrainWithinMaskedBounds);
                                proto.m_invertMaskedAlpha = EditorGUILayout.Toggle(GetLabel("Invert Alpha"), proto.m_invertMaskedAlpha);
                                proto.m_successOnMaskedAlpha = EditorGUILayout.Toggle(GetLabel("Success By Alpha"), proto.m_successOnMaskedAlpha);
                                proto.m_scaleOnMaskedAlpha = EditorGUILayout.Toggle(GetLabel("Scale By Alpha"), proto.m_scaleOnMaskedAlpha);
                                if (proto.m_scaleOnMaskedAlpha)
                                {
                                    EditorGUI.indentLevel++;
                                    proto.m_scaleOnMaskedAlphaMin = EditorGUILayout.Slider(GetLabel("Min Scale"), proto.m_scaleOnMaskedAlphaMin, 0f, 10f);
                                    proto.m_scaleOnMaskedAlphaMax = EditorGUILayout.Slider(GetLabel("Max Scale"), proto.m_scaleOnMaskedAlphaMax, 0f, 10f);
                                    EditorGUI.indentLevel--;
                                }
                                EditorGUI.indentLevel--;
                            }

                            if (proto.m_resourceType != Constants.ResourceType.TerrainGrass)
                            {
                                proto.m_boundsBorder = EditorGUILayout.Slider(GetLabel("Modify Bounds"), proto.m_boundsBorder, -0.9f, +5f);
                            }

                            if (proto.m_resourceType == Constants.ResourceType.Prefab)
                            {
                                proto.m_forwardRotation = EditorGUILayout.Slider(GetLabel("Forward Rotation"), proto.m_forwardRotation, -360f, 360f);
                            }

                            if (proto.m_resources.Count == 1)
                            {
                                EditResource(proto, proto.m_resources[0], false);
                                proto.m_name = proto.m_resources[0].m_name;
                            }
                            else
                            {
                                proto.m_name = EditorGUILayout.TextField(GetLabel("Name"), proto.m_name);
                                EditorGUILayout.LabelField(GetLabel("Size"), GetLabel(string.Format("{0:0.00}, {1:0.00}, {2:0.00}", proto.m_size.x, proto.m_size.y, proto.m_size.z)));

                                for (int resIdx = 0; resIdx < proto.m_resources.Count; resIdx++)
                                {
                                    Resource res = proto.m_resources[resIdx];

                                    string resName = res.m_name;
                                    if (res.m_conformToSlope == true)
                                    {
                                        resName += " *C*";
                                    }
                                    res.m_displayedInEditor = EditorGUILayout.Foldout(res.m_displayedInEditor,
                                        GetLabel(resName));
                                    if (res.m_displayedInEditor == true)
                                    {
                                        EditResource(proto, res, true);
                                    }
                                }
                            }

                            GUILayout.BeginHorizontal();

                            GUILayout.Space(20);

                            if (GUILayout.Button(new GUIContent(GetLabel("Delete Proto"))))
                            {
                                if (EditorUtility.DisplayDialog("WARNING!", "Are you sure you want to delete this prototype?", "OK", "Cancel"))
                                {
                                    protoList.RemoveAt(protoIdx);
                                }
                            }

                            if (proto.m_resourceType == Constants.ResourceType.TerrainGrass)
                            {
                                if (GUILayout.Button(new GUIContent(GetLabel("Delete Instances"))))
                                {
                                    if (EditorUtility.DisplayDialog("WARNING!", "Are you sure you want to delete all instances of this grass from your scene?", "OK", "Cancel"))
                                    {
                                        m_spawner.UnspawnGrass(proto);
                                    }
                                }
                            }

                            if (proto.m_resourceType == Constants.ResourceType.TerrainTree)
                            {
                                if (GUILayout.Button(new GUIContent(GetLabel("Delete Instances"))))
                                {
                                    if (EditorUtility.DisplayDialog("WARNING!", "Are you sure you want to delete all instances of this tree from your scene?", "OK", "Cancel"))
                                    {
                                        m_spawner.UnspawnTree(proto);
                                    }
                                }
                            }

                            if (proto.m_resourceType == Constants.ResourceType.Prefab)
                            {
                                if (GUILayout.Button(new GUIContent(GetLabel("Delete Instances"))))
                                {
                                    if (EditorUtility.DisplayDialog("WARNING!", "Are you sure you want to delete all instances of these prefabs from your scene?", "OK", "Cancel"))
                                    {
                                        m_spawner.UnspawnGameObject(proto);
                                    }
                                }
                            }

                            GUILayout.EndHorizontal();

                            if (proto.m_resourceType == Constants.ResourceType.Prefab)
                            {
                                GUILayout.BeginHorizontal();

                                if (GUILayout.Button(new GUIContent(GetLabel("Conform All"))))
                                {
                                    for (int resIdx1 = 0; resIdx1 < proto.m_resources.Count; resIdx1++)
                                    {
                                        proto.m_resources[resIdx1].m_conformToSlope = true;
                                    }
                                }
                                if (GUILayout.Button(new GUIContent(GetLabel("Conform None"))))
                                {
                                    for (int resIdx1 = 0; resIdx1 < proto.m_resources.Count; resIdx1++)
                                    {
                                        proto.m_resources[resIdx1].m_conformToSlope = false;
                                    }
                                }

                                GUILayout.EndHorizontal();
                            }
                        }

                        EditorGUI.indentLevel--;
                    }
                    EditorGUILayout.EndToggleGroup();
                    GUILayout.Space(3);
                    GUILayout.EndVertical();
                    GUILayout.Space(5);
                }
            }
            EditorGUILayout.EndToggleGroup();
            GUILayout.Space(3);
            GUILayout.EndVertical();

            #endregion

            GUILayout.Space(5);

            #region Advanced
            GUILayout.BeginVertical(m_boxStyle);
            bool showAdvancedSettings = EditorGUILayout.BeginToggleGroup(GetLabel(" Advanced Settings"), m_spawner.m_showAdvancedSettings);
            bool advShowMouseOverHelp = m_spawner.m_advShowMouseOverHelp;
            bool advShowDetailedHelp = m_spawner.m_advShowDetailedHelp;
            bool scaleToNearestInt = m_spawner.m_scaleToNearestInt;
            bool advForcePlaceAtClickLocation = m_spawner.m_advForcePlaceAtClickLocation;
            bool advAddColliderToSpawnedPrefabs = m_spawner.m_advAddColliderToSpawnedPrefabs;
            bool enableRotationDragUpdate = m_spawner.m_enableRotationDragUpdate;
            int maxVisualisationDimensions = m_spawner.m_maxVisualisationDimensions;
            float metersPerScan = m_spawner.m_metersPerScan;
            float metersPerScanVisualisation = m_spawner.m_metersPerScanVisualisation;
            bool advAutoProbe = m_spawner.m_autoProbe;
            bool advAutoOptimise = m_spawner.m_autoOptimise;
            float advMaxSizeToOptimise = m_spawner.m_maxSizeToOptimize;
            float advMinProbeGroupDistance = m_spawner.m_minProbeGroupDistance;
            float advMinProbeDistance = m_spawner.m_minProbeDistance;

            if (showAdvancedSettings)
            {
                advForcePlaceAtClickLocation = EditorGUILayout.Toggle(GetLabel("Force Spawn"), advForcePlaceAtClickLocation);
                advShowMouseOverHelp = EditorGUILayout.Toggle(GetLabel("Show Tooltips"), advShowMouseOverHelp);
                advShowDetailedHelp = EditorGUILayout.Toggle(GetLabel("Show Detailed Help"), advShowDetailedHelp);
                advUseLargeRanges = EditorGUILayout.Toggle(GetLabel("Use Large Ranges"), advUseLargeRanges);
                scaleToNearestInt = EditorGUILayout.Toggle(GetLabel("Scale Nearest Int"), scaleToNearestInt);
                enableRotationDragUpdate = EditorGUILayout.Toggle(GetLabel("Draggable Rotation"), enableRotationDragUpdate);
                advAddColliderToSpawnedPrefabs = EditorGUILayout.Toggle(GetLabel("Add Collider To POI"), advAddColliderToSpawnedPrefabs);
                advAutoProbe = EditorGUILayout.Toggle(GetLabel("Add Light Probes"), advAutoProbe);
                if (advAutoProbe)
                {
                    advMinProbeGroupDistance = EditorGUILayout.Slider(GetLabel("  Min PG Dist"), advMinProbeGroupDistance, 10f, 200f);
                    advMinProbeDistance = EditorGUILayout.Slider(GetLabel("  Min Probe Dist"), advMinProbeDistance, 5f, 50f);
                }
                advAutoOptimise = EditorGUILayout.Toggle(GetLabel("Spawn Optimizer"), advAutoOptimise);
                if (advAutoOptimise)
                {
                    advMaxSizeToOptimise = EditorGUILayout.Slider(GetLabel("  Smaller Than (m)"), advMaxSizeToOptimise, 5f, 50f);
                }
                metersPerScan = EditorGUILayout.Slider(GetLabel("Actual Bounds Res"), metersPerScan, 0.5f, 5f);
                metersPerScanVisualisation = EditorGUILayout.Slider(GetLabel("Visualiser Bounds Res"), metersPerScanVisualisation, 0.5f, 5f);
                maxVisualisationDimensions = EditorGUILayout.IntSlider(GetLabel("Visualiser Resolution"), maxVisualisationDimensions, 1, 100);
            }
            EditorGUILayout.EndToggleGroup();
            GUILayout.Space(3);
            GUILayout.EndVertical();

            #endregion

            GUILayout.Space(5);

            #region Adding assets

            //Add prototypes
            GUILayout.BeginHorizontal(m_boxStyle);
            if (DrawPrefabGUI(ref protoList))
            {
                //Handle scenario in which this updates the spawner directly
                critVirginCheckType = m_spawner.m_critVirginCheckType;
                critBoundsBorder = m_spawner.m_critBoundsBorder;
                GUI.changed = true;
            }
            if (GUILayout.Button(GetLabel("Add\nTree"), GUILayout.Width(50), GUILayout.Height(49)))
            {
                Terrain terrain = Terrain.activeTerrain;
                if (terrain != null && terrain.terrainData.treePrototypes.Length > 0)
                {
                    Prototype proto = new Prototype();

                    Resource res = new Resource();
                    res.m_prefab = null;
                    res.m_resourceType = Constants.ResourceType.TerrainTree;
                    TreePrototype treeProto = terrain.terrainData.treePrototypes[res.m_terrainProtoIdx];
                    if (treeProto.prefab != null)
                    {
                        res.m_name = treeProto.prefab.name;
                    }
                    else
                    {
                        res.m_name = "Unknown asset";
                    }
                    res.m_conformToSlope = false;
                    res.m_baseSize = GetInstantiatedBounds(treeProto.prefab).size;
                    res.m_hasMeshes = HasMeshes(treeProto.prefab);
                    res.m_hasRootCollider = HasRootCollider(treeProto.prefab);
                    res.m_hasColliders = HasColliders(treeProto.prefab);
                    res.m_hasMeshes = HasMeshes(treeProto.prefab);

                    proto.m_resources.Add(res);
                    proto.m_name = res.m_name;
                    proto.m_size = res.m_baseSize;
                    proto.m_extents = proto.m_size * 0.5f;
                    proto.m_resourceType = Constants.ResourceType.TerrainTree;
                    proto.m_hasMeshes = res.m_hasMeshes;
                    proto.m_hasColliders = res.m_hasColliders;
                    proto.m_hasRigidBody = res.m_hasRigidBody;

                    protoList.Add(proto);

                    //If first one, then update some settings to be more tree friendly
                    if (protoList.Count == 1)
                    {
                        parentName = res.m_name;
                        scaleToNearestInt = false;
                        critVirginCheckType = Constants.VirginCheckType.Bounds;
                        //critBoundsBorder = -0.2f;
                        seedThrowRange = Mathf.Min(proto.m_size.x, proto.m_size.z) * 2f;
                    }

                    //Check throw distance and update it if it is comparatively too small
                    float exampleThrow = Mathf.Max(proto.m_size.x, proto.m_size.z) * 2f;
                    if (seedThrowRange < exampleThrow)
                    {
                        seedThrowRange = exampleThrow;
                    }
                }
                else
                {
                    EditorUtility.DisplayDialog("ERROR!", "You must have an active terrain that also has trees defined in order to add tree resources.", "OK");
                }
            };
            if (GUILayout.Button(GetLabel("Add\nGrass"), GUILayout.Width(50), GUILayout.Height(49)))
            {

                Terrain terrain = Terrain.activeTerrain;

                if (terrain != null && terrain.terrainData.detailPrototypes.Length > 0)
                {
                    Prototype proto = new Prototype();

                    Resource res = new Resource();
                    res.m_prefab = null;
                    res.m_resourceType = Constants.ResourceType.TerrainGrass;
                    DetailPrototype detailProto = terrain.terrainData.detailPrototypes[res.m_terrainProtoIdx];
                    if (detailProto.prototypeTexture != null)
                    {
                        res.m_name = detailProto.prototypeTexture.name;
                    }
                    else
                    {
                        res.m_name = detailProto.prototype.name;
                    }
                    res.m_conformToSlope = false;
                    res.m_baseSize = new Vector3(detailProto.minWidth, detailProto.minHeight, detailProto.minWidth);
                    proto.m_resources.Add(res);
                    proto.m_name = res.m_name;
                    proto.m_size = res.m_baseSize;
                    proto.m_extents = proto.m_size * 0.5f;
                    proto.m_resourceType = Constants.ResourceType.TerrainGrass;
                    protoList.Add(proto);

                    //Set scale to int to false
                    scaleToNearestInt = false;

                    //If first one, then update some settings to be more grass friendly
                    if (protoList.Count == 1)
                    {
                        parentName = res.m_name;
                        if (minInstances < ((range * range) / (0.33f * seedThrowRange)))
                        {
                            minInstances = (long)((range * range) / (0.33f * seedThrowRange));
                            maxInstances = minInstances;
                        }
                        seedThrowRange = Mathf.Min(proto.m_size.x, proto.m_size.z) * 3f;
                        critVirginCheckType = Constants.VirginCheckType.Point;
                    }
                }
                else
                {
                    EditorUtility.DisplayDialog("ERROR!", "You must have an active terrain that also has grass defined in order to add grass resources.", "OK");
                }
            };
            GUILayout.EndHorizontal();

            #endregion

            GUILayout.Space(5);

            #region Spawner Repeat & Reset

            /*
            if (m_spawner.m_spawnOriginLocation != Vector3.zero && m_spawner.m_spawnPrototypes.Count > 0)
            {
                GUILayout.BeginHorizontal();
                if (GUILayout.Button(GetLabel("Spawn"), GUILayout.Height(30)))
                {
                    m_spawner.Spawn(m_spawner.m_spawnOriginLocation, false);
                }
                if (GUILayout.Button(GetLabel("Reset Spawner"), GUILayout.Height(30)))
                {
                    if (EditorUtility.DisplayDialog("WARNING!",
                        "Are you sure you want to delete all instances of the resources referred to by this spawner from your scene?",
                        "OK", "Cancel"))
                    {
                        m_spawner.UnspawnAll();
                    }
                }
                GUILayout.EndHorizontal();
            }
            */
            #endregion 

            GUILayout.Space(5);

            #region Change handling

            //Check for changes, make undo record, make changes and let editor know we are dirty
            if (EditorGUI.EndChangeCheck())
            {
                Undo.RecordObject(m_spawner, "Made changes");
                EditorUtility.SetDirty(m_spawner);

                if (parentName != m_spawner.m_parentName)
                {
                    m_spawner.m_parentName = parentName;
                    m_spawner.name = "GeNa Spawner : " + parentName;
                }

                m_spawner.m_mergeSpawns = mergeSpawns;
                if (m_spawner.m_minInstances != minInstances)
                {
                    m_spawner.m_minInstances = minInstances;
                    if (m_spawner.m_minInstances > m_spawner.m_maxInstances)
                    {
                        m_spawner.m_maxInstances = m_spawner.m_minInstances;
                    }
                }
                else
                {
                    m_spawner.m_maxInstances = maxInstances;
                    if (m_spawner.m_maxInstances < m_spawner.m_minInstances)
                    {
                        m_spawner.m_minInstances = m_spawner.m_maxInstances;
                    }
                }

                if (m_spawner.m_randomSeed != randomSeed)
                {
                    m_spawner.m_randomSeed = randomSeed;
                    if (m_spawner.m_randomGenerator == null)
                    {
                        m_spawner.m_randomGenerator = new XorshiftPlus(m_spawner.m_randomSeed);
                    }
                    else
                    {
                        m_spawner.m_randomGenerator.Reset(m_spawner.m_randomSeed);
                    }
                }

                m_spawner.m_seedThrowRange = seedThrowRange;
                m_spawner.m_seedThrowJitter = seedThrowJitter;
                m_spawner.m_maxSpawnRange = range;
                m_spawner.m_spawnRangeShape = rangeShape;
                m_spawner.m_showGizmos = showGizmos;

                m_spawner.m_showSpawnCriteria = showSpawnCriteria;
                m_spawner.m_spawnAlgorithm = spawnAlgorithm;
                m_spawner.m_rotationAlgorithm = rotationAlgorithm;
                m_spawner.m_critVirginCheckType = critVirginCheckType;
                m_spawner.m_critBoundsBorder = critBoundsBorder;
                m_spawner.m_critCheckHeight = critCheckHeight;
                m_spawner.m_critMinSpawnHeight = critMinSpawnHeight;
                m_spawner.m_critHeightVariance = critHeightVariance;
                m_spawner.m_critCheckSlope = critCheckSlope;
                m_spawner.m_critSlopeVariance = critSlopeVariance;
                m_spawner.m_critCheckTextures = critCheckTextures;
                m_spawner.m_critTextureStrength = critTextureStrength;
                m_spawner.m_critTextureVariance = critTextureVariance;
                m_spawner.m_critCheckMask = critCheckMask;
                if (m_spawner.m_critMaskType != critMaskType)
                {
                    m_spawner.m_critMaskType = critMaskType;
                    switch (critMaskType)
                    {
                        case Constants.MaskType.Perlin:
                            critMaskFractal.FractalType = Fractal.GeneratedFractalType.Perlin;
                            break;
                        case Constants.MaskType.Billow:
                            critMaskFractal.FractalType = Fractal.GeneratedFractalType.Billow;
                            break;
                        case Constants.MaskType.Ridged:
                            critMaskFractal.FractalType = Fractal.GeneratedFractalType.RidgeMulti;
                            break;
                    }
                }
                m_spawner.m_critMaskFractal = critMaskFractal;
                m_spawner.m_critMaskFractalMidpoint = critMaskFractalMidpoint;
                m_spawner.m_critMaskFractalRange = critMaskFractalRange;

                if (critMaskImage != null)
                {
                    if (m_spawner.m_critMaskImage == null || m_spawner.m_critMaskImage.GetInstanceID() != critMaskImage.GetInstanceID())
                    {
                        MakeTextureReadable(critMaskImage);
                    }
                }
                m_spawner.m_critMaskImage = critMaskImage;
                m_spawner.m_critMaskInvert = critMaskInvert;

                m_spawner.m_showPlacementCriteria = showPlacementCriteria;
                m_spawner.m_minRotationY = Mathf.Min(minRotationY, maxRotationY);
                m_spawner.m_maxRotationY = Mathf.Max(minRotationY, maxRotationY);
                m_spawner.m_sameScale = sameScale;
                m_spawner.m_minScaleX = Mathf.Min(minScaleX, maxScaleX);
                m_spawner.m_maxScaleX = Mathf.Max(minScaleX, maxScaleX);
                m_spawner.m_minScaleY = Mathf.Min(minScaleY, maxScaleY);
                m_spawner.m_maxScaleY = Mathf.Max(minScaleY, maxScaleY);
                m_spawner.m_minScaleZ = Mathf.Min(minScaleZ, maxScaleZ);
                m_spawner.m_maxScaleZ = Mathf.Max(minScaleZ, maxScaleZ);

                //Set name based on the first thing added
                if (m_spawner.m_spawnPrototypes.Count == 0 && protoList.Count > 0)
                {
                    m_spawner.m_parentName = protoList[0].m_name;
                    m_spawner.name = "GeNa Spawner : " + m_spawner.m_parentName;
                }

                m_spawner.m_spawnPrototypes = protoList;

                //Tidy up any old gravity settings
                if (useGravity != m_spawner.m_useGravity)
                {
                    m_spawner.m_useGravity = useGravity;
                    if (!useGravity)
                    {
                        AssetDatabase.DeleteAsset(string.Format("Assets/Gravity-{0}.asset", m_spawner.m_gravity.GetInstanceID()));
                        AssetDatabase.SaveAssets();
                        AssetDatabase.Refresh();
                        m_spawner.m_gravity = null;
                    }
                    else
                    {
                        //Check heights and add to them if necessary
                        bool canUpdateHeights = false;
                        Prototype proto;
                        Resource res;
                        for (int protoIdx = 0; protoIdx < m_spawner.m_spawnPrototypes.Count; protoIdx++)
                        {
                            proto = m_spawner.m_spawnPrototypes[protoIdx];
                            for (int resIdx = 0; resIdx < proto.m_resources.Count; resIdx++)
                            {
                                res = proto.m_resources[resIdx];
                                if (res.m_resourceType == Constants.ResourceType.Prefab && res.m_minOffset.y <= 5f)
                                {
                                    canUpdateHeights = true;
                                    break;
                                }
                            }
                        }
                        if (canUpdateHeights == true)
                        {
                            if (EditorUtility.DisplayDialog("Can I help?",
                                "You are doing a Gravity spawn and it looks like your forgot to update your height offsets. Want me to fix them for you?",
                                "Yes", "No"))
                            {
                                for (int protoIdx = 0; protoIdx < m_spawner.m_spawnPrototypes.Count; protoIdx++)
                                {
                                    proto = m_spawner.m_spawnPrototypes[protoIdx];
                                    for (int resIdx = 0; resIdx < proto.m_resources.Count; resIdx++)
                                    {
                                        res = proto.m_resources[resIdx];
                                        if (res.m_resourceType == Constants.ResourceType.Prefab)
                                        {
                                            res.m_minOffset.y = 20f;
                                            res.m_maxOffset.y = 20f;
                                        }
                                    }
                                }
                            }
                        }

                        m_spawner.m_gravity = ScriptableObject.CreateInstance<Gravity>();
                        AssetDatabase.CreateAsset(m_spawner.m_gravity, string.Format("Assets/Gravity-{0}.asset", m_spawner.m_gravity.GetInstanceID()));
                        AssetDatabase.SaveAssets();
                        AssetDatabase.Refresh();
                        //gravity = (Gravity)EditorGUILayout.ObjectField(GetLabel("Gravity"), m_spawner.m_gravity, typeof(Gravity), false);
                    }
                }

                m_spawner.m_showPrototypes = showPrototypes;

                m_spawner.m_showAdvancedSettings = showAdvancedSettings;
                m_spawner.m_advUseLargeRanges = advUseLargeRanges;
                m_spawner.m_advShowDetailedHelp = advShowDetailedHelp;
                m_spawner.m_advShowMouseOverHelp = advShowMouseOverHelp;
                m_spawner.m_scaleToNearestInt = scaleToNearestInt;
                if (m_spawner.m_enableRotationDragUpdate != enableRotationDragUpdate)
                {
                    m_spawner.m_enableRotationDragUpdate = enableRotationDragUpdate;
                    if (m_spawner.m_enableRotationDragUpdate == true)
                    {
                        m_spawner.m_minRotationY = m_spawner.m_maxRotationY = 0f;
                    }
                }
                m_spawner.m_advForcePlaceAtClickLocation = advForcePlaceAtClickLocation;
                m_spawner.m_advAddColliderToSpawnedPrefabs = advAddColliderToSpawnedPrefabs;
                m_spawner.m_maxVisualisationDimensions = maxVisualisationDimensions;
                m_spawner.m_metersPerScan = metersPerScan;
                m_spawner.m_metersPerScanVisualisation = metersPerScanVisualisation;
                m_spawner.m_autoProbe = advAutoProbe;
                m_spawner.m_minProbeGroupDistance = advMinProbeGroupDistance;
                m_spawner.m_minProbeDistance = advMinProbeDistance;
                m_spawner.m_autoOptimise = advAutoOptimise;
                m_spawner.m_maxSizeToOptimize = advMaxSizeToOptimise;

                m_spawner.UpdateTargetSpawnerRanges();
            }

            #endregion

            GUILayout.Space(5);

            //End scroll
            GUILayout.EndScrollView();
        }

        /// <summary>
        /// Detect and handle mouse and keyboard events for current spawner
        /// </summary>
        void OnSceneGUI()
        {
            //Exit if no spawner
            if (m_spawner == null)
            {
                return;
            }

            //Exit if event does not have current value
            if (Event.current == null)
            {
                return;
            }

            //Keyboard handling
            if (m_spawner.m_lastSpawnedObject != null)
            {
                //Ctrl Left
                if (Event.current.Equals(m_spawner.m_defaults.KeyLeftEvent(false, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    Vector3 movement = Quaternion.Euler(0F, SceneView.lastActiveSceneView.rotation.eulerAngles.y, 0f) * Vector3.left;
                    m_spawner.m_lastSpawnedObject.transform.position += (movement * 0.05f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Shift Ctrl Left
                if (Event.current.Equals(m_spawner.m_defaults.KeyLeftEvent(true, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    m_spawner.m_lastSpawnedObject.transform.Rotate(Vector3.up, -1f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Ctrl right
                if (Event.current.Equals(m_spawner.m_defaults.KeyRightEvent(false, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    Vector3 movement = Quaternion.Euler(0F, SceneView.lastActiveSceneView.rotation.eulerAngles.y, 0f) * Vector3.right;
                    m_spawner.m_lastSpawnedObject.transform.position += (movement * 0.05f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Shift Ctrl Right
                if (Event.current.Equals(m_spawner.m_defaults.KeyRightEvent(true, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    m_spawner.m_lastSpawnedObject.transform.Rotate(Vector3.up, 1f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Ctrl Forward
                if (Event.current.Equals(m_spawner.m_defaults.KeyForwardEvent(false, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    Vector3 movement = Quaternion.Euler(0F, SceneView.lastActiveSceneView.rotation.eulerAngles.y, 0f) * Vector3.forward;
                    m_spawner.m_lastSpawnedObject.transform.position += (movement * 0.05f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Shift Ctrl Forward
                if (Event.current.Equals(m_spawner.m_defaults.KeyForwardEvent(true, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    m_spawner.m_lastSpawnedObject.transform.Translate(Vector3.up * 0.1f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Ctrl Backward
                if (Event.current.Equals(m_spawner.m_defaults.KeyBackwardEvent(false, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    Vector3 movement = Quaternion.Euler(0F, SceneView.lastActiveSceneView.rotation.eulerAngles.y, 0f) * Vector3.back;
                    m_spawner.m_lastSpawnedObject.transform.position += (movement * 0.05f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }

                //Shift Ctrl Backward
                if (Event.current.Equals(m_spawner.m_defaults.KeyBackwardEvent(true, true)))
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    m_spawner.m_lastSpawnedObject.transform.Translate(Vector3.down * 0.1f);
                    Event.current.Use();
                    GUIUtility.hotControl = 0;
                    return;
                }
            }

            // Ctrl Delete
            if (Event.current.Equals(m_spawner.m_defaults.KeyDeleteEvent(false, true)))
            {
                GUIUtility.hotControl = m_editor_control_id;
                if (EditorUtility.DisplayDialog("WARNING!",
                    "Are you sure you want to delete all instances of resources referred to by this spawner from your scene?",
                    "OK", "Cancel"))
                {
                    m_spawner.UnspawnAll();
                }
                Event.current.Use();
                GUIUtility.hotControl = 0;
                return;
            }

            //Scroll wheel
            if (Event.current.type == EventType.ScrollWheel)
            {
                if (Event.current.control)
                {
                    m_spawner.m_minInstances += (int)Event.current.delta.y;
                    if (m_spawner.m_minInstances < 1)
                    {
                        m_spawner.m_minInstances = 1;
                    }
                    Event.current.Use();
                    m_spawner.UpdateTargetSpawnerRanges();
                    SceneView.RepaintAll();
                    return;
                }
                else if (Event.current.shift)
                {
                    m_spawner.m_maxSpawnRange += Event.current.delta.y;
                    if (m_spawner.m_maxSpawnRange < 1f)
                    {
                        m_spawner.m_maxSpawnRange = 1f;
                    }
                    Event.current.Use();
                    m_spawner.UpdateTargetSpawnerRanges();
                    SceneView.RepaintAll();
                    return;
                }
            }

            //Check for the shift + ctrl + left mouse button event - spawn entire terrain
            if (Event.current.shift == true && Event.current.control == true && Event.current.isMouse == true)
            {
                if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
                {
                    GUIUtility.hotControl = m_editor_control_id;

                    Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 10000f))
                    {
                        m_spawner.SetSpawnOriginAndUpdateRanges(hitInfo.transform, hitInfo.point, hitInfo.normal);
                        m_spawner.SpawnGlobally();
                        SceneView.RepaintAll();
                        GUIUtility.hotControl = 0;
                        return;
                    }
                }
                else if (GUIUtility.hotControl == m_editor_control_id && Event.current.type == EventType.MouseUp && Event.current.button == 0)
                {
                    GUIUtility.hotControl = 0;
                }
                return;
            }

            //Check for the shift  + left mouse button event - move visualisation
            if (Event.current.shift == true && Event.current.isMouse == true)
            {
                if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
                {
                    GUIUtility.hotControl = m_editor_control_id;
                    Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 10000f))
                    {
                        m_spawner.m_showGizmos = true;
                        m_spawner.SetSpawnOriginAndUpdateRanges(hitInfo.transform, hitInfo.point, hitInfo.normal);
                        SceneView.RepaintAll();
                        return;
                    }
                }
                else if (GUIUtility.hotControl == m_editor_control_id && Event.current.type == EventType.MouseDrag && Event.current.button == 0 && m_spawner.m_enableRotationDragUpdate)
                {
                    Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 10000f))
                    {
                        Quaternion rot = Quaternion.LookRotation(hitInfo.point - m_spawner.m_spawnOriginLocation);
                        m_spawner.m_minRotationY = m_spawner.m_maxRotationY = rot.eulerAngles.y;
                        SceneView.RepaintAll();
                        return;
                    }
                }
                else if (GUIUtility.hotControl == m_editor_control_id && Event.current.type == EventType.MouseUp && Event.current.button == 0)
                {
                    GUIUtility.hotControl = 0;
                }
            }

            //Check for the ctrl + left mouse button event - spawn
            if (Event.current.control == true && Event.current.isMouse == true)
            {
                if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
                {
                    GUIUtility.hotControl = m_editor_control_id;

                    Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 10000f))
                    {
                        m_spawner.SetSpawnOriginAndUpdateRanges(hitInfo.transform, hitInfo.point, hitInfo.normal);
                        m_spawner.Spawn(hitInfo.point, false);
                        GUIUtility.hotControl = 0;
                    }
                    SceneView.RepaintAll();
                    return;
                }
                else if (GUIUtility.hotControl == m_editor_control_id && Event.current.type == EventType.MouseUp &&
                         Event.current.button == 0)
                {
                    GUIUtility.hotControl = 0;
                }
                return;
            }

            //Visualise it
            if (m_spawner.m_rotationAlgorithm == Constants.RotationAlgorithm.Ranged)
            {
                if (HasTrees(m_spawner.m_spawnPrototypes) || HasPrefabs(m_spawner.m_spawnPrototypes) || m_spawner.m_critMaskType == Constants.MaskType.Image)
                {
                    if (Spawner.ApproximatelyEqual(m_spawner.m_minRotationY, m_spawner.m_maxRotationY))
                    {
                        Handles.color = Color.green;
                        Quaternion visRot = Quaternion.Euler(0f, m_spawner.m_minRotationY, 0f);
                        Handles.ArrowCap(m_editor_control_id, m_spawner.m_spawnOriginLocation, visRot, Mathf.Clamp(m_spawner.m_maxSpawnRange / 3f, 3f, 5f));
                    }
                    else
                    {
                        Handles.color = new Color(0f, 255f, 0f, 0.15f);
                        Handles.DrawSolidArc(m_spawner.m_spawnOriginLocation, Vector3.up, Quaternion.AngleAxis(m_spawner.m_minRotationY, Vector3.up) * Vector3.forward, m_spawner.m_maxRotationY - m_spawner.m_minRotationY, Mathf.Clamp(m_spawner.m_maxSpawnRange / 3f, 3f, 5f));
                    }
                }
            }
        }

        /// <summary>
        /// Make a deep copy of the prototype list
        /// </summary>
        /// <param name="sourcePrototypes"></param>
        /// <returns></returns>
        List<Prototype> CopyPrototypes(List<Prototype> sourcePrototypes)
        {
            List<Prototype> protoList = new List<Prototype>();
            foreach (var srcProto in sourcePrototypes)
            {
                protoList.Add(new Prototype(srcProto));
            }
            return protoList;
        }

        /// <summary>
        /// Return true if the resource list provided has prefabs
        /// </summary>
        /// <param name="sourcePrototypes"></param>
        /// <returns></returns>
        bool HasPrefabs(List<Prototype> sourcePrototypes)
        {
            foreach (var srcProto in sourcePrototypes)
            {
                if (srcProto.m_resourceType == Constants.ResourceType.Prefab)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// Return true if the resource list provided has trees
        /// </summary>
        /// <param name="sourcePrototypes"></param>
        /// <returns></returns>
        bool HasTrees(List<Prototype> sourcePrototypes)
        {
            foreach (var srcProto in sourcePrototypes)
            {
                if (srcProto.m_resourceType == Constants.ResourceType.TerrainTree)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// Edit the selected resource
        /// </summary>
        /// <param name="proto"></param>
        /// <param name="res"></param>
        /// <param name="indented"></param>
        void EditResource(Prototype proto, Resource res, bool indented)
        {
            if (indented == true)
            {
                EditorGUI.indentLevel++;
            }
            res.m_name = EditorGUILayout.TextField(GetLabel("Resource Name"), res.m_name);
            res.m_successRate = EditorGUILayout.Slider(GetLabel("Success"), res.m_successRate, 0f, 1f);

            if (res.m_resourceType == Constants.ResourceType.Prefab)
            {
                res.m_conformToSlope = EditorGUILayout.Toggle(GetLabel("Conform Slope"), res.m_conformToSlope);

                res.m_prefab = (GameObject) EditorGUILayout.ObjectField(GetLabel("Prefab"), res.m_prefab, typeof(GameObject), false);

                res.m_minOffset = EditorGUILayout.Vector3Field(GetLabel("Min Position Offset"), res.m_minOffset);
                res.m_maxOffset = EditorGUILayout.Vector3Field(GetLabel("Max Position Offset"), res.m_maxOffset);

                res.m_minRotation = EditorGUILayout.Vector3Field(GetLabel("Min Rotation Offset"), res.m_minRotation);
                res.m_maxRotation = EditorGUILayout.Vector3Field(GetLabel("Max Rotation Offset"), res.m_maxRotation);

                res.m_sameScale = EditorGUILayout.Toggle(GetLabel("Same O Scale"), res.m_sameScale);
                if (res.m_sameScale)
                {
                    res.m_minScale.x = EditorGUILayout.Slider(GetLabel("Min Scale"), res.m_minScale.x, 0.1f, 100f);
                    res.m_maxScale.x = EditorGUILayout.Slider(GetLabel("Max Scale"), res.m_maxScale.x, 0.1f, 100f);
                }
                else
                {
                    res.m_minScale = EditorGUILayout.Vector3Field(GetLabel("Min Scale"), res.m_minScale);
                    res.m_maxScale = EditorGUILayout.Vector3Field(GetLabel("Max Scale"), res.m_maxScale);
                }

                res.m_baseColliderUseConstScale = EditorGUILayout.Toggle(GetLabel("Same C Scale"), res.m_baseColliderUseConstScale);
                if (res.m_baseColliderUseConstScale)
                {
                    res.m_baseColliderConstScaleAmount = EditorGUILayout.Slider(GetLabel("Collider Scale"), res.m_baseColliderConstScaleAmount, 0.25f, 2f);
                }
                else
                {
                    res.m_baseColliderScale = EditorGUILayout.Vector3Field(GetLabel("Collider Scale"), res.m_baseColliderScale);
                }

                res.m_flagBatchingStatic = EditorGUILayout.Toggle(GetLabel("Static Batching"), res.m_flagBatchingStatic);
                res.m_flagLightmapStatic = EditorGUILayout.Toggle(GetLabel("Static Lightmap"), res.m_flagLightmapStatic);
                res.m_flagNavigationStatic = EditorGUILayout.Toggle(GetLabel("Static Navigation"), res.m_flagNavigationStatic);
                res.m_flagOccludeeStatic = EditorGUILayout.Toggle(GetLabel("Static Occludee"), res.m_flagOccludeeStatic);
                res.m_flagOccluderStatic = EditorGUILayout.Toggle(GetLabel("Static Occluder"), res.m_flagOccluderStatic);
                res.m_flagOffMeshLinkGeneration = EditorGUILayout.Toggle(GetLabel("Offmesh Link Gen"), res.m_flagOffMeshLinkGeneration);
                res.m_flagReflectionProbeStatic = EditorGUILayout.Toggle(GetLabel("Static Ref Probe"), res.m_flagReflectionProbeStatic);
                res.m_flagMovingObject = EditorGUILayout.Toggle(GetLabel("Moving Object"), res.m_flagMovingObject);
                res.m_flagIsOutdoorObject = EditorGUILayout.Toggle(GetLabel("Outdoor Object"), res.m_flagIsOutdoorObject);
                res.m_flagForceOptimise = EditorGUILayout.Toggle(GetLabel("Force Optimise"), res.m_flagForceOptimise);
                res.m_flagCanBeOptimised = EditorGUILayout.Toggle(GetLabel("Can Optimise"), res.m_flagCanBeOptimised);
                if (res.m_flagForceOptimise == true)
                {
                    res.m_flagCanBeOptimised = true;
                }

                EditorGUILayout.LabelField(GetLabel("Base Size"), GetLabel(string.Format("{0:0.00}, {1:0.00}, {2:0.00}", res.m_baseSize.x, res.m_baseSize.y, res.m_baseSize.z)));
                EditorGUILayout.LabelField(GetLabel("Base Scale"), GetLabel(string.Format("{0:0.00}, {1:0.00}, {2:0.00}", res.m_baseScale.x, res.m_baseScale.y, res.m_baseScale.z)));
                EditorGUILayout.LabelField(GetLabel("Spawned"), GetLabel(string.Format("{0}", res.m_instancesSpawned)));
            }
            else if (res.m_resourceType == Constants.ResourceType.TerrainGrass)
            {
                Terrain terrain = Terrain.activeTerrain;
                if (terrain != null)
                {
                    GUIContent[] assetChoices = new GUIContent[terrain.terrainData.detailPrototypes.Length];
                    DetailPrototype detailProto;
                    for (int assetIdx = 0; assetIdx < assetChoices.Length; assetIdx++)
                    {
                        detailProto = terrain.terrainData.detailPrototypes[assetIdx];
                        if (detailProto.prototypeTexture != null)
                        {
                            assetChoices[assetIdx] = new GUIContent(detailProto.prototypeTexture.name);
                        }
                        else if (detailProto.prototype != null)
                        {
                            assetChoices[assetIdx] = new GUIContent(detailProto.prototype.name);
                        }
                        else
                        {
                            assetChoices[assetIdx] = new GUIContent("Unknown asset");
                        }
                    }
                    int oldIdx = res.m_terrainProtoIdx;
                    res.m_terrainProtoIdx = EditorGUILayout.Popup(GetLabel("Grass"), res.m_terrainProtoIdx, assetChoices);

                    res.m_sameScale = true;
                    res.m_minScale.x = EditorGUILayout.Slider(GetLabel("Min Strength"), res.m_minScale.x, 0f, 1f);
                    res.m_maxScale.x = EditorGUILayout.Slider(GetLabel("Max Strength"), res.m_maxScale.x, 0f, 1f);

                    if (res.m_terrainProtoIdx != oldIdx)
                    {
                        detailProto = terrain.terrainData.detailPrototypes[res.m_terrainProtoIdx];
                        if (detailProto.prototypeTexture != null)
                        {
                            res.m_name = detailProto.prototypeTexture.name;
                            proto.m_name = res.m_name;
                        }
                        else if (detailProto.prototype != null)
                        {
                            res.m_name = detailProto.prototype.name;
                            proto.m_name = res.m_name;
                        }
                        else
                        {
                            res.m_name = "Unknown asset";
                            proto.m_name = res.m_name;
                        }
                        res.m_baseSize = new Vector3(detailProto.minWidth, detailProto.minHeight, detailProto.minWidth);
                        proto.m_size = res.m_baseSize;
                        proto.m_extents = res.m_baseSize*0.5f;
                    }
                    EditorGUILayout.LabelField(GetLabel("Base Size"), GetLabel(string.Format("{0:0.00}, {1:0.00}, {2:0.00}", res.m_baseSize.x, res.m_baseSize.y, res.m_baseSize.z)));
                    EditorGUILayout.LabelField(GetLabel("Spawned"), GetLabel(string.Format("{0}", res.m_instancesSpawned)));
                }
            }
            else if (res.m_resourceType == Constants.ResourceType.TerrainTree)
            {
                Terrain terrain = Terrain.activeTerrain;
                if (terrain != null)
                {
                    GUIContent[] assetChoices = new GUIContent[terrain.terrainData.treePrototypes.Length];
                    TreePrototype treeProto;
                    for (int assetIdx = 0; assetIdx < assetChoices.Length; assetIdx++)
                    {
                        treeProto = terrain.terrainData.treePrototypes[assetIdx];
                        if (treeProto.prefab != null)
                        {
                            assetChoices[assetIdx] = new GUIContent(treeProto.prefab.name);
                        }
                        else
                        {
                            assetChoices[assetIdx] = new GUIContent("Unknown asset");
                        }
                    }
                    int oldIdx = res.m_terrainProtoIdx;
                    res.m_terrainProtoIdx = EditorGUILayout.Popup(GetLabel("Tree"), res.m_terrainProtoIdx, assetChoices);
                    if (res.m_terrainProtoIdx != oldIdx)
                    {
                        treeProto = terrain.terrainData.treePrototypes[res.m_terrainProtoIdx];
                        if (treeProto.prefab != null)
                        {
                            res.m_name = treeProto.prefab.name;
                            proto.m_name = res.m_name;
                        }
                        else
                        {
                            res.m_name = "Unknown asset";
                            proto.m_name = res.m_name;
                        }
                        res.m_baseSize = GetInstantiatedBounds(treeProto.prefab).size;
                        proto.m_size = res.m_baseSize;
                        proto.m_extents = res.m_baseSize*0.5f;
                    }
                    res.m_minRotation.y = EditorGUILayout.Slider(GetLabel("Min Rotation Offset"), res.m_minRotation.y, 0f, 360f);
                    res.m_maxRotation.y = EditorGUILayout.Slider(GetLabel("Max Rotation Offset"), res.m_maxRotation.y, 0f, 360f);
                    EditorGUILayout.LabelField(GetLabel("Base Size"), GetLabel(string.Format("{0:0.00}, {1:0.00}, {2:0.00}", res.m_baseSize.x, res.m_baseSize.y, res.m_baseSize.z)));
                    EditorGUILayout.LabelField(GetLabel("Spawned"), GetLabel(string.Format("{0}", res.m_instancesSpawned)));
                }
            }

            if (indented == true)
            {
                EditorGUI.indentLevel--;
            }
        }

        /// <summary>
        /// Handle drop area for new objects
        /// </summary>
        public bool DrawPrefabGUI(ref List<Prototype> protoList)
        {
            //Ok - set up for drag and drop
            Event evt = Event.current;
            Rect drop_area = GUILayoutUtility.GetRect(0.0f, 50.0f, GUILayout.ExpandWidth(true));
            GUI.Box(drop_area, "Add Prefabs, SpeedTrees or Spawners here.", m_boxStyle);

            if (evt.type == EventType.DragPerform || evt.type == EventType.DragUpdated)
            {
                if (!drop_area.Contains(evt.mousePosition))
                    return false;

                DragAndDrop.visualMode = DragAndDropVisualMode.Copy;

                if (evt.type == EventType.DragPerform)
                {
                    DragAndDrop.AcceptDrag();

                    List<GameObject> resources = new List<GameObject>();

                    //Handle game objects / prefabs
                    foreach (UnityEngine.Object dragged_object in DragAndDrop.objectReferences)
                    {
                        if (dragged_object is GameObject)
                        {
                            GameObject go = dragged_object as GameObject;
                            if (go.GetComponent<Spawner>() != null)
                            {
                                //We dont want to spawn spawners
                                Debug.LogWarning("You can not add spawners.");
                            }
                            else
                            {
                                PrefabType pt = PrefabUtility.GetPrefabType(go);
                                if (pt == PrefabType.Prefab || pt == PrefabType.PrefabInstance || pt == PrefabType.ModelPrefabInstance)
                                {
                                    if (m_spawner != null)
                                    {
                                        resources.Add(go);
                                    }
                                }
                            }
                        }
                    }

                    //Handle speedtrees
                    foreach (var path in DragAndDrop.paths)
                    {
                        //Update in case unity has messed with it 
                        if (path.StartsWith("Assets"))
                        {
                            //Check file type and process as we can
                            string fileType = Path.GetExtension(path).ToLower();

                            //Check for speed trees - and add them
                            if (fileType == ".spm")
                            {
                                GameObject speedTree = AssetDatabase.LoadAssetAtPath<GameObject>(path);
                                if (speedTree != null)
                                {
                                    resources.Add(speedTree);
                                }
                                else
                                {
                                    Debug.LogWarning("Unable to load " + path);
                                }
                            }
                        }
                    }

                    //Start managing them
                    AddGameObjects(ref protoList, resources);
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// Add the game object from a list of prefabs instantiated as game objects
        /// </summary>
        /// <param name="protoList">The list of prototypes to add the object to</param>
        /// <param name="resourceList">The list of resources to generate the prototype</param>
        public void AddGameObjects(ref List<Prototype> protoList, List<GameObject> resourceList)
        {
            if (resourceList == null || resourceList.Count < 1)
            {
                Debug.LogWarning("Can't add null or empty resource list");
                return;
            }

            if (m_spawner == null)
            {
                Debug.LogWarning("Can't add resources because spawner is missing");
                return;
            }

            float rotation = 0;

            //Create and add the prototype
            Prototype proto = new Prototype();
            proto.m_name = resourceList[0].name;
            proto.m_resourceType = Constants.ResourceType.Prefab;
            protoList.Add(proto);

            //Now add in all the resources
            Resource res = null;
            Bounds localBounds;
            Bounds localColliderBounds;
            Bounds globalBounds = new Bounds();
            Dictionary<string, string> names = new Dictionary<string, string>();

            //First calculate global bounds - everything will be relative to this
            foreach (GameObject go in resourceList)
            {
                //Calculate the bounds
                localBounds = GetInstantiatedBounds(go);

                //If first time then set things up
                if (globalBounds.size == Vector3.zero)
                {
                    globalBounds = new Bounds(localBounds.center, localBounds.size);
                }
                //Otherwise expand on it
                else
                {
                    globalBounds.Encapsulate(localBounds);
                }
            }
            proto.m_size = globalBounds.size;
            proto.m_extents = proto.m_size*0.5f;
            proto.m_forwardRotation = rotation;

            //Activate bounds checking and adjust for speedtrees
            m_spawner.m_critVirginCheckType = Constants.VirginCheckType.Bounds;

            //Then process each resource
            foreach (GameObject go in resourceList)
            {
                //Create a new resource
                res = new Resource();
                res.m_name = GetUniqueName(go.name, ref names);

                if (PrefabUtility.GetPrefabType(go) == PrefabType.PrefabInstance)
                {
                    res.m_prefab = PrefabUtility.GetPrefabParent(go) as GameObject;
                }
                else
                {
                    res.m_prefab = go;
                }

                //Get bounds
                localBounds = GetInstantiatedBounds(go);
                localColliderBounds = GetLocalColliderBounds(go);

                //Get colliders
                res.m_hasRootCollider = HasRootCollider(go);
                res.m_hasColliders = HasColliders(go);
                if (res.m_hasColliders)
                {
                    proto.m_hasColliders = true;
                }

                //Get meshes
                res.m_hasMeshes = HasMeshes(go);
                if (res.m_hasMeshes)
                {
                    proto.m_hasMeshes = true;
                }

                //Get rigid body
                res.m_hasRigidBody = HasRigidBody(go);
                if (res.m_hasRigidBody)
                {
                    proto.m_hasRigidBody = true;
                }

                //Get flags
                StaticEditorFlags flags = GameObjectUtility.GetStaticEditorFlags(res.m_prefab);
                res.m_flagBatchingStatic = (flags & StaticEditorFlags.BatchingStatic) == StaticEditorFlags.BatchingStatic;
                res.m_flagLightmapStatic = (flags & StaticEditorFlags.LightmapStatic) == StaticEditorFlags.LightmapStatic;
                res.m_flagNavigationStatic = (flags & StaticEditorFlags.NavigationStatic) == StaticEditorFlags.NavigationStatic;
                res.m_flagOccludeeStatic = (flags & StaticEditorFlags.OccludeeStatic) == StaticEditorFlags.OccludeeStatic;
                res.m_flagOccluderStatic = (flags & StaticEditorFlags.OccluderStatic) == StaticEditorFlags.OccluderStatic;
                res.m_flagOffMeshLinkGeneration = (flags & StaticEditorFlags.OffMeshLinkGeneration) == StaticEditorFlags.OffMeshLinkGeneration;
                res.m_flagReflectionProbeStatic = (flags & StaticEditorFlags.ReflectionProbeStatic) == StaticEditorFlags.ReflectionProbeStatic;

                //Offets
                res.m_minOffset.x = res.m_maxOffset.x = go.transform.position.x - globalBounds.center.x;
                res.m_minOffset.y = res.m_maxOffset.y = go.transform.position.y; // Assume zero is ground
                res.m_minOffset.z = res.m_maxOffset.z = go.transform.position.z - globalBounds.center.z;

                //Rotation
                if (resourceList.Count == 1)
                {
                    res.m_minRotation.x = res.m_maxRotation.x = go.transform.localEulerAngles.x;
                    res.m_minRotation.y = 0f;
                    res.m_maxRotation.y = 360f;
                    res.m_minRotation.z = res.m_maxRotation.z = go.transform.localEulerAngles.z;
                }
                else
                {
                    res.m_minRotation.x = res.m_maxRotation.x = go.transform.localEulerAngles.x;
                    res.m_minRotation.y = res.m_maxRotation.y = go.transform.localEulerAngles.y;
                    res.m_minRotation.z = res.m_maxRotation.z = go.transform.localEulerAngles.z;
                }

                res.m_conformToSlope = true;
                if (Spawner.ApproximatelyEqual(go.transform.localScale.x, go.transform.localScale.y, 0.000001f) && Spawner.ApproximatelyEqual(go.transform.localScale.x, go.transform.localScale.z, 0.000001f))
                {
                    res.m_sameScale = true;
                }
                else
                {
                    res.m_sameScale = false;
                }
                res.m_minScale.x = res.m_maxScale.x = go.transform.localScale.x;
                res.m_minScale.y = res.m_maxScale.y = go.transform.localScale.y;
                res.m_minScale.z = res.m_maxScale.z = go.transform.localScale.z;

                res.m_baseSize = localBounds.size;
                res.m_baseScale = go.transform.localScale;
                res.m_baseColliderCenter = localColliderBounds.center;
                res.m_baseColliderScale = localColliderBounds.size;

                //Add it to the resources list
                proto.m_resources.Add(res);
            }
        }

        /// <summary>
        /// Display a button that takes editor indentation into account
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        bool DisplayButton(GUIContent content)
        {
            TextAnchor oldalignment = GUI.skin.button.alignment;
            GUI.skin.button.alignment = TextAnchor.MiddleLeft;
            Rect btnR = EditorGUILayout.BeginHorizontal();
            btnR.xMin += (EditorGUI.indentLevel*18f);
            btnR.height += 20f;
            btnR.width -= 4f;
            bool result = GUI.Button(btnR, content);
            EditorGUILayout.EndHorizontal();
            GUILayout.Space(22);
            GUI.skin.button.alignment = oldalignment;
            return result;
        }

        /// <summary>
        /// Get a content label - look the tooltip up if possible
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        GUIContent GetLabel(string name)
        {
            string tooltip = "";
            if (m_spawner.m_advShowMouseOverHelp)
            {
                if (m_tooltips.TryGetValue(name, out tooltip))
                {
                    return new GUIContent(name, tooltip);
                }
                else
                {
                    return new GUIContent(name);
                }
            }
            else
            {
                return new GUIContent(name);
            }
        }

        /// <summary>
        /// The tooltips
        /// </summary>
        static Dictionary<string, string> m_tooltips = new Dictionary<string, string>
        {
            { "Name", "If prefabs will be spawned, they will be parented to this Game Object."},
            { "Min Instances", "The minimum instances to spawn. Spawner will stop either when the randomised value between min and max instances are spawned, or a safety timeout is hit (happens when it is not possible to spawn any instances)."},
            { "Max Instances", "The maximum instances to spawn. Spawner will stop either when when the randomised value between min and max instances are spawned, or a safety timeout is hit (happens when it is not possible to spawn any instances)."},
            { "Throw Distance", "The maximum distance to the next spawn location based on the spawn type."},
            { "Spawn Range", "The maximum distance from the clicked location that spawning will be attempted."},
            { "Spawn Shape", "The shape that will be used to calculate spawn range."},
            { "Spawn Seed", "The unique seed for this spawner. When you change this or Reset the spawner this will be reset to the beginning of the sequence."},
            { "Merge Instances", "If prefabs are spawned, and one of these already exists, they will be merged into it."},
            { "Show Gizmos", "Shows or hides visualisation Gizmos. Green balls inidcate where a spawn might happen. Blue plane shows minimum spawn height / water level."},

            //Spawn criteria
            { "Check Collisions", "None: Don't check for collisions.\nPoint: Check location spawned for collisions.\nBounds: Check the area bounded by the spawned object for collisions."},
            { "Modify Bounds", "Modify the bounding volume of objects being spawned. Use this to control how closely new objects can be spawned to existing ones. Represented as a percentage of the size of the object. A negative value is good for trees their foilage often overlaps."},
            { "Forward Rotation", "The rotation of the object will be offset by this rotation. Useful when configuring objects for precise rotation when using Draggable Rotation in the Advanced Settings section."},
            { "Fit Within Mask", "Will ensure that the prototype is only spawned only if it fits completely on top of the the underlying mask. If not set then the object will be spawned on the mask, but its edges can also extend off it. If you use this then you need to make sure that the size of the masked area is big enough to fit the entire prototype."},
            { "Check Height", "Check height when spawning."},
            { "Min Height", "Minimum height that can be spawned. Visualised as blue plane as it can be used to represent water."},
            { "Height Range", "Spawn within in the height range selected from where the spawn was initiated."},
            { "Check Slope", "Check slope when spawning."},
            { "Slope Range", "Spawn will take place in the slope range selected from where the spawn was initiated."},
            { "Check Textures", "Check textures when spawning."},
            { "Texture Strength", "The stength of the texture in the range 0..1 from where the spawn was initated."},
            { "Texture Range", "The stength range of the texture in the range 0..1 from where the spawn was initated."},
            { "Check Mask", "Check a mask when spawning."},
            { "Mask Type", "Perlin, Billow, Ridged - noise based masks. Noise is evaluated in world space.\nImage - Image based masks. Match the prototype to colours on the image."},
            { "Seed", "The seed for the noise function - the same seed will always generate the same noise for a given set of parameters."},
            { "Octaves", "The amount of detail in the noise - more octaves mean more detail and longer calculation time."},
            { "Persistence", "The roughness of the noise. Controls how quickly amplitudes diminish for successive octaves. 0..1."},
            { "Frequency", "The frequency of the first octave. Smaller values create larger noise patterns."},
            { "Lacunarity", "The frequency multiplier between successive octaves. Experiment between 1.5 - 3.5."},
            { "Mid Point", "The part of the noise curve that is treated as the midpoint of the noise function."},
            { "Range", "The range around the midpoint used to select the noise for spawning."},
            { "Invert Mask", "Invert the noise mask."},
            { "Image Mask", "The image to be used as the mask. The image will be evaluated over the spawn range. Optionally use the alpha channel to control scale and density of the spawwned object."},

            //Placement criteria
            { "Spawn Type", "The algorithm used to choose where instances are spawned. Individual objects will be further offset from the location selected by their local position offset setting defined on their prototype settings.\n\nCentered: All spawn attempts will be centered from where you clicked up to the Throw Distance.\n\nEvery: Spawns will be attempted at every location in the Spawn Range. Locations will be incremented by the Throw Distance, plus or minus the Throw Distance * Jitter Strength. Set Jitter Strength to zero for straight lines.\n\nOrganic: Spawns will be attempted up to the Throw Distance from other successful spawns.\n\nLast Spawn: Spawns will be attempted from up to the Throw Distance from last instance spawned."},
            { "Jitter Strength", "The amount of jitter that will be introduced to the spawn. A value of zero will generate straight lines, a value of one will create random placement at approximately Throw Distance intervals."},
            { "Rotation Type", "The algorithm used to choose how spawns are rotated in the Y axis. Individual objects will be further offset from this rotation by adding their offset rotation to the overall rotation that is applied.\n\nRanged: Rotation will be randomised between the min and max rotation settings. Click on Enable Draggable Rotation under Advanced Settings to set this by shift dragging the mouse in the desired direction.\n\nLast Spawn Center: Spawned objects will be rotated from the centre of the last spawned object to the current spawn location.\n\nLast Spawn Closest: Spawned objects will be rotated from the closest point of the last spawned object to the current spawn location. This can get better results with things like fences.\n\nNOTE: You can also apply a generic rotation to the object being spawned by adjusting the Min and Max Rotation Offset Y values in the Detail settings for the selected Prototype."},
            { "Same Scale XYZ", "Use the same scale on x, y and z for all objects placed into scene."},
            { "Min Rotation", "Minimum Y rotation that an object will be placed into a scene."},
            { "Max Rotation", "Maximim Y rotation that an object will be placed into a scene."},
            { "Fwd Rotation Offset", "This is added to the Y rotation. Mostly used with draggable rotation to correct for 'forward'."},
            { "Min Scale", "Minimum placement scale."},
            { "Max Scale", "Maximum placement scale."},
            { "Min Scale X", "Minimum X placement scale."},
            { "Max Scale X", "Maximum X placement scale."},
            { "Min Scale Y", "Minimum Y placement scale."},
            { "Max Scale Y", "Maximum Y placement scale."},
            { "Min Scale Z", "Minimum Z placement scale."},
            { "Max Scale Z", "Maximum Z placement scale."},
            { "Use Gravity", "Objects will be spawned using the Gravity system. Select this. Then spawn your prefab based instances into the scene. Then run the game and wait for Gravity to take its course. Then stop and when you are happy Finalise Gravity - which will re-spawn the objects with their original settings in their new locations. Finally, deselect this to switch off the Gravity system."},

            //Spawn prototypes
            { "Resource Name", "The name of the resource."},
            { "Success", "A range between zero and one that indicates how likely the prototype is to spawn. Zero will never spawn, One will always spawn assuming spawn criteria are met."},
            { "Conform Slope", "Conform the prefab to the normal of the slope on which it will be spawned."},
            { "Prefab", "The prefab that will be spawned. This can be any prefab. NOTE: The prefab must have a collider so that GeNa can detect it and stop other objects from spawning in the same space."},
            { "Min Position Offset", "The minimum position offset from the spawn location that prefab that will be spawned. Use this to provide fine grained location control."},
            { "Max Position Offset", "The maximum position offset from the spawn location that prefab that will be spawned. Use this to provide fine grained location control."},
            { "Min Rotation Offset", "The minimum rotation offset from the rotation of the prefab that will be spawned. It will be added to the rotation chosen in Placement Criteria. Use this to provide fine grained rotation control."},
            { "Max Rotation Offset", "The maximim rotation offset from the rotation of the prefab that will be spawned. It will be added to the rotation chosen in Placement Criteria. Use this to provide fine grained rotation control."},
            { "Same O Scale", "Apply a constant scale override to the scale of the object spawned, or apply a ranged scale. Spawned scale will be the original object scale multiplied by this scale, multiplied by the scale assigned in Placement Criteria."},
            { "Same C Scale", "Apply a constant scale override to the scale of the collider on the object spawned when using gravity, or apply a per dimension scale."},
            { "Static Batching", "Spawn the prefab with or without static batching flag."},
            { "Static Lightmap", "Spawn the prefab with or without static lightmap flag."},
            { "Static Navigation", "Spawn the prefab with or without static navigation flag."},
            { "Static Occludee", "Spawn the prefab with or without static occludee flag."},
            { "Static Occluder", "Spawn the prefab with or without static occluder flag."},
            { "Static Ref Probe", "Spawn the prefab with or without static reflection probe flag."},
            { "Outdoor Object", "This is an outdoor object, blend probes will also use the Skybox when spawning, otherwies will exclude Skybox"},
            { "Can Optimise", "The prefab will be considered for optimisation if Optimize Bake is chosen in Advanced Settings."},
            { "Force Optimise", "The prefab will forced through the optimisation process if Optimize Bake is chosen in Advanced Settings."},
            { "Base Size", "The base size of the resource."},
            { "Base Scale", "The base scale of the resource."},
            { "Delete Proto", "Delete this prototype."},
            { "Delete Instances", "Delete all spawned instance of this prototype."},
            { "Conform All", "Set the Conform Slope flag on all resources."},
            { "Conform None", "Deselect the Conform Slope flag on all resources."},
            { "Grass", "The terrain grass to be spawned"},
            { "Min Strength", "The minimum strength of the terrain grass to be spawned. This equates to target strength on the grass control in your terrain settings."},
            { "Max Strength", "The maximum strength of the terrain grass to be spawned. This equates to target strength on the grass control in your terrain settings."},
            { "Tree", "The terrain tree to be spawned"},

            //Advanced settings
            { "Force Spawn", "When selected at least one intance of the object will always be spawned at the location you clicked."},
            { "Show Tooltips", "When selected hovering the mouse over a control will display a description of its effect."},
            { "Show Detailed Help", "When selected detailed control key help will be shown at the top of the GeNa spawner."},
            { "Use Large Ranges", "When selected the range of some sliders such as spawn instances and range is dramatically increased to enable larger spawns."},
            { "Draggable Rotation", "When selected the rotation for a component can be dragged to update it to a given direction for precise rotation control. Only valid for Ranged rotation types."},
            { "Scale Nearest Int", "When selected prefabs will be scaled to the nearest integer number - increases its chance of being batched."},
            { "Actual Bounds Res", "Controls the resolution in meters over which the bounds based resources are scanned when a spawn is initiated. Increase this value to get a less accurate but faster spawn."},
            { "Visualiser Bounds Res", "Controls the resolution in meters over which the bounds based resources are scanned when the visualiser is updated. Decrease this value to get a more accurate but slower visualisation."},
            { "Add Collider To POI", "Will add a sphere collider to POI spawns when they are spawned - this will stop other things from spawning in same space."},
            { "Visualiser Resolution", "Controls the number of visualiser points being displayed. Decrease this on slower machines."},
            { "Add Light Probes", "Light probes will automatically be added when spawning Prefabs, but will not be more dense than the minimum probe distance."},
            { "  Min PG Dist", "Minimum distance between spawned light probe groups."},
            { "  Min Probe Dist", "Minimum distance between spawned light probes."},
            { "Spawn Optimizer", "Smaller prefabs will be considered for optimization. Can reduce bake times from hours to minutes."},
            { "  Smaller Than (m)", "Prefabs smaller than this size after scaling will be optimized, as well as prefabs with force optimize set to on."},

            //Add assets box
            { "Add\nGrass", "Add a grass from the grass configured in your terrain."},
            { "Add\nTree", "Add a tree from the trees configured in your terrain."},
        };

        /// <summary>
        /// Return the bounds of the supplied game object
        /// </summary>
        /// <param name="go"></param>
        /// <returns></returns>
        Bounds GetBounds(GameObject go)
        {
            Bounds bounds = new Bounds(go.transform.position, Vector3.zero);
            foreach (Renderer r in go.GetComponentsInChildren<Renderer>())
            {
                bounds.Encapsulate(r.bounds);
            }
            foreach (Collider c in go.GetComponentsInChildren<Collider>())
            {
                bounds.Encapsulate(c.bounds);
            }
            return bounds;
        }

        /// <summary>
        /// Return the bounds of an instantiated instance of the supplied object
        /// </summary>
        /// <param name="prefab"></param>
        /// <returns></returns>
        Bounds GetInstantiatedBounds(GameObject prefab)
        {
            GameObject go = Instantiate(prefab);
            go.transform.position = prefab.transform.position;
            Bounds bounds = new Bounds(go.transform.position, Vector3.zero);
            foreach (Renderer r in go.GetComponentsInChildren<Renderer>())
            {
                bounds.Encapsulate(r.bounds);
            }
            foreach (Collider c in go.GetComponentsInChildren<Collider>())
            {
                bounds.Encapsulate(c.bounds);
            }
            DestroyImmediate(go);
            return bounds;
        }

        /// <summary>
        /// Return the local collider bounds of the supplied game object
        /// </summary>
        /// <param name="go"></param>
        /// <returns></returns>
        Bounds GetLocalColliderBounds(GameObject go)
        {
            Bounds bounds = new Bounds();
            GameObject newGo = Instantiate(go);
            Collider c;
            foreach (Renderer r in newGo.GetComponentsInChildren<Renderer>())
            {
                c = r.gameObject.GetComponent<Collider>();
                if (c != null)
                {
                    bounds.Encapsulate(c.bounds);
                }
                else
                {
                    c = r.gameObject.AddComponent<BoxCollider>();
                    bounds.Encapsulate(c.bounds);
                }
            }
            DestroyImmediate(newGo);
            return bounds;
        }

        /// <summary>
        /// Check to see if the object has a renderer
        /// </summary>
        /// <param name="go">Game object to check</param>
        /// <returns>true if is has a mesh renderer</returns>
        private bool HasMeshes(GameObject go)
        {
            Renderer[] r = go.GetComponentsInChildren<Renderer>();
            if (r.Length > 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Check to see if the object has root collider
        /// </summary>
        /// <param name="go">Game object to check</param>
        /// <returns>true if it has root collider</returns>
        private bool HasRootCollider(GameObject go)
        {
            Collider c = go.GetComponent<Collider>();
            if (c != null)
            {
                if (c is MeshCollider)
                {
                    return ((MeshCollider) c).convex;
                }
                return true;
            }
            return false;
        }

        /// <summary>
        /// Check to see if the object has colliders 
        /// </summary>
        /// <param name="go">Game object to check</param>
        /// <returns>true if it has colliders</returns>
        private bool HasColliders(GameObject go)
        {
            Collider[] c = go.GetComponentsInChildren<Collider>();
            if (c.Length > 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Check to see if the object has a rigid body
        /// </summary>
        /// <param name="go">Game object to check</param>
        /// <returns>true if it has a rigid body</returns>
        private bool HasRigidBody(GameObject go)
        {
            Rigidbody[] r = go.GetComponentsInChildren<Rigidbody>();
            if (r.Length > 0)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Get a unique name
        /// </summary>
        /// <param name="name">The original name</param>
        /// <param name="names">The names dictionary</param>
        /// <returns>The new unique name</returns>
        string GetUniqueName(string name, ref Dictionary<string, string> names)
        {
            int idx = 0;
            string newName = name;
            while (names.ContainsKey(newName))
            {
                newName = name + " " + idx.ToString();
                idx++;
            }
            names.Add(newName, newName);
            return newName;
        }

        /// <summary>
        /// Make the texture supplied readable
        /// </summary>
        /// <param name="texture">Texture to convert</param>
        public static void MakeTextureReadable(Texture2D texture)
        {
            if (texture == null)
            {
                return;
            }
            string assetPath = AssetDatabase.GetAssetPath(texture);
            var tImporter = AssetImporter.GetAtPath(assetPath) as TextureImporter;
            if (tImporter != null)
            {
#if UNITY_5_5_OR_NEWER
                if (tImporter.textureType != TextureImporterType.Default || tImporter.isReadable != true)
                {
                    tImporter.textureType = TextureImporterType.Default;
                    tImporter.isReadable = true;
                    AssetDatabase.ImportAsset(assetPath);
                    AssetDatabase.Refresh();
                }
#else
                if (tImporter.textureType != TextureImporterType.Advanced || tImporter.isReadable != true)
                {
                    tImporter.textureType = TextureImporterType.Advanced;
                    tImporter.isReadable = true;
                    AssetDatabase.ImportAsset(assetPath);
                    AssetDatabase.Refresh();
                }
#endif
            }
        }
    }
}
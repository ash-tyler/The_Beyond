using UnityEngine;

namespace GeNa
{
    /// <summary>
    /// Resources are the things that can be spawned
    /// </summary>
    [System.Serializable]
    public class Resource {

        public string m_name;

        public Constants.ResourceType m_resourceType = Constants.ResourceType.Prefab;

        public GameObject m_prefab;
        public float    m_successRate = 1f;
        public bool     m_conformToSlope = true;

        public Vector3  m_minOffset = new Vector3(0f, -0.15f, 0f);
        public Vector3  m_maxOffset = new Vector3(0f, -0.15f, 0f);
        public Vector3  m_minRotation = Vector3.zero;
        public Vector3  m_maxRotation = new Vector3(0f, 360f, 0f);
        public bool     m_sameScale = true;
        public Vector3  m_minScale = Vector3.one;
        public Vector3  m_maxScale = Vector3.one;

        public int      m_terrainProtoIdx = 0;

        public bool     m_hasColliders = false;
        public bool     m_hasRootCollider = false;
        public bool     m_hasMeshes = true;
        public bool     m_hasRigidBody = false;
        public bool     m_flagLightmapStatic = true;
        public bool     m_flagBatchingStatic = true;
        public bool     m_flagOccludeeStatic = true;
        public bool     m_flagOccluderStatic = true;
        public bool     m_flagNavigationStatic = true;
        public bool     m_flagOffMeshLinkGeneration = true;
        public bool     m_flagReflectionProbeStatic = true;
        public bool     m_flagMovingObject = false;
        public bool     m_flagCanBeOptimised = true;
        public bool     m_flagForceOptimise = false;
        public bool     m_flagIsOutdoorObject = true;

        public Vector3  m_baseScale = Vector3.one;
        public Vector3  m_baseSize = Vector3.one;
        public Vector3  m_baseColliderCenter = Vector3.zero;
        public bool     m_baseColliderUseConstScale = true;
        public float    m_baseColliderConstScaleAmount = 0.75f;
        public Vector3  m_baseColliderScale = Vector3.one;
        public long     m_instancesSpawned = 0;

        //Editor variables
        public bool     m_displayedInEditor = false;

        /// <summary>
        /// Default constructor
        /// </summary>
        public Resource()
        {
            
        }

        /// <summary>
        /// Deep copy constructor
        /// </summary>
        /// <param name="src"></param>
        public Resource(Resource src)
        {
            m_name = src.m_name;
            m_resourceType = src.m_resourceType;
            m_prefab = src.m_prefab;
            m_successRate = src.m_successRate;
            m_conformToSlope = src.m_conformToSlope;
            m_minOffset = src.m_minOffset;
            m_maxOffset = src.m_maxOffset;
            m_minRotation = src.m_minRotation;
            m_maxRotation = src.m_maxRotation;
            m_sameScale = src.m_sameScale;
            m_minScale = src.m_minScale;
            m_maxScale = src.m_maxScale;
            m_terrainProtoIdx = src.m_terrainProtoIdx;
            m_hasColliders = src.m_hasColliders;
            m_hasRootCollider = src.m_hasRootCollider;
            m_hasMeshes = src.m_hasMeshes;
            m_hasRigidBody = src.m_hasRigidBody;
            m_flagLightmapStatic = src.m_flagLightmapStatic;
            m_flagBatchingStatic = src.m_flagBatchingStatic;
            m_flagOccludeeStatic = src.m_flagOccludeeStatic;
            m_flagOccluderStatic = src.m_flagOccluderStatic;
            m_flagNavigationStatic = src.m_flagNavigationStatic;
            m_flagOffMeshLinkGeneration = src.m_flagOffMeshLinkGeneration;
            m_flagReflectionProbeStatic = src.m_flagReflectionProbeStatic;
            m_flagMovingObject = src.m_flagMovingObject;
            m_flagForceOptimise = src.m_flagForceOptimise;
            m_flagCanBeOptimised = src.m_flagCanBeOptimised;
            m_flagIsOutdoorObject = src.m_flagIsOutdoorObject;
            m_baseScale = src.m_baseScale;
            m_baseSize = src.m_baseSize;
            m_baseColliderCenter = src.m_baseColliderCenter;
            m_baseColliderUseConstScale = src.m_baseColliderUseConstScale;
            m_baseColliderConstScaleAmount = src.m_baseColliderConstScaleAmount;
            m_baseColliderScale = src.m_baseColliderScale;
            m_displayedInEditor = src.m_displayedInEditor;
            m_instancesSpawned = src.m_instancesSpawned;
        }
    }
}


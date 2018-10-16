using UnityEngine;
using System.Collections.Generic;

namespace GeNa
{
    /// <summary>
    /// Spawn prototypes are collections of one or more resources that can be collectively spawned.
    /// </summary>
    [System.Serializable]
    public class Prototype
    {
        public string   m_name;
        public bool     m_active = true;
        public Vector3  m_size = Vector3.one;
        public Vector3  m_extents = Vector3.one;
        public float    m_boundsBorder = 0f;
        public bool     m_constrainWithinMaskedBounds = false;
        public bool     m_invertMaskedAlpha = false;
        public bool     m_scaleOnMaskedAlpha = false;
        public float    m_scaleOnMaskedAlphaMin = 0.5f;
        public float    m_scaleOnMaskedAlphaMax = 1f;
        public bool     m_successOnMaskedAlpha = false;
        public float    m_forwardRotation = 0f;
        public List<Resource> m_resources = new List<Resource>();
        public Constants.ResourceType m_resourceType = Constants.ResourceType.Prefab;
        public bool     m_hasColliders = false;
        public bool     m_hasMeshes = false;
        public bool     m_hasRigidBody = false;
        public long     m_instancesSpawned = 0;
        public Color    m_imageFilterColour = Color.white;
        public float    m_imageFilterFuzzyMatch = 0.8f;

        //Editor related
        public bool m_displayedInEditor = false;

        /// <summary>
        /// Default constructor
        /// </summary>
        public Prototype()
        {
        }

        /// <summary>
        /// Deep copy constructor
        /// </summary>
        /// <param name="src"></param>
        public Prototype(Prototype src)
        {
            m_name = src.m_name;
            m_active = src.m_active;
            m_size = src.m_size;
            m_extents = src.m_extents;
            m_boundsBorder = src.m_boundsBorder;
            m_constrainWithinMaskedBounds = src.m_constrainWithinMaskedBounds;
            m_invertMaskedAlpha = src.m_invertMaskedAlpha;
            m_scaleOnMaskedAlpha = src.m_scaleOnMaskedAlpha;
            m_scaleOnMaskedAlphaMin = src.m_scaleOnMaskedAlphaMin;
            m_scaleOnMaskedAlphaMax = src.m_scaleOnMaskedAlphaMax;
            m_successOnMaskedAlpha = src.m_successOnMaskedAlpha;
            m_forwardRotation = src.m_forwardRotation;
            m_resources = new List<Resource>();
            Resource res;
            foreach (var srcRes in src.m_resources)
            {
                res = new Resource(srcRes);
                this.m_resources.Add(res);
            }
            m_resourceType = src.m_resourceType;
            m_hasColliders = src.m_hasColliders;
            m_hasMeshes = src.m_hasMeshes;
            m_hasRigidBody = src.m_hasRigidBody;
            m_displayedInEditor = src.m_displayedInEditor;
            m_instancesSpawned = src.m_instancesSpawned;
            m_imageFilterColour = src.m_imageFilterColour;
            m_imageFilterFuzzyMatch = src.m_imageFilterFuzzyMatch;
        }

        /// <summary>
        /// Iterate through the resources and get chances of success
        /// </summary>
        /// <returns></returns>
        public float GetSuccessChance()
        {
            if (!m_active)
            {
                return 0f;
            }

            float success = 0f;
            foreach (var srcRes in m_resources)
            {
                if (srcRes.m_successRate > success)
                {
                    success = srcRes.m_successRate;
                }
            }
            return success;
        }
    }
}
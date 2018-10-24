using System.Collections.Generic;
using UnityEngine;

namespace DoorScripts.Main
{
    [RequireComponent(typeof(BoxCollider))]
    public class AutoDoorTrigger : MonoBehaviour
    {
        public Door door;
        [Space]
        public DoorState triggeredState;
        public DoorState untriggeredState;
        [Space]
        public LayerMask layersToDetect;


        private List<Collider> objectsInTrigger = new List<Collider>();


        private void Start()
        {
            Collider col = GetComponent<BoxCollider>();

            if (!col.isTrigger)
                col.isTrigger = true;
        }

        private void Update()
        {
            objectsInTrigger.RemoveAll(col => col == null);

            if (objectsInTrigger.Count > 0)
                door.SwitchTargetState(triggeredState);
            else
                door.SwitchTargetState(untriggeredState);
        }

        private void OnTriggerEnter(Collider other)
        {
            if (ValidLayer(other.gameObject.layer))
                objectsInTrigger.Add(other);
        }

        private void OnTriggerExit(Collider other)
        {
            if (ValidLayer(other.gameObject.layer))
                objectsInTrigger.Remove(other);
        }

        private bool ValidLayer(int objLayer)
        {
            return layersToDetect == (layersToDetect | (1 << objLayer));
        }
    }
}
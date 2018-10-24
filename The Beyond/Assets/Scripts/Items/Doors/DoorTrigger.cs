using DoorScripts.Main;
using System.Collections.Generic;
using UnityEngine;


namespace DoorScripts.Triggers
{
    [RequireComponent(typeof(BoxCollider))]
    public class DoorTrigger : MonoBehaviour
    {
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

        public void UpdateAutoTrigger(Door door)
        {
            objectsInTrigger.RemoveAll(col => col == null);

            if (objectsInTrigger.Count > 0 && door.StateIsSame(untriggeredState))
                door.SwitchTargetState(triggeredState);
            else if (objectsInTrigger.Count == 0 && door.StateIsSame(triggeredState))
                door.SwitchTargetState(untriggeredState);
        }

        public void UpdateManualTrigger(Door door)
        {
            objectsInTrigger.RemoveAll(col => col == null);

            if (objectsInTrigger.Count > 0)
            {
                if (door.StateIsSame(untriggeredState))
                    door.SwitchTargetState(triggeredState);
                else 
                    door.SwitchTargetState(untriggeredState);
            }
        }

        public bool TriggerIsActive()
        {
            return objectsInTrigger.Count > 0;
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
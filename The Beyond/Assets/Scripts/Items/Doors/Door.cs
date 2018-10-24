using DoorScripts.Triggers;
using System.Collections.Generic;
using UnityEngine;


namespace DoorScripts.Main
{
    public enum DoorState { CLOSED = 0, OPEN, OPEN_OPPOSITE };

    public class Door : MonoBehaviour
    {
        public Vector3 endPosition;
        public Vector3 endEulerRotation;
        [Space]
        public Vector3 endPositionOpposite;
        public Vector3 endEulerRotationOpposite;
        [Space]
        public float positionSpeed = 0.1f;
        public float rotationSpeed = 160f;
        [Space]
        public bool autoDoor = false;
        [Space]
        public List<DoorTrigger> triggers = new List<DoorTrigger>();


        private Vector3 startPosition;
        private Vector3 startEulerRotation;

        private DoorState state = DoorState.CLOSED;
        private DoorState targetState = DoorState.CLOSED;

        private bool useDoor = false;
        private static float range = 0.001f;


        void Start()
        {
            startPosition = transform.localPosition;
            startEulerRotation = transform.localEulerAngles;
        }

        private void Update()
        {
            if (triggers.Count == 0) return;
            triggers.RemoveAll(t => t == null);


            if (autoDoor)
            {
                DoorTrigger activeTrigger = triggers.Find(t => t.TriggerIsActive());

                if (activeTrigger)
                    activeTrigger.UpdateAutoTrigger(this);
                else
                    SwitchTargetState(DoorState.CLOSED);
            }

            else
            {
                if (!useDoor)
                    foreach (DoorTrigger doorTrigger in triggers)
                        doorTrigger.UpdateManualTrigger(this);

                if (!useDoor) return;
            }


            if (state == targetState) return;

            switch (targetState)
            {
                default:
                    CloseDoor();
                    break;
                case DoorState.CLOSED:
                    CloseDoor();
                    break;
                case DoorState.OPEN:
                    OpenDoor();
                    break;
                case DoorState.OPEN_OPPOSITE:
                    OpenDoorOpposite();
                    break;
            }
        }


        public void UseDoor()
        {
            if (!useDoor && !autoDoor)
                useDoor = true;
        }

        public void SwitchTargetState(DoorState newState)
        {
            if (state != newState)
                targetState = newState;
        }

        public bool StateIsSame(DoorState otherState)
        {
            return state == otherState;
        }


        private void CloseDoor()
        {
            if (MoveDoor(startPosition, startEulerRotation))
            {
                state = DoorState.CLOSED;
                useDoor = false;
            }
        }

        private void OpenDoor()
        {
            if (MoveDoor(endPosition, endEulerRotation))
            {
                state = DoorState.OPEN;
                useDoor = false;
            }
        }

        private void OpenDoorOpposite()
        {
            if (MoveDoor(endPositionOpposite, endEulerRotationOpposite))
            {
                state = DoorState.OPEN_OPPOSITE;
                useDoor = false;
            }
        }

        private bool MoveDoor(Vector3 toPos, Vector3 toRot)
        {
            bool correctPos = false;
            bool correctRot = false;


            if (Vector3.Distance(transform.localPosition, toPos) > range)
                transform.localPosition = Vector3.MoveTowards(transform.localPosition, toPos, positionSpeed * Time.deltaTime);
            else
                correctPos = true;


            Quaternion euler = Quaternion.Euler(toRot);

            if (Quaternion.Angle(transform.localRotation, euler) > range)
                transform.localRotation = Quaternion.RotateTowards(transform.localRotation, euler, rotationSpeed * Time.deltaTime);
            else
                correctRot = true;

            return (correctPos && correctRot);
        }
    }
}
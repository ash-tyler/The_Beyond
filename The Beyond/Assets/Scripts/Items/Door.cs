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


        public bool useDoor = false;

        private Vector3 startPosition;
        private Vector3 startEulerRotation;

        public DoorState state = DoorState.CLOSED;
        public DoorState targetState = DoorState.CLOSED;
        public DoorState useTargetState = DoorState.CLOSED;

        private static float range = 0.001f;


        void Start()
        {
            startPosition = transform.localPosition;
            startEulerRotation = transform.localEulerAngles;
        }

        void Update()
        {
            if (useDoor)
                Activate(useTargetState);

            else if (autoDoor)
                Activate(targetState);
        }


        public void SwitchTargetState(DoorState newState)
        {
            if (state != newState)
                targetState = newState;
        }

        public void SwitchUseTargetState(DoorState newState)
        {
            if (state != newState)
                useTargetState = newState;
        }

        public bool UseStateIsSame(DoorState manualState)
        {
            return state == manualState;
        }

        public void UseDoor()
        {
            if (!autoDoor)
                useDoor = true;
        }


        private void Activate(DoorState target)
        {
            if (state == target) return;

            switch (target)
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
using UnityEngine;


/// <summary>   [Script information]
/// 
/// Purpose:    Provide camera movement.
/// Use:        RIGHT MOUSE:    Hold and move mouse to orbit camera around player
///             SCROLL:         Zoom in or out
///             
/// </summary>


[RequireComponent(typeof(Camera))]
public class ThirdPersonCam : MonoBehaviour
{
    #region Public Variables
    [Header("Clamp Ranges")]
    public ClampRange pitchClamp;
    public ClampRange firstPersonPitchClamp;
    public ClampRange zoomClamp;
    [Space()]

    [Header("Camera Sensitivity")]
    public float mouseSensitivity = 10f;
    public float zoomSensitivity = 40;
    [Space()]

    [Header("Collision")]
    public LayerMask collisionLayers = -1;
    public float collisionRadius = 0.4f;
    [Space()]

    [Header("Camera Options")]
    public bool lockPitch;
    public bool lockYaw;
    [Space()]
    public bool invertPitch;
    public bool invertYaw;

    [HideInInspector] public Player player;

    public Transform Rig { get { return transform.parent; } }
    #endregion

    #region Private Variables
    private float       zoom;

    private static float firstPersonZoom = -0.02f;

    private float Xrotation { get { return (lockPitch) ? 0 : ((invertPitch) ? -Input.GetAxis("Mouse Y") : Input.GetAxis("Mouse Y")); } }
    private float Yrotation { get { return (lockYaw) ? 0 : ((invertYaw) ? -Input.GetAxis("Mouse X") : Input.GetAxis("Mouse X")); } }

    private Vector3 CameraFocus { get { return (player) ? player.CameraFocus.position : Vector3.zero; } }
    private Vector3 FocusDirection { get { return transform.position - CameraFocus; } }
    #endregion


    #region Start & Update Functions
    public void Setup(Player newPlayer)
    {
        player = newPlayer;

        if (!Rig)
        {
            Debug.LogError("ERROR: Camera has no parent object. Please ensure this object is the child of an empty object!", this);
            return;
        }

        Rig.position = CameraFocus;

        zoom = -zoomClamp.center;
        transform.localPosition = Vector3.back * -zoom;
    }

    void LateUpdate()
    {
        Rig.position = CameraFocus;
        zoom -= Input.GetAxis("Mouse ScrollWheel") * zoomSensitivity * Time.deltaTime;

        if (!player) return;


        switch (player.firstPerson)
        {
            case true:
                SetRigRotation();

                zoom = firstPersonZoom;
                if (ScrollOut(0, -0.1f))            //Exit first person mode if the player zooms out enough
                    SwitchToThirdPerson();

                break;


            case false:
                zoom = Mathf.Clamp(zoom, zoomClamp.min, zoomClamp.max);

                if (Input.GetButton("CameraSelect"))
                    SetRigRotation();


                Debug.DrawRay(CameraFocus, FocusDirection, Color.red);

                RaycastHit hit;         //Check for any obstacles in the way of the camera, adjust zoom
                if (Physics.SphereCast(CameraFocus, collisionRadius, FocusDirection, out hit, zoomClamp.max + 1, collisionLayers, QueryTriggerInteraction.Ignore))
                    Zoom(hit.distance);
                else if (!Mathf.Approximately(-transform.localPosition.z, zoom))
                    Zoom(zoomClamp.max);


                transform.LookAt(Rig);

                if (ScrollIn(zoomClamp.min + 0.05f, 0.1f))
                    SwitchToFirstPerson();

                break;
        }
    }
    #endregion


    #region Helper Functions
    /// <summary> Lerp camera Z position to playerZoom, clamped between zoomClamp Min and the given float as Max. </summary>
    private void Zoom(float zoomMax)
    {
        if (zoomMax < zoomClamp.min)
            player.SwitchToFirstPerson();
        else
            transform.localPosition = Vector3.back * Mathf.Min(Mathf.Lerp(-transform.localPosition.z, zoom, Time.deltaTime * 2), zoomMax);
    }

    public void SwitchToFirstPerson()
    {
        zoom = firstPersonZoom;
        transform.localPosition = Vector3.forward * firstPersonZoom;
        player.SwitchToFirstPerson();
    }

    public void SwitchToThirdPerson()
    {
        zoom = zoomClamp.min + 0.2f;
        player.SwitchToThirdPerson();
    }

    public float GetRigYRotation()
    {
        return Rig.transform.eulerAngles.y;
    }


    private void SetRigRotation()
    {
        Rig.Rotate(Xrotation * mouseSensitivity, Yrotation * mouseSensitivity, 0);
        Rig.rotation = Quaternion.Euler(ClampAngle(Rig.eulerAngles.x), Rig.eulerAngles.y, 0);
    }

    private float ClampAngle(float angleToClamp)
    {
        if (angleToClamp > 180f)
            angleToClamp = -(360 - angleToClamp);

        return Mathf.Clamp(angleToClamp, pitchClamp.min, pitchClamp.max);
    }

    private bool ScrollIn(float zoomPos, float strength = 0.2f)
    {
        return -transform.localPosition.z < zoomPos && Input.GetAxis("Mouse ScrollWheel") > strength;
    }

    private bool ScrollOut(float zoomPos, float strength = -0.2f)
    {
        return -transform.localPosition.z > zoomPos && Input.GetAxis("Mouse ScrollWheel") < strength;
    }
    #endregion
}
using UnityEngine;

/// <summary>   [Script information | Delete on Final Build]
/// 
/// Purpose:    Provide camera movement.
/// Use:        RIGHT MOUSE:    Hold and move mouse to orbit camera around player
///             SCROLL:         Zoom in or out
///             
/// Status:     Has basic minimum viable product functions.
/// Bugs:       If you spot any issues or bugs, please text me the issue, I'll look into it asap.
/// Notes:      
///             When the camera is trapped between an object closer than the zoomClamp Min, it will
///             currently just go through the object. I'm in the process of finding out what I can
///             do instead of this.
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
    //private Camera      _camera;
    private float       zoom;

    private static float firstPersonZoom = -0.02f;

    private float Xrotation { get { return (lockPitch) ? 0 : ((invertPitch) ? -Input.GetAxis("Mouse Y") : Input.GetAxis("Mouse Y")); } }
    private float Yrotation { get { return (lockYaw) ? 0 : ((invertYaw) ? -Input.GetAxis("Mouse X") : Input.GetAxis("Mouse X")); } }
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

        Rig.position = player.CameraFocus.position;
        //_camera = GetComponent<Camera>();

        zoom = -zoomClamp.center;
        transform.localPosition = GetZoomVector(zoom);
    }

    void LateUpdate()
    {
        Rig.position = player.CameraFocus.position;
        if (Input.GetButton("CameraSelect") || Input.GetJoystickNames().Length > 0 || player.firstPerson)
            Rig.Rotate(Xrotation * mouseSensitivity, Yrotation * mouseSensitivity, 0);

        Rig.rotation = pitchClamp.GetEulerXClamp(Rig.eulerAngles.x, Rig.eulerAngles.y, 0);

        // do a raycast to pull the camera in if there's something between us and the rig
        //Ray ray = new Ray(Rig.position, -Rig.forward);
        //RaycastHit hit;
        //if (Physics.Raycast(ray, out hit, zoom))
        //{
        //    zoom = hit.distance;
        //}

        zoom += Input.GetAxis("Mouse ScrollWheel") * zoomSensitivity * Time.deltaTime;
        if (transform.localPosition.z > -(zoomClamp.min + 0.5f) && zoom > -zoomClamp.min && Input.GetAxis("Mouse ScrollWheel") > 0.18f)
            player.SwitchToFirstPerson();


        if (player.firstPerson)
        {
            zoom = Mathf.Min(zoom, firstPersonZoom);    //Don't allow the player to zoom in
            if (-zoom > zoomClamp.min)                  //Exit first person mode if the player zooms out enough
                player.SwitchToThirdPerson();
        }
        else
        {
            zoomClamp.NegativeClamp(ref zoom);
            
            RaycastHit hit;         //Check for any obstacles in the way of the camera, adjust zoom
            if (Physics.SphereCast(Rig.position, collisionRadius, -Rig.forward, out hit, zoomClamp.max + 1, collisionLayers))
            {
                Debug.Log("Distance = " + hit.distance);
                Zoom(hit.distance);
            }
            else if (!Mathf.Approximately(transform.localPosition.z, zoom))
                Zoom(zoomClamp.max);

            transform.LookAt(Rig);
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
            transform.localPosition = GetZoomVector(zoomClamp.GetNegativeClampMaxOverride(Mathf.Lerp(transform.localPosition.z, zoom, Time.deltaTime * 2), zoomMax));
    }

    public void SetFirstPersonMode(bool firstPerson)
    {
        if (firstPerson)
        {
            zoom = firstPersonZoom;
            transform.localPosition = GetZoomVector(firstPersonZoom);
            //_camera.cullingMask &= ~(1 << LayerMask.NameToLayer("Invisible"));
        }
        //else
            //_camera.cullingMask |= 1 << LayerMask.NameToLayer("Invisible");
    }

    public float GetRigYRotation()
    {
        return Rig.transform.eulerAngles.y;
    }

    private Vector3 GetZoomVector(float localZ)
    {
        return new Vector3(transform.localPosition.x, transform.localPosition.y, localZ);
    }
    #endregion
}
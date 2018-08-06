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
    [Space()]
    [Header("Clamp Ranges")]
    public ClampRange pitchClamp;
    public ClampRange fpPitchClamp;
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
    public bool invertPitch;
    public bool invertYaw;

    [HideInInspector]
    public PlayerSource playerSource;
    #endregion

    #region Private Variables
    private Transform   _cameraRig;
    private Camera      _camera;
    private RaycastHit  rayHit;

    private float       zoom;
    private bool        firstPersonMode = false;
    #endregion


    #region Start & Update Functions
    public void Setup()
    {
        _cameraRig = transform.parent;
        _cameraRig.position = playerSource.playerFocus.position;
        _camera = GetComponent<Camera>();

        zoom = -zoomClamp.center;
        transform.position = transform.position + new Vector3(0, 0, zoom);
    }

    private void LateUpdate()
    {
        _cameraRig.position = playerSource.playerFocus.position;
        Vector2 rotation = Vector2.zero;

        if (Input.GetButton("CameraSelect") || Input.GetJoystickNames().Length > 0 || firstPersonMode)
        {
            rotation.x = (lockPitch) ? 0 : ((invertPitch) ? -Input.GetAxis("Mouse Y") : Input.GetAxis("Mouse Y"));
            rotation.y = (lockYaw) ? 0 : ((invertYaw) ? -Input.GetAxis("Mouse X") : Input.GetAxis("Mouse X"));
            
            //Rotate
            _cameraRig.Rotate(rotation.x * mouseSensitivity, rotation.y * mouseSensitivity, 0);
        }

        //Clamp rotation
        _cameraRig.rotation = Quaternion.Euler(pitchClamp.GetEulerClamp(_cameraRig.eulerAngles.x), _cameraRig.eulerAngles.y, 0);

        
        //Get player Zoom input
        zoom += Input.GetAxis("Mouse ScrollWheel") * zoomSensitivity * Time.deltaTime;

        if (zoom > -zoomClamp.min && Input.GetAxis("Mouse ScrollWheel") > 0.18f)
            SwitchToFirstPerson();

        if (firstPersonMode)
        {
            //Clamp zoom
            zoomClamp.NegativeClamp(0, ref zoom);

            //Exit first person mode if the player zooms out enough
            if (-zoom > zoomClamp.min)
                SwitchToThirdPerson();
        }
        else
        {
            //Clamp zoom
            zoomClamp.NegativeClamp(ref zoom);

            //Check for any obstacles in the way of the camera, adjust zoom
            if (Physics.SphereCast(_cameraRig.position, collisionRadius, -_cameraRig.forward, out rayHit, zoomClamp.max + 1, collisionLayers))
                Zoom(rayHit.distance);
            else if (!Mathf.Approximately(transform.localPosition.z, zoom))
                Zoom(zoomClamp.max);


            transform.LookAt(_cameraRig);
        }
    }
    #endregion


    #region Helper Functions
    /// <summary> Lerp camera Z position to playerZoom, clamped between zoomClamp Min and the given float as Max. </summary>
    private void Zoom(float zoomMax)
    {
        if (zoomMax < zoomClamp.min)
            SwitchToFirstPerson();
        else
        {
            float newZoom = Mathf.Lerp(transform.localPosition.z, zoom, Time.deltaTime * 2);
            zoomClamp.NegativeClamp(ref newZoom, zoomMax);
            transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, newZoom);
        }
    }

    private void SwitchToFirstPerson()
    {
        firstPersonMode = true;
        invertPitch = true;
        invertYaw = false;
        transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, -0.02f);
        zoom = -0.02f;
        playerSource.SetObjectLayer(playerSource.transform, LayerMask.NameToLayer("Invisible"));
        _camera.cullingMask &= ~(1 << LayerMask.NameToLayer("Invisible"));
    }

    private void SwitchToThirdPerson()
    {
        firstPersonMode = false;
        playerSource.SetObjectLayer(playerSource.transform, LayerMask.NameToLayer("Default"));
        _camera.cullingMask |= 1 << LayerMask.NameToLayer("Invisible");
    }
    #endregion
}
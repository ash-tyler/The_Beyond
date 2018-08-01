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


public class ThirdPersonCam : MonoBehaviour
{
    #region Public Variables
    [Space()]
    [Header("Necessary Transforms")]
    public Transform    _target;
    public Transform    _targetFocus;

    [Space()]
    [Header("Clamp Ranges")]
    public ClampRange   pitchClamp;
    public ClampRange   zoomClamp;

    [Space()]
    [Header("Camera Sensitivity")]
    public float        mouseSensitivity = 10f;
    public float        zoomSensitivity = 40;

    [Space()]
    [Header("Collision")]
    public LayerMask    collisionLayers = -1;
    public float        collisionRadius = 0.4f;

    [Space()]
    [Header("Camera Options")]
    public bool         lockPitch;
    public bool         lockYaw;
    public bool         invertPitch;
    public bool         invertYaw;
    #endregion

    #region Private Variables
    private Transform   _cameraRig;
    private float       zoom;
    private RaycastHit  rayHit;
    #endregion


    #region Start & Update Functions
    void Start()
    {
        _cameraRig = transform.parent;
        _cameraRig.position = _targetFocus.position;

        zoom = -zoomClamp.center;
        transform.position = transform.position + new Vector3(0, 0, zoom);
    }

    private void LateUpdate()
    {
        _cameraRig.position = _targetFocus.position;


        //Rotate
        if (Input.GetButton("CameraSelect") || Input.GetJoystickNames().Length > 0)
        {
            float xRot = (lockPitch) ? 0 : ((invertPitch) ? -Input.GetAxis("Mouse Y") : Input.GetAxis("Mouse Y"));
            float yRot = (lockYaw)   ? 0 : ((invertYaw)   ? -Input.GetAxis("Mouse X")   : Input.GetAxis("Mouse X"));

            _cameraRig.Rotate(xRot * mouseSensitivity, yRot * mouseSensitivity, 0);
        }

        //Clamp rotation
        _cameraRig.rotation = Quaternion.Euler(pitchClamp.GetEulerClamp(_cameraRig.eulerAngles.x), _cameraRig.eulerAngles.y, 0);


        //Get player Zoom input, clamp it
        zoom += Input.GetAxis("Mouse ScrollWheel") * zoomSensitivity * Time.deltaTime;
        zoomClamp.NegativeClamp(ref zoom);

        //Check for any obstacles in the way of the camera, adjust zoom
        if (Physics.SphereCast(_cameraRig.position, collisionRadius, -_cameraRig.forward, out rayHit, zoomClamp.max + 1, collisionLayers))
            Zoom(rayHit.distance);
        else if (!Mathf.Approximately(transform.localPosition.z, zoom))
            Zoom(zoomClamp.max);


        transform.LookAt(_cameraRig);
    }
    #endregion


    #region Helper Functions
    /// <summary> Lerp camera Z position to playerZoom, clamped between zoomClamp Min and the given float as Max. </summary>
    private void Zoom(float zoomMax)
    {
        if (zoomMax < zoomClamp.min)
            transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, -zoomClamp.min);
        else
        {
            float newZoom = Mathf.Lerp(transform.localPosition.z, zoom, Time.deltaTime * 2);
            zoomClamp.NegativeClamp(ref newZoom, zoomMax);
            transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, newZoom);
        }
    }
    #endregion
}
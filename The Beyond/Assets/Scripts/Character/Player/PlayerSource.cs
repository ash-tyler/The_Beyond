using UnityEngine;

[RequireComponent(typeof(ThirdPersonMovement))]
[RequireComponent(typeof(PlayerStats))]
[RequireComponent(typeof(Equipment))]
public class PlayerSource : MonoBehaviour
{
    public GameObject cameraRig;

    [HideInInspector] public ThirdPersonMovement moveScript;
    [HideInInspector] public ThirdPersonCam camScript;
    [HideInInspector] public Model playerModel;
    [HideInInspector] public Transform playerFocus;
    [HideInInspector] public PlayerStats statsScript;
    [HideInInspector] public Equipment equipmentScript;


	void Start ()
    {
        if (!cameraRig)
        {
            gameObject.SetActive(false);
            return;
        }

        moveScript = GetComponent<ThirdPersonMovement>();
        camScript = cameraRig.GetComponentInChildren<ThirdPersonCam>();
        playerModel = moveScript.GetComponentInChildren<Model>();
        statsScript = GetComponent<PlayerStats>();
        equipmentScript = GetComponent<Equipment>();

        if (!moveScript || !camScript || !playerModel || !statsScript || !equipmentScript)
        {
            gameObject.SetActive(false);
            return;
        }

        camScript.playerSource = this;
        playerModel.GetModelComponents();
        playerModel.animHelper.SetAnimator(moveScript);
        playerFocus = playerModel.bodyReference.head;

        moveScript.Setup();
        camScript.Setup();
    }

    /// <summary> Sets up the given model GameObject to be used as the playerModel, with animation. </summary>
    public void ChangeModel(Model newPlayerModel)
    {
        Quaternion rot = playerModel.transform.rotation;
        GameObject previousModel = playerModel.gameObject;
        Destroy(previousModel);

        playerModel = null;
        playerModel = Instantiate(newPlayerModel, transform.position, rot, transform);

        playerModel.GetModelComponents();
        playerModel.animHelper.SetAnimator(moveScript);
        playerFocus = (moveScript.State.IsCrouching) ? playerModel.bodyReference.crouchHead : playerModel.bodyReference.head;
    }

    public void SetObjectLayer(Transform obj, int layer)
    {
        obj.gameObject.layer = layer;
        foreach (Transform child in obj)
            SetObjectLayer(child, layer);
    }
}

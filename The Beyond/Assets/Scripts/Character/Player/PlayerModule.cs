using UnityEngine;

[RequireComponent(typeof(ThirdPersonMovement))]
[RequireComponent(typeof(PlayerStats))]
[RequireComponent(typeof(Equipment))]
public class PlayerModule : CharacterModule
{
    public GameObject cameraRig;

    [HideInInspector] public ThirdPersonMovement playerMovement;
    [HideInInspector] public ThirdPersonCam playerCamera;
    [HideInInspector] public Transform playerFocus;


	void Start ()
    {
        if (!cameraRig)
        {
            gameObject.SetActive(false);
            return;
        }

        playerMovement = GetComponent<ThirdPersonMovement>();
        playerCamera = cameraRig.GetComponentInChildren<ThirdPersonCam>();
        model = playerMovement.GetComponentInChildren<PlayerModel>();
        stats = GetComponent<PlayerStats>();
        equipment = GetComponent<Equipment>();

        if (!playerMovement || !playerCamera || !model || !stats || !equipment)
        {
            gameObject.SetActive(false);
            return;
        }

        playerCamera.playerSource = this;
        model.GetModelComponents();
        equipment.Setup();
        (model as PlayerModel).animHelper.SetAnimator(playerMovement);
        playerFocus = model.bodyReference.head;

        playerMovement.Setup();
        playerCamera.Setup();
    }

    /// <summary> Sets up the given model GameObject to be used as the playerModel, with animation. </summary>
    public void ChangeModel(PlayerModel newPlayerModel)
    {
        Quaternion rot = model.transform.rotation;
        GameObject previousModel = model.gameObject;
        Destroy(previousModel);

        model = null;
        model = Instantiate(newPlayerModel, transform.position, rot, transform);

        model.GetModelComponents();
        (model as PlayerModel).animHelper.SetAnimator(playerMovement);
        playerFocus = (playerMovement.State.IsCrouching) ? model.bodyReference.crouchHead : model.bodyReference.head;
    }

    public void SetObjectLayer(Transform obj, int layer)
    {
        obj.gameObject.layer = layer;
        foreach (Transform child in obj)
            SetObjectLayer(child, layer);
    }


}

using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonMovement))]
[RequireComponent(typeof(PlayerStats))]
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

        model = GetComponentInChildren<PlayerModel>();
        equipment = GetComponent<Equipment>();
        stats = GetComponent<Stats>();

        playerMovement = GetComponent<ThirdPersonMovement>();
        playerCamera = cameraRig.GetComponentInChildren<ThirdPersonCam>();

        if (!playerCamera || !model)
        {
            gameObject.SetActive(false);
            return;
        }

        playerCamera.playerSource = this;
        equipment.Setup(model.leftHand, model.rightHand);
        (model as PlayerModel).SetupAnimationHelper(playerMovement);
        playerFocus = model.head;

        playerMovement.Setup();
        playerCamera.Setup();
    }


    public void SetObjectLayer(Transform obj, int layer)
    {
        obj.gameObject.layer = layer;
        foreach (Transform child in obj)
            SetObjectLayer(child, layer);
    }

    public void ChangePlayerModel(CharacterModel newPlayerModel)
    {
        IEnumerator cm = ChangeModel(newPlayerModel);
        StartCoroutine(cm);
    }

    /// <summary> Sets up the given model GameObject to be used as the playerModel, with animation. </summary>
    private IEnumerator ChangeModel(CharacterModel newPlayerModel)
    {
        while (playerMovement.State.IsCrouching)
            yield return new WaitForSeconds(.5f);

        Quaternion rot = model.transform.rotation;
        GameObject previousModel = model.gameObject;
        Destroy(previousModel);

        model = null;
        model = Instantiate(newPlayerModel, transform.position, rot, transform);

        (model as PlayerModel).SetupAnimationHelper(playerMovement);
    }
}

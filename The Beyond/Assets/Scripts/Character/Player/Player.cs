using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonMovement))]
[RequireComponent(typeof(PlayerStats))]
public class Player : Character
{
    [HideInInspector] public ThirdPersonCam pCamera;
    [HideInInspector] public ThirdPersonMovement controller;
    [HideInInspector] public bool firstPerson;

    public PlayerModel  pModel { get { return (model as PlayerModel); } }
    public Transform    cameraFocus { get { return (controller.isCrouching) ? model.crouchHead : model.head; } }

    void Start()
    {
        model = GetComponentInChildren<PlayerModel>();
        model.character = this;
        pCamera = Camera.main.GetComponent<ThirdPersonCam>();

        if (!pCamera || !model)
            gameObject.SetActive(false);

        stats = GetComponent<Stats>();
        equipment = GetComponent<Equipment>();
        inventory = GetComponent<Inventory>();
        controller = GetComponent<ThirdPersonMovement>();

        pModel.Setup();
        stats.Setup();
        equipment.Setup(this);
        controller.Setup(this);
        pCamera.Setup(this);
    }


    public void SetObjectLayer(Transform obj, int layer)
    {
        obj.gameObject.layer = layer;
        foreach (Transform child in obj)
            if (child.gameObject.layer != LayerMask.NameToLayer("Loot"))
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
        while (controller.State.IsCrouching)
            yield return new WaitForSeconds(.5f);

        Quaternion rot = model.transform.rotation;
        GameObject previousModel = model.gameObject;
        Destroy(previousModel);

        model = null;
        model = Instantiate(newPlayerModel, transform.position, rot, transform);
        model.character = this;

        pModel.SetupAnimationHelper();

        equipment.ReEquipWeapon(pModel.leftHand, pModel.rightHand);
        pModel.attackManager.equipment = equipment;
    }

    public Quaternion GetMovementQuaternion()
    {
        return Quaternion.Euler(0, pCamera.GetRigYRotation(), 0);
    }

    public void RotateModel(Vector3 lookRotation, float turnSpeed)
    {
        pModel.RotateModel(Quaternion.LookRotation(lookRotation), turnSpeed);
    }

    public void SwitchToFirstPerson()
    {
        firstPerson = true;
        SetObjectLayer(transform, LayerMask.NameToLayer("Invisible"));
        pCamera.SetFirstPersonMode(firstPerson);
    }

    public void SwitchToThirdPerson()
    {
        firstPerson = false;
        SetObjectLayer(transform, LayerMask.NameToLayer("Player"));
        pCamera.SetFirstPersonMode(firstPerson);
    }

    //public void EnterCombat()
    //{
    //    pModel.SetInCombat(true);
    //    equipment.currentlyAttacking = true;
    //}

    //public void ExitCombat()
    //{
    //    pModel.SetInCombat(false);
    //}

    //public void TriggerAttack()
    //{
    //    pModel.TriggerAttack();
    //}
}
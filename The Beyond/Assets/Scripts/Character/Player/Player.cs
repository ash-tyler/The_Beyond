using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonController))]
[RequireComponent(typeof(PlayerStats))]
public class Player : Character
{
    public Sight eyesight = new Sight();
    [HideInInspector] public ThirdPersonCam pCamera;
    [HideInInspector] public ThirdPersonController controller;
    [HideInInspector] public bool firstPerson;

    public PlayerModel  PModel { get { return (model as PlayerModel); } }
    public Transform    CameraFocus { get { return (controller.IsCrouching) ? model.crouchHead : model.head; } }
    

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
        controller = GetComponent<ThirdPersonController>();

        PModel.Setup();
        stats.Setup();
        equipment.Setup(this);
        eyesight.Setup(this);
        controller.Setup(this);
        pCamera.Setup(this);
    }

    private void Update()
    {
        eyesight.Update();
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

        PModel.SetupAnimationHelper();

        equipment.ReEquipWeapon(PModel.leftHand, PModel.rightHand);
        PModel.attackManager.equipment = equipment;
    }

    public Quaternion GetMovementQuaternion()
    {
        return Quaternion.Euler(0, pCamera.GetRigYRotation(), 0);
    }

    public void RotateModel(Vector3 lookRotation, float turnSpeed)
    {
        PModel.RotateModel(Quaternion.LookRotation(lookRotation), turnSpeed);
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
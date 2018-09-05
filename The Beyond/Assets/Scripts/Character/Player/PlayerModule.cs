using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonMovement))]
[RequireComponent(typeof(PlayerStats))]
public class PlayerModule : CharacterModule
{
    //public GameObject cameraRig;

    [HideInInspector] public ThirdPersonMovement playerMovement;
    public ThirdPersonCam playerCamera;
    [HideInInspector] public Transform playerFocus;

    [HideInInspector] public bool firstPerson;

    public AttackTracker attackTracker = new AttackTracker();


    void Start()
    {
        model = GetComponentInChildren<PlayerModel>();

        if (!playerCamera || !model)
        {
            gameObject.SetActive(false);
            return;
        }

        equipment = GetComponent<Equipment>();
        stats = GetComponent<Stats>();

        playerMovement = GetComponent<ThirdPersonMovement>();


        attackTracker.model = model as PlayerModel;
        attackTracker.Setup();

        playerCamera.playerSource = this;
        equipment.module = this;
        equipment.EquipMelee(model.leftHand, model.rightHand);
        (model as PlayerModel).SetupAnimationHelper(playerMovement);
        playerFocus = model.head;
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
        while (playerMovement.State.IsCrouching)
            yield return new WaitForSeconds(.5f);

        Quaternion rot = model.transform.rotation;
        GameObject previousModel = model.gameObject;
        Destroy(previousModel);

        model = null;
        model = Instantiate(newPlayerModel, transform.position, rot, transform);

        (model as PlayerModel).SetupAnimationHelper(playerMovement);

        equipment.ReEquipWeapon(model.leftHand, model.rightHand);
    }

    public void SetAnimatorAttackIndex(int index)
    {
        (model as PlayerModel).SetAttackIndex(index);
    }

    public Quaternion GetMovementQuaternion()
    {
        return Quaternion.Euler(0, playerCamera.GetRigYRotation(), 0);
    }

    public void RotateModel(Vector3 lookRotation, float turnSpeed)
    {
        model.RotateModel(Quaternion.LookRotation(lookRotation), turnSpeed);
    }

    public void SwitchToFirstPerson()
    {
        firstPerson = true;
        SetObjectLayer(transform, LayerMask.NameToLayer("Invisible"));
        playerCamera.SetFirstPersonMode(firstPerson);
    }

    public void SwitchToThirdPerson()
    {
        firstPerson = false;
        SetObjectLayer(transform, LayerMask.NameToLayer("Player"));
        playerCamera.SetFirstPersonMode(firstPerson);
    }

    public void Attack()
    {
        attackTracker.ClickEvent();
        //StartCoroutine("DoAttack");
    }

    //IEnumerator DoAttack()
    //{
    //    equipment.currentlyAttacking = true;
    //    (model as PlayerModel).SetAnimationState("Punch");

    //    yield return new WaitForSeconds(0.1f);

    //    while (!(model as PlayerModel).AttackIsComplete())
    //        yield return new WaitForSeconds(0.1f);

    //    equipment.currentlyAttacking = false;
    //}
}

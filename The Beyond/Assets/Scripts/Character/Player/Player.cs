using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonController))]
[RequireComponent(typeof(PlayerStats))]
public class Player : Character
{
    [Space] public Sight eyesight = new Sight();

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

    void Update()
    {
        eyesight.Update();

        if (canDie && !dead && stats.health.points <= 0)
            Kill();
    }
   

    public Quaternion GetMovementQuaternion()
    {
        return Quaternion.Euler(0, pCamera.GetRigYRotation(), 0);
    }

    public void SwitchToFirstPerson()
    {
        firstPerson = true;
        SetObjectLayer(transform, LayerMask.NameToLayer("InvisibleToCamera"));
        pCamera.SetFirstPersonMode(firstPerson);
    }

    public void SwitchToThirdPerson()
    {
        firstPerson = false;
        SetObjectLayer(transform, LayerMask.NameToLayer("Player"));
        pCamera.SetFirstPersonMode(firstPerson);
    }

    public override void Kill()
    {
        dead = true;
        model.SetDead();

        //onDead.Invoke(this);
        onAnyDead.Invoke(this);
    }
}
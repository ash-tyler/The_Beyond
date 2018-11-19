using System.Collections;
using UnityEngine;

[RequireComponent(typeof(ThirdPersonController))]
[RequireComponent(typeof(PlayerStats))]
public class Player : Character
{
    [Header("Player Sight")]
    public Sight eyesight = new Sight();

    [HideInInspector] public ThirdPersonCam pCamera;
    [HideInInspector] public ThirdPersonController controller;

    [HideInInspector] public bool firstPerson;


    public PlayerModel  PModel { get { return (model as PlayerModel); } }
    public Transform    CameraFocus { get { return (controller.IsCrouching) ? model.crouchHead : model.head; } }
    public Vector3      RigForward { get { return pCamera.Rig.forward; } }
    

    void Start()
    {
        Setup();
    }

    public void Setup()
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
        stats.Setup(this);
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
    }

    public void SwitchToThirdPerson()
    {
        firstPerson = false;
        SetObjectLayer(transform, LayerMask.NameToLayer("Player"));
    }

    public override void Kill()
    {
        model.soundManager.PlayDeath();

        freezeMovement = true;
        dead = true;
        model.SetDead();

        //onDead.Invoke(this);
        onAnyDead.Invoke(this);
        PlayerManager.instance.RespawnPlayer();
    }

    public void SetNotDead()
    {
        dead = false;
    }
}
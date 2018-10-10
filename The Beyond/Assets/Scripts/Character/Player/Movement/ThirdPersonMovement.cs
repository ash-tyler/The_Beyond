using Beyond.States;
using UnityEngine;

/// <summary>   [Script information | Delete on Final Build]
/// 
/// Purpose:    Provide player movement and actions (jump, crouch, etc).
/// Use:        Input defined by Unity input.
///             WASD:           Away from camera, left of camera, towards camera, right of camera
///             LEFT SHIFT:     Hold to walk
///             LEFT CTRL:      Hold to crouch
///             SPACE:          Press to jump
///             
/// Status:     Has basic minimum viable product functions.
/// Bugs:       If you spot any issues or bugs, please list them below, I'll look into them asap.
///             
/// Notes:    
/// 
/// </summary>


[RequireComponent(typeof(CharacterController))]
public class ThirdPersonMovement : MonoBehaviour
{
    #region Public Variables
    [Space()]
    [Header("Movement Speed")]
    public float runSpeed = 8;
    public float walkSpeed = 2;
    public float crouchSpeed = 1;
    public float jumpSpeed = 10;
    public float turnSpeed = 6;

    [Space()]
    [Header("Multipliers")]
    public float gravityMultiplier = 2;
    public float crouchMultiplier = 0.55f;

    [Space()]
    [Header("Etc")]
    public LayerMask collisionLayers = -1;

    public bool IsMoving { get; private set; }
    public bool InCombat { get; private set; }
    public bool IsNearGround { get; private set; }
    public ActionState State { get; private set; }

    public float CurrentSpeed { get { return (State.IsCrouching) ? crouchSpeed : ((State.IsWalking) ? walkSpeed : runSpeed); } }
    public Vector3 CurrentGravity { get { return Physics.gravity * gravityMultiplier * Time.deltaTime; } }
    #endregion

    #region Private Variables
    private PlayerModule _module;
    private CharacterController _controller;

    private Vector3 moveDir = Vector3.zero;
    private Vector3 playerCenter;
    private float playerHeight;
    #endregion


    #region Start & Update Functions
    void Start()
    {
        _module = GetComponent<PlayerModule>();
        _controller = GetComponent<CharacterController>();
        State = new ActionState();
        State.SetIdle();

        playerCenter = _controller.center;
        playerHeight = _controller.height;
    }

    void Update()
    {
        //Detect Input
        IsNearGround = Physics.Raycast(transform.TransformPoint(playerCenter) - new Vector3(0, 0.2f, 0), Vector3.down, playerHeight, collisionLayers);
        bool combatPressed = Input.GetButtonDown("ReadyCombat");
        bool crouch = Input.GetButton("Crouch");
        bool jump = Input.GetButtonDown("Jump");
        bool walk = Input.GetButton("Walk");
        bool attack = Input.GetButtonDown("Attack");
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");


        //Add gravity and player movement to moveDir
        Vector3 gravity = new Vector3(0, moveDir.y, 0) + CurrentGravity;
        Vector3 addedMovement = (transform.forward * vertical) + (transform.right * horizontal);
        moveDir = (addedMovement.normalized * CurrentSpeed) + gravity;


        ////TEST
        //if (Input.GetMouseButtonDown(0))
        //    (_module.model as PlayerModel).SetAnimationState("Punch");


        //Handle grounded logic
        if (_controller.isGrounded)
        {
            if (State.IsJumping)
                State.SetIdle();
            if (moveDir.y < Physics.gravity.y)
                moveDir.y = Physics.gravity.y;
        }

        //Handle nearGround logic
        if (IsNearGround)
        {
            if (!State.IsIdle)
            {
                if (!crouch && State.IsCrouching)
                    Stand();

                if (!walk && State.IsWalking)
                    State.SetIdle();
            }

            else
            {
                if (crouch)
                    Crouch();

                else if (jump)
                    Jump();

                //else if (walk)
                //    State.SetWalking();

                else
                {
                    if (walk)
                        State.SetWalking();

                    if (combatPressed)
                    {
                        if (!InCombat)
                            _module.EnterCombat();

                        else
                            _module.ExitCombat();

                        InCombat = !InCombat;
                    }

                    if (attack)
                    {
                        if (!InCombat)
                            _module.EnterCombat();

                       _module.TriggerAttack();
                    }
                }
            }
        }


        _controller.Move(moveDir * Time.deltaTime);


        //Rotate player model
        if (vertical != 0 || horizontal != 0)
        {
            IsMoving = true;

            transform.rotation = _module.GetMovementQuaternion();
            _module.RotateModel(new Vector3(moveDir.x, 0, moveDir.z), turnSpeed);
            //Quaternion rot = Quaternion.LookRotation(new Vector3(moveDir.x, 0, moveDir.z));
            //_module.model.transform.rotation = Quaternion.Slerp(_module.model.transform.rotation, rot, turnSpeed * Time.deltaTime);
        }
        else
            IsMoving = false;

        //Sets various Animator variables to properly display the animation
        (_module.model as PlayerModel).HandleAnimator();
    }
    #endregion


    #region Player Action Functions
    /// <summary> Sets the appropriate variables to make the player crouch. </summary>
    private void Crouch()
    {
        SetControllerHeight(_module.model.crouchHead, crouchMultiplier);
        State.SetCrouching();
    }

    /// <summary> Sets the appropriate variables to make the player stand. </summary>
    private void Stand()
    {
        if (Physics.SphereCast(new Ray(transform.TransformPoint(_controller.center), Vector3.up), _controller.radius, playerHeight * 0.90f, collisionLayers))
            return;

        SetControllerHeight(_module.model.head, 1);
        State.SetIdle();
    }

    /// <summary> Sets the appropriate variables to make the player jump. </summary>
    private void Jump()
    {
        //if (!_controller.isGrounded) return;

        moveDir.y = jumpSpeed;
        State.SetJumping();
    }
    #endregion

    #region Helper Functions


    /// <summary> Returns the Character Controller velocity. </summary>
    public Vector3 GetVelocity()
    {
        return _controller.velocity;
    }

    private void SetControllerHeight(Transform newFocus, float multiplier)
    {
        _module.playerFocus = newFocus;
        _controller.center = playerCenter * multiplier;
        _controller.height = playerHeight * multiplier;
    }
    #endregion
}
using Beyond.States;
using UnityEngine;
using UnityEngine.EventSystems;

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
public class ThirdPersonController : ControllerBase
{
    #region Public Variables
    public float CurrentSpeed { get { return (State.IsCrouching) ? crouchSpeed : ((State.IsWalking) ? walkSpeed : runSpeed); } }
    #endregion

    #region Private Variables
    private Vector3 moveDir = Vector3.zero;
    private CharacterController _controller;
    private Vector3 characterCenter;
    private float characterHeight;

    private Player player { get { return character as Player; } set { character = value; } }
    //private Vector3 pGravity { get { return (_controller.isGrounded) ? Vector3.zero : Vector3.up * (moveDir.y + CurrentGravity.y); } }
    #endregion


    #region Start & Update Functions
    public void Setup(Player newPlayer)
    {
        player = newPlayer;

        State = new ActionState();
        State.SetIdle();

        _controller = GetComponent<CharacterController>();
        characterCenter = _controller.center;
        characterHeight = _controller.height;
    }

    void Update()
    {
        IsNearGround = NearGround();

        if (!player.freezeMovement)
        {
            //Detect movement input
            float horizontal    = Input.GetAxis("Horizontal");
            float vertical      = Input.GetAxis("Vertical");
            moveDir = GetAddedMovement(vertical, horizontal) + GetGravity();


            //Handle Combat & Attack logic if pointer isn't over a UI element
            if (EventSystem.current && !EventSystem.current.IsPointerOverGameObject())
            {
                if (Input.GetButtonDown("ReadyCombat"))
                    CombatSwitch();
                if (Input.GetButtonDown("Attack"))
                    AttackTrigger();
            }


            //Handle State logic
            if (IsNearGround)
            {
                switch (State._state)
                {
                    case ActionState.PlayerState.IDLE:
                        if (Input.GetButton("Crouch"))
                            Crouch();

                        else if (Input.GetButtonDown("Jump"))
                            Jump();

                        else if (Input.GetButton("Walk"))
                            State.SetWalking();
                        break;

                    case ActionState.PlayerState.CROUCHING:
                        if (!Input.GetButton("Crouch"))
                            Stand();
                        break;

                    case ActionState.PlayerState.JUMPING:
                        if (_controller.isGrounded)
                            State.SetIdle();
                        break;

                    case ActionState.PlayerState.WALKING:
                        if (!Input.GetButton("Walk"))
                            State.SetIdle();
                        break;

                    default:
                        break;
                }
            }


            _controller.Move(moveDir * Time.deltaTime);


            //Rotate player model
            if (vertical != 0 || horizontal != 0 || player.firstPerson)
            {
                Vector3 lookRotation = (player.firstPerson) ? new Vector3(player.RigForward.x, 0, player.RigForward.z) : new Vector3(moveDir.x, 0, moveDir.z);

                transform.rotation = player.GetMovementQuaternion();
                player.RotateModel(lookRotation, turnSpeed);
            }
        }

        //Sets various Animator variables to properly display the animation
        player.model.HandleAnimator(State, _controller.velocity, IsNearGround);
    }
    #endregion


    #region Character Action Functions
    /// <summary> Sets the appropriate variables to make the Character crouch. </summary>
    protected void Crouch()
    {
        SetControllerHeight(crouchMultiplier);
        State.SetCrouching();
    }

    /// <summary> Sets the appropriate variables to make the Character stand. </summary>
    protected void Stand()
    {
        if (Physics.SphereCast(new Ray(transform.TransformPoint(_controller.center), Vector3.up), _controller.radius, characterHeight * 0.90f, collisionLayers))
            return;

        SetControllerHeight(1);
        State.SetIdle();
    }

    /// <summary> Sets the appropriate variables to make the Character jump. </summary>
    protected void Jump()
    {
        moveDir.y = jumpSpeed;
        State.SetJumping();
    }
    #endregion


    #region Helper Functions
    /// <summary> Raycasts to the ground. Returns if the Character is near the ground (near relative to Character height). </summary>
    public bool NearGround()
    {
        return Physics.Raycast(transform.TransformPoint(characterCenter) - new Vector3(0, 0.2f, 0), Vector3.down, characterHeight, collisionLayers);
    }

    /// <summary> Returns the Character Controller velocity. </summary>
    public Vector3 GetVelocity()
    {
        return _controller.velocity;
    }

    public Vector3 GetAddedMovement(float vertical, float horizontal)
    {
        return ((transform.forward * vertical) + (transform.right * horizontal)).normalized * CurrentSpeed;
    }

    public Vector3 GetGravity()
    {
        return (_controller.isGrounded) ? Vector3.up * Mathf.Min(moveDir.y + CurrentGravity.y, Physics.gravity.y) : Vector3.up * (moveDir.y + CurrentGravity.y);
    }

    /// <summary> Sets the Character Controller center and height. </summary>
    protected void SetControllerHeight(float multiplier)
    {
        _controller.center = characterCenter * multiplier;
        _controller.height = characterHeight * multiplier;
    }
    #endregion
}
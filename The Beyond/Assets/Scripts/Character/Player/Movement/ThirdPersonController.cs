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
        //Detect Input
        IsNearGround = NearGround();
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

                else
                {
                    if (walk)
                        State.SetWalking();

                    if (combatPressed)
                    {
                        if (!InCombat)
                            player.EnterCombat();

                        else
                            player.ExitCombat();

                        InCombat = !InCombat;
                    }

                    if (attack)
                    {
                        if (!InCombat)
                            player.EnterCombat();

                        player.TriggerAttack();
                    }
                }
            }
        }


        _controller.Move(moveDir * Time.deltaTime);


        //Rotate player model
        if (vertical != 0 || horizontal != 0)
        {
            IsMoving = true;

            transform.rotation = player.GetMovementQuaternion();
            player.RotateModel(new Vector3(moveDir.x, 0, moveDir.z), turnSpeed);
        }
        else
            IsMoving = false;

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

    /// <summary> Sets the Character Controller center and height. </summary>
    protected void SetControllerHeight(float multiplier)
    {
        _controller.center = characterCenter * multiplier;
        _controller.height = characterHeight * multiplier;
    }
    #endregion
}
using UnityEngine;

/// <summary>   [Script information | Delete on Final Build]
/// 
/// Purpose:    Handle Animator related information.
/// Use:        Attach this component to a prefab to use as a player model.
///             
/// Status:     Has basic minimum viable product functions.
/// Bugs:       If you spot any issues or bugs, please list them below, I'll look into them asap:
///             
/// Notes:    
/// 
/// </summary>


[RequireComponent(typeof(Animator))]
public class AnimationHelper : MonoBehaviour
{
    #region Public Variables
    [Space()]
    [Header("Animator Prefabs")]
    public RuntimeAnimatorController controller;
    public Avatar avatar;

    [Space()]
    [Header("Animation Speed")]
    public float maxRunSpeed;
    public float maxWalkSpeed;
    public float maxCrouchSpeed;
    public float animationMultiplier = 1f;

    [Space()]
    [Header("Etc")]
    public float runAnimOffset = 0.2f;
    #endregion

    #region Private Variables
    private ThirdPersonMovement _moveScript;
    private Animator _animator;
    #endregion


    #region Setup & Update Functions
    public void SetAnimator(ThirdPersonMovement move)
    {
        _animator = GetComponent<Animator>();

        _animator.avatar = avatar;
        _animator.runtimeAnimatorController = controller;
        _animator.Rebind();
        _animator.applyRootMotion = false;

        _moveScript = move;
    }

    /// <summary> Ensures the proper animations line up with player movement. </summary>
    public void HandleAnimator()
    {
        Vector3 velocity = _moveScript.GetVelocity();
        float speed = (_moveScript.State.IsCrouching) ? maxCrouchSpeed : ((_moveScript.State.IsWalking) ? maxWalkSpeed : maxRunSpeed);

        _animator.SetFloat("Forward", (Mathf.Abs(velocity.x) + Mathf.Abs(velocity.z)) / speed, 0.1f, Time.fixedDeltaTime);
        _animator.SetBool("Crouch", _moveScript.State.IsCrouching);
        _animator.SetBool("OnGround", _moveScript.IsNearGround);
        if (_moveScript.State.IsJumping)
            _animator.SetFloat("Jump", velocity.y);

        if (_moveScript.IsNearGround && _moveScript.IsMoving)
        {
            float runCycle = Mathf.Repeat(_animator.GetCurrentAnimatorStateInfo(0).normalizedTime + runAnimOffset, 1);
            _animator.SetFloat("JumpLeg", (runCycle < 0.5f) ? 1 : -1);
        }
        else
            _animator.SetFloat("JumpLeg", 0);

        _animator.speed = (_moveScript.IsNearGround && velocity.magnitude > 0) ? animationMultiplier : 1;
    }

    public void SetAttack(bool value)
    {
        _animator.SetBool("Attack", value);
    }

    public bool IsPlayingAttackAnimation()
    {
        return _animator.GetCurrentAnimatorStateInfo(1).IsName("Punch");
    }
    #endregion


    #region Helper Functions
    public static bool SuitableModel(GameObject model)
    {
        return (model && model.GetComponent<AnimationHelper>());
    }
    #endregion
}
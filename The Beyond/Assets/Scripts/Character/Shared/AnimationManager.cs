using Beyond.States;
using UnityEngine;

[System.Serializable]
public class AnimationManager
{
    #region Public Variables
    [Space()]
    [Header("Animator Prefabs")]
    public RuntimeAnimatorController controller;
    public Avatar avatar;

    [Space()]
    [Header("Movement Speed")]
    public float maxRunSpeed = 10f;
    public float maxWalkSpeed = 6f;
    public float maxCrouchSpeed = 1f;
    public float animationMultiplier = 1f;
    #endregion

    #region Private Variables
    private Animator _animator;
    #endregion


    #region Setup & Update Functions
    public void SetAnimator(Animator animator)
    {
        if (!animator)
            throw new System.ArgumentException("Given Animator is invalid (NULL). Please check that given Model has an Animator", "animator");

        _animator = animator;

        _animator.avatar = avatar;
        _animator.runtimeAnimatorController = controller;
        _animator.Rebind();

        //_animator.applyRootMotion = false;
    }

    public void HandleAnimator(ActionState state, Vector3 velocity, bool grounded)
    {
        //if (!_animator.gameObject.activeSelf) return;

        float speed = (state.IsCrouching) ? maxCrouchSpeed : ((state.IsWalking) ? maxWalkSpeed : maxRunSpeed);

        _animator.SetBool("OnGround", grounded);
        _animator.SetFloat("Forward", (Mathf.Abs(velocity.x) + Mathf.Abs(velocity.z)) / speed, 0.1f, Time.fixedDeltaTime);
        _animator.SetBool("Crouch", state.IsCrouching);
        _animator.SetFloat("Jump", (state.IsJumping) ? velocity.y : 0f);

        _animator.speed = (grounded && velocity.magnitude > 0) ? animationMultiplier : 1;
    }

    public void SetDead()
    {
        _animator.SetBool("IsDead", true);
    }

    public void SetEquipmentType(int equipmentType)
    {
        _animator.SetInteger("EquipType", equipmentType);
    }

    public void SetInCombat(bool value)
    {
        _animator.SetBool("InCombat", value);
    }

    public void TriggerAttack()
    {
        _animator.SetTrigger("AttackTrigger");
    }
}
#endregion
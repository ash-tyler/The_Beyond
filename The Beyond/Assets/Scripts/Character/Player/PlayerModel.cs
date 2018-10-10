using System.Collections;
using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Animator))]
public class PlayerModel : CharacterModel
{
    [Space]
    [SerializeField]
    private AnimationHelper animHelper;

    private void Start()
    {

    }

    public void SetupAnimationHelper(ThirdPersonMovement move)
    {
        Animator anim = GetComponent<Animator>();

        if (anim)
            animHelper.SetAnimator(move, anim);
    }

    public void SetInCombat(bool value)
    {
        animHelper.SetInCombat(value);
    }

    public void TriggerAttack()
    {
        animHelper.TriggerAttack();
    }

    //public void AttackAnimator(bool value, int index)
    //{
    //    animHelper.AttackAnimator(value, index);
    //}

    //public void AttackEvent()
    //{

    //}

    //IEnumerator AttackEventCoroutine()
    //{
    //    float timePassed = 0;
    //    while (timePassed < attackTracker.waitTime)
    //    {
    //        if (attackTracker.PlayerClicked)
    //        {
    //            attackTracker.SetIndex();
    //        }
    //    }

    //    yield return new WaitForSeconds(attackTracker.waitTime);

    //    if (attackTracker.PlayerClicked)
    //}

    //public void SetAttackIndex(int index)
    //{
    //    animHelper.SetAttackIndex(index);
    //}

    public void HandleAnimator()
    {
        animHelper.HandleAnimator();
    }

    //public bool AttackIsComplete()
    //{
    //    return animHelper.AnimationComplete();
    //}

    //public void SetAnimationState(string stateName)
    //{
    //    animHelper.SetState(stateName);
    //}

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
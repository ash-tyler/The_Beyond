using System.Collections;
using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(AnimatorEventManager))]
public class PlayerModel : CharacterModel
{
    [Space]
    [SerializeField]
    private AnimationHelper animHelper;
    [HideInInspector]
    public AnimatorEventManager animEventManager;

    private void Start()
    {
        animEventManager = GetComponent<AnimatorEventManager>();
        animEventManager.module = GetComponentInParent<PlayerModule>();
    }

    public void SetupAnimationHelper(ThirdPersonMovement move)
    {
        Animator anim = GetComponent<Animator>();

        if (anim)
            animHelper.SetAnimator(move, anim);
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

    public void SetAttackIndex(int index)
    {
        animHelper.SetAttackIndex(index);
    }

    public void HandleAnimator()
    {
        animHelper.HandleAnimator();
    }

    public bool AttackIsComplete()
    {
        return animHelper.AnimationComplete();
    }

    //public void SetAnimationState(string stateName)
    //{
    //    animHelper.SetState(stateName);
    //}

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
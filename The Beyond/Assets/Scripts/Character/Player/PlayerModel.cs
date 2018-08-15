using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Animator))]
public class PlayerModel : CharacterModel
{
    [Space]
    [SerializeField]
    private AnimationHelper animHelper;

    public void SetupAnimationHelper(ThirdPersonMovement move)
    {
        Animator anim = GetComponent<Animator>();

        if (anim)
            animHelper.SetAnimator(move, anim);
    }

    public void HandleAnimator()
    {
        animHelper.HandleAnimator();
    }

    public void SetAttack(bool value)
    {
        animHelper.SetAttack(value);
    }

    public bool IsPlayingAttackAnimation()
    {
        return animHelper.IsPlayingAttackAnimation();
    }


    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
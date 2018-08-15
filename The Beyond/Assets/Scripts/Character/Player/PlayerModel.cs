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

    public bool AttackIsComplete()
    {
        return animHelper.AnimationComplete();
    }

    public void SetAnimationState(string stateName)
    {
        animHelper.SetState(stateName);
    }

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
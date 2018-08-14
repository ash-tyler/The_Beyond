using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Animator))]
public class PlayerModel : CharacterModel
{
    [Space]
    public AnimationHelper animHelper;

    public void SetupAnimationHelper(ThirdPersonMovement move)
    {
        animHelper.SetAnimator(move, GetComponent<Animator>());
    }

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
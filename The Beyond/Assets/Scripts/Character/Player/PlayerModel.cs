using UnityEngine;

[RequireComponent(typeof(AnimationHelper))]
[RequireComponent(typeof(QuickBodyReference))]
public class PlayerModel : CharacterModel
{
    public AnimationHelper animHelper;

	void Start ()
    {
        GetModelComponents();
    }

    public override void GetModelComponents()
    {
        animHelper = GetComponent<AnimationHelper>();
        bodyReference = GetComponent<QuickBodyReference>();
    }

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
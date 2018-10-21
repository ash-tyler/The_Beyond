using UnityEngine;

[System.Serializable]
public class PlayerModel : CharacterModel
{

    public static bool SuitablePlayerModel(GameObject model)
    {
        return (model && model.GetComponent<PlayerModel>());
    }
}
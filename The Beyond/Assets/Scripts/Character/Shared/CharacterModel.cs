using UnityEngine;

[System.Serializable]
public class CharacterModel : MonoBehaviour
{
    public Transform leftHand;
    public Transform rightHand;
    public Transform head;
    public Transform crouchHead;


    public static bool SuitableCharacterModel(GameObject model)
    {
        return (model && model.GetComponent<CharacterModel>());
    }
}
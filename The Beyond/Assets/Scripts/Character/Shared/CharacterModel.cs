using UnityEngine;

[System.Serializable]
public class CharacterModel : MonoBehaviour
{
    public Transform leftHand;
    public Transform rightHand;
    public Transform head;
    public Transform crouchHead;

    [HideInInspector]
    public CharacterModule module;

    //[HideInInspector]
    //public bool canDamage = false;


    public static bool SuitableCharacterModel(GameObject model)
    {
        return (model && model.GetComponent<CharacterModel>());
    }

    public void RotateModel(Quaternion lookRot, float turnSpeed)
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRot, turnSpeed * Time.deltaTime);
    }
}
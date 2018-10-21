using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(AttackManager))]
public class CharacterModel : MonoBehaviour
{
    public Transform leftHand;
    public Transform rightHand;
    public Transform head;
    public Transform crouchHead;

    [Space] public AnimationManager         animManager;
    [HideInInspector] public AttackManager  attackManager;
    [HideInInspector] public Character      character;

    public void Setup()
    {
        animManager.SetAnimator(GetComponent<Animator>());
        attackManager = GetComponent<AttackManager>();
    }

    public void SetupAnimationHelper()
    {
        animManager.SetAnimator(GetComponent<Animator>());
    }

    public void SetInCombat(bool value)
    {
        animManager.SetInCombat(value);
    }

    public void TriggerAttack()
    {
        animManager.TriggerAttack();
    }

    public static bool SuitableCharacterModel(GameObject model)
    {
        return (model && model.GetComponent<CharacterModel>());
    }

    public void RotateModel(Quaternion lookRot, float turnSpeed)
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRot, turnSpeed * Time.deltaTime);
    }
}
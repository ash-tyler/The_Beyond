using Beyond.States;
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
    public Transform back;

    [Space] public AnimationManager         animManager;
    [HideInInspector] public AttackManager  attackManager;

    [HideInInspector] public Character      character;

    public void Setup()
    {
        animManager.SetAnimator(GetComponent<Animator>());
        attackManager = GetComponent<AttackManager>();
        attackManager.Setup(character);
    }

    public void SetDead()
    {
        animManager.SetDead();
    }

    public void SetEquipmentType(int equipmentType)
    {
        animManager.SetEquipmentType(equipmentType);
    }

    public void SetInCombat(bool value)
    {
        animManager.SetInCombat(value);
    }

    public void TriggerAttack()
    {
        animManager.TriggerAttack();
    }

    public void HandleAnimator(ActionState state, Vector3 velocity, bool grounded)
    {
        animManager.HandleAnimator(state, velocity, grounded);
    }

    public void RotateModel(Quaternion lookRot, float turnSpeed)
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRot, turnSpeed * Time.deltaTime);
    }

    public void SetMainWeaponParentCombat()
    {
        character.equipment.SetMainWeaponParent(rightHand, character.equipment.mainWeapon.positionAdjust, character.equipment.mainWeapon.rotationAdjust);
    }

    public void SetMainWeaponParentIdle()
    {
        character.equipment.SetMainWeaponParent(back, Vector3.zero, Vector3.zero);
    }
}
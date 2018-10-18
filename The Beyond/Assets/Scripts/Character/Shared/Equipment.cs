using UnityEngine;

[System.Serializable]
public class Equipment : MonoBehaviour
{
    public GameObject _leftHand;
    public GameObject _rightHand;

    public Weapon   weaponInfo;
    public bool     weaponIsEquiped = false;

    [HideInInspector]
    public bool currentlyAttacking = false;

    [HideInInspector]
    public PlayerModule module;


    private GameObject EquipMeleeHand(Transform handTransform)
    {
        GameObject hand = weaponInfo.GetInstance(handTransform);
        if (!hand)
            return null;

        hand.transform.parent = handTransform;

        return hand;
    }

    public void EquipMelee(Transform leftHand, Transform rightHand)
    {
        EmptyHands();

        _leftHand = EquipMeleeHand(leftHand);
        _rightHand = EquipMeleeHand(rightHand);

        if (!_leftHand || !_rightHand)
            Debug.Log("Equip Melee FAILED", this);

        weaponIsEquiped = false;
    }

    public void EquipOneHanded()
    {
        EmptyHands();
    }

    public void EquipTwoHanded()
    {
        EmptyHands();
    }

    public void EquipRanged()
    {
        EmptyHands();
    }

    public void ReEquipWeapon(Transform leftHand, Transform rightHand)
    {
        if (WeaponIsTypeOf(typeof(MeleeWeapon)))
        {
            EquipMelee(leftHand, rightHand);
            return;
        }

        else if (WeaponIsTypeOf(typeof(OneHandedWeapon)))
        {
            EquipOneHanded();
            return;
        }

        else if (WeaponIsTypeOf(typeof(TwoHandedWeapon)))
        {
            EquipTwoHanded();
            return;
        }

        else if (WeaponIsTypeOf(typeof(RangedWeapon)))
        {
            EquipRanged();
            return;
        }
    }

    public bool WeaponIsTypeOf(System.Type type)
    {
        return weaponInfo.GetType() == type;
    }


    private void EmptyHands()
    {
        if (_leftHand)
            DestroyObject(_leftHand);
        if (_rightHand)
            DestroyObject(_rightHand);
    }

    private void EmptyLeftHand()
    {
        if (_leftHand)
            DestroyObject(_leftHand);
    }

    private void EmptyRightHand()
    {
        if (_rightHand)
            DestroyObject(_rightHand);
    }


    private void OnDrawGizmos()
    {
        if (weaponInfo && module)
        {
            Vector3 from = -module.model.transform.right;

            UnityEditor.Handles.color = Color.cyan;
            UnityEditor.Handles.DrawSolidArc(transform.position, Vector3.up, from, weaponInfo.angle, weaponInfo.damageRadius);
        }
    }
}
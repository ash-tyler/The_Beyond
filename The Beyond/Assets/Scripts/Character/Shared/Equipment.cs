using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Equipment : MonoBehaviour
{
    public GameObject _leftHand;
    public GameObject _rightHand;

    public Weapon   weaponInfo;
    public bool     weaponIsEquiped = false;

    public static string weaponTag = "Weapon Collider";


    public void EquipMelee(Transform leftHand, Transform rightHand)
    {
        EmptyHands();

        _leftHand = weaponInfo.GetInstance(leftHand);
        _rightHand = weaponInfo.GetInstance(rightHand);

        _leftHand.transform.parent = leftHand;
        _rightHand.transform.parent = rightHand;

        _leftHand.tag = weaponTag;
        _rightHand.gameObject.tag = weaponTag;

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
}
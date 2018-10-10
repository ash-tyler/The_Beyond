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

    [HideInInspector]
    public bool currentlyAttacking = false;

    [HideInInspector]
    public PlayerModule module;

    //[HideInInspector]
    List<WeaponCollider> weaponColliders = new List<WeaponCollider>();

    private GameObject EquipMeleeHand(Transform handTransform)
    {
        GameObject hand = weaponInfo.GetEquipedInstance(handTransform, gameObject);
        if (!hand)
            return null;

        hand.transform.parent = handTransform;

        WeaponCollider wepCol = hand.GetComponent<WeaponCollider>();
        weaponColliders.Add(wepCol);

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
        //module.attackTracker.ComboList = weaponInfo.ComboList;
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
        weaponColliders.Clear();

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

    public void ClearHitList()
    {

    }

    public void EnableColliders()
    { 
        foreach(WeaponCollider wc in weaponColliders)
        {
            wc.enabled = true;
        }
    }

    public void DisableColliders()
    {
        foreach (WeaponCollider wc in weaponColliders)
        {
            wc.enabled = false;
            wc.enemiesHit.Clear();
        }
    }

    //private void OnDrawGizmos()
    //{
    //    if (weaponInfo)
    //    {
    //        UnityEditor.Handles.color = Color.cyan;
    //        if (weaponInfo.rangeType == Weapon.AttackRange.CIRCLE)
    //            UnityEditor.Handles.DrawSolidDisc(transform.position, Vector3.up, weaponInfo.range);
    //        else
    //        {
    //            UnityEditor.Handles.DrawSolidArc(transform.position, Vector3.up, transform.right, 40, weaponInfo.range);
    //        }
    //    }
    //}
}
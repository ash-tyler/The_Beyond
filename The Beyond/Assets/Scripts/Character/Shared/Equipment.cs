using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Equipment : MonoBehaviour
{
    public GameObject _leftHand;
    public GameObject _rightHand;

    public Weapon wep;

    public void Setup(Transform leftHand, Transform rightHand)
    {
        if (wep.GetType() == typeof(MeleeWeapon))
        {
            _leftHand = wep.GetInstance(transform);
            _rightHand = wep.GetInstance(transform);

            WeaponCollider leftCollider = _leftHand.GetComponent<WeaponCollider>();
            WeaponCollider rightCollider = _rightHand.GetComponent<WeaponCollider>();

            leftCollider.anchor = leftHand;
            rightCollider.anchor = rightHand;
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Equipment : MonoBehaviour
{
    public GameObject _leftHand;
    public GameObject _rightHand;

    public Weapon wep;

    private CharacterModule module;

    public void Setup()
    {
        module = GetComponent<CharacterModule>();

        if (wep.GetType() == typeof(MeleeWeapon))
        {
            _leftHand = wep.GetInstance(transform);
            _rightHand = wep.GetInstance(transform);

            WeaponCollider leftCollider = _leftHand.GetComponent<WeaponCollider>();
            WeaponCollider rightCollider = _rightHand.GetComponent<WeaponCollider>();

            leftCollider.anchor = module.model.bodyReference.leftFist;
            rightCollider.anchor = module.model.bodyReference.rightFist;
        }
    }
}
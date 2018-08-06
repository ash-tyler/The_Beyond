using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Equipment : MonoBehaviour
{
    public GameObject _leftHand;
    public GameObject _rightHand;

    public Weapon wep;

    private PlayerSource playerSource;

    private void Start()
    {
        playerSource = GetComponent<PlayerSource>();

        if (wep.GetType() == typeof(MeleeWeapon))
        {
            _leftHand = wep.GetInstance(transform);
            _rightHand = wep.GetInstance(transform);

            WeaponCollider leftCollider = _leftHand.GetComponent<WeaponCollider>();
            WeaponCollider rightCollider = _rightHand.GetComponent<WeaponCollider>();

            leftCollider.anchor = playerSource.playerModel.bodyReference.leftFist;
            rightCollider.anchor = playerSource.playerModel.bodyReference.rightFist;
        }
    }
}
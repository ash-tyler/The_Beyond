using UnityEngine;

[System.Serializable]
public class Equipment : MonoBehaviour
{
    public Weapon   mainWeapon;
    public Weapon   offhand;
    [Space]
    public Fists    fistInfo;

    public bool     weaponIsEquiped { get { return !mainWeapon.IsFist; } }

    [HideInInspector]
    public bool     currentlyAttacking = false;

    [HideInInspector]
    public Character character;

    //should be private
    public GameObject _leftHand;
    public GameObject _rightHand;


    public void Setup(Character newCharacter)
    {
        character = newCharacter;

        if (!fistInfo)
            Debug.Log("Warning! This character has no default weapon (fists)", this);

        ReEquip();

        if (!mainWeapon || mainWeapon.IsFist) return;

        _rightHand.transform.parent = character.model.back;
        _rightHand.transform.localPosition = Vector3.zero;
        _rightHand.transform.localEulerAngles = Vector3.zero;
    }


    public void Equip(Weapon newWeapon)
    {
        if (!newWeapon || currentlyAttacking) return;

        if (newWeapon.IsOneHanded && (newWeapon as OneHandedWeapon).isOffhand)
            SetOffhand(newWeapon, newWeapon.GetInstance(character.model.leftHand));

        else if (newWeapon.IsFist)
            mainWeapon = fistInfo;

        else
            SetMainhand(newWeapon, newWeapon.GetInstance(character.model.rightHand));
    }

    public void Unequip(Weapon weapon)
    {
        if (weapon.IsFist || currentlyAttacking) return;

        if (mainWeapon == weapon)
            SetMainhand(fistInfo, null);
        if (offhand == weapon)
            SetOffhand(fistInfo, null);
    }

    public void ReEquip()
    {
        if (currentlyAttacking) return;

        if (!mainWeapon && !offhand)
            mainWeapon = fistInfo;
        else
        {
            Equip(mainWeapon);
            Equip(offhand);
        }
    }

    public void EnterCombat()
    {
        currentlyAttacking = true;
    }

    public void ExitCombat()
    {
        currentlyAttacking = false;
    }

    public void SetMainWeaponParent(Transform newParent, Vector3 pos, Vector3 rot)
    {
        _rightHand.transform.SetParent(newParent, true);
        _rightHand.transform.localPosition = pos;
        _rightHand.transform.localEulerAngles = rot;
        _rightHand.transform.localScale = mainWeapon.scaleAdjust;
    }

    public Weapon GetWeaponInfo()
    {
        return mainWeapon;
    }

    public int GetEquipmentType()
    {
        if (mainWeapon.IsFist)
            return 0;
        if (mainWeapon.IsOneHanded)
            return 1;
        if (mainWeapon.IsTwoHanded)
            return 2;

        return 3;
    }


    private void SetMainhand(Weapon weapon, GameObject model)
    {
        mainWeapon = weapon;
        if (_rightHand)
            DestroyImmediate(_rightHand);

        _rightHand = model;
        //_rightHand.transform.parent = character.model.rightHand;
    }

    private void SetOffhand(Weapon weapon, GameObject model)
    {
        offhand = weapon;
        if (_leftHand)
            DestroyImmediate(_leftHand);

        _leftHand = model;
        //_leftHand.transform.parent = character.model.leftHand;
    }


    private void OnDrawGizmos()
    {
        if (!character) return;

        Vector3 from = -character.model.transform.right;
        UnityEditor.Handles.color = Color.cyan;

        if (mainWeapon)
            UnityEditor.Handles.DrawSolidArc(transform.position, Vector3.up, from, mainWeapon.angle, mainWeapon.damageRadius);
        if (offhand)
            UnityEditor.Handles.DrawSolidArc(transform.position, Vector3.up, from, mainWeapon.angle, mainWeapon.damageRadius);
    }
}
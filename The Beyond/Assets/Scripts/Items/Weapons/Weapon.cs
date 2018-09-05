using System.Collections.Generic;
using TheBeyond.Enums;
using UnityEngine;


namespace TheBeyond.Enums
{
    public enum WeaponAnimation
    {
        PunchLeft = 0,
        PunchRight
    }
}


public class Weapon : Item
{
    public int damage;

    [Space]
    public List<WeaponAnimation> ComboList;
    public int LastComboIndex { get { return ComboList.Count - 1; } }



    public override GameObject GetInstance()
    {
        return SetGenericObject(Instantiate(model));
    }

    public override GameObject GetInstance(Transform parent)
    {
        return SetGenericObject(Instantiate(model, parent.position, parent.rotation, parent));
    }

    public GameObject GetEquipedInstance(Transform parent, Equipment user)
    {
        return SetEquipedObject(Instantiate(model, parent.position, parent.rotation, parent), user);
    }

    public GameObject GetLootInstance(Transform parent)
    {
        GameObject weaponObj = GetInstance(parent);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        return weaponObj;
    }

    private GameObject SetGenericObject(GameObject weaponObj)
    {
        WeaponCollider weaponCollider = weaponObj.GetComponent<WeaponCollider>();
        if (!weaponCollider)
            return null;

        weaponCollider.weapon = this as Weapon;
        return weaponObj;
    }

    private GameObject SetEquipedObject(GameObject weaponObj, Equipment user)
    {
        WeaponCollider weaponCollider = weaponObj.GetComponent<WeaponCollider>();
        if (!weaponCollider)
            return null;

        weaponObj.layer = LayerMask.NameToLayer("Weapon");
        weaponCollider.weapon = this as Weapon;
        weaponCollider.equipment = user;
        return weaponObj;
    }

    //public AttackType weaponType;
    //private List<WeaponCollider> colliders = new List<WeaponCollider>();

    //private void Awake()
    //{
    //    if (model)
    //    {
    //        WeaponCollider[] modelColliders = model.GetComponents<WeaponCollider>();

    //        if (modelColliders.Length > 0)
    //            colliders.AddRange(modelColliders);
    //    }
    //}

    //public override void MakeInstance()
    //{

    //}

    //public void StartAttack()
    //{
    //    if (colliders.Count == 0) return;

    //    for (int i = 0; i < colliders.Count; i++)
    //    {
    //        colliders[i].currentlyAttacking = true;
    //        colliders[i].collider.
    //    }
    //}

    //public void EndAttack()
    //{
    //    if (colliders.Count == 0) return;

    //    for (int i = 0; i < colliders.Count; i++)
    //    {
    //        colliders[i].currentlyAttacking = false;
    //        colliders[i].enemiesHit.Clear();
    //    }
    //}

    //void OnTriggerEnter(Collider colidedObj)
    //{
    //    switch (weaponType)
    //    {
    //        case AttackType.MELEE:
    //            break;
    //        case AttackType.ONE_HANDED:
    //            break;
    //        case AttackType.TWO_HANDED:
    //            break;
    //        case AttackType.RANGED:
    //            break;
    //    }
    //}

    //public enum AttackRange
    //{
    //    CIRCLE = 0,
    //    FRONT,
    //    BACK
    //}

    //public AttackRange rangeType;
    //public float range;
}
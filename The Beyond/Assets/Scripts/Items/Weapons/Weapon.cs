using System.Collections.Generic;
using UnityEngine;

public class Weapon : Item
{
    public int damage;

    public override GameObject GetInstance()
    {

        GameObject obj = Instantiate(model);

        WeaponCollider weaponCollider = obj.GetComponent<WeaponCollider>();

        if (weaponCollider)
            weaponCollider.weapon = this as Weapon;
        else
            return null;

        return obj;
    }

    public override GameObject GetInstance(Transform parent)
    {

        GameObject obj = Instantiate(model, parent);

        WeaponCollider weaponCollider = obj.GetComponent<WeaponCollider>();

        if (weaponCollider)
                weaponCollider.weapon = this as Weapon;
        else
            return null;

        return obj;
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
}
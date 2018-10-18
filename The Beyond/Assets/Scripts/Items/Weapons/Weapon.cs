using UnityEngine;


public class Weapon : Item
{
    public float damage;
    [Space]

    public float damageRadius;
    public float angle = 45;


    public override GameObject GetInstance()
    {
        return Instantiate(model);
    }

    public override GameObject GetInstance(Transform parent)
    {
        return Instantiate(model, parent.position, parent.rotation, parent);
    }

    public GameObject GetLootInstance(Transform parent)
    {
        GameObject weaponObj = GetInstance(parent);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        return weaponObj;
    }
}
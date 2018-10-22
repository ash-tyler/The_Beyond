using UnityEngine;


public class Weapon : Item
{
    public float damage;
    [Space]

    public float damageRadius;
    public float angle = 45;


    public override GameObject GetInstance()
    {
        if (!model) return null;
        return Instantiate(model);
    }

    public override GameObject GetInstance(Transform parent)
    {
        if (!model) return null;
        return Instantiate(model, parent.position, parent.rotation, parent);
    }

    public GameObject GetLootInstance()
    {
        if (!lootModel) return null;

        GameObject weaponObj = Instantiate(lootModel);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        weaponObj.AddComponent<ItemRef>();
        weaponObj.GetComponent<ItemRef>().Setup(this);
        return weaponObj;
    }

    public GameObject GetLootInstance(Transform parent)
    {
        if (!lootModel) return null;

        GameObject weaponObj = Instantiate(lootModel, parent.position, parent.rotation, parent);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        weaponObj.AddComponent<ItemRef>();
        weaponObj.GetComponent<ItemRef>().Setup(this);
        return weaponObj;
    }
}
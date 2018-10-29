using UnityEngine;


public class Weapon : Item
{
    [Space]
    [Space]
    public float damage;
    [Space]
    public float damageRadius;
    public float angle = 45;
    [Space]
    public Vector3 positionAdjust;
    public Vector3 rotationAdjust;
    [HideInInspector]
    public Vector3 scaleAdjust;

    public bool IsOneHanded { get { return (this as OneHandedWeapon); } }
    public bool IsTwoHanded { get { return (this as TwoHandedWeapon); } }
    public bool IsRanged { get { return (this as RangedWeapon); } }
    public bool IsFist { get { return (this as Fists); } }


    public override GameObject GetInstance()
    {
        if (!model) return null;
        return Instantiate(model);
    }

    public override GameObject GetInstance(Transform parent)
    {
        if (!model) return null;
        GameObject obj = Instantiate(model, parent.position, parent.rotation, parent);
        obj.transform.parent = parent;
        obj.transform.localPosition = positionAdjust;
        obj.transform.localEulerAngles = rotationAdjust;
        scaleAdjust = obj.transform.localScale;
        return obj;
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
using UnityEngine;

public class Item : ItemValue
{
    public GameObject   model;
    [Space]
    public Sprite       inventoryImage;
    [Space]
    public bool         canAddToInventory = true;


    void Start()
    {
        if (!model)
            model = lootModel;
    }

    // creating one of these items eg as a loot drop or when equipping
    public virtual GameObject GetInstance()
    {
        GameObject obj = Instantiate(model);
        return obj;
    }

    public virtual GameObject GetInstance(Transform parent)
    {
        GameObject obj = Instantiate(model, parent);
        return obj;
    }

    public override GameObject GetLootInstance()
    {
        if (!lootModel) return null;

        GameObject obj = Instantiate(lootModel);
        obj.layer = LayerMask.NameToLayer("Loot");
        obj.AddComponent<ItemRef>();
        obj.GetComponent<ItemRef>().Setup(this);
        return obj;
    }

    public override GameObject GetLootInstance(Transform parent)
    {
        if (!lootModel) return null;

        GameObject obj = Instantiate(lootModel, parent.position, parent.rotation, parent);
        obj.layer = LayerMask.NameToLayer("Loot");
        obj.AddComponent<ItemRef>();
        obj.GetComponent<ItemRef>().Setup(this);
        return obj;
    }
}
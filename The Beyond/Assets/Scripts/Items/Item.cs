using UnityEngine;

public class Item : ScriptableObject
{
    public Sprite       inventoryImage;
    [Space]
    public GameObject   lootModel;
    public GameObject   model;
    [Space]
    public int          defaultValue = 0;
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
}
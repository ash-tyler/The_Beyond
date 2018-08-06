using UnityEngine;

public class Item : ScriptableObject
{
    public Texture2D    inventoryImage;
    public GameObject   lootModel;
    public GameObject   model;
    public int          defaultValue = 0;

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
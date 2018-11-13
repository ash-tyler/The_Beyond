using UnityEngine;


[System.Serializable]
[CreateAssetMenu(fileName = "Gold", menuName = "Consumables/Gold", order = 1)]
public class ItemValue : ScriptableObject
{
    public int defaultValue = 0;
    [Space]
    public GameObject lootModel;

    public virtual GameObject GetLootInstance()
    {
        if (!lootModel) return null;

        GameObject obj = Instantiate(lootModel);
        obj.layer = LayerMask.NameToLayer("Loot");
        obj.AddComponent<GoldRef>();
        obj.GetComponent<GoldRef>().Setup(this);
        return obj;
    }

    public virtual GameObject GetLootInstance(Transform parent)
    {
        if (!lootModel) return null;

        GameObject obj = Instantiate(lootModel, parent.position, parent.rotation, parent);
        obj.layer = LayerMask.NameToLayer("Loot");
        obj.AddComponent<GoldRef>();
        obj.GetComponent<GoldRef>().Setup(this);
        return obj;
    }
}
using UnityEngine;


[System.Serializable]
[CreateAssetMenu(fileName = "Restore", menuName = "Consumables/Restore", order = 1)]
public class Restore : Item
{
    public float healthToRestore;
    public float manaToRestore;
    public int uses = 1;


    public override GameObject GetLootInstance()
    {
        if (!lootModel) return null;

        GameObject restorative = Instantiate(lootModel);
        restorative.layer = LayerMask.NameToLayer("Loot");
        restorative.AddComponent<ItemRef>();
        restorative.GetComponent<ItemRef>().Setup(Instantiate(this));
        return restorative;
    }

    public override GameObject GetLootInstance(Transform parent)
    {
        if (!lootModel) return null;

        GameObject restorative = Instantiate(lootModel, parent.position, parent.rotation, parent);
        restorative.layer = LayerMask.NameToLayer("Loot");
        restorative.AddComponent<ItemRef>();
        restorative.GetComponent<ItemRef>().Setup(Instantiate(this));
        return restorative;
    }
}
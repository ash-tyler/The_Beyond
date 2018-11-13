using UnityEngine;


[System.Serializable]
public class Drop
{
    [Range(0, 100)]
    public float dropChance;
}

[System.Serializable]
public class GoldDrop : Drop
{
    public ItemValue gold;
}

[System.Serializable]
public class LootDrop : Drop
{
    public Item lootItem;
}
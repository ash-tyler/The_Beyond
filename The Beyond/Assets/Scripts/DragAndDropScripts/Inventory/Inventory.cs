using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public List<Item> items;

    private void Start()
    {
        
    }

    public void AddItem(Item item)
    {
        items.Add(item);
    }

    public void AddItem(ItemRef itemRef)
    {
        if (!itemRef || !itemRef.CanAddToInventory())
            return;

        items.Add(itemRef.GetItem());
        Destroy(itemRef.gameObject);
    }
}
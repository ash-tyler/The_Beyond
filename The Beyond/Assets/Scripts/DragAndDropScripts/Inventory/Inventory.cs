using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public List<Item> items;
    [HideInInspector]
    public InventoryUI userInterface;

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

        //items.Add(itemRef.GetItem());


        if (AllocateItem(itemRef.GetItem()))
            Destroy(itemRef.gameObject);
        else
        {
            Debug.Log("Inventory Full!", this);
        }
    }

    private bool AllocateItem(Item newItem)
    {
        for (int i = 0; i < items.Count; i++)
        {
            if (items[i]) continue;

            items[i] = newItem;

            if (userInterface)
                userInterface.CreateSlots(i);

            return true;
        }

        return false;
    }
}
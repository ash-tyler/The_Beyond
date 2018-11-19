using NaughtyAttributes;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public bool disableInventory = false;
    [Space]
    [HideIf("disableInventory")] public float gold;
    [Space]
    [HideIf("disableInventory")] public List<Item> items;
    [HideInInspector]
    public InventoryUI userInterface;

    private void Start()
    {
        
    }


    public void AddGold(GoldRef goldRef)
    {
        if (disableInventory) return;

        if (gold < 99999)
        {
            gold += goldRef.gold.defaultValue;
            Destroy(goldRef.gameObject);
        }
        else
        {
            Debug.Log("Wallet Full!", this);
        }
    }

    public void RemoveGold(GoldRef goldRef)
    {
        if (disableInventory) return;

        if (goldRef.gold.defaultValue < gold)
        {
            gold -= goldRef.gold.defaultValue;
            Destroy(goldRef.gameObject);
        }
        else
        {
            Debug.Log("Not Enough Gold!", this);
        }
    }

    public void AddGold(float goldToAdd)
    {
        if (disableInventory) return;

        if (gold < 99999)
            gold += goldToAdd;
        else
            Debug.Log("Wallet Full!", this);
    }

    public void RemoveGold(float goldToRemove)
    {
        if (disableInventory) return;

        if (goldToRemove < gold)
            gold -= goldToRemove;
        else
            Debug.Log("Not Enough Gold!", this);
    }

    public void AddItem(Item item)
    {
        if (!disableInventory)
            items.Add(item);
    }

    public void AddItem(ItemRef itemRef)
    {
        if (disableInventory || !itemRef || !itemRef.CanAddToInventory())
            return;


        if (AllocateItem(itemRef.GetItem()))
            Destroy(itemRef.gameObject);
        else
        {
            Debug.Log("Inventory Full!", this);
        }
    }

    private bool AllocateItem(Item newItem)
    {
        if (disableInventory) return false;

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
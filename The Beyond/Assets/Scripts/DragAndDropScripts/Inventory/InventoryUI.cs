using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryUI : ObjectContainerArray
{
    public Inventory inventory;

    // Use this for initialization
    void Start()
    {
        CreateSlots(inventory.items);
    }
}
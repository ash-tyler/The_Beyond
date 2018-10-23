using System.Linq;
using UnityEngine;

public class InventoryUI : ObjectContainerList<Item>
{
    public Inventory inventory;

    // Use this for initialization
    void Start()
    {
        //Item[] itemsToDisplay = inventory.items.Where(i => !i.invisibleInInventory).ToArray();

        CreateSlots(inventory.items);
        //CreateSlots(inventory.items);
    }
}
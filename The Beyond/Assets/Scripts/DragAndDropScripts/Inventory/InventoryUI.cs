using System.Linq;
using UnityEngine;

public class InventoryUI : ObjectContainerArray
{
    public Inventory inventory;

    // Use this for initialization
    void Start()
    {
        Item[] itemsToDisplay = inventory.items.Where(i => !i.invisibleInInventory).ToArray();

        CreateSlots(itemsToDisplay);
    }
}
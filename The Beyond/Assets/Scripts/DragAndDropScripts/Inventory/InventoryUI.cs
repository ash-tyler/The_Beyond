using System.Linq;
using UnityEngine;

public class InventoryUI : ObjectContainerList<Item>
{
    public Inventory inventory;

    // Use this for initialization
    void Start()
    {
        inventory.userInterface = this;
        CreateSlots(inventory.items);
    }

    public void CreateSlots(int index)
    {
        slots[index].item.SetObject(objects[index]);
    }
}
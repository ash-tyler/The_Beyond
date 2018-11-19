using System.Linq;
using UnityEngine;

public class InventoryUI : ObjectContainerList<Item>
{
    public Inventory inventory;
    public bool isReadOnly = false;
    public bool isQuickBar = false;
    public KeyCode firstKey = KeyCode.None;

    public bool WasSetUp { get; private set; }
    

    public void Setup()
    {
        if (!PlayerManager.HasInstanceAndPlayer()) return;

        Inventory[] inventories = PlayerManager.instance.currentPlayer.GetComponents<Inventory>();
        if (inventories.Length > 0)
        {
            if (isQuickBar)
                inventory = inventories.Where(x => x.items.Count == 4).First();
            else
                inventory = inventories.Where(x => x.items.Count > 4).First();
        }

        inventory.userInterface = this;
        CreateSlots(inventory.items);

        WasSetUp = true;
    }

    public void CreateSlots(int index)
    {
        slots[index].item.SetObject(objects[index]);
    }

    public override bool IsReadOnly()
    {
        return isReadOnly;
    }

    private void Update()
    {
        if (!WasSetUp)
        {
            Setup();
            if (!WasSetUp)
                return;
        }


        if (firstKey == KeyCode.None)
            return;

        //ISSUE: Items remain in quickslot when removed from inventory

        for (int i = 0; i < objects.Count; i++)
        {
            if (Input.GetKeyDown(firstKey + i))
            {
                Item item = objects[i] as Item;
                if (item)
                {
                    if (item as Weapon)
                        PlayerManager.instance.currentPlayer.equipment.Equip(item as Weapon);

                    else if (item as Consumable)
                        ;
                }
                else
                    slots[i].item = null;
            }
        }

    }
}
using System.Linq;
using UnityEngine;

public class InventoryUI : ObjectContainerList<Item>
{
    public Inventory inventory;
    public bool isReadOnly = false;
    public bool isQuickBar = false;
    public KeyCode firstKey = KeyCode.None;

    // Use this for initialization
    void Start()
    {
        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
        {
            PlayerManager playerManager = pmObj.GetComponent<PlayerManager>();
            if (!playerManager || !playerManager.currentPlayer)
                return;

            Inventory[] inventories = playerManager.currentPlayer.GetComponents<Inventory>();
            if (inventories.Length > 0)
            {
                if (isQuickBar)
                    inventory = inventories.Where(x => x.items.Count == 4).First();
                else
                    inventory = inventories.Where(x => x.items.Count > 4).First();
            }
        }

        inventory.userInterface = this;
        CreateSlots(inventory.items);
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
                    // activate!!!

                }
                else
                {
                    slots[i].item = null;
                }
            }
        }

    }
}
using UnityEngine;

public class ItemRef : MonoBehaviour
{
    private Item item;

    public void Setup(Item newItem)
    {
        item = newItem;
    }

    public Item GetItem()
    {
        return item;
    }

    public bool CanAddToInventory()
    {
        return item.canAddToInventory;
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemUI : Draggable
{
    public Image icon;
    public override void UpdateObject()
    {
        Item item = obj as Item;
        if (icon)
        {
            if (item != null)
                icon.sprite = item.inventoryImage;
        }
        gameObject.SetActive(item != null);

    }

    public override void OnRightClick()
    {
        Item item = obj as Item;
    }
}

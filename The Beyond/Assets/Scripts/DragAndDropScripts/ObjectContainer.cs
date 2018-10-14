using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// base class for a UI front end that creates a slot object and child item for each entry
public class ObjectContainer : MonoBehaviour, IDragAndDropContainer
{
    // prefab for slot UI element
    public Slot slotPrefab;
    // prefab for the item UI front ends
    public Draggable itemPrefab;

    // in the general class, we can drop anything anywhere
    public virtual bool CanDrop(Draggable dragged, Slot slot)
    {
        return true;
    }

    public virtual void Drop()
    {
    }

    public virtual bool IsReadOnly()
    {
        return false;
    }

    protected Slot MakeSlot(UnityEngine.Object obj, Slot preMade = null)
    {
        GameObject go = null;
        Slot slot = preMade;

        if (slot != null)
        {
            // use the existing one and get its GameObject
            go = slot.gameObject;
        }
        else
        {
            // make a child slot
            go = Instantiate(slotPrefab.gameObject, transform);
            slot = go.GetComponent<Slot>();
        }
        // make an item object inside it as a child
        GameObject goi = Instantiate(itemPrefab.gameObject, go.transform);
        Draggable item = goi.GetComponent<Draggable>();
        item.SetObject(obj);

        // set up all required pointers
        slot.item = item;
        slot.container = this;
        item.slot = slot;

        return slot;
    }
}

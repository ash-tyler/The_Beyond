using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectContainerList<T> : ObjectContainer where T : UnityEngine.Object
{

    protected List<T> objects;
    protected Slot[] slots;

    public override void Drop()
    {
        // after a drop, update our internal array based on the UI charms list's contents
        for (int i = 0; i < objects.Count; i++)
            objects[i] = slots[i].item.obj as T;
    }

    // Use this for initialization
    protected void CreateSlots(List<T> list)
    {
        // hook up the appropriate array. This is a reference, so we're now writing to the player data if we change this
        objects = list;
        slots = new Slot[objects.Count];

        // create a CharmUI for each charm in the list
        for (int i = 0; i < objects.Count; i++)
            slots[i] = MakeSlot(objects[i]);
    }
}

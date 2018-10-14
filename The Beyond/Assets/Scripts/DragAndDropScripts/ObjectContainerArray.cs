using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectContainerArray : ObjectContainer {

    protected UnityEngine.Object[] objects;
    protected Slot[] slots;

    public override void Drop()
    {
        // after a drop, update our internal array based on the UI charms list's contents
        for (int i = 0; i < objects.Length; i++)
            objects[i] = slots[i].item.obj;
    }

    // Use this for initialization
    protected void CreateSlots(UnityEngine.Object[] array)
    {
        // hook up the appropriate array. This is a reference, so we're now writing to the player data if we change this
        objects = array;
        slots = new Slot[objects.Length];

        // create a CharmUI for each charm in the list
        for (int i = 0; i < objects.Length; i++)
            slots[i] = MakeSlot(objects[i]);
    }
}

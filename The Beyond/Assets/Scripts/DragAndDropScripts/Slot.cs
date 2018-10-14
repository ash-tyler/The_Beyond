using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// these never move
// we create one per slot in a backpack or whatever type of container, and each has a child CharmUI that gets turned on or off.
public class Slot : MonoBehaviour {

    public IDragAndDropContainer container;

    // remembers it's child item
    public Draggable item;
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IDragAndDropContainer
{
    bool CanDrop(Draggable dragged, Slot slot);
    void Drop();
    bool IsReadOnly();
}

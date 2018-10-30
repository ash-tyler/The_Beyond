using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public abstract class Draggable : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
{
    bool dragging;
    public Slot slot;
    public UnityEngine.Object obj;

    // override this in derived classes, usually casting o to the type they deal with
    public abstract void UpdateObject();

    public void SetObject(UnityEngine.Object o)
    {
        obj = o;
        UpdateObject();
    }

    public void OnBeginDrag(PointerEventData eventData)
    {
        if (eventData.button == PointerEventData.InputButton.Right)
        {
            OnRightClick();
            return;
        }

        dragging = true;

        if (dragging)
        {
            // become a sibling of our slot's parent, so we're no longer part of the container (and don't disrupt the GridLayout)
            transform.SetParent(slot.transform.parent.parent);
            // move this to the very front of the UI, so the dragged element draws over everything
            transform.SetAsLastSibling();
        }
    }

    public void OnDrag(PointerEventData eventData)
    {
        // move the dragged object with the mouse
        if (dragging)
            transform.position = eventData.position;

        //TODO - highlight squares that can receive this component?
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        if (!dragging)
            return;

        // raycast to find what we're dropping over
        Slot target = GetSlotUnderMouse();

        IDragAndDropContainer containerTarget = null;
        IDragAndDropContainer containerDrag = slot.container;

        bool legal = true;

        // check that this move is OK with both containers - they can both veto it
        if (target)
        {
            containerTarget = target.container;

            // if there is a container and we can't drop into it for game logic reasons, cancel the drag
            if (containerTarget != null)
                if (containerTarget.CanDrop(this, target) == false)
                    legal = false;

            // check the other way too, since the drag and drop is a swap
            if (containerDrag != null)
                if (containerDrag.CanDrop(target.item, slot) == false)
                    legal = false;
        }

        // we're Ok to move
        if (legal)
        {
            SwapWith(target, 
                containerDrag != null ? containerDrag.IsReadOnly() : true,
                containerTarget != null ? containerTarget.IsReadOnly() : true);
            // game logic - let both containers know about the update
            if (containerTarget != null)
                containerTarget.Drop();
            if (containerDrag != null)
                containerDrag.Drop();
        }

        // return to our parent slot now
        transform.SetParent(slot.transform);
        transform.localPosition = Vector3.zero;
        
        dragging = false;
    }

    // this avoids memory allocation each time we move while dragging
    static List<RaycastResult> hits = new List<RaycastResult>();

    // finds the firstSlot component currently under the mouse
    private Slot GetSlotUnderMouse()
    {
        PointerEventData pointer = new PointerEventData(EventSystem.current);
        pointer.position = Input.mousePosition;
        EventSystem.current.RaycastAll(pointer, hits);
        foreach (RaycastResult hit in hits)
        {
            Slot slot = hit.gameObject.GetComponent<Slot>();
            if (slot != null)
                return slot;
        }
        return null;
    }

    void SwapWith(Slot slot, bool readOnlySource, bool readOnlyTarget)
    {
        if (slot == null)
        {
            // dispose if we're throwing the item away, no slot was under the mouse
            SetObject(null);

            // TODO - call a virtual function on the container that spawns the item into the world?
        }
        else
        {
            // swap the two valid slot items around
            Draggable other = slot.item;
            if (other)
            {
                UnityEngine.Object o = obj;
                if (!readOnlySource)
                    SetObject(other.obj);
                if (!readOnlyTarget)
                    other.SetObject(o);
            }
        }
    }


    public virtual void OnRightClick() { }
}

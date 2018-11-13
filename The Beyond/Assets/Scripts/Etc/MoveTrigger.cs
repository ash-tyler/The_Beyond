using System.Collections.Generic;
using UnityEngine;


public class MoveTrigger : MonoBehaviour
{
    public GameObject objectToMove;
    public Transform moveTo;

    public LayerMask triggerableLayers;


    private TravelObjectSwitch travelObjectSwitcher;


    private void Start()
    {
        travelObjectSwitcher = GetComponent<TravelObjectSwitch>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!objectToMove || !moveTo)
            return;


        if (triggerableLayers.Contains(other.gameObject.layer))
        {
            objectToMove.transform.position = moveTo.position;
            objectToMove.transform.rotation = moveTo.rotation;
        }

        if (travelObjectSwitcher)
            travelObjectSwitcher.SwitchTransform();
    }
}


public static class LayerMaskExtension
{
    public static bool Contains(this LayerMask layerMask, int layer)
    {
        return layerMask == (layerMask | (1 << layer));
    }
}
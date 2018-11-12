using UnityEngine;


public class MoveTrigger : MonoBehaviour
{
    public GameObject objectToMove;
    public Transform moveTo;

    public LayerMask triggerableLayers;


    private void OnTriggerEnter(Collider other)
    {
        if (!objectToMove || !moveTo)
            return;


        if (triggerableLayers.Contains(other.gameObject.layer))
        {
            objectToMove.transform.position = moveTo.position;
            objectToMove.transform.rotation = moveTo.rotation;
        }
    }
}


public static class LayerMaskExtension
{
    public static bool Contains(this LayerMask layerMask, int layer)
    {
        return layerMask == (layerMask | (1 << layer));
    }
}
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class DoorFlipper : MonoBehaviour
{
    public Door door;

    private void Start()
    {
        Collider col = GetComponent<BoxCollider>();

        if (!col.isTrigger)
            col.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (ValidLayer(other.gameObject.layer))
            door.OpenOpposite(true);
    }

    private void OnTriggerExit(Collider other)
    {
        if (ValidLayer(other.gameObject.layer))
            door.OpenOpposite(false);
    }

    private bool ValidLayer(int objLayer)
    {
        return objLayer == LayerMask.NameToLayer("Player") || objLayer == LayerMask.NameToLayer("NPC") || objLayer == LayerMask.NameToLayer("Invisible");
    }
}

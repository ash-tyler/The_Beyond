using UnityEngine;


public class ObjectEnableTrigger : MonoBehaviour
{
    public GameObject objectToEnable;


    private void OnTriggerEnter(Collider other)
    {
        if (!objectToEnable) return;

        if (other.tag == "Player" || other.gameObject.layer == LayerMask.NameToLayer("Player"))
                objectToEnable.SetActive(true);
    }

    private void OnTriggerExit(Collider other)
    {
        if (!objectToEnable) return;

        if (other.tag == "Player" || other.gameObject.layer == LayerMask.NameToLayer("Player"))
            objectToEnable.SetActive(false);
    }
}
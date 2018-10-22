using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Sight
{
    [SerializeField]
    public LayerMask layermask;
    public GameObject LastObjectSeen
    {
        get { return objSeen; }
        private set
        {
            if (objSeen == value) return;


            if (UseableObject(objSeen))
                objSeen.GetComponent<cakeslice.Outline>().enabled = false;

            if (UseableObject(value))
            {
                value.GetComponent<cakeslice.Outline>().enabled = true;
                objSeen = value;
            }
            else
                objSeen = null;
        }
    }


    [Space]
    [SerializeField] private GameObject objSeen;

    private Player player;
    private Transform playerCamera;


    public void Setup(Player newPlayer)
    {
        player = newPlayer;
        playerCamera = player.pCamera.transform;

    }
	
	public void Update()
    {
        Ray ray = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
        RaycastHit hit;

        Vector3 playerAwarenessLimit = player.transform.position + (player.transform.forward * player.stats.awarenessRadius);
        float dist = (player.firstPerson) ? player.stats.awarenessRadius : Vector3.Distance(Camera.main.transform.position, playerAwarenessLimit);


        if (Physics.Raycast(ray, out hit, dist, ~layermask))
            LastObjectSeen = hit.transform.gameObject;
        else
            LastObjectSeen = null;

        Debug.DrawRay(ray.origin, ray.direction * dist, Color.cyan);

        Use();
	}

    public static bool UseableObject(GameObject obj)
    {
        return obj && obj.tag == "Useable";
    }

    private void Use()
    {
        if (!LastObjectSeen)
            return;

        if (Input.GetButtonDown("Use"))
        {
            if (LastObjectSeen.GetComponent<ItemRef>())
            {
                Item item = LastObjectSeen.GetComponent<ItemRef>().GetItem();

                if (item.canAddToInventory)
                    player.inventory.items.Add(item);

                GameObject.Destroy(LastObjectSeen);
            }
        }
    }
}
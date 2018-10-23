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
        get { return obj; }
        private set
        {
            if (obj == value) return;


            if (UseableObject(obj))
                obj.GetComponent<cakeslice.Outline>().enabled = false;

            if (UseableObject(value))
            {
                value.GetComponent<cakeslice.Outline>().enabled = true;
                obj = value;
            }
            else
                obj = null;
        }
    }


    private GameObject obj;
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

        //Vector3 playerAwarenessLimit = player.transform.position + (player.transform.forward * player.stats.awarenessRadius);
        //float dist = (player.firstPerson) ? player.stats.awarenessRadius : Vector3.Distance(Camera.main.transform.position, playerAwarenessLimit);

        float dist = (player.firstPerson) ? 0 : Vector3.Distance(Camera.main.transform.position, player.CameraFocus.position);

        if (Physics.Raycast(ray, out hit, dist + player.stats.awarenessRadius, ~layermask))
            LastObjectSeen = hit.transform.gameObject;
        else
            LastObjectSeen = null;

        Debug.DrawRay(ray.origin, ray.direction * (dist + player.stats.awarenessRadius), Color.cyan);

        Use();
	}

    public static bool UseableObject(GameObject objectToTest)
    {
        return objectToTest && objectToTest.tag == "Useable";
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

            // TODO why isnt this getting called?
            QuestGiver giver = LastObjectSeen.GetComponent<QuestGiver>();
            if (giver)
            {
                giver.TalkTo();
            }
        }
    }
}
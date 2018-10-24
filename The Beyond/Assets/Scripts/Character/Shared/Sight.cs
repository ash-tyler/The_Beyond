using DoorScripts.Main;
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
                SetOutline(obj, false);

            if (UseableObject(value))
            {
                SetOutline(value, true);
                obj = value;
            }
            else
                obj = null;
        }
    }


    public GameObject obj;
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
        return objectToTest && objectToTest.CompareTag("Useable");
    }

    private void Use()
    {
        if (!LastObjectSeen)
            return;

        if (Input.GetButtonDown("Use"))
        {
            ItemRef itemRef;
            Door door;
            QuestGiver questGiver;

            if (itemRef = LastObjectSeen.GetComponent<ItemRef>())
                player.inventory.AddItem(itemRef);

            else if (door = LastObjectSeen.GetComponent<Door>())
                door.UseDoor();

            else if (questGiver = LastObjectSeen.GetComponent<QuestGiver>())
                questGiver.TalkTo();
        }
    }

    private void SetOutline(GameObject gameObj, bool value)
    {
        Outline outliner = gameObj.GetComponent<Outline>();

        if (outliner)
            outliner.enabled = value;
    }
}
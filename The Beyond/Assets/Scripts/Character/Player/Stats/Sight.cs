using DoorScripts.Main;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Sight
{
    [SerializeField]
    public LayerMask visibleLayers;
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

    [HideInInspector]
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

        if (Physics.Raycast(ray, out hit, dist + player.stats.awarenessRadius, visibleLayers))
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

        ShowKeyHint.instance.ActivateAndSet("E to use");

        if (Input.GetButtonDown("Use"))
        {
            TravelObject to;
            GoldRef gr;
            ItemRef ir;
            Door dr;
            QuestGiver qg;


            if (to = LastObjectSeen.GetComponent<TravelObject>())
                to.TriggerFade(player.gameObject);

            else if (gr = LastObjectSeen.GetComponent<GoldRef>())
                player.inventory.AddGold(gr);

            else if (ir = LastObjectSeen.GetComponent<ItemRef>())
                player.inventory.AddItem(ir);

            else if (dr = LastObjectSeen.GetComponent<Door>())
                dr.UseDoor();

            else if (qg = LastObjectSeen.GetComponent<QuestGiver>())
                qg.TalkTo();
        }
    }

    private void SetOutline(GameObject gameObj, bool value)
    {
        Outline outliner = gameObj.GetComponent<Outline>();

        if (outliner)
            outliner.enabled = value;
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestArrow : MonoBehaviour {

    Transform player;
    public Quest quest;

    bool active = true;
    MeshRenderer meshRenderer;

	// Use this for initialization
	void Start () {
        player = GameObject.FindGameObjectWithTag("Player").transform;
        meshRenderer = GetComponent<MeshRenderer>();
    }
	
	// Update is called once per frame
	void Update () {

        quest = QuestLog.inst.quests.Find(q => q.state == Quest.State.Active);

        meshRenderer.enabled = (quest != null) && active;

        // turn on and off with TAB key
        if (Input.GetKeyDown(KeyCode.Tab))
            active = !active;

        if (quest && quest.location)
        {
            // point at the quest
            transform.forward = quest.location.transform.position - player.transform.position;

            // position ourselves at the player, plus 1m up, plus forward towards the quest
            transform.position = player.transform.position + Vector3.up + 3 * transform.forward;
        }
	}
}

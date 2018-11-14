using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestLocation : Quest {

    public float radius = 5;
    Transform player;

    public string playerNameDesignator = "(PlayerName)";
    public string questGiverNameDesignator = "(QuestGiverName)";

    public override string GetDescription()
    {
        return "Go to "+ location.name;
    }

    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;

        introText = introText.Replace(playerNameDesignator, player.GetComponent<Player>().stats.characterName);
        inProgressText = inProgressText.Replace(playerNameDesignator, player.GetComponent<Player>().stats.characterName);
        completeText = completeText.Replace(playerNameDesignator, player.GetComponent<Player>().stats.characterName);

        target = 1;
    }

    private void Update()
    {
        if (state == State.Active)
        {
            float dist = Vector3.Distance(location.transform.position, player.transform.position);
            Debug.Log("Dist = " + dist);
            if (dist < radius)
                Increment(1);
        }
    }
}

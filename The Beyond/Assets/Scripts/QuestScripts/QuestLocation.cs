using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestLocation : Quest
{
    public float radius = 5;


    public override string GetDescription()
    {
        return "Go to "+ location.name;
    }

    private void Start()
    {
        if (!PlayerManager.HasInstanceAndPlayer()) return;

        target = 1;
    }

    private void Update()
    {
        if (state == State.Active && PlayerManager.HasInstanceAndPlayer())
        {
            float dist = Vector3.Distance(location.transform.position, PlayerManager.instance.currentPlayer.transform.position);
            Debug.Log("Dist = " + dist);
            if (dist < radius)
                Increment(1);
        }
    }
}

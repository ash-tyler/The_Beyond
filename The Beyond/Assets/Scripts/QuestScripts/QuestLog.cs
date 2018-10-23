using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// list of quests stored on a player, holding references to all the quests they have been given
public class QuestLog : MonoBehaviour {

    public static QuestLog inst;

    public List<Quest> quests;

    void Start()
    {
        inst = this;
    }
}

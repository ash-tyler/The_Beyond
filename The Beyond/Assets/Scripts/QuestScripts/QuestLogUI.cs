using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class QuestLogUI : MonoBehaviour
{
    //The backend quest log we're displaying
    public QuestLog questLog;

    //Spawn one of these for each quest we display
    public QuestUI prefab;

    //Stores which UI prefab instance is representing each quest in the quest log
    Dictionary<Quest, QuestUI> quests = new Dictionary<Quest, QuestUI>();


	void Start ()
    {
        UpdateQuests();
        Quest.onQuestUpdate.AddListener(UpdateQuests);
	}

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Q))
            UpdateQuests();
    }

	void UpdateQuests()
    {
        if (!QuestLog.inst) return;

        foreach (Quest q in QuestLog.inst.quests)
        {
            //Make a prefab if we dont have one yet
            if (quests.ContainsKey(q) == false)
            {
                GameObject go = Instantiate(prefab.gameObject, transform);
                quests[q] = go.GetComponent<QuestUI>();
            }
            
            //Feed data from backend object to UI object
            quests[q].SetQuest(q);
        }
	}
}
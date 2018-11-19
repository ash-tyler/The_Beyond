using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestLogUI : MonoBehaviour {

    // the backend quest log we're displaying
    public QuestLog questLog;

    // spawn one of these for each quest we display
    public QuestUI prefab;

    // stores which UI prefab instance is representing each quest in the quest log
    Dictionary<Quest, QuestUI> quests = new Dictionary<Quest, QuestUI>();

	// Use this for initialization
	void Start () {
        UpdateQuests();
        Quest.onQuestUpdate.AddListener(UpdateQuests);
	}

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Q))
            UpdateQuests();
    }

    // Update is called once per frame
    void UpdateQuests() {
        foreach (Quest q in questLog.quests)
        {
            // make a prefab if we dont have one yet
            if (quests.ContainsKey(q) == false)
            {
                GameObject go = Instantiate(prefab.gameObject, transform);
                quests[q] = go.GetComponent<QuestUI>();
            }
            // feed data from backend object to UI object
            quests[q].SetQuest(q);
        }
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// UI class for displaying a quest's information via a prefab
public class QuestUI : MonoBehaviour {

    public Text text;
    public Image progress;
    public Quest quest;

    // make htis object display the details of the specified quest
    public void SetQuest(Quest q)
    {
        quest = q;
        // show its description
        if (text)
            text.text = quest.GetDescription();

        // show its completion %age
        if (progress)
            progress.fillAmount = quest.GetPercentage();
    }
}

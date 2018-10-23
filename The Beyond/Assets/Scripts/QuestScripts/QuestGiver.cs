using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// class representing a NPC quest giver. Quests should be placed as sibling components
public class QuestGiver : MonoBehaviour
{
    Quest[] quests;

    // objects to dispaly alerts above their head when they're ready to give or hand in a quest
    public GameObject GiveAlert;
    public GameObject CompleteAlert;

    [Multiline]
    public string questsOver;

    enum Alert
    {
        None,
        Give,
        Complete
    };
    Alert alert;

    // Use this for initialization
    void Start()
    {
        quests = GetComponents<Quest>();
        CheckQuests();
        // make sure we update our alert every time a quest updates
        Quest.onQuestUpdate.AddListener(CheckAlerts);
        // and we update our quests every time one is compeleted
        Quest.onQuestComplete.AddListener(CheckQuests);
    }

    // talking to a questgiver...
    public void TalkTo()
    {
        // do you have a completed quest of theirs?
        foreach (Quest q in quests)
        {
            if (q.ReadyToTurnIn())
            {
                QuestDialog.inst.Show(q.completeText);
                q.Complete();

                // uncomment to remove quest from player's quest log if you want that
                //if (QuestLog.inst)
                //    QuestLog.inst.quests.Remove(q);

                return;
            }
        }

        // have any new quest become available?
        foreach (Quest q in quests)
        {
            if (q.state == Quest.State.Available)
            {
                QuestDialog.inst.Show(q.introText);
                q.state = Quest.State.Active;
                // add to players quest log
                if (QuestLog.inst)
                    QuestLog.inst.quests.Add(q);
                return;
            }
        }

        // any in progress we can comment on?
        foreach (Quest q in quests)
        {
            if (q.state == Quest.State.Active)
            {
                QuestDialog.inst.Show(q.inProgressText);
                return;
            }
        }

        // just show a default line of dialog
        QuestDialog.inst.Show(questsOver);
    }

    // check all hidden quests, and see if any are ready to be made available now
    void CheckQuests()
    {
        // check whether the questgiver should alert the player to come and chat
        alert = Alert.None;

        foreach (Quest q in quests)
        {
            if (q.state == Quest.State.Hidden)
            {
                bool available = true;
                foreach (Quest pre in q.prerequisites)
                    if (pre.state != Quest.State.Complete)
                        available = false;
                if (available)
                {
                    // a new quest is available, alert the player and make it ready to give
                    q.state = Quest.State.Available;
                }
            }
        }
        CheckAlerts();
    }

    // check the state of all quests to see what our alert status shoudl be - ready to give or turn in
    void CheckAlerts()
    {
        // check whether the questgiver should alert the player to come and chat
        alert = Alert.None;

        foreach (Quest q in quests)
        {
            if (q.ReadyToTurnIn() && alert < Alert.Complete)
                alert = Alert.Complete;
            if (q.state == Quest.State.Available && alert < Alert.Give)
                alert = Alert.Give;
        }

        // turn the alert obejcts on or off
        GiveAlert.SetActive(alert == Alert.Give);
        CompleteAlert.SetActive(alert == Alert.Complete);
    }
}
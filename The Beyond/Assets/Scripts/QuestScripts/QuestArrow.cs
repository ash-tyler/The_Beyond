using UnityEngine;


public class QuestArrow : MonoBehaviour
{
    public Quest quest;

    bool active = true;
    public GameObject arrow;


	void Update ()
    {
        if (!PlayerManager.HasInstanceAndPlayer()) return;

        quest = QuestLog.inst.quests.Find(q => q.state == Quest.State.Active);

        //Turn on and off with TAB key
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            active = !active;

            if (active && quest)
                arrow.SetActive(true);
            else
                arrow.SetActive(false);
        }


        if (quest && quest.location)
        {
            //Point at the quest
            transform.forward = quest.location.transform.position - PlayerManager.instance.currentPlayer.transform.position;

            //Position ourselves at the player, plus 1m up, plus forward towards the quest
            transform.position = PlayerManager.instance.currentPlayer.transform.position + 2 * Vector3.up + 3 * transform.forward;
        }
	}
}
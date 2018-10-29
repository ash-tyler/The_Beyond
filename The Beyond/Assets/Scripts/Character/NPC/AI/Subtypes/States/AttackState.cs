using UnityEngine;


[CreateAssetMenu(menuName = "AI/States/Attack", fileName = "New AttackState")]
public class AttackState : AIState
{
    private float lastTime;

    public override void Action(AIManager manager)
    {
        manager.npc.RotateModelLookAt(manager.controller.target.transform.position);

        if ((Time.time - lastTime) > manager.controller.attackWait)
        {
            manager.npc.TriggerAttack();
            lastTime = Time.time;
        }
    }

    public override void OnEnter(AIManager manager)
    {
        lastTime = Time.time;
        manager.npc.EnterCombat();
    }
}
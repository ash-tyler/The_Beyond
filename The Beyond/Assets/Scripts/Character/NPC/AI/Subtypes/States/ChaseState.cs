using UnityEngine;


[CreateAssetMenu(menuName = "AI/States/Chase", fileName = "New ChaseState")]
public class ChaseState : AIState
{
    public override void Action(AIManager manager)
    {
        Vector3 nudgeAmount = (manager.controller.target.transform.position - manager.npc.transform.position).normalized;
        manager.npc.RotateModelLookAt(manager.controller.target.transform.position);
        manager.controller.navMeshAgent.SetDestination(manager.controller.target.transform.position - nudgeAmount);
    }

    public override void OnEnter(AIManager manager)
    {
        manager.npc.EnterCombat();
        manager.controller.navMeshAgent.speed = manager.controller.runSpeed;
        manager.controller.State.SetIdle();
    }

    public override void OnExit(AIManager manager)
    {
        manager.npc.ExitCombat();
        manager.controller.navMeshAgent.speed = manager.controller.walkSpeed;
        manager.controller.State.SetWalking();
    }
}
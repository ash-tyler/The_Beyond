using UnityEngine;


[CreateAssetMenu(menuName = "AI/States/FleeState", fileName = "New FleeState")]
public class FleeState : AIState
{
    public override void Action(AIManager manager)
    {
        Vector3 dir = (manager.npc.transform.position - manager.controller.target.transform.position) * 3;
        manager.controller.navMeshAgent.SetDestination(manager.npc.transform.position + dir);
    }

    public override void OnEnter(AIManager manager)
    {
        manager.controller.navMeshAgent.speed = manager.controller.runSpeed;
        manager.controller.State.SetIdle();
    }

    public override void OnExit(AIManager manager)
    {
        manager.controller.navMeshAgent.speed = manager.controller.walkSpeed;
        manager.controller.State.SetWalking();
    }
}
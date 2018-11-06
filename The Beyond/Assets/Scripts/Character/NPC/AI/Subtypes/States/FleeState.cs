using System.Linq;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/States/FleeState", fileName = "New FleeState")]
public class FleeState : AIState
{
    public override void Action(AIManager manager)
    {
        Character closestEnemy = (manager.controller.enemiesInRadius.Count > 0) ? manager.controller.enemiesInRadius.First() : GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();


        Vector3 dir = (manager.npc.transform.position - closestEnemy.transform.position) * 3;
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
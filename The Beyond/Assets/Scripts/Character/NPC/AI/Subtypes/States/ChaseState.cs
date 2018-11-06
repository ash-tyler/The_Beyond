using System.Linq;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/States/Chase", fileName = "New ChaseState")]
public class ChaseState : AIState
{
    public override void Action(AIManager manager)
    {
        Character closestEnemy = (manager.controller.enemiesInRadius.Count > 0) ? manager.controller.enemiesInRadius.First() : GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();

        Vector3 nudgeAmount = (closestEnemy.transform.position - manager.npc.transform.position).normalized;
        manager.npc.RotateModelLookAt(closestEnemy.transform.position);
        manager.controller.navMeshAgent.SetDestination(closestEnemy.transform.position - nudgeAmount);
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
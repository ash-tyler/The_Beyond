using CheckEnum;
using UnityEngine;

namespace CheckEnum
{
    public enum CheckType { GREATER_THAN = 0, LESS_THAN, EQUAL_TO }
}


[CreateAssetMenu(menuName = "AI/Transitions/CheckHealth", fileName = "New CheckHealth")]
public class CheckHealth : AITransition
{
    public CheckType variableIs = CheckType.GREATER_THAN;
    public float health;

    public override bool Decide(AIController controller)
    {
        if (variableIs == CheckType.GREATER_THAN)
            return controller.Npc.stats.health.points > health;

        if (variableIs == CheckType.LESS_THAN)
            return controller.Npc.stats.health.points < health;

        return controller.Npc.stats.health.points == health;
    }
}
using CheckEnum;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/CheckTargetLevel", fileName = "New CheckTargetLevel")]
public class CheckTargetLevel : AITransition
{
    public CheckType variableIs = CheckType.GREATER_THAN;
    public int level;

    public override bool Decide(AIController controller)
    {
        if (variableIs == CheckType.GREATER_THAN)
            return controller.npc.stats.level.GetLevel() > level;

        if (variableIs == CheckType.LESS_THAN)
            return controller.npc.stats.level.GetLevel() < level;

        return controller.npc.stats.level.GetLevel() == level;
    }
}
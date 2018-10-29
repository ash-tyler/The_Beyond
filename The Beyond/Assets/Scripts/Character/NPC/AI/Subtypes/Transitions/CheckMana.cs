using CheckEnum;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/CheckMana", fileName = "New CheckMana")]
public class CheckMana : AITransition
{
    public CheckType variableIs = CheckType.GREATER_THAN;
    public float mana;

    public override bool Decide(AIController controller)
    {
        if (variableIs == CheckType.GREATER_THAN)
            return controller.npc.stats.mana.points > mana;

        if (variableIs == CheckType.LESS_THAN)
            return controller.npc.stats.mana.points < mana;

        return controller.npc.stats.mana.points == mana;
    }
}
using System.Linq;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInAwareRadius", fileName = "New TargetInAwareRadius")]
public class TargetInAwareRadius : AITransition
{
    public override bool Decide(AIController controller)
    {
        if (controller.enemiesInRadius.Count > 0)
            return true;

        return false;
    }
}
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInAwareRadius", fileName = "New TargetInAwareRadius")]
public class TargetInAwareRadius : AITransition
{
    public override bool Decide(AIController controller)
    {
        return (Vector3.Distance(controller.ZeroHeightPosition, controller.TargetZeroHeightPosition) < controller.AwarenessRadius);
    }
}
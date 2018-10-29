using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInRange", fileName = "New TargetInRange")]
public class TargetInRange : AITransition
{
    public float range;

    public override bool Decide(AIController controller)
    {
        return (Vector3.Distance(controller.ZeroHeightPosition, controller.TargetZeroHeightPosition) < range);
    }
}
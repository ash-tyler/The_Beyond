using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInAttackRadius", fileName = "New TargetInAttackRadius")]
public class TargetInAttackRadius : AITransition
{
    public float multiplier = 1.2f;
    private Player player;

    public override bool Decide(AIController controller)
    {
        if (Vector3.Distance(controller.ZeroHeightPosition, controller.TargetZeroHeightPosition) < controller.CurrentWeapon.damageRadius * multiplier)
            return true;

        return false;
    }
}
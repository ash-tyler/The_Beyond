using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInRange", fileName = "New TargetInRange")]
public class TargetInRange : AITransition
{
    public float range;

    public override bool Decide(AIController controller)
    {
        foreach (Character ch in controller.npc.GetVisibleCharacters())
            return true;

        return false;
    }
}
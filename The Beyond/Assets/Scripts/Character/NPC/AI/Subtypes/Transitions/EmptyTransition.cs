using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/Empty", fileName = "New Empty")]
public class EmptyTransition : AITransition
{
    public override bool Decide(AIController controller)
    {
        return base.Decide(controller);
    }
}
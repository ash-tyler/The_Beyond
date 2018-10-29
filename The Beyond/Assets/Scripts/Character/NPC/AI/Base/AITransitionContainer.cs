using UnityEngine;


[System.Serializable]
public class AITransitionContainer
{
    [Space]
    public AITransition[] checks;
    [Space]
    public AIState trueState;
    public AIState falseState;

    public AIState GetState(AIController controller)
    {
        if (checks.Length == 0) return falseState;

        foreach (AITransition transition in checks)
            if (!transition.Decide(controller))
                return falseState;

        return trueState;
    }
}
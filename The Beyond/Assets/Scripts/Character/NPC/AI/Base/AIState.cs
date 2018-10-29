using UnityEngine;


public class AIState : ScriptableObject
{
    public AITransitionContainer[] transitions;


    public void UpdateState(AIManager manager)
    {
        Action(manager);

        foreach (AITransitionContainer transition in transitions)
           if(manager.TransitionToState(transition.GetState(manager.controller)))
                return;
    }

    public virtual void OnEnter(AIManager manager) {}
    public virtual void OnExit(AIManager manager) {}
    public virtual void Action(AIManager manager) { }
}
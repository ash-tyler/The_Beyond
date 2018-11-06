using UnityEngine;
using UnityEngine.AI;

[System.Serializable]
public class AIManager
{
    public bool enableAI = true;
    public AIState startState;

    [HideInInspector]
    public AIState currentState;
    [HideInInspector]
    public AIController controller;
    [HideInInspector]
    public NPC npc;


    public void Setup(NPC newNPC, AIController newController)
    {
        npc = newNPC;
        controller = newController;

        if (startState)
        {
            currentState = GameObject.Instantiate(startState);
            currentState.OnEnter(this);
        }
    }

    public void UpdateAI()
    {
        if (enableAI)
        {
            //currentState.Action(this);
            currentState.UpdateState(this);
        }
    }

    public bool TransitionToState(AIState nextState)
    {
        if (!nextState) return false;

        currentState.OnExit(this);
        currentState = GameObject.Instantiate(nextState);
        currentState.OnEnter(this);

        return true;
    }
}
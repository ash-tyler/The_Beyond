using UnityEngine;


[System.Serializable]
public class AITransition : ScriptableObject
{
    public virtual bool Decide(AIController controller) { return false; }
}
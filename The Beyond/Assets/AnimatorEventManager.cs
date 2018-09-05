using System.Collections;
using UnityEngine;

public class AnimatorEventManager : MonoBehaviour
{
    [HideInInspector]
    public PlayerModule module;
    //public AttackTracker attackTracker;

    private int attackIndex;

	void Start ()
    {
		
	}
	
	void Update ()
    {
		
	}

    public void StartComboClick()
    {
        attackIndex = module.attackTracker.AttackIndex;
        module.attackTracker.SetCanClick(true);
        Debug.Log("Combo Click Starts Now!");
    }

    public void StopComboClick()
    {
        StartCoroutine("StopComboClickCoroutine");
    }

    IEnumerator StopComboClickCoroutine()
    {
        yield return new WaitForSeconds(module.attackTracker.waitTime);
        if (attackIndex == module.attackTracker.AttackIndex)
            module.attackTracker.ComboEnd();
    }
}

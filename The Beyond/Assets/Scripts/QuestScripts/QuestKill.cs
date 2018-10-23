using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Quest subclass that requires the player to kill enemies of a specific type
public class QuestKill : Quest {

    public string enemyType;

	// Use this for initialization
	void Start () {
        //  attach this to the death event for all characters
        Character.onAnyDead.AddListener(OnKill);
	}
	
	// Update is called once per frame
	void OnKill(Character deadCharacter) {
        if (state == State.Active && deadCharacter.stats.characterName == enemyType)
            Increment(1);
	}

    public override string GetDescription()
    {
        if (target == 1)
            return "Kill " + enemyType;
        else
            return "Kill " + target + " " +enemyType + "s";
    }
}

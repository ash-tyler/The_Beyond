﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

// base class for describing a quest
// its a component so we can place them in the scene and thus reference scene objects
// eg kill that guy, pick up that key
// cant do this in a scriptable object easily
public abstract class Quest : MonoBehaviour
{
    public enum State
    {
        Hidden, // has not yet been revealed 
        Available, // ready to be given, but player hasn't spoken to quest giver
        Active, // is in the player's quest log, not yet turned in
        Complete, // turned in
        Failed // useful for say escort missions
    };

    // dialog text to display at various points in the quest
    [Multiline]
    public string introText;
    [Multiline]
    public string inProgressText;
    [Multiline]
    public string completeText;

    public State state;
    public int target; // how many things do we need to do?
    public int current; // how many we've doen so far
    public float GetPercentage() { return ((float)current) / target; } //returns betwen 0 and 1
    public Quest[] prerequisites;

    public abstract string GetDescription();

    // general purpose event for when any quest has changed
    public static UnityEvent onQuestUpdate = new UnityEvent();
    public static UnityEvent onQuestComplete = new UnityEvent();

    // modify the current value
    protected void Increment(int delta = 1)
    {
        current += delta;
        if (current > target)
        {
            current = target;
        }
        onQuestUpdate.Invoke();
    }

    // called when a quest is turned in to the quest giver
    public void Complete()
    {
        state = Quest.State.Complete;
        Quest.onQuestComplete.Invoke();

        // TODO rewards
    }

    // is this quest ready to turn in ie active but all conditions met?
    public bool ReadyToTurnIn()
    {
        return state == State.Active && GetPercentage() >= 1.0f;
    }

}
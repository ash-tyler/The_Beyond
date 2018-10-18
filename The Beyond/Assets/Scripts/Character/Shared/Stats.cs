using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats : MonoBehaviour
{
    public string characterName;
    [Space]
    [Space]

    public HitpointsSystem  hp;
    [Space]
    public HitpointsSystem  mana;
    [Space]

    public LevelSystem      level;
    [Space]

    public StatsSettings    startingStats;
    public float            awarenessRadius;

    private void Start()
    {
        if (HealthBarManager.instance && this as PlayerStats == null)
            HealthBarManager.instance.AddHealthBar(this);

        if (startingStats)
        {
            hp.Setup(startingStats.startHitpoints, startingStats.startMaximumHitpoints, characterName, "Health");
            mana.Setup(startingStats.startMana, startingStats.startMaximumMana, characterName, "Mana");
            level.Setup(startingStats.startLevel, startingStats.startBuff);
        }

        else
        {
            hp.Setup(hp.Hitpoints, hp.MaximumHitpoints, characterName, "Health");
            mana.Setup(mana.Hitpoints, mana.MaximumHitpoints, characterName, "Mana");
            level.Setup(1, 0);
        }
    }

    private void Setup()
    {

    }

    private void OnDrawGizmos()
    {
        UnityEditor.Handles.color = Color.magenta;
        UnityEditor.Handles.DrawWireDisc(transform.position, Vector3.up, awarenessRadius);
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats : MonoBehaviour
{
    public string characterName;
    [Space]
    [Space]
    public bool disableHealthBar = false;
    [Space]
    public StatsSettings    statPreset;
    public float            awarenessRadius;
    [Space]
    public Attributes attributes = new Attributes();

    [Space]
    public HitpointsSystem  health;
    [Space]
    public HitpointsSystem  mana;
    [Space]

    public LevelSystem      level;




    public void Setup()
    {
        if (HealthBarManager.instance && !disableHealthBar)
            HealthBarManager.instance.AddHealthBar(this);

        if (statPreset)
            SetStats(statPreset.hitpoints, statPreset.maximumHitpoints, statPreset.mana, statPreset.maximumMana, statPreset.level, statPreset.buff);
        else
            SetStats(health.points, health.maximumPoints, mana.points, mana.maximumPoints);
    }

    private void SetStats(float startHealth, float maxHealth, float startMana, float maxMana, int startLevel = 1, int startBuff = 0)
    {
        health.Setup(startHealth, maxHealth, characterName, "Health");
        mana.Setup(startMana, maxMana, characterName, "Mana");
        level.Setup(startLevel, startBuff);
    }

    private void OnDrawGizmos()
    {
        UnityEditor.Handles.color = Color.magenta;
        UnityEditor.Handles.DrawWireDisc(transform.position, Vector3.up, awarenessRadius);
    }
}
using NaughtyAttributes;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats : MonoBehaviour
{
    [Header("Stat Settings")]
    public string characterName;
    public float awarenessRadius;

    [Space]
    [Space] public Attributes attributes = new Attributes();
    [Space] public LevelSystem level;

    [HideInInspector] public HitpointsSystem health;
    [HideInInspector] public HitpointsSystem mana;

    [HideInInspector] public bool showForDebug = false;

    [Header("Debug HP & Mana Values")]
    [ShowIf("showForDebug")] public float currentHealth;
    [ShowIf("showForDebug")] public float maxHealth;
    [ShowIf("showForDebug")] public float currentMana;
    [ShowIf("showForDebug")] public float maxMana;


    public void Setup()
    {
        if (HealthBarManager.instance && !attributes.disableHealthBar)
            HealthBarManager.instance.AddHealthBar(this);

        attributes.Start();
        SetStats(attributes.startHealthPercent, attributes.GetMaxHealth(), attributes.startManaPercent, attributes.GetMaxMana());
        showForDebug = true;
    }

    public void Update()
    {
        currentHealth = health.points;
        maxHealth = health.maximumPoints;
        currentMana = mana.points;
        maxMana = mana.maximumPoints;
    }

    private void SetStats(float startHealth, float maxHealth, float startMana, float maxMana)
    {
        health.Setup((maxHealth * startHealth) / 100, maxHealth, characterName, "Health");
        mana.Setup((maxMana * startMana) / 100, maxMana, characterName, "Mana");
        level.Setup();
    }

    private void OnDrawGizmos()
    {
        UnityEditor.Handles.color = Color.magenta;
        UnityEditor.Handles.DrawWireDisc(transform.position, Vector3.up, awarenessRadius);
    }
}
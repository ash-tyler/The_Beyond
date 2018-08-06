using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats : MonoBehaviour
{
    public HitpointsSystem  hp;
    public LevelSystem      level;
    public StatsSettings    startingStats;
    public float            awarenessRadius;

    private void Start()
    {
        if (startingStats)
        {
            hp._hitpoints = Mathf.Max(startingStats.startHitpoints, 0);
            hp.maximumHitpoints = startingStats.startMaximumHitpoints;

            level.SetNewLevel(startingStats.startLevel);
            level.buff = startingStats.startBuff;
        }
    }



    private void OnDrawGizmos()
    {
        UnityEditor.Handles.color = Color.magenta;
        UnityEditor.Handles.DrawWireDisc(transform.position, Vector3.up, awarenessRadius);
    }
}
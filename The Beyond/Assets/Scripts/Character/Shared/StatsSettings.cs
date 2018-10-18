using UnityEngine;

[CreateAssetMenu(fileName = "Stat Settings", menuName = "Settings/Stat System", order = 0)]
public class StatsSettings : ScriptableObject
{
    [Header("Health Settings")]
    public int startHitpoints;
    public int startMaximumHitpoints;

    [Space]
    [Header("Mana Settings")]
    public int startMana;
    public int startMaximumMana;

    [Space]
    [Header("Level Settings")]
    public int startLevel;
    public int startBuff;
}
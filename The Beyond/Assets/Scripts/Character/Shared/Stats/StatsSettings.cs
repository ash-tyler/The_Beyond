using UnityEngine;

[CreateAssetMenu(fileName = "Stat Settings", menuName = "Settings/Stat System", order = 0)]
public class StatsSettings : ScriptableObject
{
    [Header("Health Settings")]
    public float hitpoints;
    public float maximumHitpoints;

    [Space]
    [Header("Mana Settings")]
    public float mana;
    public float maximumMana;

    [Space]
    [Header("Level Settings")]
    public int level;
    public int buff;
}
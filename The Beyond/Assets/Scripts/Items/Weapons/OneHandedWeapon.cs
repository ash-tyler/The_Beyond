using NaughtyAttributes;
using UnityEngine;

[System.Serializable]
[CreateAssetMenu(fileName = "One Handed", menuName = "Weapon System/One Handed Weapon", order = 1)]
public class OneHandedWeapon : Weapon
{
    [Header("One Handed Settings")]
    public bool isOffhand = false;
}
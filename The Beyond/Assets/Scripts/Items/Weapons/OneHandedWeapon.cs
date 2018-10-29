using UnityEngine;

[System.Serializable]
[CreateAssetMenu(fileName = "One Handed", menuName = "Weapon System/One Handed Weapon", order = 1)]
public class OneHandedWeapon : Weapon
{
    [Space]
    public bool isOffhand = false;
}
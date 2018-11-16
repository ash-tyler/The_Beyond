using NaughtyAttributes;
using UnityEngine;

[System.Serializable]
public class HitpointsSystem
{

    public float points;
    public float maximumPoints;

    public string characterName;
    public string barName;

    public Character LastAttacker { get; private set; }


    public void Setup(float startHealth, float maxHealth, string enteredName, string barTypeName)
    {
        maximumPoints = maxHealth;
        points = Mathf.Clamp(startHealth, 0, maximumPoints);
        characterName = enteredName;
        barName = barTypeName;
    }


    public void Damage(float damage)
    {
        points = Mathf.Max(points - damage, 0);
    }

    public void Damage(float damage, Character attacker)
    {
        points = Mathf.Max(points - damage, 0);
        LastAttacker = attacker;
    }

    public void Restore(float restoration)
    {
        points = Mathf.Min(points + restoration, maximumPoints);
    }

    public void SetToMaximum()
    {
        points = maximumPoints;
    }

    public float GetPointsAsPercent()
    {
        return Mathf.Clamp01(points / maximumPoints);
    }

    private string GetName()
    {
        if (characterName.Length > 0)
            return characterName;

        return "Unnamed Object";
    }
}
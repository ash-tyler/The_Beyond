using UnityEngine;

[System.Serializable]
public class HitpointsSystem
{
    public float points;
    public float maximumPoints;

    [HideInInspector] public string characterName;
    [HideInInspector] public string barName;

    public Character lastAttacker { get; private set; }


    public void Setup(float startHealth, float maxHealth, string enteredName, string barTypeName)
    {
        maximumPoints = maxHealth;
        points = Mathf.Clamp(startHealth, 0, maximumPoints);
        characterName = enteredName;
        barName = barTypeName;
    }


    public void Damage(float damage)
    {
        Debug.Log(GetName() + " took " + damage + " " + barName + " damage!");
        points = Mathf.Max(points - damage, 0);
    }

    public void Damage(float damage, Character character)
    {
        Debug.Log(GetName() + " took " + damage + " " + barName + " damage!");
        points = Mathf.Max(points - damage, 0);

        lastAttacker = character;
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
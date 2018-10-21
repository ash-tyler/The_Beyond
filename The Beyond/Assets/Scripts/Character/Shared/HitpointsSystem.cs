using UnityEngine;

[System.Serializable]
public class HitpointsSystem
{
    public float Hitpoints { get { return points; } private set { points = value; } }
    public float MaximumHitpoints { get { return maxPoints; } private set { maxPoints = value; } }
    [SerializeField] private float points;
    [SerializeField] private float maxPoints;

    [HideInInspector] public string characterName;
    [HideInInspector] public string barName;

    public Character lastAttacker { get; private set; }


    public void Setup(float startHealth, float maxHealth, string enteredName, string barTypeName)
    {
        MaximumHitpoints = maxHealth;
        Hitpoints = Mathf.Clamp(startHealth, 0, MaximumHitpoints);
        characterName = enteredName;
        barName = barTypeName;
    }

    public void Damage(float damage)
    {
        Debug.Log(GetName() + " took " + damage + " " + barName + " damage!");
        Hitpoints = Mathf.Max(Hitpoints - damage, 0);
    }

    public void Damage(float damage, Character character)
    {
        Debug.Log(GetName() + " took " + damage + " " + barName + " damage!");
        Hitpoints = Mathf.Max(Hitpoints - damage, 0);

        lastAttacker = character;
    }

    public void Restore(float restoration)
    {
        Hitpoints = Mathf.Min(Hitpoints + restoration, MaximumHitpoints);
    }

    public void SetToMaximum()
    {
        Hitpoints = MaximumHitpoints;
    }

    private string GetName()
    {
        if (characterName.Length > 0)
            return characterName;

        return "Unnamed Object";
    }
}
using NaughtyAttributes;
using System;
using System.Collections.Generic;
using TheBeyond.Enums;
using UnityEngine;


namespace TheBeyond.Enums
{
    [Flags]
    public enum AttributeType : int
    {
        None = 0,
        Strength = 1,
        Dexterity = 2,
        Constitution = 4,
        Intelligence = 8,
        Wisdom = 16,
        Charisma = 32
    }

    public static class AttributeTypeExtension
    {
        public static AttributeType SetFlag(AttributeType a, AttributeType b)       { return a | b; }
        public static AttributeType UnsetFlag(AttributeType a, AttributeType b)     { return a & (~b); }
        public static AttributeType ToogleFlag(AttributeType a, AttributeType b)    { return a ^ b; }
        public static bool          HasFlag(AttributeType a, AttributeType b)       { return (a & b) == b; }
    }
}


[System.Serializable]
public class Attributes
{
    public const int attributeCap = 100;

    [Header("Attribute Settings")]
    [MinValue(0), MaxValue(attributeCap)] public int strength = 5;
    [MinValue(0), MaxValue(attributeCap)] public int dexterity = 5;
    [MinValue(0), MaxValue(attributeCap)] public int constitution = 5;
    [MinValue(0), MaxValue(attributeCap)] public int intelligence = 5;
    [MinValue(0), MaxValue(attributeCap)] public int wisdom = 5;
    [MinValue(0), MaxValue(attributeCap)] public int charisma = 5;

    [Header("Health & Mana Settings")]
    [MinValue(0)] [Tooltip(hTip)] public float healthPercent = 10;
    [MinValue(0)] [Tooltip(mTip)] public float manaPercent = 10;
    [Space]
    [MinValue(0), MaxValue(100)] [Tooltip(shTip)] public float startHealthPercent = 100;
    [MinValue(0), MaxValue(100)] [Tooltip(smTip)] public float startManaPercent = 100;
    [Space]
    public bool disableHealthBar = false;
    [HideIf("disableHealthBar")]
    public float healthBarHeight = 2f;


    private const string hTip = "Health will be 1000% plus this percent of Constitution";
    private const string mTip = "Mana will be 1000% plus this percent of Wisdom";
    private const string shTip = "Health at start will be this percent of Constitution";
    private const string smTip = "Mana at start will be this percent of Wisdom";

    private Dictionary<AttributeType, int> attributeList = new Dictionary<AttributeType, int>();

    private float Multiply { get { return 1000; } }



    public void Start()
    {
        attributeList.Add(AttributeType.Strength, Mathf.Clamp(strength, 0, attributeCap));
        attributeList.Add(AttributeType.Dexterity, Mathf.Clamp(dexterity, 0, attributeCap));
        attributeList.Add(AttributeType.Constitution, Mathf.Clamp(constitution, 0, attributeCap));
        attributeList.Add(AttributeType.Intelligence, Mathf.Clamp(intelligence, 0, attributeCap));
        attributeList.Add(AttributeType.Wisdom, Mathf.Clamp(wisdom, 0, attributeCap));
        attributeList.Add(AttributeType.Charisma, Mathf.Clamp(charisma, 0, attributeCap));
    }

    public void FillDictionary()
    {
        attributeList[AttributeType.Strength] = Mathf.Clamp(strength, 0, attributeCap);
        attributeList[AttributeType.Dexterity] = Mathf.Clamp(dexterity, 0, attributeCap);
        attributeList[AttributeType.Constitution] = Mathf.Clamp(constitution, 0, attributeCap);
        attributeList[AttributeType.Intelligence] = Mathf.Clamp(intelligence, 0, attributeCap);
        attributeList[AttributeType.Wisdom] = Mathf.Clamp(wisdom, 0, attributeCap);
        attributeList[AttributeType.Charisma] = Mathf.Clamp(charisma, 0, attributeCap);
    }

    public void Add(AttributeType attribute, int value)
    {
        attributeList[attribute] += Mathf.Clamp(value, 0, attributeCap);
    }

    public void Subtract(AttributeType attribute, int value)
    {
        attributeList[attribute] -= Mathf.Clamp(value, 0, attributeCap);
    }

    public void Set(AttributeType attribute, int value)
    {
        attributeList[attribute] = Mathf.Clamp(value, 0, attributeCap);
    }


    public int GetIntPercent(AttributeType attribute, float percent)
    {
        if (!attributeList.ContainsKey(attribute))
            return 0;

        return (int)(((float)attributeList[attribute] / attributeCap) * percent);
    }
    public float GetFloatPercent(AttributeType attribute, float percent)
    {
        if (!attributeList.ContainsKey(attribute))
            return 0;

        return ((float)attributeList[attribute] / attributeCap) * percent;
    }

    public float GetMaxHealth()
    {
        float max = GetFloatPercent(AttributeType.Constitution, Multiply);
        return max + (max * (healthPercent / 100));
    }

    public float GetMaxMana()
    {
        float max = GetFloatPercent(AttributeType.Wisdom, Multiply);
        return max + (max * (manaPercent / 100));
    }
}
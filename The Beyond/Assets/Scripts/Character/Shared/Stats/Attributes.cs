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


    private Dictionary<AttributeType, int> attributeList = new Dictionary<AttributeType, int>();

    public static int attributeCap = 100;

    public int strength;
    public int dexterity;
    public int constitution;
    public int intelligence;
    public int wisdom;
    public int charisma;


    public void Start()
    {
        for (int i = 0; i < AttributeType.GetNames(typeof(AttributeType)).Length; i++)
            attributeList.Add((AttributeType)i, 0);
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

        return (int)((attributeList[attribute] / attributeCap) * percent);
    }
    public float GetFloatPercent(AttributeType attribute, float percent)
    {
        if (!attributeList.ContainsKey(attribute))
            return 0;

        return (attributeList[attribute] / attributeCap) * percent;
    }
}
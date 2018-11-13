using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class Attributes
{
    public enum AttributeType { STRENGTH = 0, DEXTERITY, CONSTITUTION, INTELLIGENCE, WISDOM, CHARISMA }

    private Dictionary<AttributeType, int> attributeList = new Dictionary<AttributeType, int>();


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
        attributeList[AttributeType.STRENGTH] = strength;
        attributeList[AttributeType.DEXTERITY] = dexterity;
        attributeList[AttributeType.CONSTITUTION] = constitution;
        attributeList[AttributeType.INTELLIGENCE] = intelligence;
        attributeList[AttributeType.WISDOM] = wisdom;
        attributeList[AttributeType.CHARISMA] = charisma;
    }

    public void Add(AttributeType attribute, int value)
    {
        attributeList[attribute] += value;
    }

    public void Subtract(AttributeType attribute, int value)
    {
        attributeList[attribute] -= value;
    }

    public void Set(AttributeType attribute, int value)
    {
        attributeList[attribute] = value;
    }
}
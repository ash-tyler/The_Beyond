using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class CharacterType
{
    public string typeSingular = "Example";
    public string typeMultiple = "Exampli";

    public bool TypeIsSame(CharacterType otherType)
    {
        return (typeSingular == otherType.typeSingular || typeMultiple == otherType.typeMultiple);
    }
}
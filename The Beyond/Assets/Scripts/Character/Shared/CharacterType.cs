using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace TheBeyond.CharacterTypeEnum
{
    public enum CharacterType
    {
        Player = 0,
        Chicken,
        Villager,
        Wolf,
        Skeleton,
        Ghoul,
        Spider
    }

    public static class CharacterTypeFunction
    {
        public static string GetNameMultiple(CharacterType type)
        {
            if (type == CharacterType.Wolf)
                return "Wolves";

            return type.ToString() + "s";
        }
    }

    //public string typeSingular = "Example";
    //public string typeMultiple = "Exampli";

    //public bool TypeIsSame(CharacterType otherType)
    //{
    //    return (typeSingular == otherType.typeSingular || typeMultiple == otherType.typeMultiple);
    //}
}
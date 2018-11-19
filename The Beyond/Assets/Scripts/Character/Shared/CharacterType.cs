using System;


namespace TheBeyond.CharacterTypeEnum
{
    [Flags] public enum CharacterType : int
    {
        None = 0,
        Player = 1,
        Chicken = 2,
        Villager = 4,
        Wolf = 8,
        Skeleton = 16,
        Ghoul = 32,
        Spider = 64,
        Viper = 128
    }


    public static class CharacterTypeFunction
    {
        public static string GetNameMultiple(CharacterType type)
        {
            if (type == CharacterType.Wolf)
                return "Wolves";

            return type.ToString() + "s";
        }

        public static CharacterType SetFlag(CharacterType a, CharacterType b) { return a | b; }
        public static CharacterType UnsetFlag(CharacterType a, CharacterType b) { return a & (~b); }
        public static CharacterType ToogleFlag(CharacterType a, CharacterType b) { return a ^ b; }
        public static bool HasFlag(CharacterType a, CharacterType b) { return (a & b) == b; }
    }
}
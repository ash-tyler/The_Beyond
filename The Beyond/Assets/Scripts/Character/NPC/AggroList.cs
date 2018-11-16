using System.Collections.Generic;
using TheBeyond.CharacterTypeEnum;


[System.Serializable]
public class AggroList
{
    //public List<CharacterType> aggroTypes;


    //private HashSet<CharacterType> aggroList;

    [EnumFlags] public CharacterType AggroTypes;



}
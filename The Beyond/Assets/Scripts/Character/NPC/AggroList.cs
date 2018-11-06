using System.Collections.Generic;
using TheBeyond.CharacterTypeEnum;


[System.Serializable]
public class AggroList
{
    public List<CharacterType> aggroTypes;


    private HashSet<CharacterType> aggroList;


    public void Setup()
    {
        aggroList = new HashSet<CharacterType>(aggroTypes);
    }

    public void Add(CharacterType characterType)
    {
        aggroList.Add(characterType);
    }

    public void Remove(CharacterType characterType)
    {
        aggroList.Remove(characterType);
    }

    public void Clear()
    {
        aggroList.Clear();
    }

    public bool Contains(CharacterType characterType)
    {
        return aggroList.Contains(characterType);
    }
}
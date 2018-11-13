using System;
using UnityEngine;


[System.Serializable]
public class GoldRef : MonoBehaviour
{
    public ItemValue gold;


    public void Setup(ItemValue newItem)
    {
        gold = newItem;
    }

    public ItemValue GetItem()
    {
        return gold;
    }

    internal GameObject GetInstance()
    {
        throw new NotImplementedException();
    }
}
using UnityEngine;


public class GoldSpawner : MonoBehaviour
{
    public ItemValue goldToSpawn;


    void Start()
    {
        GameObject obj = goldToSpawn.GetLootInstance();
        obj.transform.position = transform.position;
    }
}
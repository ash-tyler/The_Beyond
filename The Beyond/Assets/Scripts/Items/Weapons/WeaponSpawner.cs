using UnityEngine;


public class WeaponSpawner : MonoBehaviour
{
    public Weapon weaponToSpawn;


	void Start ()
    {
        GameObject obj = weaponToSpawn.GetLootInstance();
        obj.transform.position = transform.position;
	}
}

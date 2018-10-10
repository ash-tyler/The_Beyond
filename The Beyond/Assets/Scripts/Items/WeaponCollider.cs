using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class WeaponCollider : MonoBehaviour
{
    [HideInInspector]
    public Weapon           weapon;
    [HideInInspector]
    public List<Stats>      enemiesHit = new List<Stats>();
    [HideInInspector]
    public GameObject       user;


    private void OnTriggerEnter(Collider other)
    {
        if (!CanHit(other.gameObject)) return;

        Stats enemyStats = other.GetComponent<Stats>();
        if (enemyStats && !enemiesHit.Contains(enemyStats))
        {
            enemyStats.hp.Damage(weapon.damage);
            enemiesHit.Add(enemyStats);
        }
    }

    private bool CanHit(GameObject obj)
    {
        return (weapon && obj != user);
    }
}
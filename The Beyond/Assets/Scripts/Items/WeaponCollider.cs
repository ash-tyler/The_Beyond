using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class WeaponCollider : MonoBehaviour
{
    [HideInInspector]
    public Weapon       weapon;
    [HideInInspector]
    public List<Stats>  enemiesHit = new List<Stats>();
    [HideInInspector]
    public Equipment    equipment;


    private void OnTriggerEnter(Collider other)
    {
        if (!CanHit(other.gameObject)) return;

        Stats enemyStats = other.GetComponent<Stats>();
        if (enemyStats && !enemiesHit.Contains(enemyStats))
        {
            Debug.Log("ENEMY HIT!");

            enemyStats.hp.Damage(weapon.damage);
            enemiesHit.Add(enemyStats);
        }
    }

    public void ClearHitList()
    {
        enemiesHit.Clear();
    }

    private bool CanHit(GameObject obj)
    {
        return (!weapon || !equipment || !equipment.currentlyAttacking || obj == equipment.gameObject);
    }
}
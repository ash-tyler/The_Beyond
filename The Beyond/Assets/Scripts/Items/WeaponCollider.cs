using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class WeaponCollider : MonoBehaviour
{
    public Transform    anchor;

    [HideInInspector]
    public Weapon       weapon;
    [HideInInspector]
    public List<Stats>  enemiesHit = new List<Stats>();
    [HideInInspector]
    public bool         currentlyAttacking = false;


    void Update()
    {
        transform.position = anchor.position;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!weapon) return;

        if (currentlyAttacking && (other.tag == "Player" || other.tag == "Enemy"))
        {
            Stats enemyStats = other.GetComponent<Stats>();

            if (enemyStats && !enemiesHit.Contains(enemyStats))
            {
                enemyStats.hp.Damage(weapon.damage);
                enemiesHit.Add(enemyStats);
            }
        }
    }
}
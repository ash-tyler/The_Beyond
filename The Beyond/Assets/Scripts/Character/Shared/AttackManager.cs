using UnityEngine;

public class AttackManager : MonoBehaviour
{
    public Equipment equipment;


    public void Start()
    {
        equipment = GetComponent<CharacterModel>().character.equipment;
    }

    public void WeaponHit()
    {
        Transform user = transform;

        Collider[] targetsInRadius = Physics.OverlapSphere(user.position, equipment.weaponInfo.damageRadius, ~LayerMask.NameToLayer("NPC"));


        foreach (Collider enemy in targetsInRadius)
        {
            Stats enemyStats = enemy.GetComponent<Stats>();
            if (!enemyStats || enemy.transform == equipment.transform)
                continue;

            Debug.Log("Enemy within attack distance...");

            
            Vector3 direction = enemy.transform.position - user.position;

            float angle = Vector3.Angle(user.forward, direction);
            float weaponAngle = equipment.weaponInfo.angle / 2;

            if (equipment.weaponInfo.angle < 0)
                angle *= -1;


            if (angle > weaponAngle)
            {
                Debug.Log("... But Enemy was not within the weapon's attack angle");
                continue;
            }

            float distance = Vector3.Distance(user.position, enemy.transform.position);
            if (!Physics.Raycast(user.position, direction, distance, LayerMask.NameToLayer("Scenery")))
                enemyStats.hp.Damage(equipment.weaponInfo.damage, equipment.character);
        }
    }
}
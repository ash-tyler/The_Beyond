using UnityEngine;

public class AttackManager : MonoBehaviour
{
    private Equipment equipment;
    private static LayerMask attackLayers;

    public void Setup(Character newCharacter)
    {
        equipment = newCharacter.equipment;
        attackLayers = ~(LayerMask.NameToLayer("Player") | LayerMask.NameToLayer("NPC") | LayerMask.NameToLayer("Invisible"));
    }

    public void WeaponHit()
    {
        Transform user = transform;
        Weapon weapon = equipment.GetWeaponInfo();

        if (!weapon) return;


        Collider[] targetsInRadius = Physics.OverlapSphere(user.position, weapon.damageRadius, attackLayers);

        foreach (Collider enemy in targetsInRadius)
        {
            Stats enemyStats = enemy.GetComponent<Stats>();

            if (enemyStats && enemy.transform != equipment.transform)
                if (WithinAttackAngle(enemy.transform.position, weapon.angle) && !BlockedByScenery(enemy.transform.position))
                    enemyStats.health.Damage(weapon.damage, equipment.character);

            //Vector3 direction = enemy.transform.position - user.position;
            //float angle = (equipment.weaponInfo.angle < 0) ? Vector3.Angle(user.forward, direction) * -1 : Vector3.Angle(user.forward, direction);

            //if (angle < (equipment.weaponInfo.angle * 0.5f))
            //    if (!Physics.Raycast(user.position, direction, Vector3.Distance(user.position, enemy.transform.position), LayerMask.NameToLayer("Scenery")))
            //        enemyStats.health.Damage(equipment.weaponInfo.damage, equipment.character);
        }
    }

    private bool WithinAttackAngle(Vector3 enemyPos, float weaponAngle)
    {
        return (Vector3.Angle(transform.forward, enemyPos - transform.position) < Mathf.Abs(weaponAngle * 0.5f));
    }

    private bool BlockedByScenery(Vector3 enemyPos)
    {
        return Physics.Linecast(transform.position, enemyPos, LayerMask.NameToLayer("Scenery"));
    }
}
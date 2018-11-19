using UnityEngine;

public class AttackManager : MonoBehaviour
{
    private Character character;


    public void Setup(Character newCharacter)
    {
        character = newCharacter;
    }

    public void WeaponHit()
    {
        character.model.soundManager.Play(character.model.soundManager.effort);

        Weapon weapon = character.equipment.GetWeaponInfo();
        if (!weapon) return;


        if (character as NPC)
            foreach (Character otherCharacter in (character as NPC).GetAttackableCharacters(weapon.damageRadius))
                Attack(weapon, otherCharacter);

        else
            foreach (Character otherCharacter in character.GetAttackableCharacters(weapon.damageRadius))
                Attack(weapon, otherCharacter);
    }


    private void Attack(Weapon weapon, Character otherCharacter)
    {
        Vector3 enemyPos = otherCharacter.model.transform.position;
        if (character != otherCharacter && InAttackAngle(enemyPos) && !SceneryBlocked(enemyPos))
        {
            otherCharacter.stats.health.Damage(weapon.GetDamage(character.stats.attributes), character);
            otherCharacter.model.soundManager.PlayPain();
            otherCharacter.model.soundManager.PlayStruck();
        }
    }

    private bool InAttackAngle(Vector3 otherPos)
    {
        return (Vector3.Angle(transform.forward, otherPos - transform.position) < Mathf.Abs(character.equipment.mainWeapon.angle * 0.5f));
    }

    private bool SceneryBlocked(Vector3 otherPos)
    {
        return Physics.Linecast(transform.position, otherPos, LayerMask.NameToLayer("Scenery"));
    }

    //private bool CanHit(Character otherCharacter, float weaponAngle)
    //{
    //    Vector3 enemyPos = otherCharacter.model.transform.position;
    //    return character != otherCharacter && (Vector3.Angle(transform.forward, enemyPos - transform.position) < Mathf.Abs(weaponAngle * 0.5f))
    //                        && Physics.Linecast(transform.position, enemyPos, LayerMask.NameToLayer("Scenery"));
    //}

    //private void AttackAsNPC(Weapon weapon, NPC npc)
    //{
    //    foreach (Character ch in npc.GetAttackableCharacters(weapon))
    //        if (CanHit(ch, weapon.angle) && npc.aggroTypes.Contains(ch.characterType))
    //            ch.stats.health.Damage(weapon.damage, npc);
    //}


    //private void AttackAsPlayer(Weapon weapon)
    //{
    //    foreach (Character ch in character.GetAttackableCharacters(weapon))

    //}
}
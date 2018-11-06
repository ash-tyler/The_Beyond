using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Transitions/TargetInAttackRadius", fileName = "New TargetInAttackRadius")]
public class TargetInAttackRadius : AITransition
{
    public float multiplier = 1.2f;
    //public AggroList types = new AggroList();

    public override bool Decide(AIController controller)
    {
        Weapon weapon = controller.npc.equipment.mainWeapon;
        if (!weapon) return false;

        foreach(Character target in controller.npc.GetAttackableCharacters(weapon.damageRadius * multiplier))
            return true;

        return false;
    }
}
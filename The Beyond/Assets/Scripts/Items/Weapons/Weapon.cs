using UnityEngine;
using TheBeyond.Enums;
using NaughtyAttributes;

public class Weapon : Item
{
    [Header("Damage")]

                        public float baseDamage;
    [EnumFlags]         public AttributeType Bonus;

    [ShowIf("StrengthEnabled")]
    public float strengthBonusPercent;
    [ShowIf("DexterityEnabled")]
    public float dexterityBonusPercent;
    [ShowIf("ConstitutionEnabled")]
    public float constitutionBonusPercent;
    [ShowIf("IntelligenceEnabled")]
    public float intelligenceBonusPercent;
    [ShowIf("WisdomEnabled")]
    public float wisdomBonusPercent;
    [ShowIf("CharismaEnabled")]
    public float charismaBonusPercent;

    [Space]
    [Space]             public float damageRadius;
                        public float angle = 45;


    [Space] [Header("Transform Adjustment")]

                        public Vector3 positionAdjust;
                        public Vector3 rotationAdjust;
    [HideInInspector]   public Vector3 scaleAdjust;

    public bool IsOneHanded { get { return (this as OneHandedWeapon); } }
    public bool IsTwoHanded { get { return (this as TwoHandedWeapon); } }
    public bool IsRanged { get { return (this as RangedWeapon); } }
    public bool IsFist { get { return (this as Fists); } }


    public override GameObject GetInstance()
    {
        if (!model) return null;
        return Instantiate(model);
    }

    public override GameObject GetInstance(Transform parent)
    {
        if (!model) return null;
        GameObject obj = Instantiate(model, parent.position, parent.rotation, parent);
        obj.transform.parent = parent;
        obj.transform.localPosition = positionAdjust;
        obj.transform.localEulerAngles = rotationAdjust;
        scaleAdjust = obj.transform.localScale;
        return obj;
    }

    public override GameObject GetLootInstance()
    {
        if (!lootModel) return null;

        GameObject weaponObj = Instantiate(lootModel);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        weaponObj.AddComponent<ItemRef>();
        weaponObj.GetComponent<ItemRef>().Setup(this);
        return weaponObj;
    }

    public override GameObject GetLootInstance(Transform parent)
    {
        if (!lootModel) return null;

        GameObject weaponObj = Instantiate(lootModel, parent.position, parent.rotation, parent);
        weaponObj.layer = LayerMask.NameToLayer("Loot");
        weaponObj.AddComponent<ItemRef>();
        weaponObj.GetComponent<ItemRef>().Setup(this);
        return weaponObj;
    }

    public float GetDamage(Attributes attributes)
    {
        float bonusDamage = strengthBonusPercent + dexterityBonusPercent + constitutionBonusPercent + intelligenceBonusPercent + wisdomBonusPercent + charismaBonusPercent;

        for (int i = 0; i < AttributeType.GetNames(typeof(AttributeType)).Length; i++)
        {
            if (AttributeTypeExtension.HasFlag((AttributeType)i, Bonus))
                bonusDamage += attributes.GetFloatPercent((AttributeType)i, 1);
        }

        return baseDamage + bonusDamage;
    }


    public bool StrengthEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Strength))
            return true;

        strengthBonusPercent = 0;
        return false;
    }
    public bool DexterityEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Dexterity))
            return true;
        dexterityBonusPercent = 0;
        return false;
    }
    public bool ConstitutionEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Constitution))
            return true;
        constitutionBonusPercent = 0;
        return false;
    }
    public bool IntelligenceEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Intelligence))
            return true;
        intelligenceBonusPercent = 0;
        return false;
    }
    public bool WisdomEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Wisdom))
            return true;
        wisdomBonusPercent = 0;
        return false;
    }
    public bool CharismaEnabled()
    {
        if (AttributeTypeExtension.HasFlag(Bonus, AttributeType.Charisma))
            return true;
        charismaBonusPercent = 0;
        return false;
    }
}
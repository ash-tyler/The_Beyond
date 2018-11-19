using System.Collections.Generic;
using System.Linq;
using TheBeyond.CharacterTypeEnum;
using UnityEngine;


[RequireComponent(typeof(CapsuleCollider))]
[RequireComponent(typeof(AIController))]
public class NPC : Character
{
    [Header("Reacts To Type")]
    [EnumFlags] public CharacterType AggroTypes;

    [Header("Droplist Settings")]
    public List<GoldDrop> goldDropList = new List<GoldDrop>();
    public List<LootDrop> itemDropList = new List<LootDrop>();

    [HideInInspector]
    public AIController controller;

	void Start ()
    {
        model = GetComponentInChildren<CharacterModel>();
        model.character = this;
        if (!model)
            gameObject.SetActive(false);

        stats = GetComponent<Stats>();
        equipment = GetComponent<Equipment>();
        inventory = GetComponent<Inventory>();
        controller = GetComponent<AIController>();

        model.Setup();
        stats.Setup();
        equipment.Setup(this);
        controller.Setup(this);
        //aggroTypes.Setup();
    }
	
	void Update ()
    {
        if (canDie && !dead && stats.health.points <= 0)
            Kill();
    }

    public override void Kill()
    {
        controller.aiManager.enableAI = false;
        base.Kill();
        DropLoot();
    }

    public override IEnumerable<Character> GetAttackableCharacters(float radius)
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, attackLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && AggroTypesContains(ch.characterType));
    }

    public override IEnumerable<Character> GetVisibleCharacters()
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, stats.awarenessRadius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && AggroTypesContains(ch.characterType));
    }

    public override IEnumerable<Character> GetVisibleCharacters(float radius)
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && AggroTypesContains(ch.characterType));
    }

    public void DropLoot()
    {
        if (goldDropList.Count == 0) return;

        foreach (GoldDrop gd in goldDropList)
        {
            if (Random.Range(0, 100) <= gd.dropChance)
            {
                GameObject loot = gd.gold.GetLootInstance();
                loot.transform.position = transform.position + Vector3.up;
            }
        }


        if (itemDropList.Count == 0) return;

        foreach (LootDrop ld in itemDropList)
        {
            if (Random.Range(0, 100) <= ld.dropChance)
            {
                GameObject loot = ld.lootItem.GetLootInstance();
                loot.transform.position = transform.position + Vector3.up * 6;
            }
        }
    }

    public void AddToAggroTypes(CharacterType characterType)
    {
        AggroTypes = CharacterTypeFunction.SetFlag(AggroTypes, characterType);
        //aggroList.Add(characterType);
    }

    public void RemoveFromAggroTypes(CharacterType characterType)
    {
        AggroTypes = CharacterTypeFunction.UnsetFlag(AggroTypes, characterType);
        //aggroList.Remove(characterType);
    }

    public void ClearAggroTypes()
    {
        AggroTypes = CharacterType.None;
        //aggroList.Clear();
    }

    public bool AggroTypesContains(CharacterType characterType)
    {
        return CharacterTypeFunction.HasFlag(AggroTypes, characterType);
        //return aggroList.Contains(characterType);
    }
}
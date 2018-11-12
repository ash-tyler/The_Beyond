using System.Collections.Generic;
using System.Linq;
using UnityEngine;


[RequireComponent(typeof(CapsuleCollider))]
[RequireComponent(typeof(AIController))]
public class NPC : Character
{
    [Space]
    public AggroList aggroTypes = new AggroList();
    [Space]
    public List<GoldDrop> goldDropList = new List<GoldDrop>();
    public List<LootDrop> dropList = new List<LootDrop>();
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
        aggroTypes.Setup();
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
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && aggroTypes.Contains(ch.characterType));
    }

    public override IEnumerable<Character> GetVisibleCharacters()
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, stats.awarenessRadius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && aggroTypes.Contains(ch.characterType));
    }

    public override IEnumerable<Character> GetVisibleCharacters(float radius)
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch && aggroTypes.Contains(ch.characterType));
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


        if (dropList.Count == 0) return;

        foreach (LootDrop ld in dropList)
        {
            if (Random.Range(0, 100) <= ld.dropChance)
            {
                GameObject loot = ld.lootItem.GetLootInstance();
                loot.transform.position = transform.position + Vector3.up * 6;
            }
        }
    }
}
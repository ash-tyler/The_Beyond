using System.Collections.Generic;
using System.Linq;
using UnityEngine;


[RequireComponent(typeof(CapsuleCollider))]
[RequireComponent(typeof(AIController))]
public class NPC : Character
{
    [Space]
    public AggroList aggroTypes = new AggroList();
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
}
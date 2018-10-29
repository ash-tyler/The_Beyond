using UnityEngine;


[RequireComponent(typeof(AIController))]
public class NPC : Character
{
    //public bool hostileToPlayer = false;
    //public bool hostileToNPC = false;

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
}
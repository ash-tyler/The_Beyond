using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Stats))]
[RequireComponent(typeof(Equipment))]
[RequireComponent(typeof(Inventory))]
public class Character : MonoBehaviour
{
    [HideInInspector] public CharacterModel model;

    [HideInInspector] public Stats stats;
    [HideInInspector] public Equipment equipment;
    [HideInInspector] public Inventory inventory;

    private bool dead = false;
    
    [System.Serializable]
    public class DeathEvent : UnityEvent<Character> { };

    // uncomment this if you want to hook things up to individual character's deaths
    // public DeathEvent onDead;
    public static DeathEvent onAnyDead = new DeathEvent();


    private void Start()
    {
        model = GetComponentInChildren<CharacterModel>();
        model.character = this;
        if (!model)
            gameObject.SetActive(false);

        stats = GetComponent<Stats>();
        equipment = GetComponent<Equipment>();
        inventory = GetComponent<Inventory>();

        model.Setup();
        stats.Setup();
        equipment.Setup(this);
    }




    private void Update()
    {

        if (stats.hp.Hitpoints <= 0 && !dead)
        {
            Character attacker = stats.hp.lastAttacker;
            attacker.stats.level.AddExperience(stats.level.killEXP);

            dead = true;
            Destroy(gameObject, 5);

            //onDead.Invoke(this);
            onAnyDead.Invoke(this);
        }
    }

    public void EnterCombat()
    {
        model.SetInCombat(true);
        equipment.currentlyAttacking = true;
    }

    public void ExitCombat()
    {
        model.SetInCombat(false);
    }

    public void TriggerAttack()
    {
        model.TriggerAttack();
    }
}
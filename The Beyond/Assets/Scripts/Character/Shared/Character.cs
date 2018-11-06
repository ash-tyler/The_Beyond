using System;
using System.Collections.Generic;
using System.Linq;
using TheBeyond.CharacterTypeEnum;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Stats))]
[RequireComponent(typeof(Equipment))]
[RequireComponent(typeof(Inventory))]
public class Character : MonoBehaviour
{
    public CharacterType characterType;
    [Space]
    public bool canDie = true;
    [Space]
    public LayerMask attackLayers;
    public LayerMask visibleLayers;

    [HideInInspector] public CharacterModel model;
    [HideInInspector] public Stats stats;
    [HideInInspector] public Equipment equipment;
    [HideInInspector] public Inventory inventory;

    protected bool dead = false;


    [System.Serializable]
    public class DeathEvent : UnityEvent<Character> { };

    // public DeathEvent onDead;        //uncomment this if you want to hook things up to individual character's deaths
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
        if (canDie && !dead && stats.health.points <= 0)
            Kill();
    }


    public void EnterCombat()
    {
        model.SetEquipmentType(equipment.GetEquipmentType());
        model.SetInCombat(true);
        equipment.EnterCombat();
    }

    public void ExitCombat()
    {
        model.SetInCombat(false);
        equipment.ExitCombat();
    }

    public void TriggerAttack()
    {
        model.TriggerAttack();
    }

    public void SetObjectLayer(Transform obj, int layer)
    {
        obj.gameObject.layer = layer;
        foreach (Transform child in obj)
            if (child.gameObject.layer != LayerMask.NameToLayer("Loot"))
                SetObjectLayer(child, layer);
    }

    public void RotateModel(Vector3 lookRotation, float turnSpeed)
    {
        model.RotateModel(Quaternion.LookRotation(lookRotation), turnSpeed);
    }

    public void RotateModelLookAt(Vector3 position)
    {
        model.transform.LookAt(new Vector3(position.x, model.transform.position.y, position.z));
    }

    /// <summary> Sets up the given model to be used as the CharacterModel. </summary>
    public void ChangeCharacterModel(CharacterModel newModel)
    {
        Quaternion rot = model.transform.rotation;
        Destroy(model.gameObject);

        model = Instantiate(newModel, transform.position, rot, transform);
        model.character = this;
        model.Setup();

        equipment.ReEquip();
    }

    public virtual void Kill()
    {
        Character attacker = stats.health.lastAttacker;
        attacker.stats.level.AddExperience(stats.level.killEXP);

        dead = true;
        model.SetDead();
        Destroy(gameObject, 5);

        //onDead.Invoke(this);
        onAnyDead.Invoke(this);
    }


    //public IEnumerable<Character> GetVisibleCharacters()
    //{
    //    return GetNearbyCharacters(stats.awarenessRadius, visibleLayers);
    //}

    //public virtual IEnumerable<Character> GetAttackableCharacters(Weapon weapon)
    //{
    //    if (!weapon) return new Character[0];

    //    return GetNearbyCharacters(weapon.damageRadius, attackLayers);
    //}

    //public virtual IEnumerable<Character> GetNearbyCharacters(float radius, LayerMask layers)
    //{
    //    Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, ~layers);
    //    return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch);
    //}

    public virtual IEnumerable<Character> GetAttackableCharacters(float radius)
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, attackLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch);
    }

    public virtual IEnumerable<Character> GetVisibleCharacters()
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, stats.awarenessRadius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch);
    }

    public virtual IEnumerable<Character> GetVisibleCharacters(float radius)
    {
        Collider[] collidersInRange = Physics.OverlapSphere(model.transform.position, radius, visibleLayers);
        return collidersInRange.Select(col => col.GetComponent<Character>()).Where(ch => ch);
    }

    //public void ChangePlayerModel(CharacterModel newPlayerModel)
    //{
    //    IEnumerator cm = ChangeModel(newPlayerModel);
    //    StartCoroutine(cm);
    //}

    ///// <summary> Sets up the given model GameObject to be used as the playerModel, with animation. </summary>
    //private IEnumerator ChangeModel(CharacterModel newPlayerModel)
    //{
    //    while (controller.State.IsCrouching)
    //        yield return new WaitForSeconds(.5f);

    //    Quaternion rot = model.transform.rotation;
    //    GameObject previousModel = model.gameObject;
    //    Destroy(previousModel);

    //    model = null;
    //    model = Instantiate(newPlayerModel, transform.position, rot, transform);
    //    model.character = this;

    //    PModel.SetupAnimationHelper();

    //    equipment.ReEquipWeapon(PModel.leftHand, PModel.rightHand);
    //    PModel.attackManager.equipment = equipment;
    //}
}
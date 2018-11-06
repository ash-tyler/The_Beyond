﻿using Beyond.States;
using UnityEngine;
using UnityEngine.AI;


[RequireComponent(typeof(NavMeshAgent))]
public class AIController : ControllerBase
{
    #region Public Variables
    public float attackWait = 2f;
    [Space]
    public Character target;
    [Space]
    public AIManager aiManager = new AIManager();

    [HideInInspector]
    public NavMeshAgent navMeshAgent;

    //[HideInInspector]
    //public HashSet<Character> enemiesInRadius;

    public float CurrentSpeed { get { return (State.IsWalking) ? walkSpeed : runSpeed; } }
    public float AwarenessRadius { get { return npc.stats.awarenessRadius; } }
    public Weapon CurrentWeapon { get { return npc.equipment.mainWeapon; } }
    public Vector3 ZeroHeightPosition { get { return new Vector3(npc.model.transform.position.x, 0, npc.model.transform.position.z); } }
    public Vector3 TargetZeroHeightPosition { get { return new Vector3(target.model.transform.position.x, 0, target.model.transform.position.z); } }
    public NPC npc { get { return character as NPC; } private set { character = value; } }
    #endregion


    #region Start & Update Functions
    public void Setup(NPC newNPC)
    {
        npc = newNPC;
        navMeshAgent = npc.GetComponent<NavMeshAgent>();

        State = new ActionState();
        State.SetIdle();

        //aiManager = GetComponent<AIManager>();
        aiManager.Setup(npc, this);
        target = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();
    }

    void Update ()
    {
        //CheckCharactersInRadius();
        aiManager.UpdateAI();


        //Sets various Animator variables to properly display the animation
        npc.model.HandleAnimator(State, navMeshAgent.velocity, IsNearGround);
    }
    #endregion

    //private void CheckCharactersInRadius()
    //{
    //    if (!npc.hostileToPlayer && !npc.hostileToNPC) return;

    //    HashSet<Collider> hits = new HashSet<Collider>(GetNearCharacters());
    //    foreach (Collider col in hits)
    //    {
    //        Character character = col.GetComponent<Character>();
    //        if (character)
    //            enemiesInRadius.Add(character);
    //    }
    //}

    //public Collider[] GetNearCharacters()
    //{
    //    Collider[] colliders = Physics.OverlapSphere(character.model.transform.position, character.stats.awarenessRadius, ~GetMask());
    //    return colliders.Where(x => x.GetComponent<Character>()).ToArray();
    //}

    //private LayerMask GetMask()
    //{
    //    if (npc.hostileToPlayer && npc.hostileToNPC)
    //        return LayerMask.NameToLayer("Player") | LayerMask.NameToLayer("NPC");
    //    if (npc.hostileToPlayer)
    //        return LayerMask.NameToLayer("Player");
    //    if (npc.hostileToNPC)
    //        return LayerMask.NameToLayer("NPC");

    //    return 0;
    //}
}
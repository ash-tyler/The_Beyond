using Beyond.States;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;


[RequireComponent(typeof(NavMeshAgent))]
public class AIController : ControllerBase
{
    #region Public Variables
    [Header("AI Settings")]
    public float attackWait = 2f;
    public AIManager aiManager = new AIManager();

    [HideInInspector]
    public NavMeshAgent navMeshAgent;
    [HideInInspector]
    public HashSet<Character> enemiesInRadius = new HashSet<Character>();

    public float CurrentSpeed { get { return (State.IsWalking) ? walkSpeed : runSpeed; } }
    public float AwarenessRadius { get { return Npc.stats.awarenessRadius; } }
    public Weapon CurrentWeapon { get { return Npc.equipment.mainWeapon; } }
    public Vector3 ZeroHeightPosition { get { return new Vector3(Npc.model.transform.position.x, 0, Npc.model.transform.position.z); } }
    //public Vector3 TargetZeroHeightPosition { get { return new Vector3(target.model.transform.position.x, 0, target.model.transform.position.z); } }

    public NPC Npc { get { return character as NPC; } private set { character = value; } }
    #endregion


    #region Start & Update Functions
    public void Setup(NPC newNPC)
    {
        Npc = newNPC;
        navMeshAgent = Npc.GetComponent<NavMeshAgent>();

        State = new ActionState();
        State.SetIdle();

        aiManager.Setup(Npc, this);
        //target = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();
    }

    void Update ()
    {
        enemiesInRadius = new HashSet<Character>(Npc.GetVisibleCharacters());
        //target = (enemiesInRadius.Count > 0) ? enemiesInRadius.First() : null;
        aiManager.UpdateAI();


        //Sets various Animator variables to properly display the animation
        Npc.model.HandleAnimator(State, navMeshAgent.velocity, IsNearGround);
    }
    #endregion


    //public IEnumerable<Character> GetNearbyEnemies()
    //{
    //    Collider[] collidersInRange = Physics.OverlapSphere(character.model.transform.position, character.stats.awarenessRadius, ~GetEnemyLayers());
    //    return collidersInRange.Select(col => col.GetComponent<Character>()).Where(charac => charac != null);
    //}

    //public LayerMask GetEnemyLayers()
    //{
    //    if (npc.hostileToPlayer && npc.hostileToNPC)
    //        return PlayerLayer | NPCLayer;
    //    if (npc.hostileToPlayer)
    //        return PlayerLayer;
    //    if (npc.hostileToNPC)
    //        return NPCLayer;

    //    return 0;
    //}
}
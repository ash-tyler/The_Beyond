using UnityEngine;


public class PlayerManager : MonoBehaviour
{
    public static PlayerManager instance = null;
    public TravelObject to;

    public Transform spawn;
    public GameObject cameraPrefab;
    [Space]
    [Space]
    public GameObject minotaur_F;
    public GameObject minotaur_M;
    [Space]
    public GameObject succubus;
    [Space]
    public GameObject centaur;

    [HideInInspector]
    public Player currentPlayer;
    [HideInInspector]
    public GameObject currentPlayerObject;


    public enum PlayerType { MINO_F = 0, MINO_M, SUCCUBUS, CENTAUR }

    private Attributes startAttributes;
    private LevelSystem startLevel;
    private HitpointsSystem startHealth;
    private HitpointsSystem startMana;
    private Equipment startEquipment;
    private Inventory startInventory;

    private bool respawning = false;

    private void Awake()
    {
        if (!instance)
            instance = this;
        else if (instance != this)
            Destroy(gameObject);

        DontDestroyOnLoad(gameObject);
    }

    private void Start()
    {
        //if (!currentPlayer)
        //    SetupPlayer(PlayerType.MINO_F);
    }

    public bool SetupPlayer(PlayerType pType)
    {
        if (!spawn) return false;


        if (!Camera.main)
            Instantiate(cameraPrefab);

        switch (pType)
        {
            case (PlayerType.MINO_F):
                currentPlayerObject = Instantiate(minotaur_F, spawn.position, Quaternion.identity);
                break;

            case (PlayerType.MINO_M):
                currentPlayerObject = Instantiate(minotaur_M, spawn.position, Quaternion.identity);
                break;

            case (PlayerType.SUCCUBUS):
                currentPlayerObject = Instantiate(succubus, spawn.position, Quaternion.identity);
                break;

            case (PlayerType.CENTAUR):
                currentPlayerObject = Instantiate(centaur, spawn.position, Quaternion.identity);
                break;
        }


        if (!currentPlayerObject) return false;
        currentPlayer = currentPlayerObject.GetComponent<Player>();

        if (!currentPlayer) return false;


        return true;
    }

    private void Update()
    {
        if (!respawning) return;

        if (to.fader.state == FadeImage.TransitionState.IDLE)
        {
            respawning = false;

            currentPlayer.stats.attributes = startAttributes;
            currentPlayer.stats.level = startLevel;
            currentPlayer.stats.health = startHealth;
            currentPlayer.stats.mana = startMana;

            currentPlayer.equipment = startEquipment;
            currentPlayer.inventory = startInventory;

            currentPlayer.freezeMovement = false;
            currentPlayer.SetNotDead();
        }
    }


    public void SavePlayerState(Stats stats, Equipment equipment, Inventory inventory)
    {
        startAttributes = stats.attributes;
        startLevel = stats.level;
        startHealth = stats.health;
        startMana = stats.mana;

        startEquipment = equipment;
        startInventory = inventory;
    }

    public void RespawnPlayer()
    {
        to.teleportTo = spawn;
        to.TriggerFade(currentPlayer.gameObject);
        respawning = true;
    }


    public static bool HasInstanceAndPlayer()
    {
        return instance && instance.currentPlayer;
    }
}
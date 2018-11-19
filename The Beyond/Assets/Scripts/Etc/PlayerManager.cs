using System.Collections;
using UnityEngine;
using UnityEngine.UI;


public class PlayerManager : MonoBehaviour
{
     public static PlayerManager instance = null;
            public Image fadePanel;
    [Space] public Transform spawn;
            public GameObject cameraPrefab;
    [Space]
    [Space] public GameObject minotaur_F;
            public GameObject minotaur_M;
    [Space] public GameObject succubus;
    [Space] public GameObject centaur;

    [HideInInspector] public Player currentPlayer;
    [HideInInspector] public GameObject currentPlayerObject;

    public enum PlayerType { MINO_F = 0, MINO_M, SUCCUBUS, CENTAUR }


    private PlayerType type;


    private void Awake()
    {
        if (!instance)
            instance = this;
        else if (instance != this)
            Destroy(gameObject);

        DontDestroyOnLoad(gameObject);
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

        type = pType;

        return true;
    }

    public void RespawnPlayer()
    {
        StartCoroutine(DoRespawn());
    }


    public static bool HasInstanceAndPlayer()
    {
        return instance && instance.currentPlayer;
    }


    IEnumerator DoRespawn(float fadeSpeed = 0.25f)
    {
        yield return new WaitForSeconds(3f);

        for (float i = 0; i <= 1; i += (fadeSpeed * Time.deltaTime))
        {
            fadePanel.color = new Color(fadePanel.color.r, fadePanel.color.g, fadePanel.color.b, i);
            yield return null;
        }


        ThirdPersonCam cam = currentPlayer.pCamera;
        Destroy(currentPlayer.gameObject);
        SetupPlayer(type);
        currentPlayer.Setup();
        cam.Setup(currentPlayer);


        for (float i = 1; i >= 0; i -= (fadeSpeed * Time.deltaTime))
        {
            fadePanel.color = new Color(fadePanel.color.r, fadePanel.color.g, fadePanel.color.b, i);
            yield return null;
        }
    }
}
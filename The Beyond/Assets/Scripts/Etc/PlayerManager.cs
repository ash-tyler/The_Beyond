using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : MonoBehaviour
{
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


    private void Start()
    {
        currentPlayerObject = GameObject.FindGameObjectWithTag("Player");

        if (currentPlayerObject)
            currentPlayer = currentPlayerObject.GetComponent<Player>();
        else
            currentPlayerObject = null;
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

    public void TeleportToSpawn()
    {
        currentPlayer.transform.position = spawn.position;
    }

    public void TeleportTo(Transform spawnTransform)
    {
        currentPlayer.transform.position = spawnTransform.position;
    }

    public void TeleportTo(Vector3 spawnPos)
    {
        currentPlayer.transform.position = spawnPos;
    }
}
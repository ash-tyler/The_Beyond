using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Compass : MonoBehaviour
{
    public Transform Player;
    public PlayerManager playerManager;


    private void Start()
    {
        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
            playerManager = pmObj.GetComponent<PlayerManager>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!playerManager || !playerManager.currentPlayer) return;

        transform.eulerAngles = -Vector3.forward * playerManager.currentPlayer.transform.eulerAngles.y;
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelDisplay : MonoBehaviour
{
    public Text textBox;
    public PlayerManager playerManager;


    private void Start()
    {
        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
            playerManager = pmObj.GetComponent<PlayerManager>();
    }

    private void Update()
    {
        if (!playerManager || !playerManager.currentPlayer) return;

        textBox.text = playerManager.currentPlayer.stats.level.GetLevelText();
    }
}

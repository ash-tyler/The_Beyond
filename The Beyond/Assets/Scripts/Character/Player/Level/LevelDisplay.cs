using UnityEngine;
using UnityEngine.UI;


public class LevelDisplay : MonoBehaviour
{
    public Text textBox;


    private void Update()
    {
        if (PlayerManager.HasInstanceAndPlayer())
            textBox.text = PlayerManager.instance.currentPlayer.stats.level.GetLevelText();
    }
}
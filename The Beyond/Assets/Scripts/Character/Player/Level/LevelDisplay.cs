using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelDisplay : MonoBehaviour
{
    public Text textBox;
    public Stats stats;

    private void Update()
    {
        textBox.text = stats.level.GetLevelText();
    }
}

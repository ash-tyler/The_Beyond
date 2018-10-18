using UnityEngine;
using UnityEngine.UI;

public class LevelBar : MonoBehaviour
{
    public Stats playerStats;

    // this is the image we'll grow and shrink as the character's health changes
    public Slider expBar;


    // Update is called once per frame
    void Update()
    {
        if (!playerStats)
            return;

        // scale the meter
        float pctEXP = playerStats.level.GetEXPPercent();
        expBar.value = pctEXP;
    }
}
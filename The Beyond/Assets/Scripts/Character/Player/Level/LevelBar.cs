using UnityEngine;
using UnityEngine.UI;

public class LevelBar : MonoBehaviour
{
    //This is the image we'll grow and shrink as the character's EXP changes
    public Slider expBar;       
    [Space]
    public float fillSpeed = 1f;


    void Update()
    {
        if (!PlayerManager.HasInstanceAndPlayer())
            return;

        float newPercent = PlayerManager.instance.currentPlayer.stats.level.GetEXPPercent();

        //Scale the meter
        if (expBar.value < newPercent)
        {
            float pctEXP = Mathf.Lerp(expBar.value, newPercent, fillSpeed * Time.deltaTime);
            expBar.value = pctEXP;
        }

        else if (expBar.value > newPercent)
            expBar.value = newPercent;
    }
}
using UnityEngine;
using UnityEngine.UI;

public class LevelBar : MonoBehaviour
{
    public PlayerManager playerManager;
    public Slider expBar;       // this is the image we'll grow and shrink as the character's health changes
    [Space]
    public float fillSpeed = 1f;


    private void Start()
    {
        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
            playerManager = pmObj.GetComponent<PlayerManager>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!playerManager || !playerManager.currentPlayer)
            return;

        float newPercent = playerManager.currentPlayer.stats.level.GetEXPPercent();

        // scale the meter
        if (expBar.value < newPercent)
        {
            float pctEXP = Mathf.Lerp(expBar.value, newPercent, fillSpeed * Time.deltaTime);
            expBar.value = pctEXP;
        }

        else if (expBar.value > newPercent)
            expBar.value = newPercent;
    }
}
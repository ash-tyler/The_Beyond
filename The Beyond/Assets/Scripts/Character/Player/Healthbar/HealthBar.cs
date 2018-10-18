using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Stats healthStat;

    // this is the image we'll grow and shrink as the character's health changes
    public Image healthBar;
    public Image manaBar;

    public Text nameText;

    public Vector3 screenPos;

    public bool playerBar = false;

	
    // Update is called once per frame
	void Update ()
    {
        if (healthStat == null)
            return;

        // set the character's name
        if (nameText)
            nameText.text = healthStat.characterName;

        if (!playerBar)
        {
         // position the health bar 2m above the character's root (between their feet)
         // improve this by having a height field in Health for large or small characters
            transform.position = healthStat.transform.position + Vector3.up * 2.2f;

            // billboard the UI element towards the camera every frame
            transform.forward = Camera.main.transform.forward;
        }

        // scale the meter
        if (healthBar)
        {
            float pctHealth = Mathf.Clamp01(healthStat.hp.Hitpoints / healthStat.hp.MaximumHitpoints);
            healthBar.fillAmount = pctHealth;
        }

        if (manaBar)
        {
            float pctMana = Mathf.Clamp01(healthStat.mana.Hitpoints / healthStat.mana.MaximumHitpoints);
            manaBar.fillAmount = pctMana;
        }

        // store the position in screen space of the health bar for sorting purposes
        screenPos = Camera.main.WorldToScreenPoint(healthStat.transform.position);
    }
}
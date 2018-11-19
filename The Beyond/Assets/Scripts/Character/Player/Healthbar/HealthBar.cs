using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Stats stats;

    //This is the image we'll grow and shrink as the character's health changes
    public Image healthBar;
    public Image manaBar;

    public Text nameText;
    public Vector3 screenPos;

    public bool playerBar = false;

    public HealthBarManager manager;


    void Start()
    {
        ShouldCullThis();
    }

    void Update()
    {
        if (ShouldCullThis())
            return;
        else if (!stats && PlayerManager.HasInstanceAndPlayer())
            stats = PlayerManager.instance.currentPlayer.stats;
            

        if (!stats) return;

        //Set the character's name
        if (nameText)
            nameText.text = stats.characterName;

        if (!playerBar)
        {
            //Position the health bar 2m above the character's root (between their feet)
            transform.position = stats.transform.position + Vector3.up * stats.attributes.healthBarHeight;

            // billboard the UI element towards the camera every frame
            transform.forward = Camera.main.transform.forward;


            // scale the meter
            if (healthBar)
                healthBar.fillAmount = stats.health.GetPointsAsPercent();

            if (manaBar)
                manaBar.fillAmount = stats.mana.GetPointsAsPercent();

            // store the position in screen space of the health bar for sorting purposes
            screenPos = Camera.main.WorldToScreenPoint(stats.transform.position);
        }

        else
        {
            //Scale health slider
            if (healthBar)
                healthBar.fillAmount = 1 - stats.health.GetPointsAsPercent();

            //Scale mana slider
            if (manaBar)
                manaBar.fillAmount = 1 - stats.mana.GetPointsAsPercent();
        }
    }

    public bool ShouldCullThis()
    {
        if (!stats && !playerBar)
        {
            if (manager)
                manager.RemoveHealthBar(this);
            else
                Destroy(gameObject);

            return true;
        }

        return false;
    }
}
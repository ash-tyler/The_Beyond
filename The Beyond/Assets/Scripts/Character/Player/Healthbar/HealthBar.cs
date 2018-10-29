using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Stats stats;

    // this is the image we'll grow and shrink as the character's health changes
    public Image healthBar;
    public Image manaBar;

    public Text nameText;

    public Vector3 screenPos;

    public bool playerBar = false;

    public HealthBarManager manager;


    private void Start()
    {
        if (!stats && !playerBar)
        {
            if (manager)
                manager.RemoveHealthBar(this);
            else
                Destroy(this.gameObject);
        }
    }

    // Update is called once per frame
    void Update ()
    {
        if (stats == null)
            return;


        // set the character's name
        if (nameText)
            nameText.text = stats.characterName;

        if (!playerBar)
        {
         // position the health bar 2m above the character's root (between their feet)
         // improve this by having a height field in Health for large or small characters
            transform.position = stats.transform.position + Vector3.up * 2.2f;

            // billboard the UI element towards the camera every frame
            transform.forward = Camera.main.transform.forward;
        }

        // scale the meter
        if (healthBar)
            healthBar.fillAmount = stats.health.GetPointsAsPercent();

        if (manaBar)
            manaBar.fillAmount = stats.mana.GetPointsAsPercent();

        // store the position in screen space of the health bar for sorting purposes
        screenPos = Camera.main.WorldToScreenPoint(stats.transform.position);
    }
}
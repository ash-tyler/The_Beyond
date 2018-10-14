using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour {

    public Health health;

    // this is the image we'll grow and shrink as the character's health changes
    public Image image;
    public Image manaBar;

    public Text nameText;

    public Vector3 screenPos;

    Rect initialRect;
	
	// Update is called once per frame
	void Update ()
    {
        if (health == null)
            return;

        // set the character's name
        if (nameText)
            nameText.text = health.name;

        // position the health bar 2m above the character's root (between their feet)
        // improve this by having a height field in Health for large or small characters
        transform.position = health.transform.position + Vector3.up * 2.2f;

        // billboard the UI element towards the camera every frame
        transform.forward = Camera.main.transform.forward;

        // scale the meter
        float pct = Mathf.Clamp01(health.health / health.maxHealth);
        image.fillAmount = pct;

        // store the position in screen space of the health bar for sorting purposes
        screenPos = Camera.main.WorldToScreenPoint(health.transform.position);
    }
}

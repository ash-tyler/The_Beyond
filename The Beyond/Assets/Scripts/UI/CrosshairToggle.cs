using UnityEngine;
using UnityEngine.UI;

public class CrosshairToggle : MonoBehaviour
{
    public Player player;
    public Image image;


	void Update ()
    {
        if (player.firstPerson)
            image.enabled = true;
        else
            image.enabled = false;
	}
}

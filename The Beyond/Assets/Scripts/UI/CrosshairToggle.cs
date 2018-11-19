using UnityEngine;
using UnityEngine.UI;

public class CrosshairToggle : MonoBehaviour
{
    public Image image;


    void Update ()
    {
        if (!PlayerManager.HasInstanceAndPlayer()) return;

        if (PlayerManager.instance.currentPlayer.firstPerson)
            image.enabled = true;
        else
            image.enabled = false;
	}
}

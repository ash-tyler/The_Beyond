using UnityEngine;
using UnityEngine.UI;

public class CrosshairToggle : MonoBehaviour
{
    public PlayerManager playerManager;
    public Image image;

    private void Start()
    {
        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
        {
            playerManager = pmObj.GetComponent<PlayerManager>();
                if (!playerManager || !playerManager.currentPlayer)
                    return;
        }
    }

    void Update ()
    {
        if (!playerManager) return;

        if (playerManager.currentPlayer.firstPerson)
            image.enabled = true;
        else
            image.enabled = false;
	}
}

using UnityEngine;
using UnityEngine.UI;


public class TravelObject : MonoBehaviour
{
    public Transform teleportTo;
    [Space]
    public bool useFade = false;
    public FadeImage fader = new FadeImage();


    private GameObject objectToTeleport;


    private void Start()
    {
        if (!fader.fadePanel)
            useFade = false;

        if (useFade)
            fader.Start();
    }

    private void Update()
    {
        if (!teleportTo || !useFade) return;


        fader.Update();

        if (fader.state == FadeImage.TransitionState.WAIT)
        {
            QuickTeleport();
            objectToTeleport = null;
            fader.TriggerFadeOut();
        }
    }


    public void TriggerFade(GameObject newObjectToTeleport)
    {
        if (!useFade)
            QuickTeleport(newObjectToTeleport);

        else if (newObjectToTeleport)
        {
            objectToTeleport = newObjectToTeleport;
            fader.TriggerFadeIn();
        }
    }


    public void QuickTeleport()
    {
        if (!objectToTeleport || !teleportTo) return;

        objectToTeleport.transform.position = teleportTo.position;
    }

    public void QuickTeleport(GameObject newObjectToTeleport)
    {
        if (!newObjectToTeleport || !teleportTo) return;

        newObjectToTeleport.transform.position = teleportTo.position;
    }

    public void QuickTeleport(Transform newTeleportTo)
    {
        if (!objectToTeleport || !newTeleportTo) return;

        objectToTeleport.transform.position = newTeleportTo.position;
    }

    public static void QuickTeleport(GameObject newObjectToTeleport, Transform newTeleportTo)
    {
        if (!newObjectToTeleport || !newTeleportTo) return;

        newObjectToTeleport.transform.position = newTeleportTo.position;
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TravelObjectSwitch : MonoBehaviour
{
    public TravelObject travelObject;
    public Transform teleportTo;
    public Transform teleportTravelObjectTo;

    public void SwitchTransform()
    {
        if (teleportTo)
            travelObject.teleportTo = teleportTo;
        if (teleportTravelObjectTo)
            travelObject.teleportTravelObjectTo = teleportTravelObjectTo;
    }
}

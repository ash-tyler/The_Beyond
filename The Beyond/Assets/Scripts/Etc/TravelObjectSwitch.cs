using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TravelObjectSwitch : MonoBehaviour
{
    public TravelObject travelObject;
    public Transform teleportTo;

    public void SwitchTransform()
    {
        travelObject.teleportTo = teleportTo;
    }
}

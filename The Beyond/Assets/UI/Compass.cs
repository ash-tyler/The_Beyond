using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Compass : MonoBehaviour {

    public Transform Player;

    // Update is called once per frame
    void Update()
    {
        transform.eulerAngles = -Vector3.forward * Player.eulerAngles.y;
    }

}

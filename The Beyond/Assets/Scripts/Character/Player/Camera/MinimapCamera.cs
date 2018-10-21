using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapCamera : MonoBehaviour
{
    public GameObject trackObject;

    private Vector3 trackVec;


	void Start ()
    {
        trackObject = GameObject.FindGameObjectWithTag("Player");
	}
	
	void Update ()
    {
        if (!trackObject) return;

        trackVec = trackObject.transform.position;
        trackVec.y += 150;
        transform.position = trackVec;
	}
}
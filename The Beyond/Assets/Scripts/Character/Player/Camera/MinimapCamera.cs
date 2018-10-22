using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapCamera : MonoBehaviour
{
    public GameObject trackObject;
    public float hoverHeight = 150f;
    private Vector3 trackVec;


	void Start ()
    {
        trackObject = GameObject.FindGameObjectWithTag("Player");
        transform.rotation.Set(90, transform.rotation.y, transform.rotation.z, transform.rotation.w);
	}
	
	void Update ()
    {
        if (!trackObject) return;

        trackVec = trackObject.transform.position;
        trackVec.y += hoverHeight;
        transform.position = trackVec;
	}
}
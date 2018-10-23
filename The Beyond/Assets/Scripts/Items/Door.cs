using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{

    public Vector3 endPosition;
    public Vector3 endEulerRotation;

    [Space]
    public float positionSpeed = 0.1f;
    public float rotationSpeed = 160f;


    private Vector3 startPosition;
    private Vector3 startEulerRotation;
    private bool useDoor = false;
    private bool isOpen = false;

    private static float range = 0.001f;


    void Start()
    {
        startPosition = transform.localPosition;
        startEulerRotation = transform.localEulerAngles;
	}
	
	void Update()
    {
        if (useDoor)
        {
            if (isOpen)
                MoveDoor(startPosition, startEulerRotation);

            else
                MoveDoor(endPosition, endEulerRotation);
        }
	}

    public void ActivateDoor()
    {
        if (useDoor)
            isOpen = !isOpen;
        else
            useDoor = true;
    }


    private void MoveDoor(Vector3 endPos, Vector3 endRot)
    {
        bool correctPos = false;
        bool correctRot = false;


        if (Vector3.Distance(transform.localPosition, endPos) > range)
            transform.localPosition = Vector3.MoveTowards(transform.localPosition, endPos, positionSpeed * Time.deltaTime);
        else
            correctPos = true;


        Quaternion euler = Quaternion.Euler(endRot);

        if (Quaternion.Angle(transform.localRotation, euler) > range)
            transform.localRotation = Quaternion.RotateTowards(transform.localRotation, euler, rotationSpeed * Time.deltaTime);
        else
            correctRot = true;


        if (!correctPos || !correctRot) return;

        useDoor = false;
        isOpen = !isOpen;
    }
}
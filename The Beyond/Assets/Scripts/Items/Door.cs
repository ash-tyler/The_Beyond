using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class Door : MonoBehaviour
{

    public Vector3 endPosition;
    public Vector3 endEulerRotation;
    [Space]
    public Vector3 endPositionOpposite;
    public Vector3 endEulerRotationOpposite;

    [Space]
    public float positionSpeed = 0.1f;
    public float rotationSpeed = 160f;


    private Vector3 startPosition;
    private Vector3 startEulerRotation;
    private bool useDoor = false;
    private bool isOpen = false;

    private bool doorTrigger = false;
    private bool openOpposite = false;

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
            {
                if (openOpposite)
                    MoveDoor(endPositionOpposite, endEulerRotationOpposite);
                else
                    MoveDoor(endPosition, endEulerRotation);
            }
        }

        else
            openOpposite = doorTrigger;
    }

    public void ActivateDoor()
    {
        if (useDoor)
            isOpen = !isOpen;
        else
            useDoor = true;
    }

    public void OpenOpposite(bool value)
    {
        if (doorTrigger != value)
            doorTrigger = value;
    }


    private void MoveDoor(Vector3 toPos, Vector3 toRot)
    {
        bool correctPos = false;
        bool correctRot = false;


        if (Vector3.Distance(transform.localPosition, toPos) > range)
            transform.localPosition = Vector3.MoveTowards(transform.localPosition, toPos, positionSpeed * Time.deltaTime);
        else
            correctPos = true;


        Quaternion euler = Quaternion.Euler(toRot);

        if (Quaternion.Angle(transform.localRotation, euler) > range)
            transform.localRotation = Quaternion.RotateTowards(transform.localRotation, euler, rotationSpeed * Time.deltaTime);
        else
            correctRot = true;


        if (!correctPos || !correctRot) return;

        useDoor = false;
        isOpen = !isOpen;
    }
}
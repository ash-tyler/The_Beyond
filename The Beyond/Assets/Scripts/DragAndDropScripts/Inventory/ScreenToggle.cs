using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScreenToggle : MonoBehaviour
{

    public GameObject screen;
    public KeyCode key;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(key))
            Toggle();
    }

    public void Toggle()
    {
        screen.SetActive(!screen.activeSelf);
    }
}

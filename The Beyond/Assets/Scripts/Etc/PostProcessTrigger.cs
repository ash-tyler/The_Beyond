using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PostProcessing;

public class PostProcessTrigger : MonoBehaviour {

    public PostProcessingProfile inside;
    public PostProcessingProfile outside;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            SetProfile(inside);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            SetProfile(outside);
        }
    }

    void SetProfile(PostProcessingProfile profile)
    {
        Camera.main.GetComponent<PostProcessingBehaviour>().profile = profile;
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class animationGIFScripte : MonoBehaviour {

    public Sprite[] animatedImages;
    public Image animateImageObj;
	// Use this for initialization
	void Start () {
		
	}

    // Update is called once per frame
    void Update() {

        animateImageObj .sprite = animatedImages [(int)(Time.time*10)%animatedImages.Length];
	}
}

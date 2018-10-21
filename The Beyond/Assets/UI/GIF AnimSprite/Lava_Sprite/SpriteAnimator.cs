using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SpriteAnimator : MonoBehaviour
{
    //public Sprite[] images;

    public Image imageObj;
    public float framerate = 0.1f;
    public bool wrapImage = false;
    [Space]
    public List<Sprite> sprites = new List<Sprite>();

   

    private int index = 0;
	
	void Start ()
    {
        imageObj.sprite = sprites[index];
        InvokeRepeating("NextFrame", framerate, framerate);
	}


    private void NextFrame()
    {
        if (index >= sprites.Count)
        {
            index = 0;
            if (wrapImage)
                sprites.Reverse();
        }

        imageObj.sprite = sprites[index++];
    }
}
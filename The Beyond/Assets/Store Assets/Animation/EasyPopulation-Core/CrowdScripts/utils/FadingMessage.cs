using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Text))]
public class FadingMessage : MonoBehaviour
{
    const float DURATION = 2.5f;
    Text gt;
	// Use this for initialization
	void Awake ()
    {
        gt = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time > DURATION)
        { Destroy(gameObject); }
        Color newColor = gt.material.color;
        float proportion = (Time.time / DURATION);
        newColor.a = Mathf.Lerp(1, 0, proportion);
        gt.material.color = newColor;
    }
}

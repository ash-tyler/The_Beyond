using UnityEngine;
using UnityEngine.UI;

public class TimeSlider : MonoBehaviour
{
    Slider slider;

	void Start ()
    {
        slider = GetComponent<Slider>();
	}
	
	void Update ()
    {
        Time.timeScale = slider.normalizedValue;
	}
}

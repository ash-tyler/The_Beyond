using UnityEngine;
using UnityEngine.UI;

public class ShowKeyHint : MonoBehaviour
{
    public static ShowKeyHint instance = null;

    public Text pressBox = null;
    public Text keyCodeBox = null;


    private void Awake()
    {
        if (!instance)
            instance = this;
        else if (instance != this)
            Destroy(gameObject);

        DontDestroyOnLoad(gameObject);
    }

    public void ActivateAndSet(string newKey)
    {
        if (keyCodeBox)
        {
            keyCodeBox.text = newKey;
            keyCodeBox.enabled = true;
        }
        if (pressBox)
            pressBox.enabled = true;
    }

    public void Hide()
    {
        if (keyCodeBox)
            keyCodeBox.enabled = false;
        if (pressBox)
            pressBox.enabled = false;
    }
}
using UnityEngine;
using UnityEngine.UI;

public class ShowKeyHint : MonoBehaviour
{
    public static ShowKeyHint instance = null;

    public Text pressBox;
    public Text keyCodeBox;


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
        keyCodeBox.text = newKey;

        keyCodeBox.enabled = true;
        pressBox.enabled = true;
    }

    public void Hide()
    {
        keyCodeBox.enabled = false;
        pressBox.enabled = false;
    }
}
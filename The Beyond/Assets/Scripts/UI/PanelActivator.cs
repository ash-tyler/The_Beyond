using UnityEngine;
using UnityEngine.UI;

public class PanelActivator : MonoBehaviour
{
    public GameObject panel;
    public Text buttonKey;
    public bool pauseWhileActive = false;
    public bool startActive = false;
    public bool dontChangeOnToggle = false;
    [HideInInspector]
    public bool panelOn = false;
    [HideInInspector]
    public Toolbar toolbar;


    private void Start()
    {
        panel.SetActive(startActive);
        panelOn = startActive;
    }

    public void TogglePanel()
    {
        panelOn = !panelOn;

        if (panelOn)
        {
            if (pauseWhileActive)
                Time.timeScale = 0;

            if (toolbar && !dontChangeOnToggle)
                toolbar.SetOthersInactive(this);

            SetPanel(true);
        }

        else
        {
            if (pauseWhileActive)
                Time.timeScale = 1;

            SetPanel(false);
        }
    }

    public void SetPanel(bool value)
    {
        panel.SetActive(value);
        panelOn = panel.activeSelf;


        if (pauseWhileActive)
        {
            if (value)
                Time.timeScale = 0;
            else
                Time.timeScale = 1;
        }
    }
}
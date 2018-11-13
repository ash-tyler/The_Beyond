using UnityEngine;

public class PanelActivator : MonoBehaviour
{
    public GameObject panel;
    public bool pauseWhileActive = false;
    public bool startActive = false;
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

            if (toolbar)
                toolbar.SetOthersInactive(this);

            panel.SetActive(true);
        }

        else
        {
            if (pauseWhileActive)
                Time.timeScale = 1;

            panel.SetActive(false);
        }
    }

    public void SetPanel(bool value)
    {
        panel.SetActive(value);


        if (pauseWhileActive)
        {
            if (value)
                Time.timeScale = 0;
            else
                Time.timeScale = 1;
        }
    }
}
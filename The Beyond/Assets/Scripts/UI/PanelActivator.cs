using UnityEngine;

public class PanelActivator : MonoBehaviour
{
    public GameObject panel;
    public bool pauseWhileActive = false;
    [HideInInspector]
    public bool panelOn = false;
    [HideInInspector]
    public Toolbar toolbar;

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
    }
}
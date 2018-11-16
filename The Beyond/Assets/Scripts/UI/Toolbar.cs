using System.Collections.Generic;
using UnityEngine;

public class Toolbar : MonoBehaviour
{
    public List<PanelKey> panels = new List<PanelKey>();


    private void Start()
    {
        foreach (PanelKey pk in panels)
        {
            pk.panel.toolbar = this;
            pk.panel.SetPanel(pk.panel.startActive ? true : false);
                pk.panel.buttonKey.text = pk.keyCode.ToString().ToUpper();
            if (pk.panel.buttonKey.text.Length > 3)
                pk.panel.buttonKey.text = pk.panel.buttonKey.text.Remove(3);
        }
    }

    private void Update()
    {
        foreach (PanelKey pk in panels)
        {
            if (Input.GetKeyDown(pk.keyCode))
            {
                pk.panel.TogglePanel();
                return;
            }
        }
    }


    public void SetOthersInactive(PanelActivator panelToCheck)
    {
        foreach (PanelKey pk in panels)
        {
            if (pk.panel != panelToCheck && !pk.panel.dontChangeOnToggle)
                pk.panel.SetPanel(false);
        }
    }
}
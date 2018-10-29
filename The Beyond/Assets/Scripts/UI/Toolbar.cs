using System.Collections.Generic;
using UnityEngine;

public class Toolbar : MonoBehaviour
{
    public List<PanelActivator> panels = new List<PanelActivator>();

    private void Start()
    {
        foreach (PanelActivator pa in panels)
        {
            pa.toolbar = this;
            pa.SetPanel(false);
        }
    }

    public void SetOthersInactive(PanelActivator panelToCheck)
    {
        foreach (PanelActivator pa in panels)
        {
            if (pa != panelToCheck)
                pa.SetPanel(false);
        }
    }
}
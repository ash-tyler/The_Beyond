using System;
using UnityEngine;

[Serializable]
public class ClampRange
{
    #region Public Variables
    public float min = 0;
    public float max = 1;
    public float center { get { return Mathf.Lerp(min, max, 0.5f); } }
    #endregion
}
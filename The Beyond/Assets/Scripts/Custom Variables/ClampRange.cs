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


    #region Clamp Functions
    public float GetClamp(float floatToClamp)
    {
        return Mathf.Clamp(floatToClamp, min, max);
    }

    public float GetNegativeClamp(float floatToClamp)
    {
        return Mathf.Clamp(floatToClamp, -max, -min);
    }

    public float GetNegativeClampMaxOverride(float floatToClamp, float maxOverride)
    {
        return Mathf.Clamp(floatToClamp, -maxOverride, -min);
    }

    public float GetNegativeClampMinOverride(float floatToClamp, float minOverride)
    {
        return Mathf.Clamp(floatToClamp, -max, -minOverride);
    }

    public float GetEulerClamp(float angleToClamp)
    {
        if (angleToClamp > 180f)
            angleToClamp = -(360 - angleToClamp);

        return GetClamp(angleToClamp);
    }

    public Quaternion GetEulerXClamp(float x, float y, float z)
    {
        return Quaternion.Euler(GetEulerClamp(x), y, z);
    }

    public Quaternion GetEulerYClamp(float x, float y, float z)
    {
        return Quaternion.Euler(x, GetEulerClamp(y), z);
    }

    public Quaternion GetEulerZClamp(float x, float y, float z)
    {
        return Quaternion.Euler(x, y, GetEulerClamp(z));
    }


    public void Clamp(ref float floatToClamp)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, min, max);
    }

    public void NegativeClamp(ref float floatToClamp)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, -max, -min);
    }

    public void NegativeClamp(float minOverride, ref float floatToClamp)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, -max, -minOverride);
    }

    public void NegativeClamp(ref float floatToClamp, float maxOverride)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, -maxOverride, -min);
    }

    public void Clamp(float minOverride, ref float floatToClamp)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, minOverride, max);
    }

    public void Clamp(ref float floatToClamp, float maxOverride)
    {
        floatToClamp = Mathf.Clamp(floatToClamp, min, maxOverride);
    }
    #endregion
}
using UnityEngine;

[System.Serializable]
public class HitpointsSystem
{
    public int _hitpoints;
    public int maximumHitpoints;

	public void Damage(int damage)
    {
        Debug.Log("Ouch! We took " + damage + " damage!");
        _hitpoints = Mathf.Max(_hitpoints - damage, 0);
    }

    public void Restore(int restoration)
    {
        _hitpoints = Mathf.Min(_hitpoints + restoration, maximumHitpoints);
    }

    public void SetToMaximum()
    {
        _hitpoints = maximumHitpoints;
    }
}
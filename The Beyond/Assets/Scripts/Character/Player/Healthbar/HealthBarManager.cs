using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// This demonstrates making health bars above character's heads.
// We have a Canvas set to World Space which we place this component on
// Each Character has a health script, and we call AddHealthBar on this (via a Singleton instance)
// This clones a prefab and attaches it to that character's health, so the healthbar follows the character around the world.
// HealthBars like all UI components are rendered in sibling order, so we sort them in our Update every frame.

// The healthbar prefab provided is a simple black rectangle with a smaller red rectangle isnide which changes size, as the meter.
public class HealthBarManager : MonoBehaviour
{
    public GameObject prefab;
    public static HealthBarManager instance;

    List<HealthBar> bars = new List<HealthBar>();


	// Use this for initialization
	void Awake ()
    {
        instance = this;	
	}

    private void Update()
    {
        // sort the health bars in order of camera distance
        bars.Sort(delegate (HealthBar a, HealthBar b) { return a.screenPos.z.CompareTo(b.screenPos.z); });

        // set their sibling order to render the back ones first
        foreach (HealthBar hb in bars)
            hb.transform.SetAsFirstSibling();
    }

    public void AddHealthBar(Stats stat)
    {
        // make a copy of our helath bar prefab and attach it to the character
        GameObject go = Instantiate(prefab);
        go.transform.SetParent(transform);
        HealthBar hb = go.GetComponent<HealthBar>();
        hb.stats = stat;
        hb.manager = this;

        // add to our global list for sorting. 
        // For a dynamic game, you'll need to be able to remove from this list too when a character dies or disappears
        bars.Add(hb);
    }

    public void RemoveHealthBar(HealthBar bar)
    {
        bars.Remove(bar);
        Destroy(bar);
    }

    public void RemoveHealthBar(Stats stats)
    {
        HealthBar bar = bars.Find(b => b.stats = stats);
        if (!bar) return;

        bars.Remove(bar);
        Destroy(bar);
    }
}

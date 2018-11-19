using UnityEngine;
using System.Collections;

public class TorchLight : MonoBehaviour
{
	public Light torchLight;
	public ParticleSystem mainFlame;
	public ParticleSystem baseFlame;
	public ParticleSystem spark;
	public ParticleSystem smoke;
	public float MaxLightIntensity;
	public float IntensityLight;
	

	void Start ()
    {
        if (torchLight)
            torchLight.intensity = IntensityLight;

        if (mainFlame)
            SetEmissionOverTime(mainFlame, 20f);

        if (baseFlame)
            SetEmissionOverTime(mainFlame, 15f);

        if (spark)
            SetEmissionOverTime(mainFlame, 7f);

        if (smoke)
            SetEmissionOverTime(mainFlame, 12f);
	}
	

	void Update ()
    {
        if (IntensityLight < 0) IntensityLight = 0;
        if (IntensityLight > MaxLightIntensity) IntensityLight = MaxLightIntensity;


        if (torchLight)
        {
            torchLight.intensity = IntensityLight / 2f + Mathf.Lerp(IntensityLight - 0.1f, IntensityLight + 0.1f, Mathf.Cos(Time.time * 30));
            torchLight.color = new Color(Mathf.Min(IntensityLight / 1.5f, 1f), Mathf.Min(IntensityLight / 2f, 1f), 0f);
        }

        if (mainFlame)
            SetEmissionOverTime(mainFlame, 20f);

        if (baseFlame)
            SetEmissionOverTime(mainFlame, 15f);

        if (spark)
            SetEmissionOverTime(mainFlame, 7f);

        if (smoke)
            SetEmissionOverTime(mainFlame, 12f);
    }


    private void SetEmissionOverTime(ParticleSystem ps, float value)
    {
        var emission = mainFlame.emission;
        emission.rateOverTime = IntensityLight * value;
    }
}
using UnityEngine;
using UnityEngine.UI;


[System.Serializable]
public class FadeImage
{
    public Image fadePanel;
    [Space]
    public float fadeStepIn = 0.8f;
    public float fadeStepOut = 0.5f;
    [HideInInspector]
    public TransitionState state = TransitionState.IDLE;

    public enum TransitionState { IDLE = 0, FADE_IN, WAIT, FADE_OUT }


    private static float maxAlpha = 1.4f;
    private static float minAlpha = 0f;


    public void Start()
    {
        if (fadePanel)
            SetFadePanelAplha(minAlpha);
    }

    public void Update()
    {
        if (!fadePanel || state == TransitionState.IDLE || state == TransitionState.WAIT) return;


        switch (state)
        {
            case (TransitionState.FADE_IN):
                SetFadePanelAplha(Mathf.MoveTowards(fadePanel.color.a, maxAlpha, fadeStepIn * Time.deltaTime));
                if (fadePanel.color.a >= maxAlpha)
                    state = TransitionState.WAIT;
                break;


            case (TransitionState.FADE_OUT):
                SetFadePanelAplha(Mathf.MoveTowards(fadePanel.color.a, minAlpha, fadeStepOut * Time.deltaTime));
                if (fadePanel.color.a <= minAlpha)
                {
                    state = TransitionState.IDLE;
                    SetFadePanelAplha(minAlpha);
                }
                break;


            default:
                break;
        }
    }


    public void TriggerFadeIn()
    {
        if (fadePanel && state == TransitionState.IDLE)
            state = TransitionState.FADE_IN;
    }

    public void TriggerFadeOut()
    {
        if (fadePanel && state == TransitionState.WAIT)
            state = TransitionState.FADE_OUT;
    }

    public void SetFadePanelAplha(float newAlphaValue)
    {
        fadePanel.color = new Color(fadePanel.color.r, fadePanel.color.g, fadePanel.color.b, newAlphaValue);
    }
}
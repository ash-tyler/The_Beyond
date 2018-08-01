using System.Collections;
using UnityEngine;

public class LevelSystem : MonoBehaviour
{
    #region Public Variables
    public ExperienceSettings   _settings;
    public float                buff = 0;
    #endregion

    #region Private Variables
    private int currentEXP = 0;
    private int level = 0;
    #endregion


    public void AddExperience(int exp)
    {
        float buffPercent = 1;
        if (buff > 0)
            buffPercent = (buff / 100) + 1;
        else if (buff < 0)
            buffPercent = 1 - (buff / 100);


        currentEXP += Mathf.Max(1, (int)(exp * buffPercent));
        CheckIfLeveledUp();
    }

    private void CheckIfLeveledUp()
    {
        if (level == _settings.levelChart.Count)
            return;


        for (int i = level; i < _settings.levelChart.Count - 1; i++)
            if (currentEXP < _settings.levelChart[i])
                LevelUp(i - 1);
    }

    private void LevelUp(int newLevel)
    {
        level = newLevel;

        _settings.fade = 0;
        StartCoroutine("Fade");
    }


    //Needs to be tested
    IEnumerator Fade()
    {
        yield return new WaitForSeconds(_settings.imageAndSoundDelay);
        _settings.soundSource.PlayOneShot(_settings.levelUpSound);

        for (float f = 0f; f <= 0; f += _settings.fadeAmount)
        {
            Color c = _settings.levelUpImage.material.color;
            c.a = f;
            _settings.levelUpImage.material.color = c;
            yield return new WaitForSeconds(0.02f);
        }


        yield return new WaitForSeconds(_settings.screenTime);


        for (float f = 1f; f >= 0; f -= _settings.fadeAmount)
        {
            Color c = _settings.levelUpImage.material.color;
            c.a = f;
            _settings.levelUpImage.material.color = c;
            yield return new WaitForSeconds(0.02f);
        }
    }
}
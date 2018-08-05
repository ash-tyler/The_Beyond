using System.Collections;
using UnityEngine;

[System.Serializable]
public class LevelSystem
{
    #region Public Variables
    public ExperienceSettings   _settings;
    public float                buff = 0;
    #endregion

    #region Private Variables
    private int currentEXP = 0;
    private int level = 0;
    #endregion

    public void SetNewLevel(int newLevel)
    {
        if (!_settings) return;

        currentEXP = _settings.GetExperienceByLevel(newLevel);
        level = newLevel;
    }

    public bool AddExperience(int exp, ref bool hasLeveledUp)
    {
        if (!_settings || level == _settings.levelChart.Count)
            return false;

        currentEXP += Mathf.Max(1, (int)(exp * GetEXPMultiplier()));

        int newLevel = _settings.GetLevelByExperience(currentEXP);
        if (newLevel > level)
        {
            level = newLevel;
            return true;
        }

        return false;
    }

    private float GetEXPMultiplier()
    {
        if (buff == 0)
            return 1;

        else if (buff > 0)
           return (buff / 100) + 1;

        else
           return 1 - (buff / 100);
    }

    //Needs to be tested
    IEnumerator PlayLevelUpNotification()
    {
        if (_settings && _settings.fadeAmount > 0)
        {
            yield return new WaitForSeconds(_settings.imageAndSoundDelay);

            if (_settings.levelUpSound)
                _settings.soundSource.PlayOneShot(_settings.levelUpSound);

            if (_settings.levelUpImage)
            {
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
    }
}
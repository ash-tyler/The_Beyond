using NaughtyAttributes;
using System.Collections;
using UnityEngine;

[System.Serializable]
public class LevelSystem
{
    #region Public Variables
    [Header("Level Settings")]
                    public ExperienceSettings   _settings;
    [MinValue(0)]   public float  buff = 0;
    [Space]
    [MinValue(0)]   public int    killEXP = 0;
    #endregion

    #region Private Variables
    [SerializeField]
    [MinValue(1), MaxValue(100)]    private int level = 1;
    [MinValue(0)]                   private int currentEXP = 0;
                                    private Stats stats;
    #endregion


    public void Setup(Stats newStats)
    {
        SetNewLevel(level);
        stats = newStats;
    }

    public void Setup(int newLevel, int newBuff)
    {
        SetNewLevel(newLevel);
        buff = newBuff;
    }

    public int GetLevel()
    {
        return level;
    }

    public string GetLevelText()
    {
        return level.ToString();
    }

    public void SetNewLevel(int newLevel)
    {
        if (!_settings) return;

        currentEXP = _settings.GetExperienceByLevel(newLevel);
        level = newLevel;
    }

    public bool AddExperience(int exp)
    {
        if (!_settings || level == _settings.levelChart.Count)
            return false;

        currentEXP += Mathf.Max(0, (int)(exp * GetEXPMultiplier()));

        int newLevel = _settings.GetLevelByExperience(currentEXP);
        if (newLevel > level)
        {
            level = newLevel;
            stats.health.points = stats.health.maximumPoints;
            stats.mana.points = stats.mana.maximumPoints;
            stats.character.model.soundManager.PlayLevelUp();
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

    public float GetEXPPercent()
    {
        return (float)(currentEXP - _settings.GetExperienceByLevel(level)) / (float)(_settings.GetExperienceByLevel(level + 1) - _settings.GetExperienceByLevel(level));
    }
}
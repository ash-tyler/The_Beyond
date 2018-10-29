using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
[CreateAssetMenu(fileName = "EXP Settings", menuName = "Settings/EXP System", order = 0)]
public class ExperienceSettings : ScriptableObject
{
    #region Public Variables
    [Tooltip("A customizable chart detailing the total experience needed to reach the given level")]
    public List<int>    levelChart;
    public int          lastLevelEXP { get { return levelChart[levelChart.Count - 1]; } }

    [Space()]
    public AudioSource  soundSource;
    public AudioClip    levelUpSound;
    public Image        levelUpImage;

    [Space()]
    public float        imageAndSoundDelay;
    public float        fadeAmount = 0.1f;
    public float        screenTime = 3f;
    #endregion


    public List<int> IncreaseRequiredEXP(int percentIncrease)
    {
        List<int> newChart = new List<int>();

        for (int i = 0; i < levelChart.Count; i++)
        {
            int percent = (percentIncrease / 100) + 1;
            newChart.Add(levelChart[i] * percent);
        }

        return newChart;
    }

    public List<int> DecreaseRequiredEXP(int percentDecrease)
    {
        List<int> newChart = new List<int>();

        for (int i = 0; i < levelChart.Count; i++)
        {
            int percent = Mathf.Max(1 - (percentDecrease / 100), 0);
            newChart.Add(levelChart[i] * percent);
        }

        return newChart;
    }

    public int GetLevelByExperience(int experience)
    {
        return (levelChart.FindLastIndex(exp => experience >= exp) + 1);
    }

    public int GetExperienceByLevel(int level)
    {
        if (level == 0)
            return 0;
        if (level >= levelChart.Count)
            return lastLevelEXP;

        return levelChart[level - 1];
    }
}
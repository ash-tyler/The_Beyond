using System;
using System.Collections.Generic;
using UnityEngine;


public class SoundManager : MonoBehaviour
{
    [System.Serializable]
    public class AudioList
    {
        public List<AudioClip> clips = new List<AudioClip>();
        [HideInInspector] public int index = 0;

        public AudioClip GetNext()
        {
            if (index == clips.Count)
                index = 0;

            return clips[index++];
        }

        public AudioClip GetRandom()
        {
            return clips[(int)UnityEngine.Random.Range(0, clips.Count - 1)];
        }
    }

    public AudioClip levelUp;
    [Space]
    public AudioList idle;
    public AudioList effort;
    public AudioList pain;
    public AudioList death;
    public AudioList struck;
    public AudioList combat;
    public AudioList footsteps;


    private AudioSource audioSource = null;


	void Start ()
    {
		if (!audioSource)
            audioSource = GetComponent<AudioSource>();
	}
	
	public void PlayIdle()
    {
        PlayFromList(idle);
    }

    public void PlayEffort()
    {
        PlayFromList(effort);
    }

    public void PlayPain()
    {
        PlayRandomFromList(pain);
    }

    public void PlayStep()
    {
        PlayFromList(footsteps);
    }

    public void PlayStruck()
    {
        PlayRandomFromList(struck);
    }

    public void PlayCombat()
    {
        PlayFromList(combat);
    }

    public void PlayDeath()
    {
        PlayRandomFromList(death);
    }

    public void PlayLevelUp()
    {
        if (!audioSource || !levelUp) return;

        audioSource.PlayOneShot(levelUp);
    }


    public void PlayFromList(AudioList list)
    {
        if (!audioSource || list.clips.Count == 0) return;

        audioSource.PlayOneShot(list.GetNext());
    }

    public void PlayRandomFromList(AudioList list)
    {
        if (!audioSource || list.clips.Count == 0) return;

        audioSource.PlayOneShot(list.GetRandom());
    }

    public void Play(AudioList list)
    {
        if (!audioSource || list.clips.Count == 0) return;

        audioSource.clip = list.GetNext();
        audioSource.Play();
    }

    public void PlayRandom(AudioList list)
    {
        if (!audioSource || list.clips.Count == 0) return;

        audioSource.clip = list.GetRandom();
        audioSource.Play();
    }

    public void Stop()
    {
        audioSource.Stop();
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ButtonLoadScene : MonoBehaviour {

    public string _sceneName = string.Empty;
    public void OnButtonPressed()
    {
        SceneManager.LoadScene(_sceneName);
    }
}
		
	
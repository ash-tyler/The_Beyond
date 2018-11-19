using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class ButtonLoadScene : MonoBehaviour
{
    public MenuSwitch switcher;
    public string menuScene;
    public List<string> gameScenes = new List<string>();


    public void LoadGameScenes()
    {
        foreach(string scene in gameScenes)
            SceneManager.LoadScene(scene, LoadSceneMode.Additive);

        if (PlayerManager.instance)
            PlayerManager.instance.SetupPlayer((PlayerManager.PlayerType)switcher.index);

        SceneManager.UnloadSceneAsync(menuScene);
    }

    public void LoadMenu()
    {
        SceneManager.LoadScene(menuScene, LoadSceneMode.Single);
    }
}
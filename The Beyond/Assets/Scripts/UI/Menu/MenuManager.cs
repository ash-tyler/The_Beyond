using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;


public class MenuManager : MonoBehaviour
{
                        public string scene = "MainGame";
    [Space]             public GameObject UI;
                        public Image fadePanel;
    [Space]             public AudioSource audioSource;
                        public GameObject menuCam;

    [HideInInspector]   public int index = 0;
    [Space]             public float moveSpeed = 4f;
                        public float rotationSpeed = 6f;

    [Space]             public Transform startAt;
                        public Transform[] transforms = new Transform[4];
    [Space]             public GameObject main;
                        public GameObject characterSelect;


    private Animator[] animators = new Animator[4];
    private Transform target = null;
    private bool startedCoroutine = false;


    private void Awake()
    {
        target = startAt;

        for(int i = 0; i < transforms.Length; i++)
            animators[i] = transforms[i].GetComponent<Animator>();
    }

    private void Update()
    {
        menuCam.transform.position = Vector3.Lerp(menuCam.transform.position, target.position, moveSpeed * Time.deltaTime);
        menuCam.transform.rotation = Quaternion.RotateTowards(menuCam.transform.rotation, target.rotation, rotationSpeed * Time.deltaTime);
    }


    public void Left()
    {
        index = (index == 0) ? transforms.Length - 1 : index - 1;
        target = transforms[index];

        SetSelected();
    }

    public void Right()
    {
        index = (index == transforms.Length - 1) ? 0 : index + 1;
        target = transforms[index];

        SetSelected();
    }

    public void SetSelected()
    {
        for(int i = 0; i < animators.Length; i++)
        {
            if (i == index)
            {
                animators[i].SetBool("Selected", true);
                animators[i].SetTrigger("Pose");
            }
            else
                animators[i].SetBool("Selected", false);
        }
    }


    public void StartLoadGame()
    {
        if (!startedCoroutine)
            StartCoroutine(LoadGame());
    }


    public void SetMainActive()
    {
        main.SetActive(true);
        characterSelect.SetActive(false);
        target = startAt;
    }

    public void SetCharacterSelectActive()
    {
        main.SetActive(false);
        characterSelect.SetActive(true);
        target = transforms[0];
    }


    IEnumerator LoadGame(float fadeSpeed = 0.25f)
    {
        startedCoroutine = true;
        UI.SetActive(false);


        for (float i = 0; i <= 1.2f; i += (fadeSpeed * Time.deltaTime))
        {
            fadePanel.color = new Color(fadePanel.color.r, fadePanel.color.g, fadePanel.color.b, i);
            audioSource.volume = 1 - i;
            yield return null;
        }

        
        Scene currentScene = SceneManager.GetActiveScene();
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
        while (!asyncLoad.isDone)
            yield return null;
        SceneManager.SetActiveScene(SceneManager.GetSceneByName(scene));
        if (PlayerManager.instance)
            PlayerManager.instance.SetupPlayer((PlayerManager.PlayerType)index);


        for (float i = 1.2f; i >= 0; i -= (fadeSpeed * Time.deltaTime))
        {
            fadePanel.color = new Color(fadePanel.color.r, fadePanel.color.g, fadePanel.color.b, i);
            yield return null;
        }

        yield return new WaitForSeconds(1f);

        SceneManager.UnloadSceneAsync(currentScene);
    }
}
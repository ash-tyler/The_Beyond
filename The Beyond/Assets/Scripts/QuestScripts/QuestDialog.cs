using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// quest dialog for displaying quest text via the Show function
public class QuestDialog : MonoBehaviour {

    public static QuestDialog inst;
    public Text text;

	// Use this for initialization
	void Start () {
        inst = this;
        gameObject.SetActive(false);
    }
	
	// Update is called once per frame
	public void Show (string msg) {
        gameObject.SetActive(true);
        text.text = msg;
	}

    public void OnOK()
    {
        gameObject.SetActive(false);
        Quest.onQuestUpdate.Invoke();
    }
}

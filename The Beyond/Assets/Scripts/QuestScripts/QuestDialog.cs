using UnityEngine;
using UnityEngine.UI;


//Quest dialog for displaying quest text via the Show function
public class QuestDialog : MonoBehaviour
{
    public static QuestDialog inst;
    public Text text;


	void Start ()
    {
        inst = this;
        gameObject.SetActive(false);
    }
	
	public void Show (string msg)
    {
        gameObject.SetActive(true);
        text.text = msg;
	}

    public void OnOK()
    {
        gameObject.SetActive(false);
        Quest.onQuestUpdate.Invoke();
    }
}
using UnityEngine;


public class MenuSelector : MonoBehaviour
{
    public GameObject main;
    public GameObject characterSelect;
    public MenuSwitch ms;


	public void SetMainActive()
    {
        main.SetActive(true);
        characterSelect.SetActive(false);
        ms.SetMenuPosition();
    }

    public void SetCharacterSelectActive()
    {
        main.SetActive(false);
        characterSelect.SetActive(true);
        ms.SetFirstCharacter();
    }
}
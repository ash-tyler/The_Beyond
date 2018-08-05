using UnityEngine;

public class TestSwitch : MonoBehaviour
{
    public GameObject player;
    public GameObject playerModelOne;
    public GameObject playerModelTwo;

    private ThirdPersonMovement tpm;
    private bool useModelOne = true;

    private void Start()
    {
        if (player)
            tpm = player.GetComponent<ThirdPersonMovement>();
    }

    private void Update()
    {
        if (!tpm)
            return;

        if (Input.GetKeyDown(KeyCode.P))
        {
            if (useModelOne)
                SwitchModel(playerModelOne);
            else
                SwitchModel(playerModelTwo);
        }
    }

    private void SwitchModel(GameObject model)
    {
        tpm.ChangeModel(model);
        useModelOne = !useModelOne;
    }
}
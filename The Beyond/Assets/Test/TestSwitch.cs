using UnityEngine;

public class TestSwitch : MonoBehaviour
{
    public GameObject player;
    public GameObject switchToModel;

    private ThirdPersonMovement tpm;

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
            tpm.ChangeModel(switchToModel);
    }
}
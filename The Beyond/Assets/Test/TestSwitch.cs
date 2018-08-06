using UnityEngine;

public class TestSwitch : MonoBehaviour
{
    public PlayerSource  player;
    public Model                playerModelOne;
    public Model                playerModelTwo;

    private bool useModelOne = true;

    private void Update()
    {
        if (!player)
            return;

        if (Input.GetKeyDown(KeyCode.P))
        {
            if (useModelOne)
                SwitchModel(playerModelOne);
            else
                SwitchModel(playerModelTwo);
        }
    }

    private void SwitchModel(Model model)
    {
        player.ChangeModel(model);
        useModelOne = !useModelOne;
    }
}
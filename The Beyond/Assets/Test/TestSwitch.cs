using UnityEngine;

public class TestSwitch : MonoBehaviour
{
    public Player           player;
    public PlayerModel      playerModelOne;
    public PlayerModel      playerModelTwo;

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

    private void SwitchModel(PlayerModel model)
    {
        player.ChangeCharacterModel(model);
        useModelOne = !useModelOne;
    }
}
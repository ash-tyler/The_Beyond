using UnityEngine;


public class Compass : MonoBehaviour
{
    void Update()
    {
        if (PlayerManager.HasInstanceAndPlayer())
            transform.eulerAngles = -Vector3.forward * PlayerManager.instance.currentPlayer.transform.eulerAngles.y;
    }
}
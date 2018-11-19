using UnityEngine;


public class MinimapCamera : MonoBehaviour
{
    public float hoverHeight = 150f;


	void Start()
    {
        transform.rotation.Set(90, transform.rotation.y, transform.rotation.z, transform.rotation.w);
	}
	
	void Update ()
    {
        if (PlayerManager.HasInstanceAndPlayer())
            transform.position = PlayerManager.instance.currentPlayer.transform.position + (Vector3.up * hoverHeight);
	}
}
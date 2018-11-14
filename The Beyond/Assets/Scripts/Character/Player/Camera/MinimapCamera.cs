using UnityEngine;


public class MinimapCamera : MonoBehaviour
{
    public GameObject trackObject;
    public float hoverHeight = 150f;
    private Vector3 trackVec;


	void Start()
    {
        transform.rotation.Set(90, transform.rotation.y, transform.rotation.z, transform.rotation.w);

        GameObject pmObj = GameObject.FindGameObjectWithTag("PlayerManager");

        if (pmObj)
        {
            PlayerManager playerManager = pmObj.GetComponent<PlayerManager>();
            if (!playerManager || !playerManager.currentPlayer) return;


            trackObject = playerManager.currentPlayer.gameObject;
        }
	}
	
	void Update ()
    {
        if (trackObject)
            transform.position = trackObject.transform.position + (Vector3.up * hoverHeight);
	}
}
using UnityEngine;


public class MenuAnimator : MonoBehaviour
{
    private Animator anim;


	void Start ()
    {
        anim = GetComponent<Animator>();
	}

    public void SetSelected(bool value)
    {
        anim.SetBool("Selected", value);
        anim.SetTrigger("Pose");
    }
}
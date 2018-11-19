using UnityEngine;


public class MenuSwitch : MonoBehaviour
{
    [System.Serializable]
    public class MenuPair
    {
        public MenuAnimator ma;
        public Transform camTransform;
    }


    [HideInInspector]
    public int index = 0;
    public float moveSpeed = 4f;
    public float rotationSpeed = 6f;
    [Space]
    public Transform startAt;
    public MenuPair[] transforms = new MenuPair[4];


    private Transform target = null;


    private void Awake()
    {
        SetMenuPosition();
    }

    private void Update()
    {
        transform.position = Vector3.Lerp(transform.position, target.position, moveSpeed * Time.deltaTime);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, target.rotation, rotationSpeed * Time.deltaTime);
    }


    public void Left()
    {
        if (index == 0)
            index = transforms.Length - 1;
        else
            index--;

        target = transforms[index].camTransform;

        SetSelected();
    }

    public void Right()
    {
        if (index == transforms.Length - 1)
            index = 0;
        else
            index++;

        target = transforms[index].camTransform;

        SetSelected();
    }

    public void SetSelected()
    {
        for (int i = 0; i < transforms.Length; i++)
        {
            if (i == index)
                transforms[index].ma.SetSelected(true);
            else
                transforms[index].ma.SetSelected(false);
        }
    }


    public void SetFirstCharacter()
    {
        target = transforms[0].camTransform;
    }

    public void SetMenuPosition()
    {
        target = startAt;
    }
}
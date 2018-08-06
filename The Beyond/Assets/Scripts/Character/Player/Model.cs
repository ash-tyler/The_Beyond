using UnityEngine;

[RequireComponent(typeof(AnimationHelper))]
[RequireComponent(typeof(QuickBodyReference))]
public class Model : MonoBehaviour
{
    public AnimationHelper      animHelper;
    public QuickBodyReference   bodyReference;

	void Start ()
    {
        GetModelComponents();
    }

    public void GetModelComponents()
    {
        animHelper = GetComponent<AnimationHelper>();
        bodyReference = GetComponent<QuickBodyReference>();
    }

    public static bool SuitableModel(GameObject model)
    {
        return (model && model.GetComponent<Model>());
    }

}

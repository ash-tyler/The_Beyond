using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterModel : MonoBehaviour
{
    public QuickBodyReference bodyReference;

    private void Start()
    {
        GetModelComponents();
    }

    public virtual void GetModelComponents()
    {
        bodyReference = GetComponent<QuickBodyReference>();
    }

    public static bool SuitableModel(GameObject model)
    {
        return (model && model.GetComponent<CharacterModel>());
    }
}
using UnityEngine;

[RequireComponent(typeof(Equipment))]
[RequireComponent(typeof(Stats))]
public class CharacterModule : MonoBehaviour
{
    [HideInInspector] public CharacterModel   model;
    [HideInInspector] public Equipment        equipment;
    [HideInInspector] public Stats            stats;

    private void Start()
    {
        model = GetComponent<CharacterModel>();
        equipment = GetComponent<Equipment>();
        stats = GetComponent<Stats>();

        if (!model)
        {
            gameObject.SetActive(false);
            return;
        }
    }
}
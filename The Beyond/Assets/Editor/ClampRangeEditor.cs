using UnityEditor;
using UnityEngine;

[CustomPropertyDrawer(typeof(ClampRange))]
public class ClampRangePropertyDrawer : PropertyDrawer
{
    private static GUIContent minGUIC = new GUIContent("Min", "Minimum Value");
    private static GUIContent maxGUIC = new GUIContent("Max", "Maximum Value");

    SerializedProperty min, max;

    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        min = property.FindPropertyRelative("min");
        max = property.FindPropertyRelative("max");

      
        Rect contentPosition = EditorGUI.PrefixLabel(position, label);

        EditorGUIUtility.labelWidth = 28f;
        float fieldWidth = contentPosition.width / 3;
        contentPosition.width /= 3.03f;


        EditorGUI.BeginProperty(contentPosition, label, min);
        {
            EditorGUI.BeginChangeCheck();
            float newVal = EditorGUI.FloatField(contentPosition, minGUIC, min.floatValue);
            if (EditorGUI.EndChangeCheck())
                min.floatValue = newVal;
        }
        EditorGUI.EndProperty();

        contentPosition.x += fieldWidth * 1.0064f;

        EditorGUI.BeginProperty(contentPosition, label, max);
        {
            EditorGUI.BeginChangeCheck();
            float newVal = EditorGUI.FloatField(contentPosition, maxGUIC, max.floatValue);
            if (EditorGUI.EndChangeCheck())
                max.floatValue = newVal;
        }
        EditorGUI.EndProperty();
    }
}
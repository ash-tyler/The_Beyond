using UnityEngine;
using UnityEditor;

namespace GeNa
{
    /// <summary>
    /// Gravity editor - not doing much just yet
    /// </summary>

    [CustomEditor(typeof(Gravity))]
    public class GravityEditor : Editor
    {
        private GUIStyle m_boxStyle;
        private GUIStyle m_wrapStyle;
        private Vector2 m_scrollPosition = Vector2.zero;
        private Gravity m_gravity;

        /// <summary>
        /// Called when we select this in the scene
        /// </summary>
        void OnEnable()
        {
            //Check for target
            if (target == null)
            {
                return;
            }
            //Setup target
            m_gravity = (Gravity) target;
        }

        /// <summary>
        /// Editor UX
        /// </summary>
        public override void OnInspectorGUI()
        {
            //Set the target
            m_gravity = (Gravity) target;

            #region Introduction

            //Set up the box style
            if (m_boxStyle == null)
            {
                m_boxStyle = new GUIStyle(GUI.skin.box);
                m_boxStyle.normal.textColor = GUI.skin.label.normal.textColor;
                m_boxStyle.fontStyle = FontStyle.Bold;
                m_boxStyle.alignment = TextAnchor.UpperLeft;
            }

            //Setup the wrap style
            if (m_wrapStyle == null)
            {
                m_wrapStyle = new GUIStyle(GUI.skin.label);
                m_wrapStyle.fontStyle = FontStyle.Normal;
                m_wrapStyle.wordWrap = true;
            }

            //Text intro
            GUILayout.BeginVertical(
                string.Format("GeNa Gravity ({0}.{1})", Constants.MajorVersion,
                    Constants.MinorVersion),
                m_boxStyle);
            GUILayout.Space(20);
            EditorGUILayout.LabelField(
                "Gravity here.",
                m_wrapStyle);
            GUILayout.EndVertical();

            #endregion

            //Scroll
            m_scrollPosition = GUILayout.BeginScrollView(m_scrollPosition, false, false);

            //Monitor for changes
            EditorGUI.BeginChangeCheck();

            GUILayout.Space(5);

            //Generic high level control

            DrawDefaultInspector();

            //Check for changes, make undo record, make changes and let editor know we are dirty
            if (EditorGUI.EndChangeCheck())
            {
                Undo.RecordObject(m_gravity, "Made changes");
                EditorUtility.SetDirty(m_gravity);
            }

            //End scroll
            GUILayout.EndScrollView();
        }
    }
}
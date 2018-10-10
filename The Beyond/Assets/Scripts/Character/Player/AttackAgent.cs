using System.Collections;
using System.Collections.Generic;
using TheBeyond.Enums;
using UnityEngine;

[System.Serializable]
public class AttackTracker
{
    //public float waitTime;

    //[HideInInspector]
    //public List<WeaponAnimation> ComboList;
    //[HideInInspector]
    //public PlayerModel model;

    //public bool     CanClick { get; private set; }
    //public bool     PlayerClicked { get; private set; }
    //public int      AttackIndex { get; private set; }

    //private int comboListIndex = -1;


    //public void ClickEvent()
    //{
    //    if (PlayerClicked || !CanClick) return;

    //    CanClick = false;
    //    PlayerClicked = false;
    //    NextAttackIndex();

    //    Debug.Log("Clicked!");
    //}

    //public void SetCanClick(bool value)
    //{
    //    CanClick = value;
    //}

    //public void ComboEnd()
    //{
    //    comboListIndex = -1;
    //    AttackIndex = -1;
    //    CanClick = true;
    //    PlayerClicked = false;

    //    model.SetAttackIndex(AttackIndex);
    //    Debug.Log("Combo Ended!");
    //}

    //public void Setup()
    //{
    //    comboListIndex = -1;
    //    AttackIndex = -1;
    //    CanClick = true;
    //    PlayerClicked = false;
    //}



    //public void NextAttackIndex()
    //{
    //    comboListIndex++;
    //    if (comboListIndex > ComboList.Count - 1)
    //        comboListIndex = 0;

    //    AttackIndex = (int)ComboList[comboListIndex];
    //    Debug.Log("Attack Index Is: " + AttackIndex.ToString());
    //    if (!model) return;

    //    model.SetAttackIndex(AttackIndex);
    //}
}
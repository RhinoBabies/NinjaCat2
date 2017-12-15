using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class startEndScene : MonoBehaviour {

    private Camera cam;
    private int totalEnemies;
    public Image fadeToBlack;
    private Color bgOrigColor;
    private Color transAlpha;
    private Color opaqAlpha;
    private Color currColor;

    private void Start()
    {
        totalEnemies = GameObject.FindGameObjectsWithTag("Enemy").Length;
        bgOrigColor = fadeToBlack.color;

        transAlpha = Color.black;
        opaqAlpha = Color.black;

        transAlpha.a = 0.0f;
        opaqAlpha.a = 1.0f;
    }

    // Update is called once per frame
    void Update () {
        while (totalEnemies > 0)
        {
            totalEnemies = GameObject.FindGameObjectsWithTag("Enemy").Length;
            Debug.Log("Enemy Count: " + totalEnemies);
        }

        //detects no more enemies
        //fade to black

        fadeToBlack.color = transAlpha;
        while (fadeToBlack.color.a < opaqAlpha.a) {
            currColor.a = fadeToBlack.color.a;
            currColor.a += .05f;
            fadeToBlack.color = currColor;
        }

        levelLoader.lvlLoader.loadNextScene("NikoTomo");
        //load dialogue scene with Tomo and Niko
    }
}

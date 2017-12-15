using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class fadeInOutText : MonoBehaviour {

    private Color transAlpha;
    private Color opaqAlpha;
    private Color newColor;
    private Text thisText;
    private bool fading;
    private float interval = .01f;

    public int loadSceneIndex;

	// Use this for initialization
	void Start () {
        thisText = GetComponent<Text>();

        transAlpha = thisText.color;
        transAlpha.a = 0.0f;

        opaqAlpha = thisText.color;
        opaqAlpha.a = 1.0f;

        thisText.color = transAlpha;
        newColor = thisText.color;

        fading = false;

        StartCoroutine(fader());
	}
	
	
	IEnumerator fader () {
        while (true) {
            if (!fading && thisText.color.a < opaqAlpha.a) {
                while (thisText.color.a < opaqAlpha.a)
                {
                    //increase opacity
                    newColor.a += interval;
                    yield return new WaitForSeconds(.05f);
                    thisText.color = newColor;
                }
            }
            else if (thisText.color.a >= opaqAlpha.a && !fading) { //pause for several seconds
                yield return new WaitForSeconds(15.0f);
                fading = true;
            }
            else {
                //reduce opacity to transparent
                while (thisText.color.a > transAlpha.a)
                {
                    //increase opacity
                    newColor.a -= interval;
                    yield return new WaitForSeconds(.05f);
                    thisText.color = newColor;
                }
                //go to next scene
                break;
            }
        } //end of while
        if(loadSceneIndex > -1)
            SceneManager.LoadScene(loadSceneIndex);
    } //end of fader
}

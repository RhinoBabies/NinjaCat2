using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Ninjacat.Utility;
using UnityEngine.Events;

public class levelLoader : MonoBehaviour {

    public static levelLoader lvlLoader;

    private GameObject player;
    private Hero_Health healthInfo;
    private string lastScene;

    private void Awake()
    {
        if (lvlLoader == null)
        {
            DontDestroyOnLoad(this.gameObject);
            lvlLoader = this;
        }
        else if (lvlLoader != this)
            Destroy(this.gameObject);
    }

    IEnumerator characterDeath()
    {
        Debug.Log("Reloading scene after a few seconds...");
        UGen.normalSpeed();
        yield return new WaitForSeconds(5.0f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    public void loadNextScene(string nextScene)
    {
        lastScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(nextScene);
    }

    public void restartScene()
    {
        Debug.Log("Restarting scene...");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    public void previousScene()
    {
        Debug.Log("Loading previous scene...");
        SceneManager.LoadScene(lastScene);
    }

    /*
    private void Update()
    {
        Debug.Log(Graphics.activeTier);
    }
    */
}

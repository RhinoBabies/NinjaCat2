using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ninjacat.Utility;
using UnityEngine.SceneManagement;

public class tomoDisappear : IInteract {

    private int countPresses = 4;
    public GameObject ragdoll;
    private Renderer rend;

    private void Start()
    {
        rend = GetComponentInChildren<Renderer>();
    }

    override protected void handleInteraction(GameObject obj)
    {
        countPresses--;

        if (countPresses == 1)
        {
            Instantiate(ragdoll, transform.position + new Vector3(0, .7f), transform.rotation);
            rend.enabled = false;
        }

        if (countPresses == 0)
        {
            levelLoader.lvlLoader.loadNextScene("credits");
        }
    }
}

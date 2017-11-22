using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sheatheSword : MonoBehaviour {

    public Renderer otherSwordsMesh;
    private Renderer mesh;

    private void Start()
    {
        mesh = GetComponent<Renderer>();
    }

    // Update is called once per frame
    void Update () {
        if (otherSwordsMesh.enabled == true)
            mesh.enabled = false;
        else
            mesh.enabled = true;
	}
}

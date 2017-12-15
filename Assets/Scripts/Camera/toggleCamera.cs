using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ninjacat.Characters.Control;

public class toggleCamera : MonoBehaviour {

    private Camera cam;
    private Animator anim;

    private void Start()
    {
        cam = GetComponent<Camera>();
        anim = GetComponent<Animator>();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Pause"))
        { //allows player to exit from cutscene
            turnCamOnOff();
            Destroy(gameObject);
        }
    }

    private void turnCamOnOff()
    {
        if (cam.enabled == true) {
            cam.enabled = false;
            anim.enabled = false;
            ControlManager.controls.enabled = true;
        }
        else {
            cam.enabled = true;
            anim.enabled = true;
            ControlManager.controls.enabled = false;
        }
    }
}

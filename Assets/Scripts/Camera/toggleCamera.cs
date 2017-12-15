using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class toggleCamera : MonoBehaviour {

    private Camera cam;

    private void Start()
    {
        cam = gameObject.GetComponent<Camera>();
    }

    private void turnCamOnOff()
    {
        if (cam.enabled == true)
            cam.enabled = false;
        else
            cam.enabled = true;
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class bambooRotator : MonoBehaviour {

    private Rigidbody rb;

	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();

        if (transform.rotation.x > 0)
            rb.isKinematic = true; //keep "root" of bamboo in the ground and do not move it
        else
        {
            rb.isKinematic = false; //allow top of bamboo to react to physics/gravity
        }
	}
}

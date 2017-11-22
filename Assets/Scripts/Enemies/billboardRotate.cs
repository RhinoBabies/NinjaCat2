using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class billboardRotate : MonoBehaviour {

	public GameObject Camera;
	
	//simple billboarding script; rotates canvas to face camera
	void Update () {
		this.transform.rotation = Camera.transform.rotation;
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JoystickUIDebugger : MonoBehaviour {
	public GameObject joystick;
	private RectTransform rt;
	private float newZRotation;

	void Start() {
		rt = joystick.GetComponent<RectTransform>();
	}

	void Update () {
		if (Input.GetAxis ("Horizontal") > 0f || Input.GetButton("RightKey")) { //if right
			newZRotation = 90f;
			joystick.SetActive(true);
		} else if (Input.GetAxis ("Horizontal") < 0f || Input.GetButton("LeftKey")) {	//else if left
			newZRotation = -90f;
			joystick.SetActive(true);
		} else { //else centered
			joystick.SetActive(false);
		}

		if (Input.GetAxis("Vertical") > 0f || Input.GetButton("UpKey")) // if up
		{
			joystick.SetActive(true);
			//if up left
			if (Input.GetAxis ("Horizontal") < 0f || Input.GetButton("LeftKey"))
				newZRotation = -135f;
			//else if up right
			else if (Input.GetAxis ("Horizontal") > 0f || Input.GetButton("RightKey"))
				newZRotation = 135f;
			//else just up
			else
				newZRotation = 180f;
		}
		else if (Input.GetAxis("Vertical") < 0f || Input.GetButton("DownKey")) //if down
		{	
			joystick.SetActive(true);
			//if down left
			if (Input.GetAxis ("Horizontal") < 0f || Input.GetButton("LeftKey"))
				newZRotation = 315f;
			//else if down right
			else if (Input.GetAxis ("Horizontal") > 0f || Input.GetButton("RightKey"))
				newZRotation = 45f;
			//else just down
			else
				newZRotation = 0f;
		}	

		rt.eulerAngles = new Vector3(0f, 0f, newZRotation);
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ControllerUIDebugger : MonoBehaviour {

	public GameObject upButton;
	public GameObject downButton;
	public GameObject rightButton;
	public GameObject leftButton;

	void Update()
	{
		if (Input.GetButton("Interact"))
		{
			upButton.SetActive (true);
		}
		else
		{	
			upButton.SetActive (false);
		}

		if (Input.GetButton("Jump"))
		{
			downButton.SetActive (true);
		}
		else
		{	
			downButton.SetActive (false);
		}

		if (Input.GetButton("Crouch"))
		{
			rightButton.SetActive (true);
		}
		else
		{	
			rightButton.SetActive (false);
		}

		if (Input.GetButton("Dodge"))
		{
			leftButton.SetActive (true);
		}
		else
		{	
			leftButton.SetActive (false);
		}
	}
}

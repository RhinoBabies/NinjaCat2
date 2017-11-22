using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DPadUIDebugger : MonoBehaviour {

	public GameObject upButton;
	public GameObject downButton;
	public GameObject rightButton;
	public GameObject leftButton;

	void Update()
	{
		if (Input.GetAxis ("Items24") > 0f) {
			upButton.SetActive (true);
			downButton.SetActive (false);
		} else if (Input.GetAxis ("Items24") < 0f) {	
			upButton.SetActive (false);
			downButton.SetActive (true);
		} else {
			upButton.SetActive (false);
			downButton.SetActive (false);
		}
		

		if (Input.GetAxis("Items13") > 0f)
		{
			rightButton.SetActive (true);
			leftButton.SetActive (false);
		}
		else if (Input.GetAxis("Items13") < 0f)
		{	
			rightButton.SetActive (false);
			leftButton.SetActive (true);
		} else {
			rightButton.SetActive (false);
			leftButton.SetActive (false);
		}
	}
}

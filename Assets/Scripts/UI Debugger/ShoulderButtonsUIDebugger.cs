using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShoulderButtonsUIDebugger : MonoBehaviour {

	public GameObject leftBumper;
	public GameObject leftTrigger;
	public GameObject rightBumper;
	public GameObject rightTrigger;

	void Update()
	{
		if (Input.GetButton("AttackWeak"))
		{
			rightBumper.SetActive (true);
		}
		else
		{	
			rightBumper.SetActive (false);
		}

		if (Input.GetButton("QuickMenu"))
		{
			leftBumper.SetActive (true);
		}
		else
		{	
			leftBumper.SetActive (false);
		}

		if (Input.GetAxis("AttackStrong") > 0f || Input.GetButton("AttackStrong"))
		{
			rightTrigger.SetActive (true);
		}
		else
		{	
			rightTrigger.SetActive (false);
		}

		if (Input.GetAxis("Block") > 0f || Input.GetButton("Block"))
		{
			leftTrigger.SetActive (true);
		}
		else
		{	
			leftTrigger.SetActive (false);
		}
	}
}

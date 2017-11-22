using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footsteps : MonoBehaviour {

	public AudioClip jumping; //new

	AudioSource AS; //new

	// Use this for initialization
	void Start () {
		AS = GetComponent<AudioSource> (); //new
	}

	// Update is called once per frame
	void Update () {
		if ((Input.GetKey (KeyCode.W) || Input.GetKey (KeyCode.A) || Input.GetKey (KeyCode.S) || Input.GetKey (KeyCode.D)) && !Input.GetKey(KeyCode.Space) && !GetComponent<AudioSource>().isPlaying) {
			GetComponent<AudioSource>().Play();
		}

		if (Input.GetKey (KeyCode.Space) && !GetComponent<AudioSource>().isPlaying) { //new
			AS.PlayOneShot(jumping, 1f);
		}
	}
}

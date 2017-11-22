using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class killZone : MonoBehaviour {

    private GameObject player;

	// Use this for initialization
	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == player)
        {
            player.SendMessage("TakeDamage", 100000);
        }
    }
}

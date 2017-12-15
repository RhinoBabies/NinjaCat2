using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Rigidbody))]
public class EnemyHealth : MonoBehaviour {

    public int startingHealth;
    public int currentHealth;
	public GameObject Ragdoll;
    private Vector3 updatePosition;

    private void Awake()
    {
        currentHealth = startingHealth;
	}

    private void Update()
    {
        updatePosition = transform.position;
    }

    public void TakeDamage (int amount)
    {
        Debug.Log(gameObject.name + " ... " + currentHealth + " ... " + transform.position);
        currentHealth -= amount;

        if (currentHealth <= 0)
        {
            if(Ragdoll != null)
                if(gameObject.name == "Tomo")
                    Instantiate(Ragdoll, updatePosition, transform.rotation); //Tomo doesn't need the raised ragdoll spawn
                else
                    Instantiate(Ragdoll, updatePosition + new Vector3 (0f, .7f), transform.rotation); //ragdolls spawning inside the floor bug fix
            else
                Debug.LogWarning(name + " does not have a ragdoll set! Is this desired?");

            Debug.Log(gameObject.name + " Death @ " + transform.position);
            Destroy(gameObject);
        }
	}
}

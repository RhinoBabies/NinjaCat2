using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(Collider))]
public class bambooBreak : MonoBehaviour {

    public int startingHealth = 1;
    private int currentHealth;
    public GameObject bambooStalkDestroy;
    private Quaternion currRotation;
    private float adjYScale;

    // Use this for initialization
    void Start() {
        currentHealth = startingHealth;
    }

    public void TakeDamage(int amount)
    {
        currentHealth -= amount;

        if (currentHealth <= 0)
        {
            Debug.Log(gameObject.name + " killed @ " + transform.position);
            splitBamboo();
        }
    }

    void splitBamboo()
    {
        //spawn top of bamboo
        currRotation = transform.rotation;
        currRotation.eulerAngles = new Vector3(currRotation.x - 3f, currRotation.y);
        GameObject bambooTop = Instantiate(bambooStalkDestroy, new Vector3(transform.position.x, transform.position.y + .8f, transform.position.z), currRotation);

        //adjust scale of top of bamboo to match original bamboo stalk
        adjYScale = transform.localScale.y * .8f; //scale down model to match proportion
        bambooTop.transform.localScale = new Vector3(transform.localScale.x, adjYScale, transform.localScale.z);

        //spawn bottom of bamboo
        currRotation.eulerAngles = new Vector3(currRotation.x + 179f, currRotation.y);
        Instantiate(bambooStalkDestroy, new Vector3(transform.position.x, transform.position.y + .8f, transform.position.z), currRotation);

        //destroy original bamboo stalk
        Destroy(gameObject);
    }
}
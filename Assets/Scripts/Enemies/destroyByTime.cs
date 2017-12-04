using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class destroyByTime : MonoBehaviour {

    public float lifetime = 5f;
    public bool DoNotDestroy;

	// Use this for initialization
	void Start () {
        if (!DoNotDestroy)
        {
            if (lifetime > 0)
                Destroy(gameObject, lifetime);
            else
                Destroy(gameObject);
        }
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class showOnAttack : MonoBehaviour {

    private int swordParameter;
    private Renderer mesh;
    private Animator anim;
    private Collider[] swordColliders;

	// Use this for initialization
	void Start () {
        mesh = GetComponent<Renderer>();
        anim = GetComponentInParent<Animator>();
        swordParameter = Animator.StringToHash("SwordDrawn");

        swordColliders = GetComponents<Collider>();
	}
	
	// Update is called once per frame
	void Update () {
        if (anim.GetBool(swordParameter))
            mesh.enabled = true;
        else
            mesh.enabled = false;
	}
}

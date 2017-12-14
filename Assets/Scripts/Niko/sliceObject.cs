using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sliceObject : MonoBehaviour {

    public float dmg;
    private Animator anim;
    private int attackParamHash;
    private AnimatorStateInfo currentStateInfo;

    private void Start()
    {
        anim = GetComponentInParent<Animator>();
        attackParamHash = Animator.StringToHash("Attack");
    }

    private void Update()
    {
        if(anim.GetBool(attackParamHash))
            Debug.Log("attacking");
    }

    private void OnTriggerEnter(Collider other)
    {
        currentStateInfo = anim.GetCurrentAnimatorStateInfo(3); //refers to "Attacking" layer to check for state

        if (currentStateInfo.IsName("Strike1") || currentStateInfo.IsName("Strike2") || currentStateInfo.IsName("Strike3"))
        {
            if (other.tag == "Enemy")
            {
                Debug.Log("attacking " + other.GetInstanceID());
                other.gameObject.SendMessage("TakeDamage", dmg);
            }
        }
    }
}

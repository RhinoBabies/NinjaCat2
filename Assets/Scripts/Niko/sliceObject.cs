using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sliceObject : MonoBehaviour {

    public float dmg;
    private Animator anim;
    private int attackParamHash;
    private Hashtable hitList = new Hashtable();
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

        ICollection i = hitList.Keys;

        foreach (int j in i)
        {
            Debug.Log(j + " : " + hitList[j]);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        currentStateInfo = anim.GetCurrentAnimatorStateInfo(3);

        if (currentStateInfo.IsName("Strike1") || currentStateInfo.IsName("Strike2") || currentStateInfo.IsName("Strike3"))
        {
            if (other.tag == "Enemy")
            {
                Debug.Log("attacking " + other.GetInstanceID());
                hitList.Add(other.GetInstanceID(), other);
                other.gameObject.SendMessage("TakeDamage", dmg);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Enemy")
        {
            if (hitList.ContainsKey(other.GetInstanceID()))
            {
                hitList.Remove(other.GetInstanceID());
            }
        }
    }
}

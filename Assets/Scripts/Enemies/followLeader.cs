using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class followLeader : MonoBehaviour {

    public GameObject leader;
    private EnemyHealth leaderHP;
    private NavMeshAgent agent;
    public int threshold;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        leaderHP = leader.GetComponent<EnemyHealth>();
    }

    // Update is called once per frame
    void Update () {
        if (leaderHP.currentHealth <= threshold)
            agent.enabled = true;
	}
}

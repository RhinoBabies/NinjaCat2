using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

using UnityEngine.AI;

namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof(UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof(ThirdPersonCharacter))]
    public class GuardianBehavior : MonoBehaviour
    {

        //public UnityEngine.AI.NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
        public ThirdPersonCharacter character { get; private set; } // the character we are controlling
        private NavMeshAgent agent;
        public Transform target;                                    // target to aim for
        public int awareness;
        public int activation;
        public float aggression;
        public int temper;
        public int threshold;
        private float aggressionReset;
        private bool detection;
        public GameObject leader;
        private EnemyHealth leaderHP;


        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponent<NavMeshAgent>();
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<ThirdPersonCharacter>();
            leaderHP = leader.GetComponent<EnemyHealth>();
            agent.updateRotation = false;
            agent.updatePosition = true;
            detection = false;
            aggressionReset = aggression;

        }


        private void Update()
        {
            if (target != null)
            {
                if (leaderHP.currentHealth <= 0)
                {
                    agent.enabled = true;
                    agent.acceleration = 7.0f;
                    agent.speed = 1.0f;
                    if (target != null)
                        agent.SetDestination(target.position);

                    if (agent.remainingDistance > agent.stoppingDistance)
                        character.Move(agent.desiredVelocity, false, false);
                    else
                        character.Move(Vector3.zero, false, false);
                }
                else
                {
                    if (Vector3.Distance(target.position, this.transform.position) < awareness)
                    {
                        aggression -= Time.deltaTime;
                        detection = true;
                        if (aggression <= 0.0f)
                        {
                            agent.enabled = true;
                            if (target != null)
                                agent.SetDestination(target.position);

                            if (agent.remainingDistance > agent.stoppingDistance)
                                character.Move(agent.desiredVelocity, false, false);
                            else
                                character.Move(Vector3.zero, false, false);
                        }
                        Vector3 direction = target.position - this.transform.position;
                        direction.y = 0;

                        this.transform.rotation = Quaternion.Slerp(this.transform.rotation, Quaternion.LookRotation(direction), 0.1f);

                    }
                    else
                    {
                        aggression = aggressionReset;
                        if (detection == true)
                        {
                            detection = false;
                            temper -= 1;
                        }

                    }

                    if (Vector3.Distance(target.position, this.transform.position) < activation || temper <= 0)
                    {

                        agent.enabled = true;
                        if (target != null)
                            agent.SetDestination(target.position);

                        if (agent.remainingDistance > agent.stoppingDistance)
                            character.Move(agent.desiredVelocity, false, false);
                        else
                            character.Move(Vector3.zero, false, false);

                    }
                }
            }
            else
            {
                target = GameObject.FindGameObjectWithTag("Player").transform;
            }
        }
    }
}

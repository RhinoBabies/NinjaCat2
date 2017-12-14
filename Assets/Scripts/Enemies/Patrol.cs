
//using System;
using UnityEngine;
using System.Collections;


namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof(UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof(ThirdPersonCharacter))]
    public class Patrol : MonoBehaviour
    {
        public UnityEngine.AI.NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
        public ThirdPersonCharacter character { get; private set; } // the character we are controlling

        private float changeReset;
        public Transform destinationPoint;
        public Transform startPoint;
        public Transform wayPoint1;
        public Transform wayPoint2;
        public Transform wayPoint3;

        private int aimPoint;
        private GameObject Niko;
        public Transform target;
        public GameObject leader;
        private EnemyHealth leaderHP;
        public int awareness;
        public int numberOfPoints;
        public int threshold;
        public float suspicion;
        public float aggression;
        private float suspicionReset;
        public float patrolSpeed;
        

        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<ThirdPersonCharacter>();
            leaderHP = leader.GetComponent<EnemyHealth>();
            agent.updateRotation = false;
            agent.updatePosition = true;
            agent.acceleration = 0;
            agent.speed = patrolSpeed;
            aimPoint = 1;
            suspicionReset = suspicion;

            Niko = GameObject.FindGameObjectWithTag("Player");
        }


        private void Update()
        {
            agent.enabled = true;

            agent.SetDestination(destinationPoint.position);
            if (target != null)
            {
                if (leaderHP.currentHealth <= threshold)
                {
                    agent.acceleration = 7.0f;
                    agent.speed = 1.0f;
                    if (target != null)
                        agent.SetDestination(target.position);
                    else
                        target = GameObject.FindGameObjectWithTag("Player").transform;

                    if (agent.remainingDistance > agent.stoppingDistance)
                        character.Move(agent.desiredVelocity, false, false);
                    else
                        character.Move(Vector3.zero, false, false);
                }
                else
                {

                    if (Vector3.Distance(target.position, this.transform.position) < awareness)
                    {
                        agent.acceleration = 0.0f;
                        agent.speed = 0.0f;
                        aggression -= Time.deltaTime;
                        // obj.SendMessage("handleDialogue", m_Rigidbody.gameObject); // think about adding alar mtype dialoge

                        if (aggression <= 0.0f)
                        {
                            agent.acceleration = 7.0f;
                            agent.speed = 1.0f;
                            if (target != null)
                                agent.SetDestination(target.position);

                            if (agent.remainingDistance > agent.stoppingDistance)
                                character.Move(agent.desiredVelocity, false, false);
                            else
                                character.Move(Vector3.zero, false, false);
                        }

                        suspicion = suspicionReset;
                        Vector3 direction = target.position - this.transform.position;
                        direction.y = 0;

                        this.transform.rotation = Quaternion.Slerp(this.transform.rotation, Quaternion.LookRotation(direction), 0.1f);

                    }
                    else //if(Vector3.Distance(target.position, this.transform.position) > awareness)
                    {
                        /*
                         * if(gameObject.name == "Mouse - Patroller")
                         *  Debug.Log(gameObject.name + " moving to " + destinationPoint.position + " with aimPoint = " + aimPoint);
                        */

                        suspicion -= Time.deltaTime;

                        if (suspicion <= 0.0f)
                        {
                            agent.acceleration = 0;
                            agent.speed = patrolSpeed;
                        }

                        agent.SetDestination(destinationPoint.position);
                        if (agent.remainingDistance > agent.stoppingDistance)
                            character.Move(agent.desiredVelocity, false, false);


                        else
                        {
                            if (aimPoint == 1)
                            {

                                destinationPoint.position = startPoint.position;
                                character.Move(Vector3.zero, false, false);
                                aimPoint = 2;

                            }
                            else if (aimPoint == 2)
                            {
                                destinationPoint.position = wayPoint1.position;
                                character.Move(Vector3.zero, false, false);

                                if (numberOfPoints == 2)
                                {
                                    aimPoint = 1;
                                }
                                else
                                {
                                    aimPoint = 3;
                                }
                            }
                            else if (aimPoint == 3)
                            {
                                destinationPoint.position = wayPoint2.position;
                                character.Move(Vector3.zero, false, false);

                                if (numberOfPoints == 3)
                                {
                                    aimPoint = 1;
                                }
                                else
                                {
                                    aimPoint = 4;
                                }
                            }
                            else if (aimPoint == 4)
                            {
                                destinationPoint.position = wayPoint3.position;
                                character.Move(Vector3.zero, false, false);


                                aimPoint = 1;


                            }

                        }
                    }
                }
            }
            else
                target = GameObject.FindGameObjectWithTag("Player").transform;
        }

    }
}




﻿
//using System;
using UnityEngine;
using System.Collections;


namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof(UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof(ThirdPersonCharacter))]
    public class NPC_Patrol : MonoBehaviour
    {
        public UnityEngine.AI.NavMeshAgent agent { get; private set; } // the navmesh agent required for the path finding
        public ThirdPersonCharacter character { get; private set; } // the character we are controlling

        public Transform[] waypoints; //creates a sizable list of tranforms the designer can utilize

        private int totalWaypoints; //will be assigned to the number of waypoints the designer selects
        private int currentWaypointNumber = 0; //which waypoint the char is currently moving towards

        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<ThirdPersonCharacter>();
            
            agent.updateRotation = false;
            agent.updatePosition = true;
            //agent.acceleration = 0; //is set in editor
            //agent.speed = 2f; //is set in the editor

            agent.SetDestination(waypoints[currentWaypointNumber].position);
        }


        private void Update()
        {
            if (agent != null && agent.enabled)
            {
                if (agent.remainingDistance > agent.stoppingDistance) //char is still moving to destination
                {
                    character.Move(agent.desiredVelocity, false, false);
                }
                else
                {
                    character.Move(Vector3.zero, false, false); //stop moving when char gets there
                    currentWaypointNumber = (++currentWaypointNumber) % waypoints.Length; //wraps the waypoint number back to the beginning
                    agent.SetDestination(waypoints[currentWaypointNumber].position); //assign next waypoint to its Vector3
                }
            }
        }

    }
}

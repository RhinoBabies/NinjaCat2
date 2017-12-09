using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using UnityEngine;

using Ninjacat.Characters.Control;

using Ninjacat.Utility;



namespace Assets.Scripts.Camera
{

    public class OrbitCamera : MonoBehaviour
    {

        private GameObject player;

        private Vector3 playerLastLoc;
        private float initialCameraRotation;
        private float angleDiff;
        private const float DOWN_ANGLE = 45.0f;
        private const float UP_ANGLE = 315.0f;

        private Transform target; // target for camera transform
        //private List<GameObject> affected; // list of objects with reduced alphas



        // ====================================================================
        // *                              START                               *
        // ====================================================================

        private void Start()
        {
            // Set up appropriate references
            ControlManager.cam = this; // pass reference to self over to Control Manager
            player = ControlManager.controls.gameObject; // get reference to player

            // Initialize camera location
            this.transform.position = UGen.getTop(player) - new Vector3(4.0f, 0.0f);
            this.transform.LookAt(UGen.getTop(player));

            // Get initial camera rotation
            initialCameraRotation = this.transform.rotation.eulerAngles.x;

            // Initialize player's last location
            playerLastLoc = UGen.getTop(player);

            // Initialize target transform
            target = GameObject.CreatePrimitive(PrimitiveType.Cube).transform;
            target.gameObject.SetActive(false);
            target.position = this.transform.position;
            target.rotation = this.transform.rotation;

            // Initialize list of game objects affected by camera behavior
            //affected = new List<GameObject>();
        }



        // ====================================================================
        // *                         CAMERA MOVEMENT                          *
        // ====================================================================

        public void controlInterface(ButtonPresses btns)
        {
            // Move target
            target.position += UGen.getTop(player) - playerLastLoc;
            target.RotateAround(UGen.getTop(player), player.transform.up, 10.0f * btns.camHori * ControlManager.controls.orientX);
            target.RotateAround(UGen.getTop(player), target.right, -10.0f * btns.camVert * ControlManager.controls.orientY);

            // Keep target in the sweet spot
            angleDiff = target.rotation.eulerAngles.x - initialCameraRotation;

            if (angleDiff < UP_ANGLE && angleDiff > DOWN_ANGLE) {
                if (angleDiff > 180.0f)
                    target.RotateAround(UGen.getTop(player), target.right, UP_ANGLE - angleDiff);
                else
                    target.RotateAround(UGen.getTop(player), target.right, DOWN_ANGLE - angleDiff);
            }

            // Move camera toward target
            this.transform.position = Vector3.Slerp(this.transform.position, target.position,  0.2f);
            this.transform.rotation = Quaternion.Slerp(this.transform.rotation, target.rotation, 0.2f);

            // Store player's new location
            playerLastLoc = UGen.getTop(player);

            //reduceAlpha();
        }


        /* THIS LOOKS TERRIBLE AND TAKES A LOT OF PROCESSING TIME
        // ====================================================================
        // *                        CLIP BEHAVIOR                             *
        // ====================================================================

        private const float ALPHA_REDUCTION = 0.25f;
        private const float ALPHA_RETURN = 1.0f;
        private const int LAYER_MASK = Int32.MaxValue ^ (int)UGen.eLayerMask.IGNORE_RAYCAST
            ^ (int)UGen.eLayerMask.WATER ^ (int)UGen.eLayerMask.UI ^ (int)UGen.eLayerMask.PLAYER
            ^ (int)UGen.eLayerMask.NPC ^ (int)UGen.eLayerMask.ENEMY;

        private void reduceAlpha() {
            // Calculate direction and distance of raycast
            Vector3 direction = UGen.getTop(player) - this.transform.position;
            float distance = Vector3.Distance(UGen.getTop(player), this.transform.position);

            // Get all objects directly between the camera and the player
            RaycastHit[] hits = Physics.RaycastAll(this.transform.position, direction, distance, LAYER_MASK);

            // Return all affected objects to normal opacity
            foreach (GameObject obj in affected) {
                Color col = obj.GetComponent<Renderer>().material.color;
                col.a = ALPHA_RETURN;
                obj.GetComponent<Renderer>().material.color = col;
            }

            // Clear List
            affected.Clear();

            // Add all the hits to affected objects list and reduce opacity
            foreach (RaycastHit hit in hits) {
                hit.collider.GetComponent<Renderer>().material.EnableKeyword("_ALPHABLEND_ON");
                Color col = hit.collider.GetComponent<Renderer>().material.color;
                col.a = ALPHA_REDUCTION;
                hit.collider.GetComponent<Renderer>().material.color = col;
                affected.Add(hit.collider.gameObject);
            }
        }
        */

    } // close class
} // close namespace

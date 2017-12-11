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
            ControlManager.controls.SendMessage("setCamera", this); // pass reference to self over to Control Manager
            player = ControlManager.controls.player; // get reference to player

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
            if (player == null)
                return;

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

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Environment"))
            {
                Material mat = other.GetComponent<Renderer>().material;
                UShader.ChangeRenderMode(mat, UShader.BlendMode.Fade);
                Color col = mat.color; //get current color of material
                col.a = .25f;
                mat.color = col;
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("Environment"))
            {
                Color col = other.GetComponent<Renderer>().material.color;
                col.a = 1.0f;
                other.GetComponent<Renderer>().material.color = col;
                UShader.ChangeRenderMode(other.GetComponent<Renderer>().material, UShader.BlendMode.Opaque);
            }
        }


        /* THIS LOOKS TERRIBLE AND TAKES A LOT OF PROCESSING TIME
         * RE-IMPLEMENT IN FUTURE WITH A COLLIDER ATTACHED TO THE FRONT OF THE CAMERA?
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
            Debug.DrawLine(this.transform.position, UGen.getTop(player), Color.blue);

            // Return all affected objects to normal opacity
            foreach (GameObject obj in affected) {
                Color col = obj.GetComponent<Renderer>().material.color; //get current color of material
                col.a = ALPHA_RETURN; //reset color's alpha channel back to max (1.0f)
                obj.GetComponent<Renderer>().material.color = col; //set current color of material to full alpha
            }

            // Clear List
            affected.Clear();

            // Add all the hits to affected objects list and reduce opacity
            foreach (RaycastHit hit in hits) {
                hit.collider.GetComponent<Renderer>().material.EnableKeyword("_ALPHABLEND_ON"); //set shader to Fade mode
                Color col = hit.collider.GetComponent<Renderer>().material.color; //get current color of material
                col.a = ALPHA_REDUCTION; //set alpha of that color to float value
                hit.collider.GetComponent<Renderer>().material.color = col; //set new alpha to material
                affected.Add(hit.collider.gameObject); //add gameObject to list of objects that are faded
                Debug.Log("lowering alpha of " + hit.collider.gameObject.name);
            }
        }
        */

    } // close class
} // close namespace

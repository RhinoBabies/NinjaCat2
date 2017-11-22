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
        private const float MAX_ANGLE = 60.0f;

        private void Start()
        {
            // set up appropriate references
            ControlManager.cam = this; // pass reference to self over to Control Manager
            player = ControlManager.controls.gameObject; // get reference to player

            // initialize camera location
            this.transform.position = UGen.getTop(player) - new Vector3(3.0f, 0.0f);
            this.transform.LookAt(UGen.getTop(player));

            // get initial camera rotation
            initialCameraRotation = this.transform.rotation.eulerAngles.x;

            // initialize player's last location
            playerLastLoc = UGen.getTop(player);
        }

        public void controlInterface(ButtonPresses btns)
        {
            // move camera
            this.transform.position += UGen.getTop(player) - playerLastLoc;
            this.transform.RotateAround(UGen.getTop(player), player.transform.up, 10.0f * btns.camHori);
            this.transform.RotateAround(UGen.getTop(player), this.transform.right, 10.0f * btns.camVert);

            // make sure camera doesn't go too high
            angleDiff = this.transform.rotation.eulerAngles.x - initialCameraRotation;

            if (angleDiff > 180.0f)
                angleDiff -= 360.0f;
            else if (angleDiff < -180.0f)
                angleDiff += 360.0f;

            if (angleDiff > MAX_ANGLE)
                this.transform.RotateAround(UGen.getTop(player), this.transform.right, MAX_ANGLE - angleDiff);
            else if (angleDiff < -MAX_ANGLE)
                this.transform.RotateAround(UGen.getTop(player), this.transform.right, -angleDiff - MAX_ANGLE);

            // story player's new location
            playerLastLoc = UGen.getTop(player);
        }

    } // close class
} // close namespace

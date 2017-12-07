using System;
using UnityEngine;
using Ninjacat.Utility;
using Assets;

namespace Ninjacat.Characters.Control
{
    // ==========================================
    // * HELPER CLASS FOR PASSING BUTTON PRESSES*
    // ==========================================

    /// <summary>
    /// List of button presses since last update.
    /// </summary>
    public class ButtonPresses {
        // joysticks
        public float hori;
        public float vert;
        public float camHori;
        public float camVert;

        // buttons
        public bool jump;
        public bool crouch;
        public bool dodge;
        public bool interact;
        public bool atkWeak;
        public bool atkStrong;
        public bool block;
        public bool item1;
        public bool item2;
        public bool item3;
        public bool item4;
        public bool qMenu;
        public bool lockOn;
        public bool pause;
        public bool showMap;
        public bool walk;

        /// <summary>
        /// Sets all button presses to the given value.
        /// </summary>
        /// <param name="val">The value to set all button presses.</param>
        public void setPresses(bool val) {
            // set buttons
            jump = val;
            crouch = val;
            dodge = val;
            interact = val;
            atkWeak = val;
            atkStrong = val;
            //block = val; // BLOCK IS HELD DOWN
            item1 = val;
            item2 = val;
            item3 = val;
            item4 = val;
            qMenu = val;
            lockOn = val;
            pause = val;
            showMap = val;
            //walk = val; // WALK IS HELD DOWN
        }

        /// <summary>
        /// Sets all persistent controls to the given value.
        /// </summary>
        /// <param name="val"></param>
        public void setPersistent(bool val) {
            block = val;
            walk = val;

            if (val == false) {
                hori = 0.0f;
                vert = 0.0f;
                camHori = 0.0f;
                camVert = 0.0f;
            }
        }
    } // close ButtonPresses



    // ==================================
    // * INTERFACES FOR CONTROL CLASSES *
    // ==================================

    /// <summary>
    /// Interface for ControlScheme Classes.
    /// </summary>
    interface IControlScheme {
        void controlInterface(ButtonPresses btns);
    }

    /// <summary>
    /// Interface for Menu Classes.
    /// </summary>
    interface IMenuControl {
        void controlInterface(ButtonPresses btns);
        void initMenu();
        void exitMenu();
    }



    // =========================
    // * CONTROL MANAGER CLASS *
    // =========================

    [RequireComponent(typeof(ButtonPresses))]
    [RequireComponent(typeof(NormalMovement))]
    [RequireComponent(typeof(PauseMenu))]
    [RequireComponent(typeof(QuickMenu))]
	public class ControlManager : MonoBehaviour
	{
        // ==============
        // * PROPERTIES *
        // ==============

        public static ControlManager controls;
        public static Assets.Scripts.Camera.OrbitCamera cam; // sets the camera
        private IControlScheme controlScheme;                // current control scheme

        private ButtonPresses buttons;                  // current state of each button press (true/false)
		private NormalMovement normalMovement;          // A reference to the NormalMovement on the object
        private PauseMenu pauseMenu;                    // Pause Menu object
        private QuickMenu quickMenu;                    // Quick Menu object



        // ===================
        // * PRIVATE METHODS *
        // ===================

        // Initialize Control Values
		private void Awake()
		{
            controls = this;

            // get class instances
            buttons = new ButtonPresses();
            normalMovement = GetComponent<NormalMovement>();
            pauseMenu = GetComponent<PauseMenu>();
            quickMenu = GetComponent<QuickMenu>();

            // initialize button presses and joysticks to false
            buttons.setPresses(false);
            buttons.setPersistent(false);

            // initialize controlScheme to default
            controlScheme = normalMovement;
		}



        // Get Input Information and Deal with Menus
		private void Update()
		{
            // Joysticks
            buttons.hori = Input.GetAxis("Horizontal");
            buttons.vert = Input.GetAxis("Vertical");
            buttons.camHori = Input.GetAxis("CamHori");
            buttons.camVert = Input.GetAxis("CamVert");

            // Buttons
            if (Input.GetButtonDown("Jump"))
                buttons.jump = true;

            if (Input.GetButtonDown("Crouch"))
                buttons.crouch = true;

            if (Input.GetButtonDown("Dodge"))
                buttons.dodge = true;

			if (Input.GetButtonDown("Interact"))
				buttons.interact = true;

            if (Input.GetButtonDown("AttackWeak"))
                buttons.atkWeak = true;

            if (Input.GetAxis("AttackStrong") > 0.5f)
                buttons.atkStrong = true;

            if (Input.GetAxis("Block") > 0.5f || Input.GetButton("Block"))
                buttons.block = true;
            else
                buttons.block = false;

            if (Input.GetAxis("Items13") < -0.5f) { 
                buttons.item1 = true;
                buttons.item3 = false;
            }
            else if (Input.GetAxis("Items13") > 0.5f) {
                buttons.item1 = false;
                buttons.item3 = true;
            }

            if (Input.GetAxis("Items24") > 0.5f) {
                buttons.item2 = true;
                buttons.item4 = false;
            }
            else if (Input.GetAxis("Items24") < -0.5f) {
                buttons.item2 = false;
                buttons.item4 = true;
            }

            if (Input.GetButtonDown("QuickMenu"))
                buttons.qMenu = true;

            if (Input.GetButtonDown("LockOn"))
                buttons.lockOn = true;

            if (Input.GetButtonDown("Pause"))
                buttons.pause = true;

            if (Input.GetButtonDown("ShowMap"))
                buttons.showMap = true;

            if (Input.GetButtonDown("Walk"))
                buttons.walk = true;
            else
                buttons.walk = false;



            // Menus

            // If paused, run pause controls
            if (UGen.isPaused()) {
                pauseMenu.controlInterface(buttons);
                buttons.setPresses(false);
            }
            else { // If not paused
                // If in quick menu, run quick menu controls
                if (quickMenu.isOpen()) {
                    quickMenu.controlInterface(buttons);
                    buttons.setPresses(false);
                }
                else if (buttons.qMenu) { // If not in quick menu, check the quick menu button
                    quickMenu.initMenu();
                    buttons.setPresses(false);
                }

                // If pause button has been pressed, pause the game
                if (buttons.pause) {
                    buttons.setPresses(false);
                    pauseMenu.initMenu();
                }

                // Not in any menus, control camera
                cam.controlInterface(buttons);
            }
		}



		// Run regular controls if not paused
		private void FixedUpdate() {
            // If not in quick menu, run regular controls
            if (quickMenu.isOpen()) {
                buttons.setPersistent(false);
                buttons.setPresses(false);
            }

            controlScheme.controlInterface(buttons);
            buttons.setPresses(false);
        }

	} // close ControlSchemes
} // close namespace

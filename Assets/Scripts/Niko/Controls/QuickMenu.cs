using System;
using UnityEngine;
using UnityEngine.UI;
using Ninjacat.Utility;
using Assets.Scripts.Camera;

namespace Ninjacat.Characters.Control {
    public class QuickMenu : MonoBehaviour, IMenuControl
    {
        // ==============
        // * PROPERTIES *
        // ==============

        private bool bInQuickMenu;              // true if quick menu is open
        private float prevSpeed;               // speed of game outside of quick menu
        [SerializeField] private float qSpeed; // factor to slow speed during menu

        void Awake() {
            bInQuickMenu = false;
        }

        public void controlInterface(ButtonPresses btns) {
            // If quick menu button has been pressed, exit the quick menu
            if (btns.qMenu) {
                exitMenu();
                return;
            }



        }

        public void initMenu() {
            bInQuickMenu = true;
            prevSpeed = Time.timeScale;
            UGen.setSpeed(prevSpeed * qSpeed);
        }

        public void exitMenu() {
            bInQuickMenu = false;
            UGen.setSpeed(prevSpeed);
        }

        public bool isOpen() {
            return bInQuickMenu;
        }
    } // close class
} // close namespace

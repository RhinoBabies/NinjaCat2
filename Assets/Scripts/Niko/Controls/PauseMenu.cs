using System;
using UnityEngine;
using UnityEngine.UI;
using Ninjacat.Utility;
using Assets.Scripts.Camera;

namespace Ninjacat.Characters.Control {
    public class PauseMenu : MonoBehaviour, IMenuControl
    {
        public void controlInterface(ButtonPresses btns) {
            // If pause button has been pressed, exit the pause menu
            if (btns.pause) {
                exitMenu();
                return;
            }
        }

        public void initMenu() {
            UGen.pause();
            HUD.hud.MenuBG.gameObject.SetActive(true);
        }

        public void exitMenu() {
            HUD.hud.MenuBG.gameObject.SetActive(false);
            UGen.resume();
        }
    } // close class
} // close namespace

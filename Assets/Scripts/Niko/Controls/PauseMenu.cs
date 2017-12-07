using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ninjacat.Utility;
using Assets.Scripts.Camera;

namespace Ninjacat.Characters.Control {
    public class PauseMenu : MonoBehaviour, IMenuControl
    {
        // ====================================================================
        // *                          MENU PROPERTIES                         *
        // ====================================================================

        private const float UNSELECTED_ALPHA = 0.5f;

        [SerializeField] private Image img;
        private UMenu.MenuMovement movement;     // movement controls
        private List<UMenu.MenuOption> options;  // the currently-selectable options
        private List<UMenu.MenuOption> mainMenu; // the selectable options of the main menu
        private int selected;                    // index of the selected option
        


        private void Awake() {
            // Initialize values
            movement = new UMenu.MenuMovement();
            mainMenu = new List<UMenu.MenuOption>();
            selected = 0;

            // Build menus
            buildMainMenu();
        }

        // ====================================================================
        // *                           MENU CONTROLS                          *
        // ====================================================================

        /// <summary>
        /// Called on update to interface with menu.
        /// </summary>
        /// <param name="btns">Player input.</param>
        public void controlInterface(ButtonPresses btns) {
            // Store index of currently selected option
            int prevSelected = selected;

            // If pause button has been pressed, exit the pause menu
            if (btns.pause) {
                exitMenu();
                return;
            }

            // Traverse the menu
            movement.setMenuMovement(btns);
            if (movement.moveUp)
                selected = (selected + options.Count - 1) % options.Count;
            else if (movement.moveDown)
                selected = (selected + options.Count + 1) % options.Count;

            // Show which item is selected
            options[prevSelected].display.canvasRenderer.SetAlpha(UNSELECTED_ALPHA);
            options[selected].display.canvasRenderer.SetAlpha(1.0f);
        }



        // ====================================================================
        // *                              MAIN MENU                           *
        // ====================================================================

        private const float FIRST_LOC_MAIN = 300.0f;
        private const float ITEM_SPACING_MAIN = 100.0f;

        /// <summary>
        /// Builds a menu option for the main menu.
        /// </summary>
        /// <param name="path">Path to sprite.</param>
        /// <param name="action">Function to call when selected.</param>
        private UMenu.MenuOption buildMainMenuOption(string path, UMenu.OptionAction action) {
            UMenu.MenuOption ret = new UMenu.MenuOption();

            // Set the function performed by the option
            ret.action = action;

            // Set the image properties
            ret.display = Instantiate(img);
            ret.display.sprite = Resources.Load<Sprite>(path);
            ret.display.rectTransform.SetParent(HUD.hud.MenuBG.rectTransform);
            ret.display.rectTransform.anchoredPosition = new Vector2(0.0f, FIRST_LOC_MAIN - mainMenu.Count * ITEM_SPACING_MAIN);
            ret.display.SetNativeSize();

            return ret;
        }



        /// <summary>
        /// Build the Main Menu.
        /// </summary>
        private void buildMainMenu() {
            mainMenu.Add(buildMainMenuOption("Menu/Resume", null));
            mainMenu.Add(buildMainMenuOption("Menu/Save", null));
            mainMenu.Add(buildMainMenuOption("Menu/Load", null));
            mainMenu.Add(buildMainMenuOption("Menu/Options", null));
            mainMenu.Add(buildMainMenuOption("Menu/TitleScreen", null));
        }
        


        // ====================================================================
        // *                    TO ENTER AND EXIT PAUSE MENU                  *
        // ====================================================================

        /// <summary>
        /// Called when menu is entered.
        /// </summary>
        public void initMenu() {
            UGen.pause();
            HUD.hud.MenuBG.gameObject.SetActive(true);
            movement.init();
            options = mainMenu;
            selected = 0;
            for (int i = 1; i < options.Count; i++)
                options[i].display.canvasRenderer.SetAlpha(UNSELECTED_ALPHA);
        }

        /// <summary>
        /// Called to exit menu.
        /// </summary>
        public void exitMenu() {
            HUD.hud.MenuBG.gameObject.SetActive(false);
            UGen.resume();
        }

    } // close class
} // close namespace

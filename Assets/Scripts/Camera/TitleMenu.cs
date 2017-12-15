using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ninjacat.Utility;
using Assets.Scripts.Camera;
using Ninjacat.Characters.Control;
using Ninjacat.Data;
using UnityEngine.SceneManagement;

namespace Ninjacat.Menus
{
    public class TitleMenu : MonoBehaviour
    {
        // ====================================================================
        // *                         MENU PROPERTIES                          *
        // ====================================================================

        private const float UNSELECTED_ALPHA = 0.25f;

        [SerializeField] private Image img;
        private UMenu.MenuMovement movement;     // movement controls
        private List<UMenu.MenuOption> options;  // the currently-selectable options
        private List<UMenu.MenuOption> mainMenu; // the selectable options of the main menu
        private List<UMenu.MenuOption> optMenu;  // the selectable options of the options menu
        private int selected;                    // index of the selected option
        private bool inMenu;

        ButtonPresses btns;



        private void Start()
        {
            // Initialize values
            btns = new ButtonPresses();
            btns.setPersistent(false);
            btns.setPresses(false);
            movement = new UMenu.MenuMovement();
            mainMenu = new List<UMenu.MenuOption>();
            optMenu = new List<UMenu.MenuOption>();
            selected = 0;
            inMenu = false;

            // Build menus
            buildMainMenu();
            buildOptionsMenu();
        }

        // ====================================================================
        // *                           MENU CONTROLS                          *
        // ====================================================================

        // Get Input Information and Deal with Menus
        private void Update()
        {
            // Joysticks
            btns.hori = Input.GetAxis("Horizontal");
            btns.vert = Input.GetAxis("Vertical");
            btns.camHori = Input.GetAxis("CamHori");
            btns.camVert = Input.GetAxis("CamVert");

            // Buttons
            if (Input.GetButtonDown("Jump"))
                btns.jump = true;

            if (Input.GetButtonDown("Crouch"))
                btns.crouch = true;

            if (Input.GetButtonDown("Dodge"))
                btns.dodge = true;

            if (Input.GetButtonDown("Interact"))
                btns.interact = true;

            if (Input.GetButtonDown("AttackWeak"))
                btns.atkWeak = true;

            if (Input.GetAxis("AttackStrong") > 0.5f)
                btns.atkStrong = true;

            if (Input.GetAxis("Block") > 0.5f || Input.GetButton("Block"))
                btns.block = true;
            else
                btns.block = false;

            if (Input.GetAxis("Items13") < -0.5f)
            {
                btns.item1 = true;
                btns.item3 = false;
            }
            else if (Input.GetAxis("Items13") > 0.5f)
            {
                btns.item1 = false;
                btns.item3 = true;
            }

            if (Input.GetAxis("Items24") > 0.5f)
            {
                btns.item2 = true;
                btns.item4 = false;
            }
            else if (Input.GetAxis("Items24") < -0.5f)
            {
                btns.item2 = false;
                btns.item4 = true;
            }

            if (Input.GetButtonDown("QuickMenu"))
                btns.qMenu = true;

            if (Input.GetButtonDown("LockOn"))
                btns.lockOn = true;

            if (Input.GetButtonDown("Pause"))
                btns.pause = true;

            if (Input.GetButtonDown("ShowMap"))
                btns.showMap = true;

            if (Input.GetButtonDown("Walk"))
                btns.walk = true;
            else
                btns.walk = false;
        }

        /// <summary>
        /// Called on update to interface with menu.
        /// </summary>
        /// <param name="btns">Player input.</param>
        public void FixedUpdate()
        {
            // Store index of currently selected option
            int prevSelected = selected;

            // If you aren't in menu, check for the pause button
            // If it hasn't been pressed, don't do anything else
            if (!inMenu)
            {
                if (btns.pause)
                {
                    PressStart.ps.hideText();
                    inMenu = true;
                    initMenu();
                }
                else
                    return;
            }

            // If there are no options, don't do anything
            if (options.Count == 0)
                return;

            // If select button has been pressed, select an item
            if (btns.jump)
            {
                if (options[selected].action != null)
                    options[selected].action();
            }
            else
            {
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

            // Set button presses false
            btns.setPresses(false);
        }



        // ====================================================================
        // *                            MAIN MENU                             *
        // ====================================================================

        private const float FIRST_LOC_MAIN = -200.0f;
        private const float ITEM_SPACING_MAIN = 100.0f;

        /// <summary>
        /// Load the first level scene.
        /// </summary>
        private void newGameAction()
        {
            SceneManager.LoadScene("Kazan_Daytime");
        }

        /// <summary>
        /// Load the options menu.
        /// </summary>
        private void optionsAction()
        {
            enterOptionsMenu();
        }

        /// <summary>
        /// Exits to Windows.
        /// </summary>
        private void exitGameAction()
        {
            Application.Quit();
        }

        /// <summary>
        /// Builds a menu option for the main menu.
        /// </summary>
        /// <param name="path">Path to sprite.</param>
        /// <param name="action">Function to call when selected.</param>
        private UMenu.MenuOption buildMainMenuOption(string path, UMenu.OptionAction action)
        {
            UMenu.MenuOption ret = new UMenu.MenuOption();

            // Set the function performed by the option
            ret.action = action;

            // Set the image properties
            ret.display = Instantiate(img);
            ret.display.sprite = Resources.Load<Sprite>(path);
            ret.display.rectTransform.SetParent(this.transform);
            ret.display.rectTransform.anchoredPosition = new Vector2(0.0f, FIRST_LOC_MAIN - mainMenu.Count * ITEM_SPACING_MAIN);
            ret.display.SetNativeSize();
            ret.display.canvasRenderer.SetAlpha(0.0f);

            return ret;
        }



        /// <summary>
        /// Build the Main Menu.
        /// </summary>
        private void buildMainMenu()
        {
            mainMenu.Add(buildMainMenuOption("Menu/NewGame", newGameAction));
            mainMenu.Add(buildMainMenuOption("Menu/Options", optionsAction));
            mainMenu.Add(buildMainMenuOption("Menu/QuitGame", exitGameAction));
        }

        /// <summary>
        /// Enter the Main Menu.
        /// </summary>
        private void enterMainMenu()
        {
            // Make previous menu invisible
            if (options != null)
            {
                foreach (UMenu.MenuOption option in options)
                    option.display.canvasRenderer.SetAlpha(0.0f);
            }
            checkX.canvasRenderer.SetAlpha(0.0f);
            checkY.canvasRenderer.SetAlpha(0.0f);

            // Make main menu active
            options = mainMenu;
            selected = 0;
            options[0].display.canvasRenderer.SetAlpha(1.0f);
            for (int i = 1; i < options.Count; i++)
                options[i].display.canvasRenderer.SetAlpha(UNSELECTED_ALPHA);
        }



        // ====================================================================
        // *                          OPTIONS MENU                            *
        // ====================================================================

        private const float FIRST_LOC_OPT = -200.0f;
        private const float ITEM_SPACING_OPT = 100.0f;
        private const float CHECKMARK_OFFSET = 280.0f;

        private Image checkX;
        private Image checkY;

        private void backAction()
        {
            enterMainMenu();
        }

        private void invertXAction()
        {
            GameData.data.orientX *= -1;
            if (GameData.data.orientX == 1)
                checkX.canvasRenderer.SetAlpha(0.0f);
            else
                checkX.canvasRenderer.SetAlpha(1.0f);
        }

        private void invertYAction()
        {
            GameData.data.orientY *= -1;
            if (GameData.data.orientY == 1)
                checkY.canvasRenderer.SetAlpha(0.0f);
            else
                checkY.canvasRenderer.SetAlpha(1.0f);
        }

        /// <summary>
        /// Builds a menu option for the options menu.
        /// </summary>
        /// <param name="path">Path to sprite.</param>
        /// <param name="action">Function to call when selected.</param>
        private UMenu.MenuOption buildOptionsMenuOption(string path, UMenu.OptionAction action)
        {
            UMenu.MenuOption ret = new UMenu.MenuOption();

            // Set the function performed by the option
            ret.action = action;

            // Set the image properties
            ret.display = Instantiate(img);
            ret.display.sprite = Resources.Load<Sprite>(path);
            ret.display.rectTransform.SetParent(this.transform);
            ret.display.rectTransform.anchoredPosition = new Vector2(0.0f, FIRST_LOC_OPT - optMenu.Count * ITEM_SPACING_OPT);
            ret.display.SetNativeSize();
            ret.display.canvasRenderer.SetAlpha(0.0f);

            return ret;
        }



        /// <summary>
        /// Build the Main Menu.
        /// </summary>
        private void buildOptionsMenu()
        {
            optMenu.Add(buildOptionsMenuOption("Menu/Back", backAction));
            optMenu.Add(buildOptionsMenuOption("Menu/InvertX", invertXAction));
            optMenu.Add(buildOptionsMenuOption("Menu/InvertY", invertYAction));

            // Checkmark for InvertX option
            checkX = Instantiate(img);
            checkX.sprite = Resources.Load<Sprite>("Menu/Checkmark");
            checkX.rectTransform.SetParent(this.transform);
            checkX.rectTransform.anchoredPosition = optMenu[1].display.rectTransform.anchoredPosition + new Vector2(CHECKMARK_OFFSET, 0.0f);
            checkX.SetNativeSize();
            checkX.canvasRenderer.SetAlpha(0.0f);

            // Checkmark for InvertY option
            checkY = Instantiate(img);
            checkY.sprite = Resources.Load<Sprite>("Menu/Checkmark");
            checkY.rectTransform.SetParent(this.transform);
            checkY.rectTransform.anchoredPosition = optMenu[2].display.rectTransform.anchoredPosition + new Vector2(CHECKMARK_OFFSET, 0.0f);
            checkY.SetNativeSize();
            checkY.canvasRenderer.SetAlpha(0.0f);
        }

        /// <summary>
        /// Enter the Options Menu.
        /// </summary>
        private void enterOptionsMenu()
        {
            // Make previous menu invisible
            if (options != null)
            {
                foreach (UMenu.MenuOption option in options)
                    option.display.canvasRenderer.SetAlpha(0.0f);
            }

            // Make options menu active
            selected = 0;
            options = optMenu;
            options[0].display.canvasRenderer.SetAlpha(1.0f);
            for (int i = 1; i < options.Count; i++)
                options[i].display.canvasRenderer.SetAlpha(UNSELECTED_ALPHA);

            if (GameData.data.orientX == -1)
                checkX.canvasRenderer.SetAlpha(1.0f);
            if (GameData.data.orientY == -1)
                checkY.canvasRenderer.SetAlpha(1.0f);
        }



        // ====================================================================
        // *                   TO ENTER AND EXIT PAUSE MENU                   *
        // ====================================================================

        /// <summary>
        /// Called when menu is entered.
        /// </summary>
        public void initMenu()
        {
            movement.init();
            enterMainMenu();
        }

        /// <summary>
        /// Called to exit menu.
        /// </summary>
        public void exitMenu()
        {
            foreach (UMenu.MenuOption option in options)
                option.display.canvasRenderer.SetAlpha(0.0f);
            checkX.canvasRenderer.SetAlpha(0.0f);
            checkY.canvasRenderer.SetAlpha(0.0f);
        }

    } // close class
} // close namespace

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ninjacat.Characters.Control;

namespace Ninjacat.Utility {

    /// <summary>
    /// Utility class for menus.
    /// </summary>
    static public class UMenu {

        // =========================
        // * MENU OPTION STRUCTURE *
        // =========================

        /// <summary>
        /// The action to take when the menu option has been selected.
        /// </summary>
        public delegate void OptionAction();

        /// <summary>
        /// Struct describing a single menu option.
        /// </summary>
        public struct MenuOption {
            public Image display;
            public OptionAction action;
        }



        // ==========================
        // * MOVEMENT THROUGH MENUS *
        // ==========================

        /// <summary>
        /// Movements through menu.
        /// </summary>
        public class MenuMovement {
            // CONSTANTS
            private const int FRAMES_TO_WAIT = 30;
            private const int FRAMES_RESET = 20;

            // Movement variables
            public bool moveUp;
            public bool moveDown;
            public bool moveLeft;
            public bool moveRight;

            // Variables to help determine movement characteristics
            private int framesHeldUp;
            private int framesHeldDown;
            private int framesHeldLeft;
            private int framesHeldRight;

            /// <summary>
            /// Initialize variables for MenuMovement class
            /// </summary>
            public void init() {
                moveUp = false;
                moveDown = false;
                moveLeft = false;
                moveRight = false;

                framesHeldUp = 0;
                framesHeldDown = 0;
                framesHeldLeft = 0;
                framesHeldRight = 0;
            }

            /// <summary>
            /// Returns the menu movement.
            /// </summary>
            /// <param name="btns">Player input.</param>
            public void setMenuMovement(ButtonPresses btns) {
                // get up button
                if (btns.vert > 0.0f) { // if up is pressed
                    framesHeldUp++;
                    if (framesHeldUp == 1) // if this is the first frame that up has been pressed
                        moveUp = true;
                    else if (framesHeldUp > FRAMES_TO_WAIT) { // or if enough time has passed
                        moveUp = true;
                        framesHeldUp = FRAMES_RESET;
                    }
                    else // else don't move up
                        moveUp = false;
                }
                else { // up is not pressed
                    moveUp = false;
                    framesHeldUp = 0;
                }

                // get down button
                if (btns.vert < 0.0f) { // if down is pressed
                    framesHeldDown++;
                    if (framesHeldDown == 1) // if this is the first frame that down has been pressed
                        moveDown = true;
                    else if (framesHeldDown > FRAMES_TO_WAIT) { // or if enough time has passed
                        moveDown = true;
                        framesHeldDown = FRAMES_RESET;
                    }
                    else // else don't move down
                        moveDown = false;
                }
                else { // down is not pressed
                    moveDown = false;
                    framesHeldDown = 0;
                }

                // get left button
                if (btns.hori < 0.0f) {
                    framesHeldLeft++;
                    if (framesHeldLeft == 1) // if this is the first frame that left has been pressed
                        moveLeft = true;
                    else if (framesHeldLeft > FRAMES_TO_WAIT) { // or if enough time has passed
                        moveLeft = true;
                        framesHeldLeft = FRAMES_RESET;
                    }
                    else // else don't move left
                        moveLeft = false;
                }
                else { // left is not pressed
                    moveLeft = false;
                    framesHeldLeft = 0;
                }

                // get right button
                if (btns.hori > 0.0f) {
                    framesHeldRight++;
                    if (framesHeldRight == 1) // if this is the first frame that reight has been pressed
                        moveRight = true;
                    else if (framesHeldRight > FRAMES_TO_WAIT) { // or if enough time has passed
                        moveRight = true;
                        framesHeldRight = FRAMES_RESET;
                    }
                    else // else don't move right
                        moveRight = false;
                }
                else { // right is not pressed
                    moveRight = false;
                    framesHeldRight = 0;
                }
                
            }
        } // close MenuMovement



    } // close UMenu
} // close namespace

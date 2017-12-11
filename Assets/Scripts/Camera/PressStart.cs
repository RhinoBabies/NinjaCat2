using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Ninjacat.Menus
{
    public class PressStart : MonoBehaviour
    {
        public static PressStart ps;
        private const float START_ALPHA = -0.1f;
        private const float END_ALPHA = 0.8f;
        private const float INC_ALPHA = 0.01f;
        private Text text;
        private Color col;
        private bool fadingIn;
        private bool bOff;

        // Use this for initialization
        void Start()
        {
            ps = this;

            // Get Text
            text = gameObject.GetComponent<Text>();

            // Set Colors
            col = text.color;
            col.a = START_ALPHA;
            text.color = col;

            // Start by fading in
            fadingIn = true;
            bOff = false;
        }

        // Update is called once per frame
        void Update()
        {
            if (bOff)
                return;

            // Fade In
            if (fadingIn)
            {
                col.a += INC_ALPHA;
                text.color = col;
                if (text.color.a >= END_ALPHA)
                    fadingIn = false;
            }
            // Fade Out
            else
            {
                col.a -= INC_ALPHA;
                text.color = col;
                if (text.color.a <= START_ALPHA)
                    fadingIn = true;
            }
        }

        public void hideText()
        {
            bOff = true;
            text.enabled = false;
        }

    } // close class
} // close namespace

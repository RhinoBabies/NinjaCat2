using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.UI;

namespace Assets.Scripts.Camera {
    public class HUD : MonoBehaviour {
        public static HUD hud;

        // DIALOGUE BOX
        public Text DialogueText;
        public Image DialogueBG;
        public Image DialoguePortrait;

        // MENU
        public Image MenuBG;

        // HEALTH
        public Slider HealthSlider;
        public Image DamageImage;

        private void Awake() {
            if (hud == null) {
                DontDestroyOnLoad(this.gameObject);
                hud = this;
            }
            else if (hud != this)
                Destroy(this.gameObject);
        }
    }
}

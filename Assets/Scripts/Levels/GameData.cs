using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.UI;

namespace Ninjacat.Data
{
    public class GameData : MonoBehaviour
    {
        public static GameData data;

        // Camera Orientation
        public int orientX;
        public int orientY;
        public int heroCurrHealth;

        private void Awake()
        {
            if (data == null)
            {
                DontDestroyOnLoad(this.gameObject);
                data = this;
            }
            else if (data != this)
                Destroy(this.gameObject);

            // Set default options
            orientX = 1;
            orientY = 1;
            heroCurrHealth = 1000;
        }
    }
}

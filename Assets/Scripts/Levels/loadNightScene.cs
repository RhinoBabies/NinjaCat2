using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ninjacat.Utility;

public class loadNightScene : IInteract {

        protected override void handleInteraction(GameObject obj)
        {
            levelLoader.lvlLoader.SendMessage("loadNextScene", "finalLevel");
        }

        protected override void confirmInteraction(GameObject obj)
        {
            //don't need confirmation
        }
}

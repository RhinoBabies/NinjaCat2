using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ninjacat.Utility;
using System;

public class changeSceneDoor : IInteract {

    public levelLoader loader;

    protected override void handleInteraction(GameObject obj)
    {
        loader.SendMessage("loadNextScene", "throne_room");
    }

    protected override void confirmInteraction(GameObject obj)
    {
        //don't need confirmation
    }
}

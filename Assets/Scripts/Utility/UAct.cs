using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace Ninjacat.Utility
{
    /// <summary>
    /// Abstract class for interaction scripts. Inherits UnityEngine's MonoBehaviour.
    /// </summary>
    public abstract class IInteract: MonoBehaviour {

        abstract protected void handleInteraction(GameObject obj);

        virtual protected void confirmInteraction(GameObject obj) {
            obj.SendMessage("ConfirmInteraction", this.gameObject);
        }

        virtual protected void endInteraction(GameObject obj) {
            obj.SendMessage("EndInteraction", this.gameObject);
        }
    }
    /// <summary>
    /// Utility class for interactable objects.
    /// </summary>
    static public class UAct {



    } // close class
} // close namespace

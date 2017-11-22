using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace Ninjacat.Utility {

    /// <summary>
    /// Utility class for characters.
    /// </summary>
    static public class UChar {

        // =========================
        // * DELEGATE DECLARATIONS *
        // =========================

        /// <summary>
        /// Calculates a score for the likelihood an object was the target.
        /// </summary>
        /// <remarks>Higher score means more likely.</remarks>
        /// <param name="character">Character that is targeting.</param>
        /// <param name="obj">The target.</param>
        /// <returns>The score</returns>
        public delegate float ScoreFunc(UGen.PseudoTransform character, Collider obj);



        /// <summary>
        /// Attempts to hit a nearby target with a ray cast. Takes PseudoTransform.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">Maximum angle of the cast.</param>
        /// <param name="distance">Maximum distance of the cast.</param>
        /// <returns></returns>
        public delegate bool RayFunc(UGen.PseudoTransform charTrans, Collider obj, float angle, float distance);





        // ======================================
        // * SCORE CALCULATION PUBLIC FUNCTIONS *
        // ======================================

        /// <summary>
        /// Calculates a score for the likelihood an object was the target based purely on angle toward target center.
        /// </summary>
        /// <remarks>Higher score means more likely.</remarks>
        /// <param name="character">Character that is targeting.</param>
        /// <param name="obj">The target.</param>
        /// <returns>The score</returns>
        static public float aimCenterScore(UGen.PseudoTransform character, Collider obj) {
            Vector3 objDirection; // direction from character to center of object
            float angle;          // angle between character's forward direction and the objDirection

            objDirection = obj.bounds.center - character.position;

            angle = Vector3.Angle(character.forward, objDirection);

            return (1.0f / angle);
        }





        // ======================================
        // * CONE LINE OF SIGHT PUBLIC FUNCTION *
        // ======================================

        /// <summary>
        /// Try to hit nearby object in a cone in front of character. Need LOS.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">Angle of cone.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
		static public bool coneLOS(UGen.PseudoTransform charTrans, Collider obj, float angle, float distance)
		{
			RaycastHit hit;
            Vector3 centerPoint;
            Vector3 rayDirection;

            // get the closest point of the object to the character
            centerPoint = UGen.getCenter(obj.gameObject);

			// direction toward object
			rayDirection = centerPoint - charTrans.position;

			// check if object falls within the cone's direction
			if (Vector3.Angle(rayDirection, charTrans.forward) <= angle)
			{
				Debug.DrawLine(charTrans.position, centerPoint, Color.red, 5.0f, true);
				// detect if object is within distance and LOS
				if (Physics.Raycast(charTrans.position, rayDirection, out hit, distance, Int32.MaxValue - (int)UGen.eLayerMask.PLAYER))
				{
					// if it hit the object you were looking for
					if (hit.collider.GetInstanceID() == obj.GetInstanceID())
						return true;
				}
			}

			// object was not hit
			return false;
		}



        /// <summary>
        /// Try to hit nearby object in a cone in front of character. Need LOS.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">Angle of cone.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
        static bool coneLOS(Transform charTrans, Collider obj, float angle, float distance) {
            UGen.PseudoTransform ct;

            ct = UGen.setPseudo(charTrans);

            return coneLOS(ct, obj, angle, distance);
        }





        // ==========================================
        // * CONICOID LINE OF SIGHT PUBLIC FUNCTION *
        // ==========================================

        /// <summary>
        /// Try to hit nearby object in a conicoid in front of character. Need LOS. Y axis angle is unimportant.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">XZ angle of conicoid.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
        static public bool conicoidLOS(UGen.PseudoTransform charTrans, Collider obj, float angle, float distance)
        {
            RaycastHit hit;
            Vector3 centerPoint;
            Vector3 rayDirection;
            Vector2 rayXZ;        // X and Z components of rayDirection
            Vector2 forwardXZ;    // X and Z components of charTrans.forward
            Vector2 rayY;         // Y component of rayDirection
            Vector2 forwardY;     // Y component of forward

            // get the closest point of the object to the character
            centerPoint = UGen.getCenter(obj.gameObject);

            // direction toward object
            rayDirection = centerPoint - charTrans.position;

            // get Vector2 equivalents to rayDirection and charTrans.forward
            rayXZ.x = rayDirection.x;
            rayXZ.y = rayDirection.z;
            forwardXZ.x = charTrans.forward.x;
            forwardXZ.y = charTrans.forward.z;
            rayY.x = rayDirection.y;
            rayY.y = 0.0f;
            forwardY.x = charTrans.forward.y;
            forwardY.y = 0.0f;

            // check if object falls within the cone's direction
            if (Vector2.Angle(rayXZ, forwardXZ) <= angle && Vector2.Angle(rayY, forwardY) <= 90.0f)
            {
                Debug.DrawLine(charTrans.position, centerPoint, Color.red, 5.0f, true);
                // detect if object is within distance and LOS
                if (Physics.Raycast(charTrans.position, rayDirection, out hit, distance, Int32.MaxValue - (int)UGen.eLayerMask.PLAYER))
                {
                    // if it hit the object you were looking for
                    if (hit.collider.GetInstanceID() == obj.GetInstanceID())
                        return true;
                }
            }

            // object was not hit
            return false;
        }



        /// <summary>
        /// Try to hit nearby object in a conidcoid in front of character. Need LOS. Y axis angle is unimportant.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">XZ angle of conicoid.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
        static bool conicoidLOS(Transform charTrans, Collider obj, float angle, float distance)
        {
            UGen.PseudoTransform ct;

            ct = UGen.setPseudo(charTrans);

            return conicoidLOS(ct, obj, angle, distance);
        }





        // =======================================
        // * WEDGE LINE OF SIGHT PUBLIC FUNCTION *
        // =======================================

        /// <summary>
        /// Try to hit nearby object in a wedge in front of character. Need LOS.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">Angle of wedge.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
		static public bool wedgeLOS(UGen.PseudoTransform charTrans, Collider obj, float angle, float distance)
        {
            RaycastHit hit;
            Vector3 centerPoint;
            Vector3 rayDirection;
            Vector2 rayXZ;        // X and Z components of rayDirection
            Vector2 forwardXZ;    // X and Z components of charTrans.forward
            Vector2 rayY;         // Y component of rayDirection
            Vector2 forwardY;     // Y component of forward

            // get the closest point of the object to the character
            centerPoint = UGen.getCenter(obj.gameObject);

            // direction toward object
            rayDirection = centerPoint - charTrans.position;

            // get Vector2 equivalents to rayDirection and charTrans.forward
            rayXZ.x = rayDirection.x;
            rayXZ.y = rayDirection.z;
            forwardXZ.x = charTrans.forward.x;
            forwardXZ.y = charTrans.forward.z;
            rayY.x = rayDirection.y;
            rayY.y = 0.0f;
            forwardY.x = charTrans.forward.y;
            forwardY.y = 0.0f;

            // check to make sure object is not completely above or below character's collider
            if (!(UGen.getTop(obj.gameObject).y < UGen.getBottom(charTrans.gameObject).y || UGen.getBottom(obj.gameObject).y > UGen.getTop(charTrans.gameObject).y))
            {
                // check if object falls within the cone's direction
                if (Vector2.Angle(rayXZ, forwardXZ) <= angle && Vector2.Angle(rayY, forwardY) <= 90.0f)
                {
                    Debug.DrawLine(charTrans.position, centerPoint, Color.red, 5.0f, true);
                    // detect if object is within distance and LOS
                    if (Physics.Raycast(charTrans.position, rayDirection, out hit, distance, Int32.MaxValue - (int)UGen.eLayerMask.PLAYER))
                    {
                        // if it hit the object you were looking for
                        if (hit.collider.GetInstanceID() == obj.GetInstanceID())
                            return true;
                    }
                }
            }

            // object was not hit
            return false;
        }



        /// <summary>
        /// Try to hit nearby object in a wedge in front of character. Need LOS.
        /// </summary>
        /// <param name="charTrans">Transform information of the character making the hit.</param>
        /// <param name="obj">Object of the hit attempt.</param>
        /// <param name="angle">Angle of wedge.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>True if object is hit, else false.</returns>
        static bool wedgeLOS(Transform charTrans, Collider obj, float angle, float distance)
        {
            UGen.PseudoTransform ct;

            ct = UGen.setPseudo(charTrans);

            return wedgeLOS(ct, obj, angle, distance);
        }





        // ================================
        // * ACT ON LAYER PUBLIC FUNCTION *
        // ================================

        /// <summary>
        /// Interact with nearby object of given type (layer).
        /// </summary>
        /// <param name="rayFunc">The method for attempting a hit.</param>
        /// <param name="character">The character attempting the interaction.</param>
        /// <param name="layerMask">Bit mask of layers to attempt interaction with.</param>
        /// <param name="angle">Angle of cone.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <param name="calcScore">The function to calculate target likelihood.</param>
        /// <returns>Object interacted with, or null if none.</returns>
		static public GameObject actOnLayer(RayFunc rayFunc, GameObject character, int layerMask, float angle, float distance, ScoreFunc calcScore) {
			GameObject ret = null;          // game object returned by function
			float bestScore;                // score for best candidate for target
			float currScore;                // score for current object
            UGen.PseudoTransform charTrans; // character transform, whose position has been moved to the collider's center

            // set charTrans to character's transform information, but move position to center of character
            charTrans = UGen.setPseudo(character.transform);
            charTrans.position = UGen.getCenter(character);

			// Get list of nearby objects in desired layers
			Collider[] objects = Physics.OverlapSphere(charTrans.position, distance, layerMask);

            // get the likeliest target object
			bestScore = float.MinValue; // initialize bestScore
			foreach (Collider obj in objects) { // check each nearby object
				if (rayFunc(charTrans, obj, angle, distance)) { // if object was hit, check its target score
					currScore = calcScore(charTrans, obj);
					if (currScore >= bestScore) { // if it's likelier to be the target, set it as the target
						bestScore = currScore;
						ret = obj.gameObject;
					}
				}
			}

			return ret;
		}



        /// <summary>
        /// Interact with nearby object of given type (layer).
        /// </summary>
        /// <param name="rayFunc">The method for attempting a hit.</param>
        /// <param name="character">The character attempting the interaction.</param>
        /// <param name="layerMask">Bit mask of layers to attempt interaction with.</param>
        /// <param name="angle">Maximum angle of the hit attempt.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>Object interacted with, or null if none.</returns>
        static public GameObject actOnLayer(RayFunc rayFunc, GameObject character, int layerMask, float angle, float distance) {
            return actOnLayer(rayFunc, character, layerMask, angle, distance, aimCenterScore);
        }



        /// <summary>
        /// Interact with nearby object of given type (layer) in wedge in front of character.
        /// </summary>
        /// <param name="character">The character attempting the interaction.</param>
        /// <param name="layerMask">Bit mask of layers to attempt interaction with.</param>
        /// <param name="angle">Maximum angle of the hit attempt.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <param name="calcScore">The function to calculate target likelihood.</param>
        /// <returns>Object interacted with, or null if none.</returns>
        static public GameObject actOnLayer(GameObject character, int layerMask, float angle, float distance, ScoreFunc calcScore)
        {
            return actOnLayer(wedgeLOS, character, layerMask, angle, distance, calcScore);
        }



        /// <summary>
        /// Interact with nearby object of given type (layer) in wedge in front of character.
        /// </summary>
        /// <param name="character">The character attempting the interaction.</param>
        /// <param name="layerMask">Bit mask of layers to attempt interaction with.</param>
        /// <param name="angle">Maximum angle of the wedge.</param>
        /// <param name="distance">The maximum reach of the hit attempt.</param>
        /// <returns>Object interacted with, or null if none.</returns>
        static public GameObject actOnLayer(GameObject character, int layerMask, float angle, float distance)
        {
            return actOnLayer(wedgeLOS, character, layerMask, angle, distance, aimCenterScore);
        }



    } // close class
} // close namespace

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Ninjacat.Utility {

	/// <summary>
	/// General utility class.
	/// </summary>
	static public class UGen {

        // ==========================
        // * PSEUDOTRANSFORM OBJECT *
        // ==========================

        /// <summary>
        /// Public struct similar to GameObject.Transform.
        /// </summary>
        public struct PseudoTransform {
            public GameObject gameObject;
            public Quaternion rotation;
            public Vector3 position;
            public Vector3 scale;
            public Vector3 forward;
        }



        /// <summary>
        /// Returns a PseudoTransform whose properties are equal to those of the passed Transform.
        /// </summary>
        /// <param name="t">The Transform whose properties will be assigned.</param>
        /// <returns>PseudoTransform similar to the Transform.</returns>
        public static PseudoTransform setPseudo(Transform t) {
            PseudoTransform ret;
            ret.gameObject = t.gameObject;
            ret.rotation = t.rotation;
            ret.position = t.position;
            ret.scale = t.localScale;
            ret.forward = t.forward;

            return ret;
        }





		// =============
		// * CONSTANTS *
		// =============

		private const float NORMAL_SPEED = 1.0f;

		public enum eLayerNum {
			PLAYER = 8,
			ENEMY = 9,
			NPC = 10,
			TOUCH_OBJECT = 11
		};

		public enum eLayerMask {
			PLAYER = 256,       // 2 ^ 8
			ENEMY = 512,        // 2 ^ 9
			NPC = 1024,         // 2 ^ 10
			TOUCH_OBJECT = 2048 // 2 ^ 11
		};






		// ======================
		// * PRIVATE PROPERTIES *
		// ======================

		static private float currentSpeed = NORMAL_SPEED;
        static private bool bPaused = false;





        // =========================================
		// * PUBLIC METHODS FOR CHANGING GAMESPEED *
		// =========================================

		/// <summary>
		/// Pauses the game by setting the timescale equal to zero.
		/// </summary>
		/// <remarks>FixedUpdate does not run when paused.</remarks>
		static public void pause()
		{
			Time.timeScale = 0.0f;
            bPaused = true;
		}



		/// <summary>
		/// Resumes the game by setting the timescale back to normal.
		/// </summary>
		static public void resume()
		{
			Time.timeScale = currentSpeed;
            bPaused = false;
		}



		/// <summary>
		/// Returns the timescale to the normal game speed.
		/// </summary>
		static public void normalSpeed() {
			Time.timeScale = NORMAL_SPEED;
			currentSpeed = NORMAL_SPEED;
            bPaused = false;
		}



		/// <summary>
		/// Sets the timescale to the given speed. Does not resume if game is paused.
		/// </summary>
		/// <param name="speed">Value to set timescale.</param>
		static public void setSpeed(float speed) {
			if (!bPaused)
				Time.timeScale = speed;

			currentSpeed = speed;
            bPaused = false;
		}



        /// <summary>
        /// Returns true if the game is paused.
        /// </summary>
        /// <returns>Pause state.</returns>
        static public bool isPaused() {
            return bPaused;
        }





        // ==================================================
        // * PUBLIC METHODS FOR GETTING POINTS ON COLLIDERS *
        // ==================================================

        /// <summary>
        /// Returns the center of an object's collider.
        /// </summary>
        /// <param name="obj">The object whose center is to be returned.</param>
        /// <returns>The object's center.</returns>
        static public Vector3 getCenter(GameObject obj) {
            return obj.GetComponent<Collider>().bounds.center;
        }


        /// <summary>
        /// Returns the top-center of an object's collider.
        /// </summary>
        /// <param name="obj">The object whose top-center is to be returned.</param>
        /// <returns>The object's top-center.</returns>
        static public Vector3 getTop(GameObject obj) {
            return new Vector3(getCenter(obj).x, getCenter(obj).y + obj.GetComponent<Collider>().bounds.extents.y, getCenter(obj).z);
        }


        /// <summary>
        /// Returns the bottom-center of an object's collider.
        /// </summary>
        /// <param name="obj">The object whose bottom-center is to be returned.</param>
        /// <returns>The object's bottom-center.</returns>
        static public Vector3 getBottom(GameObject obj)
        {
            return new Vector3(getCenter(obj).x, getCenter(obj).y - obj.GetComponent<Collider>().bounds.extents.y, getCenter(obj).z);
        }



        /// <summary>
        /// Returns the point on an object's collider that is closest to the passed location.
        /// </summary>
        /// <param name="obj">The object whose closest point is to be returned.</param>
        /// <param name="pt">The point in space to which the closest point is to be determined.</param>
        /// <returns></returns>
        [System.Obsolete("Collider.ClosestPoint() is bugged for box colliders. Use UGen.getCenter() instead.", true)]
        static public Vector3 getClosest(GameObject obj, Vector3 pt) {
            return obj.GetComponent<Collider>().ClosestPoint(pt);
        }



	} // close class
} // close namespace

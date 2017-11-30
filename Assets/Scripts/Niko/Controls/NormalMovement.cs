using UnityEngine;
using Ninjacat.Utility;

namespace Ninjacat.Characters.Control
{
	[RequireComponent(typeof(Rigidbody))]
	[RequireComponent(typeof(CapsuleCollider))]
	[RequireComponent(typeof(Animator))]
	public class NormalMovement : MonoBehaviour, IControlScheme
	{
		[SerializeField] float m_MovingTurnSpeed = 360;
		[SerializeField] float m_StationaryTurnSpeed = 180;
		[SerializeField] float m_JumpPower = 12f;
		[Range(1f, 4f)][SerializeField] float m_GravityMultiplier = 2f;
		[SerializeField] float m_RunCycleLegOffset = 0.2f; //specific to the character in sample assets, will need to be modified to work with others
		[SerializeField] float m_MoveSpeedMultiplier = 1f;
		[SerializeField] float m_AnimSpeedMultiplier = 1f;
		[SerializeField] float m_GroundCheckDistance = 0.1f;
		[SerializeField] float jumpMobility = 10f;
        [SerializeField] float m_DodgeYSpeed = 3f;
        [SerializeField] float m_DodgeMult = 2f;


        Rigidbody m_Rigidbody;
		Animator m_Animator;
		bool m_IsGrounded;
		float m_OrigGroundCheckDistance;
		const float k_Half = 0.5f;
		float m_TurnAmount;
		float m_ForwardAmount;
		Vector3 m_GroundNormal;
		float m_CapsuleHeight;
		Vector3 m_CapsuleCenter;
		CapsuleCollider m_Capsule;
		bool m_Crouching;
		bool m_Interacting;
        bool m_IsAttacking;
        bool m_IsBlocking;


        GameObject obj_Interact; // object currently being acted on

        // from other file
        private Transform m_Cam;      // A reference to the main camera in the scenes transform
        private Vector3 m_CamForward; // The current forward direction of the camera
        private Vector3 m_Move;       // the world-relative desired move direction, calculated from the camForward and user input.
        private bool m_Jump;          // jump button press
        private bool m_crouch;        // crouch button state (toggle)
        private bool m_dodge;

        //StringToHash IDs for better Animator state responsiveness
        int forwardHash;
		int turnHash;
		int crouchHash;
		int groundedHash;
		int jumpLegHash;
		int jumpHash;
        int attackingHash;
        int blockingHash;
        int dodgeHash;

        int groundedStateHash;
        int crouchingStateHash;
        int airborneStateHash;
        int dodgingStateHash;

        AnimatorStateInfo stateInfo;

        private AudioSource audioSrc;
        public AudioClip jumpingSound;

		void Start()
		{
            audioSrc = GetComponent<AudioSource>();
			m_Animator = GetComponent<Animator>();
			m_Rigidbody = GetComponent<Rigidbody>();
			m_Capsule = GetComponent<CapsuleCollider>();
			m_CapsuleHeight = m_Capsule.height;
			m_CapsuleCenter = m_Capsule.center;
            obj_Interact = null;

			m_Rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
			m_OrigGroundCheckDistance = m_GroundCheckDistance;

            //Animator Controller Parameter hashes
			forwardHash = Animator.StringToHash ("Forward");
			turnHash = Animator.StringToHash ("Turn");
			crouchHash = Animator.StringToHash ("Crouch");
			groundedHash = Animator.StringToHash ("OnGround");
			jumpHash = Animator.StringToHash ("Jump");
			jumpLegHash = Animator.StringToHash ("JumpLeg");
            attackingHash = Animator.StringToHash("Attack");
            blockingHash = Animator.StringToHash("Block");
            dodgeHash = Animator.StringToHash("Dodge");

            //Animator Controller State hashes
            groundedStateHash = Animator.StringToHash ("Grounded");
            crouchingStateHash = Animator.StringToHash("Crouching");
            airborneStateHash = Animator.StringToHash("Airborne");
            dodgingStateHash = Animator.StringToHash("Dodging");

            // from other file
            // get the transform of the main camera
            if (Camera.main != null)
            {
                m_Cam = Camera.main.transform;
            }
            else
            {
                Debug.LogWarning(
                    "Warning: no main camera found. Third person character needs a Camera tagged \"MainCamera\", for camera-relative controls.", gameObject);
                // we use self-relative controls in this case, which probably isn't what the user wants, but hey, we warned them!
            }
        }


        /// <summary>
        /// Default movement control scheme.
        /// </summary>
        /// <param name="btns">The buttons that have been pressed since last update.</param>
        public void controlInterface(ButtonPresses btns) {
            // read inputs
            float h = btns.hori;
            float v = btns.vert;

            // calculate move direction to pass to character
            if (m_Cam != null)
            {
                // calculate camera relative direction to move:
                m_CamForward = Vector3.Scale(m_Cam.forward, new Vector3(1, 0, 1)).normalized;
                m_Move = v * m_CamForward + h * m_Cam.right;
            }
            else
            {
                // we use world-relative directions in the case of no main camera
                m_Move = v * Vector3.forward + h * Vector3.right;
            }

            // don't jump in mid-air
            if (!m_Jump)
            {
                m_Jump = btns.jump;

                if(m_Jump && stateInfo.shortNameHash != airborneStateHash)
                    audioSrc.Play();
            }

            // toggle crouch
            if (btns.crouch)
                m_crouch = !m_crouch;

            if (btns.dodge)
                m_dodge = true;

            Attack(btns);

            // pass all to rigidbody movement to be handled and animator to be updated
            Move(m_Move, m_crouch, m_Jump, m_dodge);
            m_Jump = false;
            m_dodge = false;

            // call interact script
            Interact(btns.interact);
        }

        public void PauseButton(ButtonPresses btns) {
            // pause or unpause
            if (btns.pause)
            {
                if (UGen.isPaused())
                {
                    UGen.resume();
                }
                else
                    UGen.pause();
            }
        }


		public void Move(Vector3 move, bool crouch, bool jump, bool dodge)
		{
			stateInfo = m_Animator.GetCurrentAnimatorStateInfo (0); //get current state info in the Base Layer
			// convert the world relative moveInput vector into a local-relative
			// turn amount and forward amount required to head in the desired
			// direction.
			if (move.magnitude > 1f)
				move.Normalize();
			move = transform.InverseTransformDirection(move);
			CheckGroundStatus();

            //Slows movement when running up/downhill; use if realism is desired
			//move = Vector3.ProjectOnPlane(move, m_GroundNormal);

			m_TurnAmount = Mathf.Atan2(move.x, move.z);

            //adjust movement speed for certain states
            if (!m_IsBlocking)
                m_ForwardAmount = move.z;
            else
                m_ForwardAmount = move.z / 1.5f;

            ApplyExtraTurnRotation();

			// control and velocity handling is different when grounded and airborne:
			if (m_IsGrounded)
			{
				HandleGroundedMovement(crouch, jump, dodge);
			}
			else
			{
				HandleAirborneMovement(move);
			}

			ScaleCapsuleForCrouching(crouch);
			PreventStandingInLowHeadroom();

			// send input and other state parameters to the animator
			UpdateAnimator(move);
		}


		void ScaleCapsuleForCrouching(bool crouch)
		{
			if (m_IsGrounded && crouch)
			{
				if (m_Crouching)
					return;
				m_Capsule.height = m_Capsule.height / 2f;
				m_Capsule.center = m_Capsule.center / 2f;
				m_Crouching = true;
			}
			else
			{
				Ray crouchRay = new Ray(m_Rigidbody.position + Vector3.up * m_Capsule.radius * k_Half, Vector3.up);
				float crouchRayLength = m_CapsuleHeight - m_Capsule.radius * k_Half;
				if (Physics.SphereCast(crouchRay, m_Capsule.radius * k_Half, crouchRayLength, Physics.AllLayers, QueryTriggerInteraction.Ignore))
				{
					m_Crouching = true;
					return;
				}
				m_Capsule.height = m_CapsuleHeight;
				m_Capsule.center = m_CapsuleCenter;
				m_Crouching = false;
			}
		}

		void PreventStandingInLowHeadroom()
		{
			// prevent standing up in crouch-only zones
			if (!m_Crouching)
			{
				Ray crouchRay = new Ray(m_Rigidbody.position + Vector3.up * m_Capsule.radius * k_Half, Vector3.up);
				float crouchRayLength = m_CapsuleHeight - m_Capsule.radius * k_Half;
				if (Physics.SphereCast(crouchRay, m_Capsule.radius * k_Half, crouchRayLength, Physics.AllLayers, QueryTriggerInteraction.Ignore))
				{
					m_Crouching = true;
				}
			}
		}


		void UpdateAnimator(Vector3 move)
		{
			// update the animator parameters
			m_Animator.SetFloat(forwardHash, m_ForwardAmount, 0.1f, Time.deltaTime);
			m_Animator.SetFloat(turnHash, m_TurnAmount, 0.1f, Time.deltaTime);
			m_Animator.SetBool(crouchHash, m_Crouching);
			m_Animator.SetBool(groundedHash, m_IsGrounded);
            m_Animator.SetBool(attackingHash, m_IsAttacking);
            m_Animator.SetBool(blockingHash, m_IsBlocking);
            m_Animator.SetBool(dodgeHash, m_dodge);

			if (!m_IsGrounded)
			{
				m_Animator.SetFloat(jumpHash, m_Rigidbody.velocity.y);
			}

			// calculate which leg is behind, so as to leave that leg trailing in the jump animation
			// (This code is reliant on the specific run cycle offset in our animations,
			// and assumes one leg passes the other at the normalized clip times of 0.0 and 0.5)
			float runCycle =
				Mathf.Repeat(
					stateInfo.normalizedTime + m_RunCycleLegOffset, 1);
			float jumpLeg = (runCycle < k_Half ? 1 : -1) * m_ForwardAmount;

			if (m_IsGrounded)
			{
				m_Animator.SetFloat(jumpLegHash, jumpLeg);
			}

            // the anim speed multiplier allows the overall speed of walking/running to be tweaked in the inspector,
            // which affects the movement speed because of the root motion.
            if (m_IsGrounded && move.magnitude > 0)
            {
                m_Animator.speed = m_AnimSpeedMultiplier;
            }
            else
            {
                // don't use that while airborne
                m_Animator.speed = 1;
            }
		}


		void HandleAirborneMovement(Vector3 vec3_movement)
		{
			// apply extra gravity from multiplier:
			Vector3 extraGravityForce = (Physics.gravity * m_GravityMultiplier) - Physics.gravity;
			m_Rigidbody.AddForce(extraGravityForce);

			//allows movement while airborne, especially when jumping at a wall face to mount
			vec3_movement = transform.TransformVector(vec3_movement);

			if (m_Rigidbody.velocity.magnitude < 3f)
				m_Rigidbody.AddForce(vec3_movement.x * jumpMobility, 0f, vec3_movement.z * jumpMobility);
			else
				m_Rigidbody.AddForce((vec3_movement.x * jumpMobility)/3f, 0f, (vec3_movement.z * jumpMobility)/3f);

			m_GroundCheckDistance = m_Rigidbody.velocity.y < 0 ? m_OrigGroundCheckDistance : 0.01f;
		}


		void HandleGroundedMovement(bool crouch, bool jump, bool dodge)
		{
            // check whether conditions are right to allow a jump:
            if (jump && (stateInfo.shortNameHash == groundedStateHash || stateInfo.shortNameHash == crouchingStateHash))
            {
                // jump!
                m_Rigidbody.velocity = new Vector3(m_Rigidbody.velocity.x, m_JumpPower, m_Rigidbody.velocity.z);
                m_IsGrounded = false;
                m_Animator.applyRootMotion = false;
                m_GroundCheckDistance = 0.1f;
            }
            else if (dodge)
            {
                m_Rigidbody.velocity = new Vector3(m_Rigidbody.velocity.x * m_DodgeMult, 0f, m_Rigidbody.velocity.z * m_DodgeMult);
            }
		}

		void ApplyExtraTurnRotation()
		{
			// help the character turn faster (this is in addition to root rotation in the animation)
			float turnSpeed = Mathf.Lerp(m_StationaryTurnSpeed, m_MovingTurnSpeed, m_ForwardAmount);
			transform.Rotate(0, m_TurnAmount * turnSpeed * Time.deltaTime, 0);
		}


		public void OnAnimatorMove()
		{
			// we implement this function to override the default root motion.
			// this allows us to modify the positional speed before it's applied.
			if (m_IsGrounded && Time.deltaTime > 0)
			{
				Vector3 v = (m_Animator.deltaPosition * m_MoveSpeedMultiplier) / Time.deltaTime;

				// we preserve the existing y part of the current velocity.
				v.y = m_Rigidbody.velocity.y;

                m_Rigidbody.velocity = v;
			}
		}


		void CheckGroundStatus()
		{
			RaycastHit hitInfo;
			#if UNITY_EDITOR
			// helper to visualise the ground check ray in the scene view
			Debug.DrawLine(transform.position + (Vector3.up * 0.1f), transform.position + (Vector3.up * 0.1f) + (Vector3.down * m_GroundCheckDistance));
			#endif
			// 0.1f is a small offset to start the ray from inside the character
			// it is also good to note that the transform position in the sample assets is at the base of the character
			if (Physics.Raycast(transform.position + (Vector3.up * 0.1f), Vector3.down, out hitInfo, m_GroundCheckDistance))
			{
				m_GroundNormal = hitInfo.normal;
				m_IsGrounded = true;
				m_Animator.applyRootMotion = true;
			}
			else
			{
				m_IsGrounded = false;
				m_GroundNormal = Vector3.up;
				m_Animator.applyRootMotion = false;
			}
		}



		/// <summary>
		/// Start or continue interaction with an object.
		/// </summary>
		/// <param name="interact">True if interact button has been pressed.</param>
		public void Interact(bool interact) {
			if (interact) {
                GameObject obj;
                GameObject objDia;
                GameObject objInt;
                UGen.PseudoTransform charTrans = UGen.setPseudo(this.gameObject.transform);
                float score;

                if (!m_Interacting) {
                    // get an object each of NPC and TOUCH_OBJECT type
                    objDia = UChar.actOnLayer(this.gameObject, (int)UGen.eLayerMask.NPC, 45.0f, 3.0f);
                    objInt = UChar.actOnLayer(this.gameObject, (int)UGen.eLayerMask.TOUCH_OBJECT, 45.0f, 1.0f);

                    // compare to see which is the likely target
                    if (objDia != null)
                    { // if objDia is not null
                        if (objInt != null)
                        { // and objInt is not null, compare target scores
                            score = UChar.aimCenterScore(charTrans, objDia.GetComponent<Collider>());

                            if (UChar.aimCenterScore(charTrans, objInt.GetComponent<Collider>()) > score) // if interaction object is higher, set it as the object
                                obj = objInt;
                            else // dialogue object had higher score; set it as the object
                                obj = objDia;
                        }
                        else // no interactable object nearby. set NPC as the object
                            obj = objDia;
                    }
                    else // objDia is null. set interactable object as the object
                        obj = objInt;
                }
                else  // already interacting with an object
                    obj = obj_Interact;

				if (obj != null) {
						obj.SendMessage("handleInteraction", this.gameObject);
				}
			}
		}

        /// <summary>
        /// Confirm the interaction with an object.
        /// </summary>
        private void ConfirmInteraction(GameObject obj) {
            m_Interacting = true;
            obj_Interact = obj;
        }

		/// <summary>
		/// End the interaction with an object.
		/// </summary>
		private void EndInteraction() {
            m_Interacting = false;
            obj_Interact = null;
		}


        public void Attack(ButtonPresses btns)
        {
            //GameObject victim;

            if (btns.block)
                m_IsBlocking = true;
            else
                m_IsBlocking = false;

            if (btns.atkWeak)
            {
                m_IsAttacking = true;

                /* Dealing damage to enemies has been replaced by triggers on Niko's weapon
                victim = UChar.actOnLayer(gameObject, (int)UGen.eLayerMask.ENEMY, 45f, .9f);
                if (victim != null)
                    victim.SendMessage("TakeDamage", 50);
                */
            }
            else
                m_IsAttacking = false;
        }

	} // close class
} // close namespace

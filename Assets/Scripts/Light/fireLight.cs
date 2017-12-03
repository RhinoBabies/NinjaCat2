using UnityEngine;
using System.Collections;

public class fireLight : MonoBehaviour {
	public float duration = 5.5f;
	public Light lt;

	void Start()
	{
		lt = GetComponent<Light> ();
	}
	void Update()
	{
		float phi = Time.time / duration * 2 * Mathf.PI;
		float amplitude = Mathf.Cos (phi) * 0.2f + 2.5F;
		lt.intensity = amplitude;
	}
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.Camera;
using Ninjacat.Characters.Control;

public class Hero_Health : MonoBehaviour {

    public levelLoader loader;
    public int startingHealth;
    public int currentHealth;
 
    //public Slider healthSlider;
    public int blockStrength;
    //public Image damageImage;
    public GameObject Ragdoll;
    public float flashSpeed = 5f;
    public Color flashColor = new Color(1f, 0f, 0f, 0.1f);
    
    private bool blocking;
    private bool damaged;

    private void Start()
    {
        // Send player references to ControlManager
        ControlManager.controls.SendMessage("setPlayer", this.gameObject);

        HUD.hud.HealthSlider.gameObject.SetActive(true);
        currentHealth = startingHealth;
		HUD.hud.HealthSlider.maxValue = startingHealth;
		HUD.hud.HealthSlider.value = currentHealth;
        loader = FindObjectOfType<levelLoader>();
	}

    private void Update()
    {
        if (Input.GetButton("Block") || Input.GetAxis("Block") > .5f)
        {
            blocking = true;
        }
        else
        {
            blocking = false;
        }
        if(damaged)
        {
            HUD.hud.DamageImage.color = flashColor;
        }
        else
        {
            HUD.hud.DamageImage.color = Color.Lerp(HUD.hud.DamageImage.color, Color.clear, flashSpeed*Time.deltaTime);
        }
        damaged = false;
    }

    public void TakeDamage(int amount)
    {
        damaged = true;
        if (blocking == true)
        {
            currentHealth -= amount/blockStrength;
            HUD.hud.HealthSlider.value = currentHealth;
        }
        else
        {
            currentHealth -= amount;
            HUD.hud.HealthSlider.value = currentHealth;
        }
        if (currentHealth < 1)
        {
			HUD.hud.HealthSlider.gameObject.SetActive(false);
            Instantiate(Ragdoll, this.gameObject.transform.position + new Vector3(0f, .7f), this.gameObject.transform.rotation);
            Destroy(gameObject);
            loader.SendMessage("characterDeath");
        }
    }
}

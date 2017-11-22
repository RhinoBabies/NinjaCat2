using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playOtherSong : MonoBehaviour {

    public AudioClip song1;
    public AudioClip song2;
    private AudioSource music;

	// Use this for initialization
	void Start () {
        music = GetComponent<AudioSource>();
        GetComponent<AudioSource>().loop = true;
        StartCoroutine(playNext());
	}

    IEnumerator playNext()
    {
        while (true)
        {
            music.clip = song1;
            music.Play();
            music.volume = .6f;
            yield return new WaitForSeconds(music.clip.length);
            music.clip = song2;
            music.Play();
            music.volume = 1f;
            yield return new WaitForSeconds(music.clip.length);
        }
    }
}

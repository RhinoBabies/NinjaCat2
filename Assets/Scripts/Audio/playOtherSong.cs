using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playOtherSong : MonoBehaviour {

    private AudioSource music;
    private int currentSongIndex = 0;

    public AudioClip[] songFile; //assign various song files to "playlist"
    public float[] songVolume; //used to set individual volumes for corresponding songs

	// Use this for initialization
	void Start () {
        music = GetComponent<AudioSource>();
        GetComponent<AudioSource>().loop = true;
        StartCoroutine(playNext());

        if (songVolume.Length != 0)
        {
            if (songFile.Length != songVolume.Length)
                Debug.LogError("# of Song Files and Song Volumes must match if setting individual volumes.");
        }
	}

    IEnumerator playNext()
    {
        while (true)
        {
            music.clip = songFile[currentSongIndex]; //overrides assigned clip in the Audio Source component and applies song 1
            music.Play(); //starts the song

            if(songVolume.Length != 0) //don't change volume if not set in the editor
                music.volume = songVolume[currentSongIndex]; //sets the volume of the clip

            yield return new WaitForSeconds(music.clip.length); //adds wait timer to resume this script after song is done
            currentSongIndex = (++currentSongIndex) % songFile.Length;
        }
    }
}

using UnityEngine;
using System.Collections;

public class genericMusicScript : MonoBehaviour {

	//This script is meant to be put on all music/AudioSources
	//This will hold the audiosource the script is attached to
	public AudioSource music;

	// Use this for initialization
	void Start () {
		music = this.GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
	
		//"musicVolume" is a static variable in the menu handler
		music.volume = MenuHandler.musicVolume;
	}
}

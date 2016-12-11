using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScreenFader : MonoBehaviour {

	//What the fade looks like
	private Image image;
	public Sprite studioLogo;
	public Sprite startScreen;

	//These floats handle how, when, and how fast the fade occurs
	public float startingAlpha;
	public float currentAlpha;
	public float fadeSpeed = 0.8f;

	//Booleans track whether the fader is currently fading into
	//a scene, or out of one
	public bool fadingIn = false;
	private bool fadingOut = false;
	private bool fadingToBlack = false;
	private float fadeLerp = 0.0f;

	//If fading out of a scene, these takes the index number of
	//the scene the game is transitioning to
	private int sceneTransitionNumber;

	//Audio related
	public AudioSource music;
	public AudioSource sfx1;
	public AudioClip fadeOutSound;
	public AudioClip fadeInSound;

	//Grabs the image
	void Awake(){
		image = this.GetComponent <Image> ();

	}

	//Sets the image's color
	void Start () {
		image.color = new Color (255, 255, 255, startingAlpha);
	}
	
	// Fade is handled here
	void Update () {
		if(!fadingToBlack)
		image.color = new Color (255, 255, 255, currentAlpha);

		if (fadingOut && currentAlpha < 4.5) {
			currentAlpha += fadeSpeed * Time.deltaTime;
		}
		if (fadingIn && currentAlpha > 0) {
			currentAlpha -= fadeSpeed * Time.deltaTime;
		}


		//Begins fade to black
		if (fadingOut && currentAlpha >= 2.8) {
			fadingToBlack = true;
		}
		if (fadingToBlack) {
			image.color = Color.Lerp (Color.white, Color.black, fadeLerp);
			fadeLerp += (fadeSpeed*2) * Time.deltaTime;
		}

		//Loads level after fade out
		if (fadingOut && currentAlpha >= 2) {
			Application.LoadLevel (sceneTransitionNumber);
		}
	}

	//These methods are called by GameObjects in the scene in
	//order to initiate a fade
	public void FadeIn(){
		//plays the sound
		sfx1.clip = fadeInSound;
		sfx1.Play ();

		fadingOut = false;
		fadingToBlack = false;
		fadingIn = true;
	}
	public void FadeOut(int x){
		//Plays the sound for fading
		sfx1.Stop ();
		sfx1.clip = fadeOutSound;
		sfx1.Play ();
		music.Stop (); //Stops the music

		//Starts the actual fade
		image.sprite = startScreen;
		fadingIn = false;
		fadingOut = true;
		sceneTransitionNumber = x;
	}
}

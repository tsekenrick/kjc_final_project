using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MenuHandler : MonoBehaviour {

	// These are the main menu buttons
	public Button startGame;
	public Button instructions;
	public Button options;
	public Button quitGame;

	//These are the sprites for the buttons
	public Sprite buttonDefault;
	public Sprite buttonMouseOver;

	//Screen fader assets; first references the object, second the script
	public GameObject screenFader;
	public ScreenFader fade;

	//Sliders and buttons related to the options menu
	public GameObject optionsMenu;
	public Slider volumeSlider;
	public Slider sfxSlider;

	public static float musicVolume;
	public static float sfxVolume;

	//instrution menu stuff
	public GameObject instructionsMenu;
	public GameObject player1Page1;
	public GameObject player1Page2;
	public GameObject player2Page1;
	public GameObject player2Page2;
	public bool pageToggle = true;

	//Disables options and instructions, enables the screen fading
	void Start(){
		screenFader.SetActive (true);
		optionsMenu.SetActive (false);
		instructionsMenu.SetActive (false);
		fade.FadeIn();
	}

	//Disables the fader once its down all the way 
	//otherwise, clicking won't work
	void Update(){
		if (fade.fadingIn && fade.currentAlpha <= 0) {
			screenFader.SetActive (false);
		}

		musicVolume = volumeSlider.value;
		sfxVolume = sfxSlider.value;
	}

	//This function will be called by event triggers
	//on mouseOver the buttons will change button size
	public void onMouseOver(GameObject x){
		
		//Enlarges the button; Changes its appearance
		x.GetComponent <RectTransform>().offsetMax += new Vector2(150,0);
		x.GetComponent <Image>().sprite = buttonMouseOver;
	}


	public void onMouseExit(GameObject x){
		
		//Resets the button
		x.GetComponent <RectTransform>().offsetMax -= new Vector2(150,0);
		x.GetComponent <Image>().sprite = buttonDefault;
	}

	public void openOptions(){
		optionsMenu.SetActive (true);
		instructionsMenu.SetActive (false);
	}

	public void closeOptions(){
		optionsMenu.SetActive (false);
	}

	public void openInstructions(){
		instructionsMenu.SetActive (true);
		optionsMenu.SetActive (false);
	}
	public void closeInstructions(){
		instructionsMenu.SetActive (false);
	}

	//used to switch between instruction pages
	public void turnInstructionPage(){
		pageToggle = !pageToggle; //this boolean is what flips them

		//First pages activeness is equal to the page toggle
		player1Page1.SetActive (pageToggle);
		player2Page1.SetActive (pageToggle);

		//Second pages are the opposite
		player1Page2.SetActive(!pageToggle);
		player2Page2.SetActive(!pageToggle);
	}
		

	public void ExitGame(){
		Application.Quit ();
	}

	//starts a scene transition by first activating the screen fader object
	//then calling a function from within the fader itself
	public void levelTransition(int x){
		screenFader.SetActive (true);
		fade.FadeOut (x);
	}
}

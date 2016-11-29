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


	void Start(){
		screenFader.SetActive (true);
		fade.FadeIn();
	}

	void Update(){
		if (fade.fadingIn && fade.currentAlpha <= 0) {
			screenFader.SetActive (false);
		}
	}

	//This function will be called by event triggers
	//on mouseOver the buttons
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
		

	public void ExitGame(){
		Application.Quit ();
	}
}

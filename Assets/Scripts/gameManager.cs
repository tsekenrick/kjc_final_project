using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class gameManager : MonoBehaviour {

	//Components for caluclating the score
	public static int score = 0; 
	public static int highestScore = 0;
	public static int scoreMult = 1;

	//Game objects for displaying the score on the UI
	public Text Score; 
	public Text ScoreShadow; //second score box under the first for visual effect
	public Image scoreMultiplier;
	public Sprite[] multSprite;

	//Components relevant for the keyboardPlayer
	public static int health = 3;
	public static int maxHealth = 3;
	public static int ammoCount = 0;
	public Image healthBar;
	public Text ammoDisplay;

	//Componenets relevant for mousePlayer
	public static int blockCount = 0;
	public Text blockDisplay;

	// Use this for initialization
	void Start () {
		score = 0;
	}
	
	// Update is called once per frame
	void Update () {
		/*if (Input.GetKeyDown (KeyCode.R)) {
			score = 0;
			enemySpawner.enemySpawned = 0; 
			enemySpawner.enemyKilled = 0;
			SceneManager.LoadScene (0);
		}*/

		if (score > highestScore) {
			highestScore = score;
		}

		//displays the score/changes the multiplier
		Score.text = " " + score; 
		ScoreShadow.text = Score.text;
		scoreMultiplier.sprite = multSprite [scoreMult - 1];

		//caclulates the health bar percentage/color
		healthBar.fillAmount = (float) health/maxHealth;

		if (healthBar.fillAmount > 0.67) {
			healthBar.color = Color.cyan;
		} else if (healthBar.fillAmount > 0.33 && healthBar.fillAmount <= 0.67) {
			healthBar.color = Color.yellow;
		}else if (healthBar.fillAmount <= 0.33) {
			healthBar.color = Color.magenta;
		}

		//sets ammo and box counts
		ammoDisplay.text = "x"+ammoCount.ToString();
		blockDisplay.text = blockCount.ToString();
	}
}

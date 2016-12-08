using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class gameManager : MonoBehaviour {

	//Components for caluclating the score
	public static int highestScore = 0;
	public  int score = 0; 
	public  int enemiesKilled = 0; //Used to affect the multiplyer
	public  int scoreMult = 1;

	//Game objects for displaying the score on the UI
	public Text Score; 
	public Text ScoreShadow; //second score box under the first for visual effect
	public Image scoreMultiplier; 
	public Sprite[] multSprite; //sprite that displays the multiplier

	//Components relevant for the keyboardPlayer
	public static int health = 3;
	public static int maxHealth = 3;
	public static int ammoCount = 0;
	public Image healthBar;
	public Image healthDecor; //Background image behind health bar
	public Text ammoDisplay; //UI text that shows the player remaining ammo

	//Componenets relevant for mousePlayer
	public static int blockCount = 10;
	public Text blockDisplay; //Shows how many blocks the mouse player has left to place
	public int[] blockQueue = new int[4]; //Holds which blocks the player is allowed to place
    public static int blockType = 0; //determines what block spawns next
	public Image[] blockIcons = new Image[4]; //Shows which blocks are in cue
	public Sprite ammoBlock;
	public Sprite barrBlock;
    public Sprite healthBlock;

	public MousePlayer mp;
	public keyboardMovement kp;


	void Start () {
		score = 0;
		scoreMult = 1;
        health = 3;
		//populates the block queue ...
		for (int i = 0; i < blockQueue.Length; i++) {
            float blockInt = Random.value;
            if (blockInt < .2f)
            {
                blockType = 0;
            }

            else if (blockInt > .2f && blockInt < .4f)
            {
                blockType = 1;
            }

            else
            {
                blockType = 2;
            }

            blockQueue[i] = blockType;
		}
			
	}
	
	// Update is called once per frame
	void Update () {

		blockCount = mp.materials;
		ammoCount = kp.ammo;

		if (scoreMult < 1) {
			scoreMult = 1;
		} else if (scoreMult > 4) {
			scoreMult = 4;
		}

		//...Then displays it in the UI
		for (int i = 0; i < blockIcons.Length; i++) {
			if (blockQueue [i] == 0) {
				blockIcons [i].sprite = ammoBlock; //0 = Ammo block
			} else if (blockQueue[i] == 1){
				blockIcons [i].sprite = barrBlock; //1 = Barricade Block
            }
            else
            {
                blockIcons[i].sprite = healthBlock; //2 = health block
            }
		}

		//Resets everything if "R" is pressed
		if (Input.GetKeyDown (KeyCode.R)) {
			
			//Resets main GameManager values
			score = 0;
			health = maxHealth;
			enemiesKilled = 0;
			scoreMult = 1;
			blockCount = 10;
			ammoCount = 0;

			//Resets EnemySpawner key values
			enemySpawner.enemySpawned = 0; 
			enemySpawner.enemyKilled = 0;
			SceneManager.LoadScene (0);
		}

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
		} else if (healthBar.fillAmount > 0.34 && healthBar.fillAmount <= 0.67) {
			healthBar.color = Color.yellow;
		}else if (healthBar.fillAmount <= 0.34) {
			healthBar.color = Color.magenta;
		} //end health color caluclation

		//forces health decor to match healthbar color
		healthDecor.color = healthBar.color;

		//score mutliplyer stuff...
		if (enemiesKilled >= 10 && enemiesKilled % 10 == 0 && scoreMult < 4) {
			scoreMult++;
			enemiesKilled++;
		}

		//sets ammo and box counts
		ammoDisplay.text = "x"+ammoCount.ToString();
		blockDisplay.text = blockCount.ToString();

	}

	//changes the block display
	public void incrementBlockDisplay(){
		
		//moves all block icons up a notch
		for (int i = 1; i < blockIcons.Length; i++) {
			blockQueue [i - 1] = blockQueue [i];
		}

		//replaces the last block slot
		blockQueue[blockQueue.Length-1] = (int) Mathf.Round(Random.Range (0f, 1.0f));

	}
}

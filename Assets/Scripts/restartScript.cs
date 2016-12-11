using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class restartScript : MonoBehaviour {


	//public Text Score; 
	//public Text highScore;

	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {
	if (Input.GetKeyDown(KeyCode.R))
        {
			gameManager.health = gameManager.maxHealth;
			gameManager.score = 0;
			enemySpawner.enemySpawned = 0; 
			enemySpawner.enemyKilled = 0;
            SceneManager.LoadScene(0);
        }
		if (gameManager.score > gameManager.highestScore) {
			gameManager.highestScore = gameManager.score;
		}

		//Score.text = "Score: " + score; 
		//highScore.text = "Highscore: " + highestScore;
	}
}

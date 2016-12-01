using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class gameManager : MonoBehaviour {

	public int score; 
	static int highestScore = 0;

	public Text Score; 
	public Text highScore;

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

		Score.text = "Score: " + score; 
		highScore.text = "Highscore: " + highestScore;
	}
}

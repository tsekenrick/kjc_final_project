using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class restartScript : MonoBehaviour {

	public static int score; 
	static int highestScore = 0;
    //public GameObject gm;
	//public Text Score; 
	//public Text highScore;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	if (Input.GetKeyDown(KeyCode.R))
        {
			score = 0;
			enemySpawner.enemySpawned = 0;
            //gm.GetComponent<gameManager>().health = 3;
			enemySpawner.enemyKilled = 0;
            SceneManager.LoadScene(0);
        }
		if (score > highestScore) {
			highestScore = score;
		}

		//Score.text = "Score: " + score; 
		//highScore.text = "Highscore: " + highestScore;
	}
}

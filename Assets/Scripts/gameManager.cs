using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class gameManager : MonoBehaviour {

	public static int score; 
	static int highestScore = 0;

	public Text Score; 
	public Text highScore;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.R)) {
			score = 0;
			SceneManager.LoadScene (0);
		}

		if (score > highestScore) {
			highestScore = score;
		}

		Score.text = "Score: " + score; 
		highScore.text = "Highscore: " + highestScore;
	}
}

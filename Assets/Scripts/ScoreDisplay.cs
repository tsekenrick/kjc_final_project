using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class ScoreDisplay : MonoBehaviour {

	public Text score; 
	public gameManager gm; 

	public int gmScore; 
	// Use this for initialization
	void Start () {
		gmScore = gameManager.score; 
	}
	
	// Update is called once per frame
	void Update () {
		
		score.text = "Your Score: " + gameManager.score; 
	}
}

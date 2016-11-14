using UnityEngine;
using System.Collections;

public class enemySpawner : MonoBehaviour {

	//public Transform playerPos; 
	public GameObject Enemy; 

	public int spawnBuffer; 

	private float spawnTime; 
	private bool canSpawn = false; 

	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {

		spawnTime += Time.deltaTime; 
		Debug.Log (spawnTime);
		if (spawnTime > spawnBuffer) {
			canSpawn = true; 
			//Instantiate (Enemy, transform.position, transform.rotation);
		}

		if (canSpawn == true) {
			Instantiate (Enemy, transform.position, transform.rotation);
			canSpawn = false; 
		}
	}
}

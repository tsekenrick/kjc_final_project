using UnityEngine;
using System.Collections;

public class enemySpawner : MonoBehaviour {

	//public Transform playerPos; 
	public GameObject Enemy; 

	public int spawnBuffer; 

	private float spawnTime; 

	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {

		// Make the spawnTime go up by 1 every second
		spawnTime += Time.deltaTime; 

		// If the spawnTime > spawnBuffer, spawn the enemy and reset the spawnTime 
		if (spawnTime > spawnBuffer) {
			Instantiate (Enemy, transform.position, transform.rotation);
			spawnTime = 0;
		}
	}
}

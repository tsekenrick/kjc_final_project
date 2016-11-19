using UnityEngine;
using System.Collections;

public class enemySpawner : MonoBehaviour {

	//public Transform playerPos; 
	public GameObject Enemy; 

	public int spawnBuffer; 

	private float randombuffer; 
	private float initialSpawn; 

	private float spawnTime; 

	private bool spawnCycle = false; 

	// Use this for initialization
	void Start () {
		initialSpawn = Random.Range (0, 7); 
	}

	// Update is called once per frame
	void Update () {

		if (spawnTime > spawnBuffer + initialSpawn) {
			Instantiate (Enemy, transform.position, transform.rotation);
			spawnTime = 0;
			spawnCycle = true;
		}

		// Make the spawnTime go up by 1 every second
		spawnTime += Time.deltaTime; 

		// If the spawnTime > spawnBuffer, spawn the enemy and reset the spawnTime 
		if (spawnTime > spawnBuffer + randombuffer && spawnCycle == true) {
			randombuffer = Random.Range (0, 5);
			Instantiate (Enemy, transform.position, transform.rotation);
			spawnTime = 0;
		}
	}
}

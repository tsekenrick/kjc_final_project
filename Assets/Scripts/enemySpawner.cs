using UnityEngine;
using System.Collections;

public class enemySpawner : MonoBehaviour {

	//public Transform playerPos; 
	public GameObject Enemy; 

	public int spawnBuffer; 

	public int spawnerRotation;

	private float randombuffer = Random.Range(0,5); 
	private float initialSpawn; 

	private float spawnTime; 

	public static int enemySpawned; 
	public static int enemyKilled; 

	private int spawnCap; 

	private bool spawnlimit = false; 

	private bool spawnCycle = false; 

	private bool addCap = false;

	// Use this for initialization
	void Start () {
		initialSpawn = Random.Range (0, 7); 

		spawnCap = 5;
	}

	// Update is called once per frame
	void Update () {

		if (spawnCycle == false) {
			// Makes first enemy from every spawner random
			if (spawnTime > spawnBuffer + initialSpawn) {
				Instantiate (Enemy, transform.position + transform.forward, transform.rotation);
				enemySpawned += 1; 
				spawnTime = 0;
				spawnCycle = true;
			}
		}
		// Make the spawnTime go up by 1 every second
		spawnTime += Time.deltaTime; 

		// If the  spawnCap is reached, then the limit is reached and spawners can't spawn
		if (spawnlimit == false && spawnCycle == true) {
			// If the spawnTime > spawnBuffer, spawn the enemy and reset the spawnTime 
			if (spawnTime > spawnBuffer + randombuffer) {
				//randombuffer = Random.Range (0, 5);
				Instantiate (Enemy, transform.position + transform.forward, transform.rotation);
				enemySpawned += 1;
				spawnTime = 0;
			}
		}
			
		//Debug.Log ( " Enemy Spawned" + enemySpawned);

		// If the cap of enemies is reached, stop the spawning
		if (enemySpawned > spawnCap) {
			spawnlimit = true;
		} else {
			spawnlimit = false;
		}

		// If 10 enemies are killed, then set addCap to true to increase the cap on enemies
		if (enemyKilled % 10 == 0 && enemyKilled != 0) {
			addCap = true;
		}

		// If addCap is true, add 5 to the cap of the enemies 
		if (addCap == true) {
			spawnCap += 2; 
			enemyKilled += 1;
			addCap = false;
			//Debug.Log ( "Spawn Cap" + spawnCap);
		}

		// If the spawnCap is higher, increase the spawning rate by reducing the spawnBuffer
		if (enemyKilled % 10 == 0 && enemyKilled != 0) {
			spawnBuffer -= 1; 
		}

		// The spawnBuffer cannot be lower than 3 seconds
		if (spawnBuffer < 2) {
			spawnBuffer = 2;
		}

		// If more than 70 enemies are killed, the random buffer changes from 0-5 seconds to 0-3 seconds
		if (enemyKilled > 20) {
			randombuffer = Random.Range (0, 3);
		}
	}
}

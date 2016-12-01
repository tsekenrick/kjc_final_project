﻿using UnityEngine;
using System.Collections;

public class enemySpawner : MonoBehaviour {

	//public Transform playerPos; 
	public GameObject Enemy; 

	public int spawnBuffer; 

	public int spawnerRotation;

	private float randombuffer; 
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

		spawnCap = 10;
	}

	// Update is called once per frame
	void Update () {

		if (spawnlimit == false) {
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
		if (spawnlimit == false) {
			// If the spawnTime > spawnBuffer, spawn the enemy and reset the spawnTime 
			if (spawnTime > spawnBuffer + randombuffer && spawnCycle == true) {
				randombuffer = Random.Range (0, 5);
				Instantiate (Enemy, transform.position + transform.forward, transform.rotation);
				enemySpawned += 1;
				spawnTime = 0;
			}
		}

		Debug.Log (enemySpawned);

		// If the cap of enemies is reached, stop the spawning
		if (enemySpawned > spawnCap) {
			spawnlimit = true;
		}

		// If the number of enemies killed is divisible by 20, the set addCap to true to increase the cap on enemies
		if (enemyKilled % 20 == 0) {
			addCap = true;
		}

		// If addCap is true, add 5 to the cap of the enemies 
		if (addCap == true) {
			spawnCap += 5; 
			enemyKilled += 1;
			addCap = false;
			Debug.Log (spawnCap);
		}
			
	}
}

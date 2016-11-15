using UnityEngine;
using System.Collections;

public class enemyMovement : MonoBehaviour {

	public Transform player;

	public Rigidbody rb; 

	public int enemySpeed; 

	// Use this for initialization
	void Start () {
	
		rb = this.GetComponent<Rigidbody> ();

	}
	
	// Update is called once per frame
	void Update () {
		
		if (player == null) {
			return;
		}

		// Get the position of the player 
		Vector3 playerPos = GameObject.Find ("Player Test").transform.position; 

		// This one doesn't work 
		//Vector3 playerPos = player.transform.position;

		Vector3 directionToPlayer = new Vector3 (); 
		directionToPlayer = playerPos - this.transform.position; 

		// The enemy will follow the player
		transform.position = Vector3.MoveTowards (transform.position, playerPos, enemySpeed * Time.deltaTime);

		Ray enemyRay = new Ray (this.transform.position, directionToPlayer); 
		RaycastHit enemyRayHitInfo; 

		Debug.DrawRay (transform.position, directionToPlayer, Color.cyan);

		if (Physics.Raycast (enemyRay, out enemyRayHitInfo, 1f) == true) {
			if (enemyRayHitInfo.collider.tag == "Player") {
				Destroy (player);
			}
		}

	}
}

using UnityEngine;
using System.Collections;

public class justinBullet : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision coll){
		// If bullet collides with a block, destroy the bullet 
		if (coll.gameObject.tag == "Block"){
			Destroy(gameObject);
		}
		// If bullet collides with a wall, destory the bullet
		if (coll.gameObject.tag == "Wall") {
			Debug.Log ("hitting wall");
			Destroy (gameObject);
		}
		// If bullet collides with an enemy, destory the bullet
		if (coll.gameObject.tag == "Enemy") {
			Destroy (gameObject); 
		}
		// If enemy is out of the arena, destroy the bullet
		if (transform.position.x > 11 || transform.position.x < -11) {
			Destroy (gameObject);
		}

		if (transform.position.y > 11 || transform.position.y < -11) {
			Destroy (gameObject);
		}
	}
}

using UnityEngine;
using System.Collections;

public class enemyMovement : MonoBehaviour {

	public GameObject player;

	public Rigidbody rb; 

	public int enemySpeed; 

	// Use this for initialization
	void Start () {

		player = GameObject.Find ("player");
		rb = this.GetComponent<Rigidbody> ();

	}
	
	// Update is called once per frame
	void Update () {
		
		if (player == null || !player.gameObject.activeInHierarchy) {
			return;
		}

		// Get the position of the player 
		Vector3 playerPos = player.transform.position; 

		Vector3 directionToPlayer = new Vector3 (); 
		directionToPlayer = playerPos - this.transform.position; 

		// The enemy will follow the player
		transform.position = Vector3.MoveTowards (transform.position, playerPos, enemySpeed * Time.deltaTime);

		Ray enemyRay = new Ray (this.transform.position, directionToPlayer); 
		RaycastHit enemyRayHitInfo; 

		Debug.DrawRay (transform.position, directionToPlayer, Color.cyan);

		if (Physics.Raycast (enemyRay, out enemyRayHitInfo, 1f) == true) {
			if (enemyRayHitInfo.collider.tag == "Player") {
                player.GetComponent<keyboardMovement>().decreaseHealth();
			}
		}

	}

    public void destroy()
    {
        Destroy(gameObject);
    }
}

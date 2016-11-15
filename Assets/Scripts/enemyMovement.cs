using UnityEngine;
using System.Collections;

public class enemyMovement : MonoBehaviour {

	//public Transform playerPos;

	public Rigidbody rb; 
	// Use this for initialization
	void Start () {
	
		rb = this.GetComponent<Rigidbody> ();


	}
	
	// Update is called once per frame
	void Update () {

		Vector3 playerPos = GameObject.Find ("Player Test").transform.position; 

		Vector3 directionToPlayer = new Vector3 (); 
		directionToPlayer = playerPos - this.transform.position; 


		//transform.position = Vector3.MoveTowards (transform.position, playerPos.position, 10f * Time.deltaTime);

		rb.AddForce (directionToPlayer * 5f * Time.deltaTime);
	}
}

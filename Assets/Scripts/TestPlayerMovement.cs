using UnityEngine;
using System.Collections;

public class TestPlayerMovement : MonoBehaviour {

	public int moveSpeed; 

	// Update is called once per frame
	void Update () {

		float inputX = Input.GetAxis ("Horizontal"); 
		float inputZ = Input.GetAxis ("Vertical"); 

		transform.Translate (inputX * moveSpeed * Time.deltaTime, 0f, 0f);
		transform.Translate (0f, 0f, inputZ * moveSpeed * Time.deltaTime); 
	}
}

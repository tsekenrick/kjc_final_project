using UnityEngine;
using System.Collections;

public class MousePlayer : MonoBehaviour {

	public Transform block;
	public bool canSpawn = true;

	// Update is called once per frame
	void Update () {
		//Step 1: define the "ray"
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);

		//Step 2: declare a variable to remember the "impact" information
		RaycastHit rayHit = new RaycastHit ();

		Debug.DrawRay(ray.origin, ray.direction * 1000f, Color.cyan); 

		//Step 3: Shoot the raycast; often in an if() statement
		if (Physics.Raycast (ray, out rayHit, 1000f)) {
			//Debug.Log ("I'm hitting something!");

			//Move sphere to position
			//block.position = rayHit.point;

			//Instantiate a copy on click
			if (Input.GetMouseButtonUp (0) && canSpawn) {
				//Locks spawn point to nearest integer - cube; assumes block size of 1,1,1
				Vector3 spawnPoint = new Vector3 (Mathf.Round(rayHit.point.x), rayHit.point.y, Mathf.Round(rayHit.point.z));

				//Instantiates a block, then stops multiple blocks from being instantiated in the same click
				Instantiate (block, spawnPoint + new Vector3 (0.5f, 10f, 0.5f), Quaternion.identity);
				//canSpawn = false;
			}
		}
	}

	void OnMouseUp(){
		canSpawn = true;
	}


}

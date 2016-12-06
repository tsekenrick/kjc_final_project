using UnityEngine;
using System.Collections;

public class MousePlayer : MonoBehaviour {

	//These variables hold stuff related to block spawning
	public Transform ammoBox;
	public Transform barricade;
    public float materials;
	public GameObject reticule;
	public bool canSpawn = true;

	//Allows reticule to ignore certain layers and go behind them
	public LayerMask raycastLayerMask;

	void Start(){
		Physics.gravity = new Vector3 (0f, -20f, 0f);
        materials = 50;
	}


	// Update is called once per frame
	void Update () {
		//Step 1: define the "ray"
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);

		//Step 2: declare a variable to remember the "impact" information
		RaycastHit rayHit = new RaycastHit ();

		Debug.DrawRay(ray.origin, ray.direction * 1000f, Color.cyan); 

		//Step 3: Shoot the raycast; often in an if() statement
		if (Physics.Raycast (ray, out rayHit, 1000f, raycastLayerMask)) {
			//Debug.Log ("I'm hitting something!");

			//Move sphere to position
			//block.position = rayHit.point;

			//Locks spawn point to nearest integer - cube; assumes block size of 1,1,1
			Vector3 spawnPoint = new Vector3 (Mathf.Round(rayHit.point.x) , rayHit.point.y, Mathf.Round(rayHit.point.z )+0.5f);

			//Moves the aiming reitucle based on the mouse position
			reticule.transform.position = spawnPoint;
		}

		//Instantiate a copy on click
		if (Input.GetMouseButtonUp (0) && canSpawn && materials>=5) {

            //Instantiates a block, then stops multiple blocks from being instantiated in the same click
            if (Physics.Raycast(ray, out rayHit, 1000f) && rayHit.collider.tag == "Ground"){ //doesn't seem to do anything rn - my attempt to make blocks unstackable. theory is it's because the raycast is masked against everything but ground
                Instantiate(ammoBox, reticule.transform.position + new Vector3(0.5f, 10f, 0f), Quaternion.identity);
                materials -= 5;
            }
			//canSpawn = false;
		}

		if (Input.GetMouseButtonUp (1) && canSpawn && materials >= 5) {

			//Instantiates a block, then stops multiple blocks from being instantiated in the same click
			Instantiate (barricade, reticule.transform.position  + new Vector3 (0.5f, 10f, 0f), Quaternion.identity);
            materials -= 5;
			//canSpawn = false;
		}
	}

	void OnMouseUp(){
		canSpawn = true;
	}


}

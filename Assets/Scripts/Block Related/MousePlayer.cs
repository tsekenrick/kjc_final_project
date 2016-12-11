using UnityEngine;
using System.Collections;

public class MousePlayer : MonoBehaviour {

	//These variables hold stuff related to block spawning
	public Transform ammoBox;
	public Transform barricade;
    public Transform healthBox;
    public int materials;
	public GameObject reticule;
	public bool canSpawn = true;

    public bool spaceOccupied = false;

	//Allows reticule to ignore certain layers and go behind them
	public LayerMask raycastLayerMask;

	//The game manager object
	public gameManager gm;

	//Used to change the colors of the reticule
	public Material cyan;
	public Material magenta;
	public Material yellow;

	//Each side of the reticule
	public Renderer r1;
	public Renderer r2;
	public Renderer r3;
	public Renderer r4;


	void Start(){
		Physics.gravity = new Vector3 (0f, -50f, 0f);
		materials = 10;
	}


	// Update is called once per frame
	void Update () {

        if (spaceOccupied)
        {
            canSpawn = false;
        }

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
		if (Input.GetMouseButtonUp (0) && canSpawn && materials >0) {

			if (gm.blockQueue [0] == 0) {
				//Instantiates a block, then stops multiple blocks from being instantiated in the same click
				Instantiate (ammoBox, reticule.transform.position + new Vector3 (0.5f, 8f, 0f), Quaternion.identity);
			} else if (gm.blockQueue [0] == 1) {
				
				Instantiate (barricade, reticule.transform.position + new Vector3 (0.5f, 8f, 0f), Quaternion.identity);
			}
            else
            {
                Instantiate(healthBox, reticule.transform.position + new Vector3(.5f, 8f, 0f), Quaternion.identity);
            }


            //canSpawn = false;
            materials--;
			//changes display on the UI
			gameManager.blockCount--;
			gm.incrementBlockDisplay();
		}

		if (gm.blockQueue [0] == 0) {
			r1.material = yellow;
			r2.material = yellow;
			r3.material = yellow;
			r4.material = yellow;
		}
		if (gm.blockQueue [0] == 1) {
			r1.material = cyan;
			r2.material = cyan;
			r3.material = cyan;
			r4.material = cyan;
		}
		if (gm.blockQueue [0] == 2) {
			r1.material = magenta;
			r2.material = magenta;
			r3.material = magenta;
			r4.material = magenta;
		}
			
	}

	void OnMouseUp()
    {
        canSpawn = true;

	}



}

using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class keyboardMovement : MonoBehaviour
{
    public float moveSpeed;
    public float bulletSpeed;
    public GameObject bullet;
    public float rayCastLength;
    public bool canFire;
    public float attackSpeedTimer;
    public float attackSpeed;


    public int ammo = 10;
    public bool canHurt = true;
    public float iFrameDur = 1;

	//These values are used specifically for the camera motion
	public Rigidbody thisRigidbody;
	public float trackingCameraLead = 0.15f;
	private Vector3 aimPoint;

	public CameraController cam;
	public gameManager gm;

	//returns value used for camera adjustment || see: CameraController
	public Vector3 adjustedPosition { get { return Vector3.Lerp(thisRigidbody.position, aimPoint, trackingCameraLead); } }

	public AudioSource myAudioSource; 
	public AudioClip[] blockBreaking;

    // Use this for initialization
    void Start()
    {
		thisRigidbody = this.GetComponent<Rigidbody> ();
		gm = GameObject.Find ("GameManager").GetComponent<gameManager> ();
        attackSpeedTimer = attackSpeed;
        canFire = true;
    }

    // Update is called once per frame
    void Update()
    {
		// Create a ray and an imaginary infinite plane for aim tracking
		var aimRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		var aimPlane = new Plane(Vector3.up, thisRigidbody.position);

		// Get the point along the ray where it crosses the plane
		var aimDistance = 0f;
		aimPlane.Raycast(aimRay, out aimDistance);
		aimPoint = aimRay.origin + (aimRay.direction * aimDistance);

		//Used for camera adjustment
		aimPoint = aimRay.origin + (aimRay.direction * aimDistance);


        if (gameManager.health <= 0)
        {
            SceneManager.LoadScene(1);
            Destroy(gameObject);
        }


        //movement code
        if (Input.GetKey(KeyCode.W))
        {
            transform.position += Vector3.forward * moveSpeed * Time.deltaTime;

			//calls the blockRacast method for the given direction
			if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey(KeyCode.Space)) {
				blockRaycast (1);
			}
        }

        if (Input.GetKey(KeyCode.S))
        {
            transform.position += Vector3.back * moveSpeed * Time.deltaTime;

			//calls the blockRacast method for the given direction
			if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey (KeyCode.Space)) {
				blockRaycast (3);
			}
        }

        if (Input.GetKey(KeyCode.A))
        {
            transform.position += Vector3.left * moveSpeed * Time.deltaTime;

			//calls the blockRacast method for the given direction
			if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey (KeyCode.Space)) {
				blockRaycast (1);
			}
        }

        if (Input.GetKey(KeyCode.D))
        {
            transform.position += Vector3.right * moveSpeed * Time.deltaTime;

			//calls the blockRacast method for the given direction
			if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey (KeyCode.Space)) {
				blockRaycast (2);
			}
        }

        //code for shooting
        if (Input.GetKey(KeyCode.DownArrow) && Input.GetKey(KeyCode.RightArrow) && canFire)
        {
            ammo -= 1;
            //Debug.Log("diag conditions met");
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += new Vector3(1, 0, -1) * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(new Vector3(1, 0, -1) * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.DownArrow) && Input.GetKey(KeyCode.LeftArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += new Vector3(-1, 0, -1) * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(new Vector3(-1, 0, -1) * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.UpArrow) && Input.GetKey(KeyCode.LeftArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += new Vector3(-1, 0, 1) * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(new Vector3(-1, 0, 1) * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.UpArrow) && Input.GetKey(KeyCode.RightArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += new Vector3(-1, 0, 1) * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(new Vector3(1, 0, 1) * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.UpArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.forward * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.forward * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
            
        }


        if (Input.GetKey(KeyCode.DownArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.back * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.back * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.LeftArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.left * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.left * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        if (Input.GetKey(KeyCode.RightArrow) && canFire)
        {
            ammo -= 1;
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.right * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.right * bulletSpeed, ForceMode.Impulse);

            if (canFire)
            {
                canFire = false;
            }
        }

        

        if (canFire == false && ammo > 0)
        {
            attackSpeedTimer -= Time.deltaTime;

            if (attackSpeedTimer <= 0)
            {
                attackSpeedTimer = attackSpeed;
                canFire = true;
            }
        }

    }

    public void decreaseHealth()
    {
        if (canHurt)
        {
			//Subtracts health, then resets values in the game manager
            gameManager.health--;
			gm.scoreMult = 1;
			gm.enemiesKilled = 0;

			//Shakes the camera when the player gets hurt
			cam.ShakeCamera (1, 24, 4, 4, 4);
            canHurt = false;
            StartCoroutine(hurtFlash());
        }

    }

    /*public IEnumerator decreaseHealth()
    {
        if (canHurt)
        {
            health--;
            canHurt = false;
            StartCoroutine(hurtFlash());                      
        }
        //yield return new WaitForSeconds(iFrameDur);
        //canHurt = true;
        yield return 0;
    }*/

    public IEnumerator hurtFlash()
    {
        Color originalColor = GetComponent<Renderer>().material.color;
        GetComponent<Renderer>().material.color = new Color(0, 0, 0, 0);
        yield return new WaitForSeconds(.33f);
        GetComponent<Renderer>().material.color = originalColor;
        yield return new WaitForSeconds(.33f);
        GetComponent<Renderer>().material.color = new Color(0, 0, 0, 0);
        yield return new WaitForSeconds(.33f);
        GetComponent<Renderer>().material.color = originalColor;
        canHurt = true;
    }

	public void blockRaycast(int x){
		
		Ray leftRay;
		if (x == 0) {
			leftRay = new Ray (transform.position, Vector3.left);
		} else if (x == 1) {
			leftRay = new Ray (transform.position, Vector3.forward);
		} else if (x == 2) {
			leftRay = new Ray (transform.position, Vector3.right);
		} else {
			leftRay = new Ray (transform.position, Vector3.back);
		}
			
		RaycastHit leftRayInfo;
		if (Physics.Raycast(leftRay, out leftRayInfo, rayCastLength))
		{
				if (leftRayInfo.collider.tag == "Block")
				{
					if (leftRayInfo.collider.name == "BarracdeCube(Clone)") {
					myAudioSource.PlayOneShot (blockBreaking [0]);
						ammo += 1;
					} else {
					myAudioSource.PlayOneShot (blockBreaking [1]);
						ammo += 3;
					}
					Destroy(leftRayInfo.collider.gameObject);
				}
			}
			Debug.Log("thing hit left");
		}
}

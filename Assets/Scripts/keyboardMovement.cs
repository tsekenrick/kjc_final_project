using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class keyboardMovement : MonoBehaviour
{
    public float moveSpeed;
    public float bulletSpeed;
    public GameObject bullet;
	public GameObject gm;
    public float rayCastLength;
    public bool canFire;
    public float attackSpeedTimer;
    public float attackSpeed;
    //public float health = 3;
    public float ammo = 10;
    public bool canHurt = true;
    public float iFrameDur = 1;
    // Use this for initialization
    void Start()
    {
        attackSpeedTimer = attackSpeed;
        canFire = true;
    }

    // Update is called once per frame
    void Update()
    {

        /*if (canHurt == false)
        {
            iFrameDur -= Time.deltaTime;
        }

        if (iFrameDur <= 0)
        {
            canHurt = true;
            iFrameDur = 1;
        }*/

		if (gm.GetComponent<gameManager>().health <= 0)
        {
            SceneManager.LoadScene(1);
            Destroy(gameObject);
        }

        //raycast code and wall destruction code
        Ray fwdRay = new Ray(transform.position, Vector3.forward);
        RaycastHit fwdRayInfo;
        if (Physics.Raycast(fwdRay, out fwdRayInfo, rayCastLength))
        {
            if (Input.GetKey(KeyCode.Space) && Input.GetKey(KeyCode.W))
            {
                if (fwdRayInfo.collider.tag == "Block")
                {
                    ammo += 3;
                    Destroy(fwdRayInfo.collider.gameObject);
                }
            }
            Debug.Log("thing hit fwd");
        }

        Ray backRay = new Ray(transform.position, Vector3.back);
        RaycastHit backRayInfo;
        if (Physics.Raycast(backRay, out backRayInfo, rayCastLength))
        {            
            if(Input.GetKey(KeyCode.Space) && Input.GetKey(KeyCode.S))
            {
                if(backRayInfo.collider.tag == "Block")
                {
                    ammo += 3;
                    Destroy(backRayInfo.collider.gameObject);
                }
            }
            Debug.Log("thing hit back");
        }

        Ray leftRay = new Ray(transform.position, Vector3.left);
        RaycastHit leftRayInfo;
        if (Physics.Raycast(leftRay, out leftRayInfo, rayCastLength))
        {
            if (Input.GetKey(KeyCode.Space) && Input.GetKey(KeyCode.A))
            {
                if (leftRayInfo.collider.tag == "Block")
                {
                    ammo += 3;
                    Destroy(leftRayInfo.collider.gameObject);
                }
            }
            Debug.Log("thing hit left");
        }

        Ray rightRay = new Ray(transform.position, Vector3.right);
        RaycastHit rightRayInfo;
        if (Physics.Raycast(rightRay, out rightRayInfo, rayCastLength))
        {
            if (Input.GetKey(KeyCode.Space) && Input.GetKey(KeyCode.D))
            {
                if (rightRayInfo.collider.tag == "Block")
                {
                    ammo += 3;
                    Destroy(rightRayInfo.collider.gameObject);
                }
            }
            Debug.Log("thing hit right");
        }

        //code to draw raycasts
        Debug.DrawRay(fwdRay.origin, fwdRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(backRay.origin, backRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(leftRay.origin, leftRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(rightRay.origin, rightRay.direction * rayCastLength, Color.red);

        //movement code
        if (Input.GetKey(KeyCode.W))
        {
            transform.position += Vector3.forward * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.S))
        {
            transform.position += Vector3.back * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.A))
        {
            transform.position += Vector3.left * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.D))
        {
            transform.position += Vector3.right * moveSpeed * Time.deltaTime;
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
			gm.GetComponent<gameManager>().health--;
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
}

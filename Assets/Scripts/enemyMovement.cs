using UnityEngine;
using System.Collections;

public class enemyMovement : MonoBehaviour {

	public GameObject player;
	public GameObject mousePlayer;
	public Rigidbody rb; 

	public gameManager gm;

	public float enemySpeed;
    public int enemyHealth;
    public bool chasing;
    public GameObject targetBlock;

	// Use this for initialization
	void Start () {
        chasing = true;
		player = GameObject.Find ("player");
		gm = GameObject.Find ("GameManager").GetComponent<gameManager>();
		rb = this.GetComponent<Rigidbody> ();
		mousePlayer = GameObject.Find ("Main Camera");
	}
	
	// Update is called once per frame
	void Update () {
		
        if (enemyHealth <= 0)
        {
            destroy();
        }

		if (player == null || !player.gameObject.activeInHierarchy) {
			return;
		}

		// Get the position of the player 
		Vector3 playerPos = player.transform.position; 

		Vector3 directionToPlayer = new Vector3 (); 
		directionToPlayer = playerPos - this.transform.position;

        // The enemy will follow the player

        if (chasing)
        {
            rb.AddForce(directionToPlayer.normalized * enemySpeed);
            //transform.position = Vector3.MoveTowards(transform.position, playerPos, enemySpeed * Time.deltaTime);'
			this.transform.rotation = Quaternion.Euler(transform.rotation.x, directionToPlayer.y, transform.rotation.z);
        }

		Ray enemyRay = new Ray (this.transform.position, directionToPlayer); 
		RaycastHit enemyRayHitInfo;
		//Debug.DrawRay (transform.position, directionToPlayer, Color.cyan);

		if (Physics.Raycast (enemyRay, out enemyRayHitInfo, .75f) == true) {
			if (enemyRayHitInfo.collider.tag == "Player") {
                player.GetComponent<keyboardMovement>().decreaseHealth();
			}
		}
	}

	void OnCollisionEnter(Collision coll){
		/*if (coll.gameObject.tag == "Bullet") {
            Debug.Log("thing happened");
            
			enemySpawner.enemySpawned--; 
			enemySpawner.enemyKilled++;
			Destroy (gameObject);
		}*/ //not actually useful rn

        if (coll.gameObject.tag == "Block")
        {
            
            targetBlock = coll.gameObject;
            if (chasing)
            {
                StartCoroutine(attackBlock());
            }
        }
	}

    public void destroy()
    {	
		mousePlayer.GetComponent<MousePlayer> ().materials += 2;
		enemySpawner.enemySpawned--; 
		enemySpawner.enemyKilled++;
		gm.score += 10 * gm.scoreMult;
		gm.enemiesKilled++;
        Destroy(gameObject);
    }

    public void killedByBlock()
    {
        enemySpawner.enemySpawned--;
        enemySpawner.enemyKilled++;
        gm.score += 10 * gm.scoreMult;
        gm.enemiesKilled++;
        Destroy(gameObject);
    }

    public void enemyHurt()
    {
        enemyHealth--;
        StartCoroutine(hurtFlash());
    }

    public IEnumerator hurtFlash()
    {
        GameObject enemybody = GameObject.Find("pSphere1");
        Color originalColor = enemybody.GetComponent<Renderer>().material.color;
        enemybody.GetComponent<Renderer>().material.color = Color.clear;
        yield return new WaitForSeconds(.1f);
        enemybody.GetComponent<Renderer>().material.color = originalColor;
        yield return new WaitForSeconds(.1f);
        enemybody.GetComponent<Renderer>().material.color = Color.clear;
        yield return new WaitForSeconds(.1f);
        enemybody.GetComponent<Renderer>().material.color = originalColor;
        
        /*Color originalColor = GetComponent<Renderer>().material.color;
        GetComponent<Renderer>().material.color = Color.clear;
        yield return new WaitForSeconds(.1f);
        GetComponent<Renderer>().material.color = originalColor;
        yield return new WaitForSeconds(.1f);
        GetComponent<Renderer>().material.color = Color.clear;
        yield return new WaitForSeconds(.1f);
        GetComponent<Renderer>().material.color = originalColor;*/
    }

    IEnumerator attackBlock()
    {
        Color originalColor = GetComponent<Renderer>().material.color;
        Vector3 freezedPos = transform.position;
        chasing = false;
        while (targetBlock != null)
        {
            transform.position = freezedPos;
            if (GetComponent<Renderer>().material.color == originalColor)
            {
                GetComponent<Renderer>().material.color = Color.red;
            }
            else
            {
                GetComponent<Renderer>().material.color = originalColor;
            }
            targetBlock.GetComponent<wallBlock>().blockHealth--;
            yield return new WaitForSeconds(.15f);
        }
        if (GetComponent<Renderer>().material.color != originalColor)
        {
            GetComponent<Renderer>().material.color = originalColor;
        }
        
        chasing = true;
    }
}

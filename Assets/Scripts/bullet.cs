using UnityEngine;
using System.Collections;

public class bullet : MonoBehaviour {
    public GameObject enemy;
    public float bulletTimer;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        bulletTimer -= Time.deltaTime;

        if (bulletTimer <= 0)
        {
            Destroy(gameObject);
        }
	}

    void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.tag == "Wall")
        {
            Destroy(this.gameObject);
        }

        if (collision.gameObject.tag == "Enemy")
        {
            collision.GetComponent<enemyMovement>().destroy();
            //Destroy(collision.GetComponent<GameObject>());
            
        }
    }
}

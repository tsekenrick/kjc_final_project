using UnityEngine;
using System.Collections;

public class bullet : MonoBehaviour {
    public GameObject enemy;
    public float bulletTimer;

	public ParticleSystem particle;
	public ParticleSystem trail;

	// Use this for initialization
	void Start () {
		//instantiates a particle trail, then sets it to "trail" so it can be affected by code
		trail = (ParticleSystem) Instantiate (particle, this.transform.position, this.transform.rotation);
	}
	
	// Update is called once per frame
	void Update () {
        bulletTimer -= Time.deltaTime;
		trail.transform.position = this.transform.position;

        if (bulletTimer <= 0)
        {
			trail.Stop();
            Destroy(gameObject);
        }
	}

    void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.tag == "Block")
        {
			trail.Stop();
            Destroy(this.gameObject);
        }

        if (collision.gameObject.tag == "Enemy")
        {
			trail.Stop();
            collision.GetComponent<enemyMovement>().enemyHurt();
            Destroy(gameObject);
            //Destroy(collision.GetComponent<GameObject>());
            
        }

		if (collision.gameObject.tag == "Wall")
		{
			trail.Stop();
			Destroy (this.gameObject);
		}
    }
}

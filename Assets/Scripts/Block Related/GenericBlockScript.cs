using UnityEngine;
using System.Collections;

public class GenericBlockScript : MonoBehaviour {

	ParticleSystem[] ptc;
	ParticleSystem particleTrail;
    public bool onGround;
	CameraController cam;
    public GameObject crushedEnemy; 

	public AudioSource sfx2;
	public AudioClip blockDropping;
	public AudioClip blockImpact;
	public AudioClip enemyImpact;

	// Use this for initialization
	void Start () {
		sfx2 = GameObject.Find ("SFX2").GetComponent<AudioSource>();

		sfx2.clip = blockDropping;
		sfx2.Play ();



		ptc = this.GetComponentsInChildren<ParticleSystem>();
        onGround = false;
		particleTrail = ptc [0];
		cam= GameObject.Find ("CameraRig").GetComponent<CameraController>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

			sfx2.clip = blockImpact;
			sfx2.Stop ();
			sfx2.Play ();
			particleTrail.Stop ();

            onGround = true;
            cam.ShakeCamera(1, 10, 1.5f, 1.5f, 1.5f);
        }

        if (col.gameObject.tag == "Enemy" && onGround == false)
        {
			//Play impact sound
			sfx2.Stop ();
			sfx2.clip = enemyImpact;
			sfx2.Play ();

            crushedEnemy = col.gameObject;
            crushedEnemy.GetComponent<enemyMovement>().killedByBlock();
        }

        if (col.gameObject.tag == "Player" && onGround == false)
        {
            Destroy(gameObject);
        }
    }

}

using UnityEngine;
using System.Collections;

public class GenericBlockScript : MonoBehaviour {

	ParticleSystem[] ptc;
	ParticleSystem particleTrail;
    public bool onGround;
	CameraController cam;
    public GameObject crushedEnemy; 
	// Use this for initialization
	void Start () {
		ptc = this.GetComponentsInChildren<ParticleSystem>();
        onGround = false;
		particleTrail = ptc [0];
		cam= GameObject.Find ("CameraRig").GetComponent<CameraController>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Ground" || col.gameObject.tag == "Block") {
			particleTrail.Stop ();
            onGround = true;
			cam.ShakeCamera (1, 10, 1.5f, 1.5f, 1.5f);
		}

        if (col.gameObject.tag == "Enemy" && onGround == false)
        {
            crushedEnemy = col.gameObject;
            crushedEnemy.GetComponent<enemyMovement>().killedByBlock();
        }
	}

}

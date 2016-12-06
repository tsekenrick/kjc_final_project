using UnityEngine;
using System.Collections;

public class GenericBlockScript : MonoBehaviour {

	ParticleSystem[] ptc;
	ParticleSystem particleTrail;
	// Use this for initialization
	void Start () {
		ptc = this.GetComponentsInChildren<ParticleSystem>();
		particleTrail = ptc [0];
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnCollisionEnter(Collision col) {
        if (col.gameObject.tag == "Ground" || col.gameObject.tag == "Block" || col.gameObject.tag == "Ammo Block") {
			particleTrail.Stop ();
		}
	}

}

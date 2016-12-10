using UnityEngine;
using System.Collections;

public class GenericParticleScript : MonoBehaviour {

	ParticleSystem thisParticle;

	// Use this for initialization
	void Start () {
		thisParticle = this.GetComponent<ParticleSystem> ();
	}
	
	// destroys this object when the particle system is dead
	void Update () {
		if (!thisParticle.IsAlive()) {
			Destroy (this.gameObject);
		}
	}
}

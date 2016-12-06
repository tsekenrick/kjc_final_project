using UnityEngine;
using System.Collections;

public class wallBlock : MonoBehaviour {
    public int blockHealth;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	    if (blockHealth <= 0)
        {
            Destroy(gameObject);
        }
	}
}

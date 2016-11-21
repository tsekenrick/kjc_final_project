using UnityEngine;
using System.Collections;

public class animControlDemo : MonoBehaviour {
    Animator myAnimator;
	// Use this for initialization
	void Start () {
        myAnimator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
	    if (Input.GetKey(KeyCode.Space))
        {
            myAnimator.SetBool("isWalking", true);

        }
        else
        {
            myAnimator.SetBool("isWalking", false);
        }
	}
}

using UnityEngine;
using System.Collections;

public class reticuleCollision : MonoBehaviour {
    public GameObject mousePlayer;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerStay(Collider coll)
    {
        if (coll.gameObject.tag == "Block")
        {
            mousePlayer.GetComponent<MousePlayer>().canSpawn = false;
        }

    }

    void OnTriggerExit(Collider coll)
    {
        if (coll.gameObject.tag == "Block")
        {
            mousePlayer.GetComponent<MousePlayer>().canSpawn = true;
        }
    }

}

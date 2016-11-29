using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class healthAmmoIndicator : MonoBehaviour {
    public Text healthAmmo;
    public GameObject player;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        healthAmmo.text = "Health: " + player.GetComponent<keyboardMovement>().health + "\nAmmo: " + player.GetComponent<keyboardMovement>().ammo;
	}
}

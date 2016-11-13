using UnityEngine;
using System.Collections;

public class keyboardMovement : MonoBehaviour
{
    public float moveSpeed;
    public float bulletSpeed;
    public GameObject bullet;
    public float rayCastLength;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

        //raycast code
        Ray fwdRay = new Ray(transform.position, Vector3.forward);
        RaycastHit fwdRayInfo;
        if (Physics.Raycast(fwdRay, out fwdRayInfo, rayCastLength))
        {            
            Debug.Log("thing hit fwd");
        }

        Ray backRay = new Ray(transform.position, Vector3.back);
        RaycastHit backRayInfo;
        if (Physics.Raycast(backRay, out backRayInfo, rayCastLength))
        {            
            Debug.Log("thing hit back");
        }

        Ray leftRay = new Ray(transform.position, Vector3.left);
        RaycastHit leftRayInfo;
        if (Physics.Raycast(leftRay, out leftRayInfo, rayCastLength))
        {            
            Debug.Log("thing hit left");
        }

        Ray rightRay = new Ray(transform.position, Vector3.right);
        RaycastHit rightRayInfo;
        if (Physics.Raycast(fwdRay, out rightRayInfo, rayCastLength))
        {           
            Debug.Log("thing hit right");
        }

        Debug.DrawRay(fwdRay.origin, fwdRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(backRay.origin, backRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(leftRay.origin, leftRay.direction * rayCastLength, Color.red);
        Debug.DrawRay(rightRay.origin, rightRay.direction * rayCastLength, Color.red);
        //movement code
        if (Input.GetKey(KeyCode.W))
        {
            transform.position += Vector3.forward * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.S))
        {
            transform.position += Vector3.back * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.A))
        {
            transform.position += Vector3.left * moveSpeed * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.D))
        {
            transform.position += Vector3.right * moveSpeed * Time.deltaTime;
        }


        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.forward * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.forward * bulletSpeed, ForceMode.Impulse);
        }

        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.back * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.back * bulletSpeed, ForceMode.Impulse);
        }

        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.left * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.left * bulletSpeed, ForceMode.Impulse);
        }

        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            GameObject newBullet = (GameObject)Instantiate(bullet, transform.position, Quaternion.identity);
            newBullet.transform.position += Vector3.right * bulletSpeed * Time.deltaTime;
            newBullet.GetComponent<Rigidbody>().AddForce(Vector3.right * bulletSpeed, ForceMode.Impulse);
        }
    }


}

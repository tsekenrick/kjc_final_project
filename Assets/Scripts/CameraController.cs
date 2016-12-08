using UnityEngine;

public class CameraController : MonoBehaviour
{
    public keyboardMovement target; //This is the player
    public Vector3 trackingOffset; //How far off the player is the camera: determined in editor
    public float trackingSpeed = 10f;

    private Transform thisTransform; //Transform value of the camera rig
    private Transform cameraTransform; //The actual camera

	//ALL OF THIS STUFF is used for the CAMERA SHAKE!!!! WOOT!
    private float shakeTimer = 0f, shakeDuration = 0f;
    private float shakeFreq = 0f, shakeAmpX = 0f, shakeAmpY = 0f, shakeAmpZ = 0f;
    private float noiseOffsetX = 0f, noiseOffsetY = 0f, noiseOffsetZ = 0f;

    void Start()
    {
        // Store local component references
        thisTransform = GetComponent<Transform>();
        cameraTransform = GetComponentInChildren<Camera>().GetComponent<Transform>();

        // Create random offsets for each rotation axis
        noiseOffsetX = Random.Range(0, 1000f);
        noiseOffsetY = Random.Range(0, 1000f);
        noiseOffsetZ = Random.Range(0, 1000f);
    }

    void Update()
    {
		// Shakes the camera if necessary
        if (shakeTimer > 0f)
        {
            // Calculates the effect intensity
            var intensity = shakeTimer / shakeDuration;

            // Gets values from the perlin noise function
            float noiseValueX = Mathf.PerlinNoise(Time.timeSinceLevelLoad * shakeFreq, noiseOffsetX),
                noiseValueY = Mathf.PerlinNoise(Time.timeSinceLevelLoad * shakeFreq, noiseOffsetY),
                noiseValueZ = Mathf.PerlinNoise(Time.timeSinceLevelLoad * shakeFreq, noiseOffsetZ);

            // Creates new Euler angles
            float eulerX = Mathf.Lerp(-shakeAmpX * intensity, shakeAmpX * intensity, noiseValueX),
                eulerY = Mathf.Lerp(-shakeAmpY * intensity, shakeAmpY * intensity, noiseValueY),
                eulerZ = Mathf.Lerp(-shakeAmpZ * intensity, shakeAmpZ * intensity, noiseValueZ);

            // Applies the new rotation
            cameraTransform.localRotation = Quaternion.Euler(eulerX, eulerY, eulerZ);

            // Decrements the shake timer and clamp at 0
            shakeTimer = Mathf.Max(shakeTimer - Time.deltaTime, 0f);
	    
	    // ROBERT: I would *NOT* use camera rotation to shake the camera? 
	    // camera shake should primarily be a positional effect
	    // this actually kinda explains why your camera shake feels so weird
        }
        else cameraTransform.localRotation = Quaternion.identity;

		// Won't track without a target
		if (target == null || !target.gameObject.activeInHierarchy) return;

		// Tracks horizontal position but will maintain a fixed height
		var trackingPosition = new Vector3(
			target.adjustedPosition.x,
			0f,
			target.adjustedPosition.z);

		// Interpolates the camera toward its new, offset position
		thisTransform.position = Vector3.Lerp(
			thisTransform.position,
			trackingPosition + trackingOffset,
			Time.deltaTime * trackingSpeed);
    }

	public void ShakeCamera(float duration = 1f, float frequency = 15f, float amplitudeX = 2f, float amplitudeY = 2f, float amplitudeZ = 2f)
    {
        shakeTimer = shakeDuration = duration;
        shakeFreq = frequency;
        shakeAmpX = amplitudeX;
        shakeAmpY = amplitudeY;
        shakeAmpZ = amplitudeZ;
    }
}

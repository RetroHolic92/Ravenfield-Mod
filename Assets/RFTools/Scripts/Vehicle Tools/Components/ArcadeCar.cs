using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArcadeCar : Vehicle {

	public enum ReverseTurnType {ReverseSpeed, ReverseThrottle, Never};

	[Header("Car Driving Stats")]
	public float acceleration = 8f;
	public float reverseAcceleration = 4f;
    public float accelerationTipAmount = 0.3f;
    public float frictionTipAmount = 0.1f;
    public float topSpeed = 10f;
	public float speedTurnTorque = 0.3f;
	public float baseTurnTorque = 3f;
	public bool tankTurning = false;
	public ReverseTurnType reverseTurnType = ReverseTurnType.ReverseSpeed;

	[Header("Car Drifting Stats")]
	public float slideDrag = 5f;
	public float brakeDrag = 0.5f;
	public bool driftByAcceleration = false;
	public float brakeAccelerationTriggerSpeed = 0.5f;
	public bool driftByBrake = true;
	public float brakeDriftMinSpeed = 5f;
	public float driftingSlip = 0.5f;
	public float driftDuration = 1.5f;

	[Header("Car Misc")]
	public bool isAmphibious = false;

	[Header("Car Physics")]
	public float extraStability = 0f;

	public float groundDrag = 0.1f;
	public float groundAngularDrag = 3f;
    public float groundSteeringDrag = 0f;

    public float airDrag = 0f;
	public float airAngularDrag = 0.1f;

	public float downforcePerSpeed = 0.15f;

	[Header("Car Sounds")]
	public SoundBank suspensionShiftSounds;
    public SoundBank brakeSounds;
}

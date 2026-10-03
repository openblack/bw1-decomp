#ifndef BW1_DECOMP_ZOOMER_INCLUDED_H
#define BW1_DECOMP_ZOOMER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct Zoomer
{
	float   CurrentValue; /* 0x0 */
	float   destination;
	float   DestinationSpeed;
	float   CurrentSpeed;
	float   TimeM2; /* 0x10 */
	float   CurrentTime;
	float   duration;
	float   StartValue;
	float   StartSpeed; /* 0x20 */
	LHPoint NonLinearAcceleration;

	// Constructors

	// BW1W120 inlined
	Zoomer() {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010337f0
	void SetDestination(float destination, float time);
	// BW1W120 inlined BW1M119 0103a990
	float GetCurrentValue() { return CurrentValue; }
	// BW1W120 inlined BW1M119 01023960
	float GetDestination();
	// BW1W120 00407d60 BW1M119 010517e0
	void SetDestinationWithSpeedAndTime(float destination, float speed, float time);
	// BW1W120 00441ac0 BW1M119 01550e10
	void SetPosition(float position)
	{
		destination = position;
		CurrentValue = position;
		StartValue = position;
		duration = 0.0f;
		CurrentTime = 0.0f;
		NonLinearAcceleration.z = 0.0f;
		NonLinearAcceleration.y = 0.0f;
		TimeM2 = 0.0f;
		NonLinearAcceleration.x = 0.0f;
		CurrentSpeed = 0.0f;
		StartSpeed = 0.0f;
		DestinationSpeed = 0.0f;
	}
	// BW1W120 00442720 BW1M119 0102eff0
	void Update(float dt);
};

struct Zoomer3d
{
	Zoomer x; /* 0x0 */
	Zoomer y; /* 0x30 */
	Zoomer z; /* 0x60 */

	// Non-virtual methods

	// BW1W120 004605d0 BW1M119 010347d0
	LHPoint* GetCurrentValue(LHPoint* out_point);
	// BW1W120 inlined BW1M119 010238c0
	LHPoint* GetDestination(LHPoint* out_point);
	// BW1W120 inlined BW1M119 inlined
	void Update(float dt);
	// BW1W120 inlined BW1M119 inlined
	void SetDestinationWithSpeedAndTime(const LHPoint& destination, float speed, float time);
	// BW1W120 0044e760 BW1M119 inlined
	void SetDestinationWithTime(const LHPoint& destination, float time);
	// BW1W120 inlined BW1M119 011a1520
	void SetPosition(const LHPoint& destination);
};

#include "LHMatrix.h"

// BW1W120 00407d60 BW1M119 010517e0
inline void Zoomer::SetDestinationWithSpeedAndTime(float destination, float speed, float time)
{
	if (time < 0.001f)
	{
		SetPosition(destination);
		return;
	}
	StartSpeed = CurrentSpeed;
	StartValue = CurrentValue;
	this->destination = destination;
	DestinationSpeed = speed;
	duration = time;
	CurrentTime = 0.0f;
	float    halfTimeSquared = time * time * 0.5f;
	float    sixthTimeCubed = halfTimeSquared * time * (1.0f / 3.0f);
	LHMatrix coefficients;
	coefficients.m[0] = halfTimeSquared * halfTimeSquared * (1.0f / 6.0f);
	coefficients.m[1] = sixthTimeCubed;
	coefficients.m[2] = halfTimeSquared;
	coefficients.m[3] = sixthTimeCubed;
	coefficients.m[4] = halfTimeSquared;
	coefficients.m[5] = time;
	coefficients.m[6] = halfTimeSquared;
	coefficients.m[7] = time;
	coefficients.m[8] = 1.0f;
	coefficients.m[11] = 0.0f;
	coefficients.m[10] = 0.0f;
	coefficients.m[9] = 0.0f;
	LHMatrix inverse;
	inverse.SetInverse(coefficients);
	float distance = this->destination - StartValue - duration * StartSpeed;
	float speedChange = DestinationSpeed - StartSpeed;
	float accelerationZ = inverse.m[3] * speedChange + inverse.m[0] * distance + inverse.m[9];
	NonLinearAcceleration.y = inverse.m[1] * distance + inverse.m[4] * speedChange + inverse.m[10];
	NonLinearAcceleration.x = inverse.m[5] * speedChange + inverse.m[2] * distance + inverse.m[11];
	NonLinearAcceleration.z = accelerationZ;
}

// Inliner IL size: <= 40
// BW1W120 inlined BW1M119 010337f0
inline void Zoomer::SetDestination(float destination, float time)
{
	SetDestinationWithSpeedAndTime(destination, 0.0f, time);
}

// BW1W120 00442720 BW1M119 0102eff0
inline void Zoomer::Update(float dt)
{
	CurrentTime += dt;
	if (CurrentTime >= duration)
	{
		CurrentValue = destination;
		CurrentSpeed = DestinationSpeed;
		TimeM2 = 0.0f;
		CurrentTime = duration;
	}
	else
	{
		float halfTimeSquared = CurrentTime * CurrentTime * 0.5f;
		float sixthTimeCubed = CurrentTime * halfTimeSquared * (1.0f / 3.0f);
		CurrentSpeed = CurrentTime * NonLinearAcceleration.x + sixthTimeCubed * NonLinearAcceleration.z +
		               halfTimeSquared * NonLinearAcceleration.y + StartSpeed;
		CurrentValue = NonLinearAcceleration.z * (halfTimeSquared * halfTimeSquared * (1.0f / 6.0f)) +
		               CurrentTime * StartSpeed + sixthTimeCubed * NonLinearAcceleration.y +
		               halfTimeSquared * NonLinearAcceleration.x + StartValue;
	}
}

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */

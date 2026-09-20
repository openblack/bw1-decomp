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

	// BW1W120 inlined BW1M100 1056a120 Zoomer::Zoomer(void)
	Zoomer() {}

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined Zoomer::SetDestination(float)
	void SetDestination(float destination);
	// BW1W120 inlined BW1M100 10038020 Zoomer::GetCurrentValue(void)
	float GetCurrentValue();
	// BW1W120 inlined BW1M100 10020df0 Zoomer::GetDestination(void)
	float GetDestination();
	// BW1W120 00407d60 BW1M100 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
	void SetDestinationWithSpeedAndTime(float destination, float speed, float time);
	// BW1W120 00441ac0 BW1M100 1035b310 Zoomer::SetPosition(float)
	void SetPosition(float position)
	{
		destination = position;
		StartValue = position;
		CurrentValue = position;
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
	// BW1W120 00442720 BW1M100 1002c480 Zoomer::Update(float)
	void Update(float dt);
};

struct Zoomer3d
{
	Zoomer x; /* 0x0 */
	Zoomer y; /* 0x30 */
	Zoomer z; /* 0x60 */

	// Non-virtual methods

	// BW1W120 004605d0 BW1M100 10031e60 Zoomer3d::GetCurrentValue(void)
	LHPoint* GetCurrentValue(LHPoint* out_point);
	// BW1W120 inlined BW1M100 10020d50 Zoomer3d::GetDestination(void)
	LHPoint* GetDestination(LHPoint* out_point);
	// BW1W120 inlined BW1M100 inlined Zoomer3d::Update(float)
	void Update(float dt);
	// BW1W120 inlined BW1M100 inlined Zoomer3d::SetDestinationWithSpeedAndTime(LHPoint const &, float, float)
	void SetDestinationWithSpeedAndTime(const LHPoint* destination, float speed, float time);
	// BW1W120 0044e760 BW1M100 inlined Zoomer3d::SetDestinationWithTime(LHPoint const &, float)
	void SetDestinationWithTime(const LHPoint* destination, float time);
	// BW1W120 inlined BW1M100 10198470 Zoomer3d::SetPosition(const LHPoint&)
	void SetPosition(const LHPoint* destination);
};

#include "LHMatrix.h"

// BW1W120 00407d60 BW1M100 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
inline void Zoomer::SetDestinationWithSpeedAndTime(float destination, float speed, float time)
{
	// Ghidra misses the stack-built matrix passed in EDX; its coefficients and
	// the reversed acceleration components are from target assembly.
	if (time < 0.001f)
	{
		this->destination = destination;
		CurrentValue = destination;
		StartValue = destination;
		duration = 0.0f;
		CurrentTime = 0.0f;
		NonLinearAcceleration.z = 0.0f;
		NonLinearAcceleration.y = 0.0f;
		TimeM2 = 0.0f;
		NonLinearAcceleration.x = 0.0f;
		CurrentSpeed = 0.0f;
		StartSpeed = 0.0f;
		DestinationSpeed = 0.0f;
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
	float accelerationZ = inverse.m[0] * distance + inverse.m[3] * speedChange + inverse.m[9];
	NonLinearAcceleration.y = inverse.m[1] * distance + inverse.m[4] * speedChange + inverse.m[10];
	NonLinearAcceleration.x = inverse.m[2] * distance + inverse.m[5] * speedChange + inverse.m[11];
	NonLinearAcceleration.z = accelerationZ;
}

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */

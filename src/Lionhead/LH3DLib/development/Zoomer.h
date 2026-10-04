#ifndef BW1_DECOMP_ZOOMER_INCLUDED_H
#define BW1_DECOMP_ZOOMER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHMatrix.h" /* For struct LHMatrix */
#include "LHPoint.h"  /* For struct LHPoint */

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
	void SetDestination(float destination, float time) { SetDestinationWithSpeedAndTime(destination, 0.0f, time); }
	// BW1W120 inlined BW1M119 0103a990
	float GetCurrentValue() { return CurrentValue; }
	// BW1W120 inlined BW1M119 01023960
	float GetDestination() { return destination; }
	// BW1W120 inlined BW1M119 inlined
	float GetDuration() { return duration; }
	// Inliner IL size: 343
	// BW1W120 00407d60 BW1M119 010517e0
	void SetDestinationWithSpeedAndTime(float destination, float speed, float time)
	{
		if (time < 0.001f)
		{
			SetPosition(destination);
			return;
		}

		StartValue = CurrentValue;
		StartSpeed = CurrentSpeed;
		this->destination = destination;
		DestinationSpeed = speed;
		duration = time;
		CurrentTime = 0.0f;

		float    t2 = 0.5f * (GetDuration() * GetDuration());
		float    t3 = (1.0f / 3.0f) * (t2 * time);
		float    t4 = (1.0f / 6.0f) * (t2 * t2);
		LHMatrix matrix;
		matrix._11 = t4;
		matrix._12 = t3;
		matrix._13 = t2;
		matrix._21 = t3;
		matrix._22 = t2;
		matrix._23 = time;
		matrix._31 = t2;
		matrix._32 = time;
		matrix._33 = 1.0f;
		matrix._43 = 0.0f;
		matrix._42 = 0.0f;
		matrix._41 = 0.0f;
		LHMatrix inverse;
		inverse.SetInverse(matrix);

		LHPoint coefficients;
		coefficients.x = this->destination - StartValue - StartSpeed * duration;
		coefficients.y = DestinationSpeed - StartSpeed;
		coefficients.z = 0.0f;
		inverse.TransformPoint(coefficients);
		NonLinearAcceleration.z = coefficients.x;
		NonLinearAcceleration.y = coefficients.y;
		NonLinearAcceleration.x = coefficients.z;
	}
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
	// BW1W120 inlined BW1M119 inlined
	float GetCurrentTime() { return CurrentTime; }
	// BW1W120 00442720 BW1M119 0102eff0
	void Update(float dt)
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
			float t2 = 0.5f * (GetCurrentTime() * GetCurrentTime());
			float t3 = (1.0f / 3.0f) * (t2 * CurrentTime);
			float t4 = (1.0f / 6.0f) * (t2 * t2);
			CurrentSpeed = NonLinearAcceleration.x * CurrentTime + NonLinearAcceleration.y * t2 +
			               NonLinearAcceleration.z * t3 + StartSpeed;
			CurrentValue = NonLinearAcceleration.z * t4 + NonLinearAcceleration.y * t3 + NonLinearAcceleration.x * t2 +
			               StartSpeed * CurrentTime + StartValue;
		}
	}
};

struct Zoomer3d
{
	Zoomer x; /* 0x0 */
	Zoomer y; /* 0x30 */
	Zoomer z; /* 0x60 */

	// Non-virtual methods

	// BW1W120 004605d0 BW1M119 010347d0
	LHPoint GetCurrentValue() { return LHPoint(x.GetCurrentValue(), y.GetCurrentValue(), z.GetCurrentValue()); }
	// BW1W120 inlined BW1M119 010238c0
	LHPoint GetDestination() { return LHPoint(x.GetDestination(), y.GetDestination(), z.GetDestination()); }
	// BW1W120 inlined BW1M119 inlined
	void Update(float dt)
	{
		x.Update(dt);
		y.Update(dt);
		z.Update(dt);
	}
	// BW1W120 inlined BW1M119 inlined
	void SetDestinationWithSpeedAndTime(const LHPoint& destination, float speed, float time)
	{
		x.SetDestinationWithSpeedAndTime(destination.x, speed, time);
		y.SetDestinationWithSpeedAndTime(destination.y, speed, time);
		z.SetDestinationWithSpeedAndTime(destination.z, speed, time);
	}
	// BW1W120 0044e760 BW1M119 inlined
	void SetDestinationWithTime(const LHPoint& destination, float time)
	{
		x.SetDestination(destination.x, time);
		y.SetDestination(destination.y, time);
		z.SetDestination(destination.z, time);
	}
	// BW1W120 0044e6d0 BW1M119 011a1520
	void SetPosition(const LHPoint& destination)
	{
		x.SetPosition(destination.x);
		y.SetPosition(destination.y);
		z.SetPosition(destination.z);
	}
};

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */

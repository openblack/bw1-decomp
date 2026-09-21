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

	// BW1W120 inlined BW1M119 inlined
	void SetDestination(float destination);
	// BW1W120 inlined BW1M119 0103a990
	float GetCurrentValue();
	// BW1W120 inlined BW1M119 01023960
	float GetDestination();
	// BW1W120 00407d60 BW1M119 010517e0
	void SetDestinationWithSpeedAndTime(float destination, float speed, float time);
	// BW1W120 00441ac0 BW1M119 01550e10
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

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */

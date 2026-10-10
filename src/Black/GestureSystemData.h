#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For enum LH_FILE_RESULT */

#include "Base.h" /* For struct Base */
#include "GestureSample.h"

// Forward Declares

class GestureSystem;
class LHOSFile;
struct LHRegionF;

class GestureSystemData : public Base
{
public:
	GestureSampleBase Samples[GESTURE_SYSTEM_MAX_SAMPLES];
	uint8_t           SampleCount;
	uint8_t           Gesture;
	uint8_t           field_0x64a;
	float             AspectRatio;
	uint32_t          CheckDirection;
	uint32_t          AllowReverse;
	uint32_t          CheckAspectRatio;

	// Override methods

	// BW1W120 inlined BW1M119 010c8600
	virtual ~GestureSystemData() {}

	// Constructors

	// BW1W120 0054baf0 BW1M119 01333810
	GestureSystemData() { SetToZero(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 013342e0
	int GetSampleCount() const { return SampleCount; }
	// BW1W120 inlined BW1M119 null
	float GetMatchScore() const { return (CheckDirection ? 1.0f : 0.0f) + SampleCount; }
	// BW1W120 00578be0 BW1M119 01095a70
	void SetToZero();
	// BW1W120 00578c20 BW1M119 01095960
	void CalculateContent(GestureSystem* system);
	// BW1W120 00578cc0 BW1M119 null
	void CalculateContentFromAllSamples(GestureSystem* system);
	// BW1W120 00578d30 BW1M119 015c0480
	void AddSample(GestureSampleBase* sample);
	// BW1W120 00578d70 BW1M119 010957b0
	void CalculateTransformedRegion(LHRegionF* region, long start, long end);
	// BW1W120 00578e20 BW1M119 010958e0
	void CalculateTransformedRegion(LHRegionF* region);
	// BW1W120 00578e40 BW1M119 015c0240
	static float CalculateRatio(LHRegionF* region);
	// BW1W120 00578ea0 BW1M119 010956b0
	void CalculateRatio();
	// BW1W120 00578f30 BW1M119 null
	void NormaliseSamples();
	// BW1W120 00579020 BW1M119 null
	void NormaliseSamplesAndCalculateRatio();
	// BW1W120 00579040 BW1M119 null
	int GetKeyPointType(long index) const;
	// BW1W120 00579090 BW1M119 null
	int fn_00579090(int param_1, int param_2);
	// BW1W120 005790a0 BW1M119 015bf800
	LH_FILE_RESULT Serialise(LHOSFile* file, int saving);
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */

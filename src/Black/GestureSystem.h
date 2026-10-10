#ifndef BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h>

#include <re_common.h> /* For bool32_t */

#include "Base.h" /* For struct Base */
#include "GestureSample.h"

// Forward Declares

class GestureSystemData;
struct GestureSystemResult;
struct LHCoord;
struct LHRegion;
struct LHRegionF;

#define GESTURE_POSITION_EPSILON 0.0001f

class GestureSystem : public Base
{
public:
	GestureSample Samples[GESTURE_SYSTEM_MAX_SAMPLES]; /* 0x8 */
	uint8_t       PointCount;                          /* 0xc88 */
	uint8_t       field_0xc89[3];
	uint32_t      RepeatCount; /* 0xc8c */
	uint8_t       Head;        /* 0xc90 */
	uint32_t      field_0xc94;

	// BW1W120 inlined BW1M119 0108a3b0
	void ClearSamples() { memset(Samples, 0, sizeof(Samples)); }
	// BW1W120 inlined BW1M119 01335240
	void Reset()
	{
		PointCount = 0;
		Head = 0;
		RepeatCount = 0;
		ClearSamples();
	}
	// BW1W120 inlined BW1M119 01004c90
	int GetPointCount() const { return PointCount; }
	// BW1W120 0057a880 BW1M119 01333380
	int GetOffsetAt(long index) const
	{
		return index > PointCount
		           ? 0
		           : (Head - PointCount + index + GESTURE_SYSTEM_MAX_SAMPLES) % GESTURE_SYSTEM_MAX_SAMPLES;
	}
	// BW1W120 inlined BW1M119 01004cd0
	GestureSample* GetSampleAt(long index) { return &Samples[GetOffsetAt(index)]; }
	// BW1W120 inlined BW1M119 01333ed0
	LHPoint* GetWorldPoint(long index) { return &GetSampleAt(index)->WorldPosition; }
	// BW1W120 inlined BW1M119 01333300
	uint32_t GetKeyPointType(long index)
	{
		return GetSampleAt(index)->Flags &
		       (GESTURE_KEY_POINT_TYPE_START | GESTURE_KEY_POINT_TYPE_JUNCTION | GESTURE_KEY_POINT_TYPE_END);
	}

	// Override methods

	// BW1W120 0054bb60 BW1M119 01550d80
	virtual ~GestureSystem();

	// Constructors

	// BW1W120 0054bb40 BW1M119 inlined
	GestureSystem();

	// Non-virtual methods

	// BW1W120 00578610 BW1M119 null
	int FindNearestSample(LHPoint* point);
	// BW1W120 005786d0 BW1M119 null
	void SetSamplePosition(long index, LHPoint* position);
	// BW1W120 00578700 BW1M119 null
	int RoundToNearest(float value) const;
	// BW1W120 00578730 BW1M119 01000e80
	int ConvertAngleToDirection(float angle) const;
	// BW1W120 00578780 BW1M119 null
	void CopySample(long from, long to);
	// BW1W120 005787f0 BW1M119 null
	void RemoveNonKeyPoints();
	// BW1W120 00578890 BW1M119 01333400
	float CalculateAngleDifference(float from, float to);
	// BW1W120 005788d0 BW1M119 01333180
	void CalculateGestureOffsets(GestureSystemResult* result, long* start, long* end);
	// BW1W120 005789d0 BW1M119 01332e90
	void CalculateTransformedRegion(LHRegionF* region, long start, long end) const;
	// BW1W120 0057bbc0 BW1M119 01005010
	void AddPoint(LHPoint* world_point, LHCoord* screen_point);
	// BW1W120 0057bd10 BW1M119 null
	void RemovePoint(long index);
	// BW1W120 0057be10 BW1M119 01000c70
	long GetPreviousKeyPointOffset(long index);
	// BW1W120 0057be70 BW1M119 01335010
	long GetPreviousValidSample(long index);
	// BW1W120 0057bf60 BW1M119 null
	float CalculateTurn(LHPoint* from, LHPoint* corner, LHPoint* to);
	// BW1W120 0057bfe0 BW1M119 01000a40
	long CalculateJunction(long key_point, long index);
	// BW1W120 0057c1a0 BW1M119 01001140
	long GetPreviousJunction(long index);
	// BW1W120 0057c200 BW1M119 01334c50
	bool32_t CalculateForJunctionMerge(long junction, long index);
	// BW1W120 0057c3f0 BW1M119 01004d90
	void CalculateKeyPoint(long index);
	// BW1W120 0057c560 BW1M119 null
	void CalculateKeyPoints();
	// BW1W120 0057c590 BW1M119 01334b60
	bool32_t IsRequiredSampleDistance(LHPoint* from, LHPoint* to) const;
	// BW1W120 0057c5c0 BW1M119 null
	bool32_t IsRequiredDistance(float dx, float dz) const;
	// BW1W120 0057c600 BW1M119 01334ad0
	bool32_t IsRequiredJunctionDistance(long from, long to, LHPoint* from_point, LHPoint* to_point);
	// BW1W120 0057c630 BW1M119 013348f0
	bool32_t IsRequiredJunctionDistance(long from, long to, float dx, float dz);
	// BW1W120 0057c710 BW1M119 01004f00
	void CalculateKeyAngleAndDirection(long index);
	// BW1W120 0057c820 BW1M119 01000da0
	void CalculateKeyAngleDifference(long index);
	// BW1W120 0057c8f0 BW1M119 01334740
	void RepeatPoint(LHCoord* screen_point);
	// BW1W120 0057a9c0 BW1M119 null
	void fn_0057A9C0(LHRegion* rect, long start, long end);
	// BW1W120 0057b0e0 BW1M119 null
	void fn_0057B0E0(LHRegion* rect, GestureSystemData* data);
	// BW1W120 0057b460 BW1M119 null
	void fn_0057B460(LHRegion* rect);
	// BW1W120 0057b4b0 BW1M119 null
	void fn_0057B4B0(LHRegion* rect);
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H */

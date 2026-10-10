#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GestureSystemData;
struct GestureSystemPacketData;
struct GestureSystemResult;
class GestureSystem;

class GestureSystemDataList : public Base
{
public:
	GestureSystemData* Data;
	int                Count;

	// Override methods

	// BW1W120 0054bac0 BW1M119 013dd2b0
	virtual ~GestureSystemDataList();

	// Constructors

	// BW1W120 0054baa0 BW1M119 inlined
	GestureSystemDataList();

	// Non-virtual methods

	// BW1W120 00579440 BW1M119 013339a0
	void Reset();
	// BW1W120 00579460 BW1M119 null
	bool32_t AddData(GestureSystemData* data);
	// BW1W120 00579720 BW1M119 null
	bool32_t RemoveData(GestureSystemData* data);
	// BW1W120 00579a00 BW1M119 null
	int CountGesture(uint8_t gesture);
	// BW1W120 00579a40 BW1M119 null
	void RenumberGesturesAbove(uint8_t gesture);
	// BW1W120 00579a80 BW1M119 null
	GestureSystemData* GetData(int index) const;
	// BW1W120 00579ab0 BW1M119 013338b0
	GestureSystemData* GetGestureFromResult(long gesture) const;
	// BW1W120 00579af0 BW1M119 01333600
	bool32_t Load(char* path);
	// BW1W120 00579c60 BW1M119 null
	int fn_00579C60(int param_1);
	// BW1W120 00579c70 BW1M119 null
	int fn_00579C70(int param_1);
	// BW1W120 00579c80 BW1M119 null
	uint8_t GetHighestGesture();
	// BW1W120 00579cc0 BW1M119 01333590
	int GetOffset(GestureSystemData* data) const;
	// BW1W120 00579e00 BW1M119 null
	GestureSystemData* FindBestMatch(GestureSystemData* input, GestureSystemResult* result);
	// BW1W120 00579f10 BW1M119 01096020
	bool32_t MatchGestureForResult(long gesture, GestureSystemData* input, GestureSystemResult* result) const;
	// BW1W120 00579f70 BW1M119 null
	bool32_t MatchGestureAt(int index, GestureSystemData* input, GestureSystemResult* result);
	// BW1W120 00579fa0 BW1M119 01334520
	bool32_t CheckForGestureRatio(GestureSystemData* stored, GestureSystemData* input,
	                              GestureSystemResult* result) const;
	// BW1W120 0057a050 BW1M119 01095b60
	bool32_t MatchGesture(GestureSystemData* stored, GestureSystemData* input, GestureSystemResult* result) const;
	// BW1W120 0057a0e0 BW1M119 013343a0
	bool32_t CheckForStartDirection(GestureSystemData* stored, GestureSystemData* input, long index,
	                                int reversed) const;
	// BW1W120 0057a150 BW1M119 null
	float NormaliseAngle(float angle) const;
	// BW1W120 0057a5e0 BW1M119 01333a30
	void CalculateGesturePacket(GestureSystem* system, GestureSystemData* input, GestureSystemResult* result,
	                            GestureSystemPacketData* packet);
	// BW1W120 0057a1a0 BW1M119 01095cc0
	bool32_t CheckForGestureRotations(GestureSystemData* stored, GestureSystemData* input,
	                                  GestureSystemResult* result) const;
	// BW1W120 0057a3e0 BW1M119 01334010
	bool32_t CheckForInverseGestureRotations(GestureSystemData* stored, GestureSystemData* input,
	                                         GestureSystemResult* result) const;
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */

#ifndef BW1_DECOMP_CHAIN_INCLUDED_H
#define BW1_DECOMP_CHAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ChainJoint.h"  /* For class ChainJoint */
#include "GJBaseUtils.h" /* For class GJArray */
#include "PSysBase.h"    /* For struct PSysBase */

#define CHAIN_SECONDS_PER_MILLISECOND 0.001f
#define CHAIN_AMBIENT_LIGHT           0.6f

#define CHAIN_POINTS_PER_SIDE     2
#define CHAIN_POINTS_PER_SEGMENT  (2 * CHAIN_POINTS_PER_SIDE)
#define CHAIN_COLOURS_PER_SIDE    (CHAIN_POINTS_PER_SIDE * 2)
#define CHAIN_COLOURS_PER_SEGMENT (CHAIN_POINTS_PER_SEGMENT * 2)

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Persistent;
struct UVCoord;

class Chain : public PSysBase
{
public:
	Persistent*         Creator;
	long                field_0x18;
	long                FrameHeight;
	float               field_0x20;
	float               field_0x24;
	float               field_0x28;
	float               field_0x2c;
	float               field_0x30;
	float               field_0x34;
	bool                UseDynamicLighting;
	float               ScrollOffset;
	bool                JointsUpdated;
	GJArray<ChainJoint> Joints;
	float               ScrollSpeed;

	// Override methods

	// BW1W120 006c8810 BW1M119 01483af0
	virtual ~Chain();
	// BW1W120 006c8800 BW1M119 0142bb00
	virtual char* GetDebugText();
	// BW1W120 00695c10 BW1M119 01424db0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc780 BW1M119 0148bc10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006c87f0 BW1M119 0142bad0
	virtual uint32_t GetSaveType();

	// BW1W120 006c87d0 BW1M119 01483d30
	Chain();

	// Non-virtual methods

	// BW1W120 006c8a60 BW1M119 01483820
	ChainJoint* GetJoint(long index);
	// BW1W120 0067b380 BW1M119 013f76a0
	void AddDrawing();
	// BW1W120 0067b370 BW1M119 013f77c0
	void DrawWithClipping();
	// BW1W120 0067b3f0 BW1M119 013f6820
	void Draw();
	// BW1W120 006c8920 BW1M119 01483860
	void GetUVs(long segment, long frame, UVCoord* top_left, UVCoord* top_right, UVCoord* bottom_left,
	            UVCoord* bottom_right) const;
};
static_assert(sizeof(Chain) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */

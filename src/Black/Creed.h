#ifndef BW1_DECOMP_CREED_INCLUDED_H
#define BW1_DECOMP_CREED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObject.h" /* For class MobileObject */

// Forward Declares

class Creature;
class GameOSFile;
class HandGlow;
struct MapCoords;

class Creed : public MobileObject
{
public:
	HandGlow* Glow; /* 0x68 */

	// Constructors

	// BW1W120 0050b310 BW1M119 010c3c20
	Creed();

	// Non-virtual methods

	// BW1W120 0050b390
	void SetToZero();

	// Override methods

	// BW1W120 0050b330 BW1M119 010c3750
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0050b340 BW1M119 010c3790
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0050b350 BW1M119 010c37d0
	virtual uint32_t GetSaveType();
	// BW1W120 0050b360 BW1M119 010c3800
	virtual char* GetDebugText();
	// BW1W120 0050b3a0 BW1M119 010c3b80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0050b3d0 BW1M119 010c3ae0
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0050b420 BW1M119 010c39b0
	virtual void Create3DObject();
	// BW1W120 0050b4a0 BW1M119 010c3950
	virtual void SetScale(float scale);
	// BW1W120 0050b4c0 BW1M119 010c38f0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050b4e0 BW1M119 010c3890
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0050b500 BW1M119 010c3840
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
};
static_assert(sizeof(Creed) == 0x6c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREED_INCLUDED_H */

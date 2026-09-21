#ifndef BW1_DECOMP_WHALE_INCLUDED_H
#define BW1_DECOMP_WHALE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Whale : public MobileObject
{
public:
	// BW1W120 00775140 BW1M119 01090cd0
	static void ProcessAll();

	uint8_t field_0x68[0xc];

	// Override methods

	// BW1W120 005612c0 BW1M119 011680a0
	virtual ~Whale();
	// BW1W120 00774c00 BW1M119 01168fc0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005612b0 BW1M119 01168220
	virtual char* GetDebugText();
	// BW1W120 007752c0 BW1M119 011682b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007752a0 BW1M119 01168310
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005612a0 BW1M119 011681f0
	virtual uint32_t GetSaveType();
	// BW1W120 007752e0 BW1M119 01168260
	virtual void ResolveLoad();
	// BW1W120 00561280 BW1M119 011681b0
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00775280 BW1M119 01168370
	virtual uint32_t Process();
	// BW1W120 00774e10 BW1M119 01168c50
	virtual void Draw();
	// BW1W120 00774ca0 BW1M119 01168cd0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00561270 BW1M119 01168170
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00561290 BW1M119 01168130
	virtual bool32_t CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */

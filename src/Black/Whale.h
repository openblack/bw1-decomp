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
	uint8_t field_0x68[0xc];

	// Override methods

	// BW1W120 005612c0 BW1M100 1015fe80 Whale::_dt(void)
	virtual ~Whale();
	// BW1W120 00774c00 BW1M100 10160d10 Whale::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005612b0 BW1M100 10160000 Whale::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007752c0 BW1M100 10160090 Whale::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007752a0 BW1M100 101600f0 Whale::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005612a0 BW1M100 1015ffd0 Whale::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 007752e0 BW1M100 10160040 Whale::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 00561280 BW1M100 1015ff90 Whale::PhysicsEditorCreate(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00775280 BW1M100 10160150 Whale::Process(void)
	virtual uint32_t Process();
	// BW1W120 00774e10 BW1M100 101609a0 Whale::Draw(void)
	virtual void Draw();
	// BW1W120 00774ca0 BW1M100 10160a20 Whale::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00561270 BW1M100 1015ff50 Whale::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00561290 BW1M100 1015ff10 Whale::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */

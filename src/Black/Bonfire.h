#ifndef BW1_DECOMP_BONFIRE_INCLUDED_H
#define BW1_DECOMP_BONFIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>        /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;

class Bonfire : public Rock
{
public:
	// Override methods

	// BW1W120 00439800 BW1M119 010b6780
	virtual ~Bonfire();
	// BW1W120 004397f0 BW1M119 010b6a30
	virtual char* GetDebugText();
	// BW1W120 00439a00 BW1M119 010b7440
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00439990 BW1M119 010b7510
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004397e0 BW1M119 010b69f0
	virtual uint32_t GetSaveType();
	// BW1W120 004397c0 BW1M119 010b6940
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00439a70 BW1M119 010b73e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00439a90 BW1M119 0101d000
	virtual void Draw();
	// BW1W120 00439840 BW1M119 010b78b0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00439790 BW1M119 010b6860
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00439780 BW1M119 010b6810
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 004397b0 BW1M119 010b68f0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00439a80 BW1M119 010b7390
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 004397a0 BW1M119 010b68b0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 004398a0 BW1M119 010b75f0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 004397d0 BW1M119 010b6990
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_BONFIRE_INCLUDED_H */

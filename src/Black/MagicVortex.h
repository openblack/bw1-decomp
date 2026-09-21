#ifndef BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H
#define BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum VORTEX_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileStatic.h"  /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class Flock;
class GInterfaceStatus;
class GVortexInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class Town;
class Villager;

class LandscapeVortex : public MobileStatic
{
public:
	LandscapeVortex* next; /* 0x88 */
	float            field_0x8c;
	float            field_0x90;
	uint32_t         field_0x94;
	uint32_t         field_0x98;
	uint32_t         field_0x9c;
	uint32_t         field_0xa0;
	uint32_t         field_0xa4;
	uint32_t         field_0xa8;
	uint32_t         field_0xac;
	uint32_t         field_0xb0;
	uint32_t         field_0xb4;
	uint8_t          field_0xb8;
	uint32_t         field_0xbc;
	uint32_t         field_0xc0;
	uint32_t         field_0xc4;
	uint32_t         field_0xc8;
	uint32_t         field_0xcc;
	uint32_t         field_0xd0;
	uint32_t         field_0xd4;
	uint32_t         field_0xd8;
	uint32_t         field_0xdc;
	VORTEX_TYPE      type; /* 0xe0 */
	uint32_t         field_0xe4;
	float            field_0xe8;

	// Override methods

	// BW1W120 005fe7f0 BW1M119 013bff10
	virtual ~LandscapeVortex();
	// BW1W120 005fe8f0 BW1M119 013be610
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00600210 BW1M119 013bbc90
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00600000 BW1M119 013bc060
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fd610 BW1M119 013c15b0
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 005fd620 BW1M119 013c15f0
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 005fd630 BW1M119 013c1640
	virtual uint32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 005fd640 BW1M119 013c1690
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 005fd650 BW1M119 013c16f0
	virtual uint32_t CanBeThrownByCreature(Creature* param_1);
	// BW1W120 005fd660 BW1M119 013c1740
	virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 005fd670 BW1M119 013c1790
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 005fd680 BW1M119 013c17e0
	virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
	// BW1W120 005fd690 BW1M119 013c1840
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 005fd6a0 BW1M119 013c1890
	virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 005fd6b0 BW1M119 013c18e0
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 005ffff0 BW1M119 013bc440
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 005fedf0 BW1M119 013bdfc0
	virtual void Create3DObject();
	// BW1W120 005fd600 BW1M119 013c1560
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 005fee20 BW1M119 013bdf80
	virtual MESH_LIST GetMesh() const;
	// BW1W120 005ffdc0 BW1M119 013bc910
	virtual void Draw();
	// BW1W120 005fee30 BW1M119 013bd9e0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 005ff300 BW1M119 013bd980
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005fffa0 BW1M119 013bc590
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 005fff80 BW1M119 013bc630
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 005fff90 BW1M119 013bc5e0
	virtual bool32_t CanBecomeAPhysicsObject();

	// Constructors

	// BW1W120 005fe7a0 BW1M119 013bec10
	LandscapeVortex();

	// Non-virtual methods

	// BW1W120 005fd570 BW1M119 013c0e80
	GVortexInfo* GetVortexInfo();
};

class LandscapeVortexIn : public LandscapeVortex
{
public:
	// Override methods

	// BW1W120 005fd7b0 BW1M119 013c1b00
	virtual ~LandscapeVortexIn();
	// BW1W120 005fd860 BW1M119 013c09a0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005fd7a0 BW1M119 013c1c00
	virtual char* GetDebugText();
	// BW1W120 00600550 BW1M119 013bba70
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00600460 BW1M119 013bbb80
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fd790 BW1M119 013c1bc0
	virtual uint32_t GetSaveType();
	// BW1W120 005fd970 BW1M119 013c0770
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 005fd8c0 BW1M119 013c0950
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 005fd8d0 BW1M119 013c08e0
	virtual bool ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
	// BW1W120 005fd8e0 BW1M119 013c07c0
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 005fd980 BW1M119 013c06d0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
};

class LandscapeVortexOut : public LandscapeVortex
{
public:
	// Override methods

	// BW1W120 005fdde0 BW1M119 013c19b0
	virtual ~LandscapeVortexOut();
	// BW1W120 005fdf10 BW1M119 013bfb40
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005fddd0 BW1M119 013c1ab0
	virtual char* GetDebugText();
	// BW1W120 00600880 BW1M119 013bb240
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00600630 BW1M119 013bb690
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fddc0 BW1M119 013c1a70
	virtual uint32_t GetSaveType();
	// BW1W120 005fdfe0 BW1M119 013bfa40
	virtual void SetTown(Town* param_1);
};

class LandscapeVortexVolc : public LandscapeVortex
{
public:
	// Override methods

	// BW1W120 005fd700 BW1M119 013c1410
	virtual ~LandscapeVortexVolc();
	// BW1W120 005fd6f0 BW1M119 013c1510
	virtual char* GetDebugText();
	// BW1W120 005fd6e0 BW1M119 013c14d0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H */

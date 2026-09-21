#ifndef BW1_DECOMP_ROCK_INCLUDED_H
#define BW1_DECOMP_ROCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>        /* For enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileStatic.h"  /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GMobileStaticInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class PhysicsObject;

class Rock : public MobileStatic
{
public:
	uint32_t field_0x88;
	float    field_0x8c;
	GPlayer* player; /* 0x90 */

	// Override methods

	// BW1W120 005613a0 BW1M119 010b7a20
	virtual ~Rock();
	// BW1W120 006e77a0 BW1M119 01145620
	virtual GPlayer* GetPlayer();
	// BW1W120 00439720 BW1M119 010b6ac0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 006e7170 BW1M119 01145c20
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 006e70d0 BW1M119 01145d90
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00561390 BW1M119 010c72b0
	virtual char* GetDebugText();
	// BW1W120 0071bcd0 BW1M119 01517920
	virtual uint32_t GetSampleForAttack();
	// BW1W120 006e7870 BW1M119 011453d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006e77b0 BW1M119 011454f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561380 BW1M119 010c7280
	virtual uint32_t GetSaveType();
	// BW1W120 006e79f0 BW1M119 01145160
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 006e7a60 BW1M119 01145120
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 00439730 BW1M119 inlined
	virtual uint32_t IsRock_0();
	// BW1W120 00439760 BW1M119 010b6ba0
	virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 006e7a70 BW1M119 011450c0
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00439750 BW1M119 010b6b60
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 006e7070 BW1M119 01145fe0
	virtual uint32_t CanBeThrownByPlayer();
	// BW1W120 006e79e0 BW1M119 01011a70
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 006e7210 BW1M119 01145b30
	virtual void ActualMoveMapObject(const MapCoords& param_1);
	// BW1W120 00517f10 BW1M119 01045a20
	virtual void Draw();
	// BW1W120 00439710 BW1M119 010b6a70
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 006e70c0 BW1M119 01145ef0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 006e7090 BW1M119 01145f30
	virtual int GetDefaultResource();
	// BW1W120 006e7030 BW1M119 01146060
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 006e7450 BW1M119 01145aa0
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006e7480 BW1M119 01145900
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 006e6ff0 BW1M119 01146180
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006e7000 BW1M119 01146120
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 00561370 BW1M119 010c7240
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 006e7930 BW1M119 01145270
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00439770 BW1M119 010b6bf0
	virtual bool32_t ShouldFootpathsGoRound();
	// BW1W120 00439740 BW1M119 010b6b30
	virtual bool IsMovable();

	// Constructors

	// BW1W120 006e6f70 BW1M119 011461c0
	Rock(const MapCoords& coords, const GMobileStaticInfo* info, Object* param_3, GPlayer* param_4, float param_5,
	     float param_6);
};

#endif /* BW1_DECOMP_ROCK_INCLUDED_H */

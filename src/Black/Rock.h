#ifndef BW1_DECOMP_ROCK_INCLUDED_H
#define BW1_DECOMP_ROCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

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

	// BW1W120 005613a0 BW1M100 100b4de0 Rock::_dt(void)
	virtual ~Rock();
	// BW1W120 006e77a0 BW1M100 1013d1f0 Rock::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00439720 BW1M100 100b3f50 Rock::SetPlayer(GPlayer *)
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 006e7170 BW1M100 1013d800 Rock::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 006e70d0 BW1M100 1013d970 Rock::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00561390 BW1M100 100c4210 Rock::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0071bcd0 BW1M100 1050fda0 Rock::GetSampleForAttack(void)
	virtual uint32_t GetSampleForAttack();
	// BW1W120 006e7870 BW1M100 1013cfa0 Rock::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006e77b0 BW1M100 1013d0c0 Rock::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561380 BW1M100 100c41e0 Rock::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 006e79f0 BW1M100 1013c460 Rock::PhysicsEditorCreate(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 006e7a60 BW1M100 1013c420 Rock::GetOverwriteTapToolTip(void)
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 00439730 BW1M100 inlined Rock::IsRock_0(void)
	virtual uint32_t IsRock_0();
	// BW1W120 00439760 BW1M100 100b4030 Rock::CanBeAttackedByCreature(Creature *)
	virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 006e7a70 BW1M100 1013c3c0 Rock::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00439750 BW1M100 100b3ff0 Rock::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 006e7070 BW1M100 1013dbc0 Rock::CanBeThrownByPlayer(void)
	virtual uint32_t CanBeThrownByPlayer();
	// BW1W120 006e79e0 BW1M100 1000ef30 Rock::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 006e7210 BW1M100 1013d710 Rock::ActualMoveMapObject(MapCoords const &)
	virtual void ActualMoveMapObject(const MapCoords* param_1);
	// BW1W120 00517f10 BW1M100 10042fe0 Rock::Draw(void)
	virtual void Draw();
	// BW1W120 00439710 BW1M100 100b3f00 Rock::IsResourceStore(RESOURCE_TYPE)
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 006e70c0 BW1M100 1013dad0 Rock::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 006e7090 BW1M100 1013db10 Rock::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 006e7030 BW1M100 1013dc40 Rock::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 006e7450 BW1M100 1013d680 Rock::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006e7480 BW1M100 1013d4e0 Rock::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 006e6ff0 BW1M100 1013dd60 Rock::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006e7000 BW1M100 1013dd00 Rock::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 00561370 BW1M100 100c41a0 Rock::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 006e7930 BW1M100 1013ce40 Rock::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00439770 BW1M100 100b4080 Rock::ShouldFootpathsGoRound(void)
	virtual bool ShouldFootpathsGoRound();
	// BW1W120 00439740 BW1M100 100b3fc0 Rock::IsMovable(void)
	virtual bool IsMovable();

	// Constructors

	// BW1W120 006e6f70 BW1M100 1013dda0 Rock::Rock(MapCoords const &, GMobileStaticInfo const *, Object *, GPlayer *, float, float)
	Rock(MapCoords* coords, GMobileStaticInfo* info, Object* param_3, GPlayer* param_4, float param_5, float param_6);
};

#endif /* BW1_DECOMP_ROCK_INCLUDED_H */

#ifndef BW1_DECOMP_TOTEM_STATUE_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */
#include <re_common.h>                           /* For bool32_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GPlayer;
class GTotemStatueInfo;
class Game3DObject;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;
class Town;
class TownCentre;
class WorshipSite;

class TotemStatue : public MultiMapFixed
{
public:
	TownCentre*   town_centre;  /* 0x7c */
	float         WorshipSpeed; /* 0x80 */
	uint32_t      field_0x84;
	float         WorshipSpeed2;
	Game3DObject* Game3dObject;
	float         field_0x90;
	float         field_0x94;
	uint32_t      field_0x98;
	Zoomer        zoomer;
	uint32_t      field_0xcc;
	uint32_t      field_0xd0;
	uint32_t      field_0xd4;

	// Override methods

	// BW1W120 00561180 BW1M119 0154f210
	virtual ~TotemStatue();
	// BW1W120 00737c20 BW1M119 0154f190
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00738490 BW1M119 0154e1c0
	virtual GPlayer* GetPlayer();
	// BW1W120 00738480 BW1M119 0154e280
	virtual Town* GetTown();
	// BW1W120 00561170 BW1M119 0154c980
	virtual char* GetDebugText();
	// BW1W120 00738800 BW1M119 0154d8f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00738700 BW1M119 0154dab0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561160 BW1M119 0154c940
	virtual uint32_t GetSaveType();
	// BW1W120 00738940 BW1M119 0154d880
	virtual void ResolveLoad();
	// BW1W120 005610f0 BW1M119 0154c720
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00561150 BW1M119 0154c900
	virtual bool32_t IsTotemStatue();
	// BW1W120 00561110 BW1M119 0154c7c0
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00561100 BW1M119 0154c770
	virtual bool32_t CanBeImpressedByCreature(Creature* param_1);
	// BW1W120 004e3e70 BW1M119 015ee440
	virtual bool32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1);
	// BW1W120 007384d0 BW1M119 0154e120
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e4110 BW1M119 015edbb0
	virtual bool32_t CanBeStolenByCreature(Creature* param_1);
	// BW1W120 004e4170 BW1M119 015eda00
	virtual bool32_t IsTotemWithStealableSpell(Creature* param_1);
	// BW1W120 00738eb0 BW1M119 0154c9c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00561120 BW1M119 0154c810
	virtual bool32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 00737c90 BW1M119 0154ef50
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00737c60 BW1M119 0154f010
	virtual float IncreaseLife(float value);
	// BW1W120 00737f40 BW1M119 0107a4d0
	virtual uint32_t Process();
	// BW1W120 005610e0 BW1M119 0154c680
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00738960 BW1M119 01027750
	virtual void Draw();
	// BW1W120 00737d60 BW1M119 0154e980
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00738500 BW1M119 0154dfa0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 00738590 BW1M119 0154dec0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 007385e0 BW1M119 0154de10
	virtual bool32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 007386a0 BW1M119 0154dc40
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00738630 BW1M119 0154dd50
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00738690 BW1M119 0154dcf0
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00561130 BW1M119 0154c860
	virtual bool32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00737d40 BW1M119 0154ec00
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00737d50 BW1M119 0154ebb0
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00561140 BW1M119 0154c8b0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00561090 BW1M119 0154c590
	virtual bool32_t IsRepaired();
	// BW1W120 005610b0 BW1M119 0101d550
	virtual bool32_t IsBuilt();
	// BW1W120 00738130 BW1M119 0154e590
	virtual void AddToPlayer();

	// Static methods

	// BW1W120 00737cc0 BW1M119 0154ec50
	static TotemStatue* Create(TownCentre* town_centre);

	// Constructors

	// BW1W120 00737b20 BW1M119 0154f2c0
	TotemStatue(TownCentre* tc, const GTotemStatueInfo* info);

	// Non-virtual methods

	// BW1W120 00738260 BW1M119 0154e430
	float GetWorshipSpeed();
	// BW1W120 00738270 BW1M119 0154e350
	void SetWorshipPercentage(float percentage);
};

#endif /* BW1_DECOMP_TOTEM_STATUE_INCLUDED_H */

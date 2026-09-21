#ifndef BW1_DECOMP_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GAbodeInfo;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DObject;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PSysInterface;
class PhysicsObject;
class PlannedMultiMapFixed;
class TotemStatue;
class Town;
class TownCentreSpellIcon;
class Villager;

class TownCentre : public Abode
{
public:
	LH3DObject*          GameObject; /* 0xc4 */
	PSysInterface*       psys;
	TotemStatue*         totem_statue;
	TownCentreSpellIcon* icons[0x6]; /* 0xd0 */

	// Override methods

	// BW1W120 0055dbb0 BW1M119 015651c0
	virtual ~TownCentre();
	// BW1W120 00743b40 BW1M119 01565000
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055dba0 BW1M119 01565670
	virtual char* GetDebugText();
	// BW1W120 00744880 BW1M119 01563370
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00744830 BW1M119 01563410
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055db90 BW1M119 01565630
	virtual uint32_t GetSaveType();
	// BW1W120 007448c0 BW1M119 015632f0
	virtual void ResolveLoad();
	// BW1W120 007449e0 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0055db60 BW1M119 01565570
	virtual uint32_t IsCastShadowAtNight();
	// BW1W120 0055db70 BW1M119 015655b0
	virtual uint32_t IsTownCentre();
	// BW1W120 0055db40 BW1M119 015654e0
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 0055db50 BW1M119 01565530
	virtual uint32_t IsStoragePit(Creature* param_1);
	// BW1W120 007445d0 BW1M119 01563570
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00744320 BW1M119 01563cf0
	virtual float IncreaseLife(float value);
	// BW1W120 00743df0 BW1M119 01072f00
	virtual uint32_t Process();
	// BW1W120 00516450 BW1M119 01021420
	virtual void Draw();
	// BW1W120 007448e0 BW1M119 015631d0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00743cf0 BW1M119 01564b10
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055db20 BW1M119 01565450
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0055db10 BW1M119 01565400
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00743bc0 BW1M119 01564fb0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00744380 BW1M119 01563c80
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00744140 BW1M119 01563f80
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00744940 BW1M119 inlined
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 007443a0 BW1M119 01563bf0
	virtual void AddToPlayer();
	// BW1W120 007443c0 BW1M119 01563af0
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 00743be0 BW1M119 01564da0
	virtual void DeleteDependancys();
	// BW1W120 00743e80 BW1M119 01564790
	virtual void MakeFunctional();
	// BW1W120 00744a00 BW1M119 01562f50
	virtual void StopBeingFunctional(GPlayer* param_1);
	// BW1W120 0055db30 BW1M119 01565490
	virtual bool32_t CausesTownEmergencyIfDamaged();
	// BW1W120 0055db80 BW1M119 015655f0
	virtual bool32_t CanBeHiddenIn();

	// Static methods

	// BW1W120 007447f0 BW1M119 01071250
	static void DrawAll();

	// Constructors

	// BW1W120 00743a60 BW1M119 01565270
	TownCentre(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
	           int wood);

	// Static methods

	// BW1W120 00743c90 BW1M119 01564c70
	static TownCentre* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                          float food, int wood);

	// Non-virtual methods

	// BW1W120 0069bc10 BW1M119 0142fd70
	void CreatePSys();
	// BW1W120 0069bcc0 BW1M119 0102fe40
	void ProcessPSys();
	// BW1W120 0069bd60 BW1M119 01068850
	void DrawPSys();
	// BW1W120 00743da0 BW1M119 015649b0
	bool CreateTotemIfNecessary();
	// BW1W120 00743f20 BW1M119 015646c0
	MapCoords* GetTotemPos(MapCoords* coords);
	// BW1W120 00743fa0 BW1M119 015645f0
	TownCentreSpellIcon* FindSpellIcon(SPELL_SEED_TYPE type);
	// BW1W120 00744010 BW1M119 01564490
	void AddPowerUp(SPELL_SEED_TYPE seed_type, POWER_UP_TYPE power_up_type);
	// BW1W120 00744050 BW1M119 01564240
	bool AddSpell(SPELL_SEED_TYPE seed_type);
};

#endif /* BW1_DECOMP_TOWN_CENTRE_INCLUDED_H */

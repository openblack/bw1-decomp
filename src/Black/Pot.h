#ifndef BW1_DECOMP_POT_INCLUDED_H
#define BW1_DECOMP_POT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject */
#include "Object.h"       /* For enum FOOD_TYPE */

// Forward Declares

class Base;
class EffectValues;
class GInterfaceStatus;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class StoragePit;
class Town;

#define POT_SMALL_AMOUNT           200
#define POT_DROP_SAMPLE_VARIATIONS 6
#define POT_SCALE_BASE             0.25f
#define POT_SCALE_MAX              5.0f

#define POT_PUTDOWN_MAX_SPEED_SQUARED 5.0f
#define POT_PUTDOWN_PSYS_SCALE        0.75f

#define POT_ADD_RESOURCE_SEARCH_CELLS 9

class Pot : public MobileObject
{
public:
	RESOURCE_TYPE ResourceType;
#ifndef VERSION_BW1WCI
	LHPTR<Town> ParentTown;
#endif
	uint32_t ResourceAmount;
#ifdef VERSION_BW1WCI
	union {
		uint8_t PotFlags;
		struct
		{
			uint8_t Poisoned : 1;
			uint8_t HasReaction : 1;
			uint8_t Fish : 1;
			uint8_t FromBuildingSite : 1;
			uint8_t SpeedUp : 1;
		};
	};
#else
	uint8_t Poisoned : 1;
	uint8_t HasReaction : 1;
	uint8_t : 1;
	uint8_t FromBuildingSite : 1;
	uint8_t SpeedUp : 1;
#endif

	// Override methods

	// BW1W120 0066d100 BW1M119 01125c00
	virtual ~Pot();
	// BW1W120 0066d110 BW1M119 01125b70
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0066d2b0 BW1M119 01004160
	virtual uint32_t JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool poisoned);
	// BW1W120 0066d410 BW1M119 01124f00
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned);
	// BW1W120 0066d390 BW1M119 0107a380
	virtual uint32_t JustGetResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned);
	// BW1W120 0066d3d0 BW1M119 011250c0
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0066d290 BW1M119 011259a0
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0066d3f0 BW1M119 01125040
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0055d5b0 BW1M119 0111fe00
	virtual char* GetDebugText() { return "Pot:"; }
	// BW1W120 0071bde0 BW1M119 01517770
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0066d820 BW1M119 01124580
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0066d730 BW1M119 011246f0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055d5a0 BW1M119 0111fdd0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_POT; }
	// BW1W120 0055d580 BW1M119 0111fd50
	virtual uint32_t GetCreatureBeliefType() { return CREATURE_BELIEF_TYPE_POT; }
	// BW1W120 0066f540 BW1M119 011201d0
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 0055d4e0 BW1M119 01011560
	virtual bool IsPoisoned() { return Poisoned != 0; }
	// BW1W120 0055d4f0 BW1M119 0111fc50
	virtual bool IsSpeedUp() { return SpeedUp != 0; }
	// BW1W120 0055d500 BW1M119 0111fc90
	virtual bool32_t IsPot() { return true; }
	// BW1W120 0066f530 BW1M119 01120250
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0051bb70 BW1M119 010c87e0
	virtual void Draw();
	// BW1W120 0051bbc0 BW1M119 010c86a0
	virtual void DrawOutOfMap(bool selectable);
	// BW1W120 0066d130 BW1M119 01125a80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0066f570 BW1M119 01120110
	virtual float GetFoodValue(FOOD_TYPE type);
	// BW1W120 0066f560 BW1M119 01120190
	virtual bool32_t IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0066dd30 BW1M119 01123ac0
	virtual bool32_t DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status);
	// BW1W120 0066f520 BW1M119 01120290
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0055d4c0 BW1M119 010d7bd0
	virtual RESOURCE_TYPE GetResourceType() { return ResourceType; }
	// BW1W120 0055d4d0 BW1M119 0111fc10
	virtual int GetDefaultResource() { return ResourceAmount; }
	// BW1W120 0055d550 BW1M119 0111fd00
	virtual void SetPoisonedResource(RESOURCE_TYPE type, int poisoned) { Poisoned = poisoned; }
	// BW1W120 0055d510 BW1M119 010011f0
	virtual void SetPoisoned(bool32_t poisoned) { Poisoned = poisoned; }
	// BW1W120 0066d6c0 BW1M119 011249d0
	virtual void StartOnFire();
	// BW1W120 0066d6d0 BW1M119 01124920
	virtual void EndOnFire();
	// BW1W120 0066d710 BW1M119 01124870
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 0066dd50 BW1M119 01123990
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* target);
	// BW1W120 0066ddd0 BW1M119 011237e0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet);
	// BW1W120 0066de70 BW1M119 01123690
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* packet);
	// BW1W120 0066d650 BW1M119 01124b70
	virtual bool32_t IsEffectReceiver(EffectValues* values);
	// BW1W120 0066df00 BW1M119 011234d0
	virtual PhysicsObject* InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity,
	                                                 GInterfaceStatus* status, Object* thrower, bool32_t dont_replant);
	// BW1W120 0066cef0 BW1M119 01125fc0
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 0066dbd0 BW1M119 01123cd0
	virtual Object* EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map);
	// BW1W120 0066ced0 BW1M119 01126050
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0066dc90 BW1M119 01123b40
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage);
	// BW1W120 0066e8f0 BW1M119 01121d00
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0066d550 BW1M119 01124bc0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* origin);
	// BW1W120 0055d590 BW1M119 0111fd90
	virtual bool32_t IsAPotFromABuildingSite() { return FromBuildingSite; }
	// BW1W120 0066d480 BW1M119 01124e90
	virtual void SetSize();
	// BW1W120 0055d4b0 BW1M119 01121770
	virtual MultiMapFixed* IsPartOfStructure() { return NULL; }
	// BW1W120 0055d530 BW1M119 0111fcc0
	virtual void SetSpeedUp(int speed_up) { SpeedUp = speed_up; }
	// BW1W120 0055d570 BW1M119 010bc4b0
	virtual void SetMultiMapFixed(MultiMapFixed* multi_map_fixed) {}

	// Constructors

	// BW1W120 inlined BW1M119 0130eed0
	Pot() { SetToZero(); }
	// BW1W120 0066ce60 BW1M119 01126130
	Pot(const MapCoords& coords, const GPotInfo* info, uint32_t resource, Town* town, float y_angle, float scale);

	// Static methods

#ifdef VERSION_BW1WCI
	// BW1WCI 00681f30 BW1MCI119 011387e0
	static Pot* Create(const MapCoords& coords, const GPotInfo* info, unsigned long resource, MultiMapFixed* parent,
	                   Town* town, bool32_t create_reaction, float y_angle, float scale, bool32_t from_building_site,
	                   bool32_t fish = false);
#else
	// BW1W120 0066cf10 BW1M119 01125c80
	static Pot* Create(const MapCoords& coords, const GPotInfo* info, unsigned long resource, MultiMapFixed* parent,
	                   Town* town, bool32_t create_reaction, float y_angle, float scale, bool32_t from_building_site);
#endif

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01002a90
	const GPotInfo* GetInfo() const { return (const GPotInfo*)info; }
	// BW1W120 0066ed40 BW1M119 inlined
	StoragePit* GetStoragePit();
	// BW1W120 0066d4f0 BW1M119 null
	void DebugText(int unused);
	// BW1W120 0066d1a0 BW1M119 0109d7f0
	void PlayAddResourceSound(const MapCoords& coords, RESOURCE_TYPE type, unsigned long amount);
	// BW1W120 0066cec0 BW1M119 011260f0
	void SetToZero();
	// BW1W120 0051bb50 BW1M119 010c88f0
	static uint32_t GetPoisonColor();
	// BW1W120 0051bb60 BW1M119 010c88b0
	static uint32_t GetPoisonSpecular();
	// BW1W120 0066d660 BW1M119 01124ab0
	void SetupReaction();
	// BW1W120 0066d6a0 BW1M119 01124a40
	void RemoveReaction();
	// BW1W120 0066d4a0 BW1M119 01124d90
	float GetScaleFromAmount();
#ifndef VERSION_BW1W100
	// BW1W120 0066dfd0 BW1M119 null
	uint32_t GetSpaceLeft();
#endif
	// BW1W120 0066f270 BW1M119 011202e0
	static uint32_t AddResourceToPos(const MapCoords& coords, GInterfaceStatus* status, RESOURCE_TYPE type,
	                                 uint32_t amount, bool poisoned, bool speed_up);
};

#endif /* BW1_DECOMP_POT_INCLUDED_H */

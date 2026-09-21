#ifndef BW1_DECOMP_POT_INCLUDED_H
#define BW1_DECOMP_POT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject, struct MobileObjectVftable */
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
class Town;

class Pot : public MobileObject
{
public:
	RESOURCE_TYPE field_0x68;
	uint32_t      field_0x6c;
	uint32_t      field_0x70;
	uint8_t       field_0x74;

	// Override methods

	// BW1W120 0055d5c0 BW1M119 01125c00
	virtual ~Pot();
	// BW1W120 0066d110 BW1M119 01125b70
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0066d2b0 BW1M119 01004160
	virtual uint32_t JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool param_3);
	// BW1W120 0066d410 BW1M119 01124f00
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* param_3);
	// BW1W120 0066d390 BW1M119 0107a380
	virtual uint32_t JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
	// BW1W120 0066d3d0 BW1M119 011250c0
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0066d290 BW1M119 011259a0
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0066d3f0 BW1M119 01125040
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0055d5b0 BW1M119 0111fe00
	virtual char* GetDebugText();
	// BW1W120 0071bde0 BW1M119 01517770
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0066d820 BW1M119 01124580
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0066d730 BW1M119 011246f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d5a0 BW1M119 0111fdd0
	virtual uint32_t GetSaveType();
	// BW1W120 0055d580 BW1M119 0111fd50
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0066f540 BW1M119 011201d0
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 0055d4e0 BW1M119 01011560
	virtual uint32_t IsPoisoned();
	// BW1W120 0055d4f0 BW1M119 0111fc50
	virtual uint32_t IsSpeedUp();
	// BW1W120 0055d500 BW1M119 0111fc90
	virtual uint32_t IsPot();
	// BW1W120 0066f530 BW1M119 01120250
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0051bb70 BW1M119 010c87e0
	virtual void Draw();
	// BW1W120 0051bbc0 BW1M119 010c86a0
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 0066d130 BW1M119 01125a80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0066f570 BW1M119 01120110
	virtual float GetFoodValue(FOOD_TYPE param_1);
	// BW1W120 0066f560 BW1M119 01120190
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0066dd30 BW1M119 01123ac0
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0066f520 BW1M119 01120290
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0055d4c0 BW1M119 010d7bd0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0055d4d0 BW1M119 0111fc10
	virtual int GetDefaultResource();
	// BW1W120 0055d550 BW1M119 0111fd00
	virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
	// BW1W120 0055d510 BW1M119 010011f0
	virtual void SetPoisoned(int param_1);
	// BW1W120 0066d6c0 BW1M119 011249d0
	virtual void StartOnFire();
	// BW1W120 0066d6d0 BW1M119 01124920
	virtual void EndOnFire();
	// BW1W120 0066d710 BW1M119 01124870
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0066dd50 BW1M119 01123990
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0066ddd0 BW1M119 011237e0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 0066de70 BW1M119 01123690
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 0066d650 BW1M119 01124b70
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0066df00 BW1M119 011234d0
	virtual uint32_t InitialisePhysicsFromHand(LHPoint& param_1, LHPoint& param_2, GInterfaceStatus* param_3,
	                                           Object* param_4, int param_5);
	// BW1W120 0066cef0 BW1M119 01125fc0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 0066dbd0 BW1M119 01123cd0
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0066ced0 BW1M119 01126050
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0066dc90 BW1M119 01123b40
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0066e8f0 BW1M119 01121d00
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0066d550 BW1M119 01124bc0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 0055d590 BW1M119 0111fd90
	virtual bool32_t IsAPotFromABuildingSite();

	// Constructors

	// BW1W120 inlined BW1M119 0130eed0
	Pot();
	// BW1W120 0066ce60 BW1M119 01126130
	Pot(const MapCoords& param_1, const GPotInfo* param_2, uint32_t param_3, Town* param_4, float param_5,
	    float param_6);

	// Non-virtual methods

	// BW1W120 0066cec0 BW1M119 011260f0
	void SetToZero();
};

#endif /* BW1_DECOMP_POT_INCLUDED_H */

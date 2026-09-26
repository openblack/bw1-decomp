#ifndef BW1_DECOMP_FIELD_INCLUDED_H
#define BW1_DECOMP_FIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class EffectValues;
class GAbodeInfo;
class GFieldTypeInfo;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class Spell;
class SpellWater;
class Town;
class Villager;

class Field : public Abode
{
public:
	Field*          next; /* 0xc4 */
	uint32_t        field_0xc8;
	uint8_t         field_0xcc;
	uint32_t        field_0xd0;
	uint32_t        field_0xd4;
	uint32_t        field_0xd8;
	uint32_t        field_0xdc;
	uint32_t        field_0xe0;
	float           field_0xe4;
	float           field_0xe8;
	float           field_0xec;
	uint32_t        field_0xf0;
	uint32_t        field_0xf4;
	uint32_t        field_0xf8;
	uint32_t        field_0xfc;
	uint32_t        field_0x100;
	float           field_0x104;
	uint32_t        field_0x108;
	uint32_t        field_0x10c;
	uint32_t        field_0x110;
	uint32_t        field_0x114;
	Town*           town;
	int             field_0x11c;
	GFieldTypeInfo* type_info; /* 0x120 */

	// Override methods

	// BW1W120 00528090 BW1M119 010daaf0
	virtual ~Field();
	// BW1W120 005280f0 BW1M119 010da4d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00528940 BW1M119 010d94c0
	virtual GPlayer* GetPlayer();
	// BW1W120 00528960 BW1M119 01058a30
	virtual Town* GetTown();
	// BW1W120 00528e80 BW1M119 010d8a50
	virtual float Get2DRadius();
	// BW1W120 00528080 BW1M119 010db190
	virtual char* GetDebugText();
	// BW1W120 00529d60 BW1M119 010d69b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00529b10 BW1M119 010d6f10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00528070 BW1M119 010db160
	virtual uint32_t GetSaveType();
	// BW1W120 00529330 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 00527f20 BW1M119 010dabc0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0052a000 BW1M119 010d6820
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 00527f30 BW1M119 inlined
	virtual uint32_t IsField_1(Creature* param_1);
	// BW1W120 00527f40 BW1M119 inlined
	virtual uint32_t IsField_0();
	// BW1W120 00527fd0 BW1M119 010daf10
	virtual bool32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 00527fe0 BW1M119 010daf60
	virtual bool32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 00527f70 BW1M119 010dad30
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00527f80 BW1M119 010dad80
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00527f90 BW1M119 010dadd0
	virtual bool32_t CanBeGivenToVillager(Creature* param_1);
	// BW1W120 00527fa0 BW1M119 010dae20
	virtual bool32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 00527fb0 BW1M119 010dae70
	virtual bool32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 00527fc0 BW1M119 010daec0
	virtual bool32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 00527ff0 BW1M119 010dafb0
	virtual bool32_t IsBeingBuilt(Creature* param_1);
	// BW1W120 00528000 BW1M119 010daff0
	virtual bool32_t NeedsRepair(Creature* param_1);
	// BW1W120 00527f60 BW1M119 010dacf0
	virtual bool32_t CanBePoodOn(Creature* param_1);
	// BW1W120 004e4970 BW1M119 015ec3e0
	virtual bool32_t IsFieldWhichNeedsWatering(Creature* param_1);
	// BW1W120 004e4930 BW1M119 015ec460
	virtual bool32_t IsFieldWithFoodInIt(Creature* param_1);
	// BW1W120 004e4900 BW1M119 015ec4d0
	virtual bool32_t IsFieldBelongingToAnotherPlayer(Creature* param_1);
	// BW1W120 00527f50 BW1M119 010dac70
	virtual bool32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1);
	// BW1W120 00528a30 BW1M119 010d92d0
	virtual float GetMeshRadius() const;
	// BW1W120 0052a0a0 BW1M119 010d6650
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0052a050 BW1M119 010d6700
	virtual float ReduceLifeDueToBurning(float param_1, GPlayer* param_2);
	// BW1W120 005288d0 BW1M119 010d9600
	virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
	// BW1W120 0052a010 BW1M119 010d6770
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 00529020 BW1M119 01055d40
	virtual uint32_t Process();
	// BW1W120 00528570 BW1M119 01039a50
	virtual void Draw();
	// BW1W120 00529fb0 BW1M119 010d68b0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00528a40 BW1M119 010d9070
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00528f30 BW1M119 010d8810
	virtual float ApplyWaterSpell(SpellWater* param_1);
	// BW1W120 00528010 BW1M119 010d77d0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00528050 BW1M119 010db0e0
	virtual bool32_t IsLockedInInteract();
	// BW1W120 00529290 BW1M119 inlined
	virtual bool32_t IsTouching(const MapCoords& param_1);
	// BW1W120 005299e0 BW1M119 010d75b0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 00529900 BW1M119 010d7630
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00529a20 BW1M119 010d7520
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00529a60 BW1M119 010d7420
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00529af0 BW1M119 010d73a0
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00528ef0 BW1M119 010d89d0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00529520 BW1M119 010d7e60
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00528040 BW1M119 010db0b0
	virtual bool32_t IsTuggable();
	// BW1W120 00528900 BW1M119 010d9550
	virtual bool32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00529ff0 BW1M119 inlined
	virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
	// BW1W120 00528020 BW1M119 010db030
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00528030 BW1M119 010db070
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005280c0 BW1M119 010da520
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00529730 BW1M119 010d7950
	virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);
	// BW1W120 00528ce0 BW1M119 010d8b50
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00528c80 BW1M119 inlined
	virtual MapCoords* GetDoorPos(MapCoords* param_1);

	// Static methods

	// BW1W120 00528280 BW1M119 010d9c90
	static Field* Create(const MapCoords& coords, const GFieldTypeInfo* type_info, Town* town, float y_angle,
	                     float scale, int wood);

	// Constructors

	// BW1W120 00527dd0 BW1M119 010da5b0
	Field(const MapCoords& coords, const GFieldTypeInfo* type_info, const GAbodeInfo* abode_info, Town* town,
	      float y_angle, float scale, int wood);

	// Non-virtual methods

	// BW1W120 005283e0 BW1M119 010d9920
	void AddFarmer(Villager* villager);
	// BW1W120 005291a0 BW1M119 010d8750
	bool32_t PlantCrop(const MapCoords& param_1);
	// BW1W120 00529210 BW1M119 010d86e0
	bool32_t GetPlantCropPos();
	// BW1W120 00529350 BW1M119 01000690
	int GetFieldActivity(int param_1);
	// BW1W120 00529500 BW1M119 01000730
	float GetPercentFull();
	// BW1W120 005295a0 BW1M119 010d7c70
	float RemoveFood(float param_1);
	// BW1W120 00529700 BW1M119 010d7c10
	float GetFoodValue();
};

#endif /* BW1_DECOMP_FIELD_INCLUDED_H */

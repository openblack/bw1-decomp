#ifndef BW1_DECOMP_FIELD_INCLUDED_H
#define BW1_DECOMP_FIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */

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

class Field: public Abode
{
public:
    Field* next; /* 0xc4 */
    uint32_t field_0xc8;
    uint8_t field_0xcc;
    uint32_t field_0xd0;
    uint32_t field_0xd4;
    uint32_t field_0xd8;
    uint32_t field_0xdc;
    uint32_t field_0xe0;
    float field_0xe4;
    float field_0xe8;
    float field_0xec;
    uint32_t field_0xf0;
    uint32_t field_0xf4;
    uint32_t field_0xf8;
    uint32_t field_0xfc;
    uint32_t field_0x100;
    float field_0x104;
    uint32_t field_0x108;
    uint32_t field_0x10c;
    uint32_t field_0x110;
    uint32_t field_0x114;
    Town* town;
    int field_0x11c;
    GFieldTypeInfo* type_info; /* 0x120 */

    // Override methods

    // win1.41 00528090 mac 100d5ed0 Field::_dt(void)
    virtual ~Field();
    // win1.41 005280f0 mac 100d5830 Field::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00528940 mac 100d4bf0 Field::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00528960 mac 100560a0 Field::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00528e80 mac 100d4150 Field::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 00528080 mac 100d6570 Field::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00529d60 mac 100d1eb0 Field::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00529b10 mac 100d23a0 Field::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00528070 mac 100d6540 Field::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00529330 mac inlined Field::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 00527f20 mac 100d5fa0 Field::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 0052a000 mac 100d1d20 Field::GetOverwriteInteractableToolTip(void)
    virtual uint32_t GetOverwriteInteractableToolTip();
    // win1.41 00527f30 mac inlined Field::IsField_1(Creature *)
    virtual uint32_t IsField_1(Creature* param_1);
    // win1.41 00527f40 mac inlined Field::IsField_0(void)
    virtual uint32_t IsField_0();
    // win1.41 00527fd0 mac 100d62f0 Field::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 00527fe0 mac 100d6340 Field::CanBeSleptNextToByCreature(Creature *)
    virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
    // win1.41 00527f70 mac 100d6110 Field::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 00527f80 mac 100d6160 Field::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 00527f90 mac 100d61b0 Field::CanBeGivenToVillager(Creature *)
    virtual uint32_t CanBeGivenToVillager(Creature* param_1);
    // win1.41 00527fa0 mac 100d6200 Field::CanBePutInAStoragePit(Creature *)
    virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
    // win1.41 00527fb0 mac 100d6250 Field::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 00527fc0 mac 100d62a0 Field::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 00527ff0 mac 100d6390 Field::IsBeingBuilt(Creature *)
    virtual uint32_t IsBeingBuilt(Creature* param_1);
    // win1.41 00528000 mac 100d63d0 Field::NeedsRepair(Creature *)
    virtual uint32_t NeedsRepair(Creature* param_1);
    // win1.41 00527f60 mac 100d60d0 Field::CanBePoodOn(Creature *)
    virtual uint32_t CanBePoodOn(Creature* param_1);
    // win1.41 004e4970 mac 105e46e0 Field::IsFieldWhichNeedsWatering(Creature *)
    virtual uint32_t IsFieldWhichNeedsWatering(Creature* param_1);
    // win1.41 004e4930 mac 105e4760 Field::IsFieldWithFoodInIt(Creature *)
    virtual uint32_t IsFieldWithFoodInIt(Creature* param_1);
    // win1.41 004e4900 mac 105e47d0 Field::IsFieldBelongingToAnotherPlayer(Creature *)
    virtual uint32_t IsFieldBelongingToAnotherPlayer(Creature* param_1);
    // win1.41 00527f50 mac 100d6050 Field::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
    virtual uint32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1);
    // win1.41 00528a30 mac 100d4a10 Field::GetMeshRadius( const(void))
    virtual float GetMeshRadius();
    // win1.41 0052a0a0 mac 100d1b50 Field::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // win1.41 0052a050 mac 100d1c00 Field::ReduceLifeDueToBurning(float, GPlayer *)
    virtual void ReduceLifeDueToBurning(float param_1, GPlayer* param_2);
    // win1.41 005288d0 mac 100d4d30 Field::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
    virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
    // win1.41 0052a010 mac 100d1c70 Field::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 00529020 mac 100533b0 Field::Process(void)
    virtual uint32_t Process();
    // win1.41 00528570 mac 100370e0 Field::Draw(void)
    virtual void Draw();
    // win1.41 00529fb0 mac 100d1db0 Field::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 00528a40 mac 100d47b0 Field::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00528f30 mac 100d3f10 Field::ApplyWaterSpell(SpellWater *)
    virtual float ApplyWaterSpell(SpellWater* param_1);
    // win1.41 00528010 mac 100d2c60 Field::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 00528050 mac 100d64c0 Field::IsLockedInInteract(void)
    virtual bool IsLockedInInteract();
    // win1.41 00529290 mac inlined Field::IsTouching_2( const(MapCoords *))
    virtual bool IsTouching_2(MapCoords* param_1);
    // win1.41 005299e0 mac 100d2a40 Field::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 00529900 mac 100d2ac0 Field::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00529a20 mac 100d29b0 Field::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 00529a60 mac 100d28b0 Field::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 00529af0 mac 100d2830 Field::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00528ef0 mac 100d40d0 Field::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00529520 mac 100d3560 Field::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00528040 mac 100d6490 Field::IsTuggable(void)
    virtual uint32_t IsTuggable();
    // win1.41 00528900 mac 100d4c80 Field::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 00529ff0 mac inlined Field::CanBeDestroyedBySpell_1(Spell *)
    virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
    // win1.41 00528020 mac 100d6410 Field::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00528030 mac 100d6450 Field::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 005280c0 mac 100d5880 Field::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00529730 mac 100d3050 Field::ProcessInInteract(GInterfaceStatus *)
    virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);
    // win1.41 00528ce0 mac 100d4250 Field::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00528c80 mac inlined Field::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);

    // Static methods

    // win1.41 00528280 mac 100d5130 Field::Create(MapCoords const &, GFieldTypeInfo const *, Town *, float, float, int)
    static Field* Create(MapCoords* coords, GFieldTypeInfo* type_info, Town* town, float param_4, float param_5, int param_6);

    // Constructors

    // win1.41 00527dd0 mac 100d5910 Field::Field(MapCoords const &, GFieldTypeInfo const *, GAbodeInfo const *, Town *, float, float, int)
    Field(MapCoords* coords, GFieldTypeInfo* type_info, GAbodeInfo* abode_info, Town* town, float param_5, float param_6, int param_7);

    // Non-virtual methods

    // win1.41 005291a0 mac 100d3e50 Field::PlantCrop(MapCoords const &)
    bool32_t PlantCrop(const MapCoords* param_1);
    // win1.41 00529210 mac 100d3de0 Field::GetPlantCropPos(void)
    bool32_t GetPlantCropPos();
    // win1.41 00529350 mac 10000690 Field::GetFieldActivity(int)
    int GetFieldActivity(int param_1);
    // win1.41 00529500 mac 10000730 Field::GetPercentFull(void)
    float GetPercentFull();
    // win1.41 005295a0 mac 100d3370 Field::RemoveFood(float)
    float RemoveFood(float param_1);
    // win1.41 00529700 mac 100d3310 Field::GetFoodValue(void)
    float GetFoodValue();
};

#endif /* BW1_DECOMP_FIELD_INCLUDED_H */

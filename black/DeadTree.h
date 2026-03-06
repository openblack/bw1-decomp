#ifndef BW1_DECOMP_DEAD_TREE_INCLUDED_H
#define BW1_DECOMP_DEAD_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Rock.h" /* For struct Rock */

#ifdef __cplusplus

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;

// win1.41 00be8a28 mac inlined DeadTree::`RTTI Type Descriptor'
// win1.41 009ab7f0 mac inlined DeadTree::`RTTI Base Class Descriptor'
// win1.41 009ab808 mac inlined DeadTree::`RTTI Base Class Array'
// win1.41 009ab830 mac inlined DeadTree::`RTTI Class Hierarchy Descriptor'
// win1.41 008d6060 mac 1073a834 DeadTree::`RTTI Complete Object Locator'
// win1.41 008d6064 mac 1073a87c DeadTree::`vftable'
class DeadTree: public Rock
{
public:
    uint8_t field_0x94[0xc];

    // Override methods

    // win1.41 00510a00 mac 100c19c0 DeadTree::_dt(void)
    virtual ~DeadTree();
    // win1.41 00510c90 mac 100c3740 DeadTree::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00511370 mac 100c1fb0 DeadTree::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 005109f0 mac 100c4160 DeadTree::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0071be30 mac 1050fb30 DeadTree::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // win1.41 00511630 mac 100c1a50 DeadTree::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005115c0 mac 100c1b30 DeadTree::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005109e0 mac 100c4120 DeadTree::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005109d0 mac inlined DeadTree::IsRock_0(void)
    virtual uint32_t IsRock_0();
    // win1.41 00510980 mac 100c0e80 DeadTree::IsAnyKindOfTree(void)
    virtual uint32_t IsAnyKindOfTree();
    // win1.41 00510990 mac 100c0ec0 DeadTree::IsDeadTree(void)
    virtual uint32_t IsDeadTree();
    // win1.41 005115b0 mac 100c1c10 DeadTree::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 005110d0 mac 100c2890 DeadTree::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 005110e0 mac 100c2820 DeadTree::GetHoldRadius(void)
    virtual float GetHoldRadius();
    // win1.41 005110f0 mac 100c27d0 DeadTree::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 005109c0 mac 100c0fa0 DeadTree::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // win1.41 00510ce0 mac inlined DeadTree::GetDefaultFireCentrePos(LHPoint *)
    virtual LHPoint* GetDefaultFireCentrePos(LHPoint* param_1);
    // win1.41 00510e10 mac 100c2f40 DeadTree::GetDefaultFireRadius(void)
    virtual float GetDefaultFireRadius();
    // win1.41 005107f0 mac 1002b5c0 DeadTree::Draw(void)
    virtual void Draw();
    // win1.41 00511590 mac 100c1c50 DeadTree::GetWeight(void)
    virtual float GetWeight();
    // win1.41 00510a90 mac 100c3b20 DeadTree::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00511ad0 mac 100c1020 DeadTree::GetWoodValue(void)
    virtual float GetWoodValue();
    // win1.41 005110c0 mac 100c28d0 DeadTree::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 00511330 mac 100c20e0 DeadTree::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 00510e20 mac 100c2ef0 DeadTree::StartOnFire(void)
    virtual void StartOnFire();
    // win1.41 00510e60 mac 100c2db0 DeadTree::EndOnFire(void)
    virtual void EndOnFire();
    // win1.41 00510e90 mac 100c2cd0 DeadTree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00510ee0 mac 100c2a40 DeadTree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 00511050 mac 100c2910 DeadTree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 005109a0 mac 100c0f00 DeadTree::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 005109b0 mac 100c0f50 DeadTree::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 00511100 mac 100c2710 DeadTree::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00511170 mac 100c24e0 DeadTree::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 005113f0 mac 100c1f10 DeadTree::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 005111f0 mac 100c2490 DeadTree::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00510ca0 mac 100c3670 DeadTree::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00511a10 mac 100c1250 DeadTree::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00510e30 mac 100c2e50 DeadTree::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00511200 mac 100c2450 DeadTree::IsARootedObject(void)
    virtual bool IsARootedObject();
    // win1.41 00511130 mac 100c2640 DeadTree::GetCollideSoundType(void)
    virtual SOUND_COLLISION_TYPE GetCollideSoundType();
    // win1.41 00511a20 mac 100c10e0 DeadTree::GetCarriedTreeType(void)
    virtual uint32_t GetCarriedTreeType();
    // win1.41 00511430 mac 100c1cd0 DeadTree::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00510970 mac 100c0e20 DeadTree::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#else // __cplusplus

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct LHPoint;
struct MapCoords;
struct Object;
struct PhysOb;
struct PhysicsObject;

struct DeadTree
{
  struct Rock super;  /* 0x0 */
  uint8_t field_0x94[0xc];
};
static_assert(sizeof(struct DeadTree) == 0xa0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8a28 mac inlined DeadTree::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8DeadTree asm("??_R0?AVDeadTree@@@8");
// win1.41 009ab7f0 mac inlined DeadTree::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8DeadTree asm("??_R1A@?0A@A@DeadTree@@8");
// win1.41 009ab808 mac inlined DeadTree::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8DeadTree asm("??_R2DeadTree@@8");
// win1.41 009ab830 mac inlined DeadTree::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8DeadTree asm("??_R3DeadTree@@8");
// win1.41 008d6060 mac 1073a834 DeadTree::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8DeadTree asm("??_R4DeadTree@@6B@");
// win1.41 008d6064 mac 1073a87c DeadTree::`vftable'
extern const struct RockVftable __vt__8DeadTree asm("??_7DeadTree@@6B@");

// Override methods

// win1.41 00510a00 mac 100c19c0 DeadTree::_dt(void)
void __fastcall __dt__8DeadTreeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDeadTree@@UAEPAXI@Z");
// win1.41 00510c90 mac 100c3740 DeadTree::ToBeDeleted(int)
void __fastcall ToBeDeleted__8DeadTreeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@DeadTree@@UAEXH@Z");
// win1.41 00511370 mac 100c1fb0 DeadTree::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__8DeadTreeF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@DeadTree@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 005109f0 mac 100c4160 DeadTree::GetDebugText(void)
char* __fastcall GetDebugText__8DeadTreeFv(struct GameThing* this) asm("?GetDebugText@DeadTree@@UAEPADXZ");
// win1.41 0071be30 mac 1050fb30 DeadTree::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__8DeadTreeFv(struct GameThing* this) asm("?GetGuidanceResourceType@DeadTree@@UAEIXZ");
// win1.41 00511630 mac 100c1a50 DeadTree::Load(GameOSFile &)
uint32_t __fastcall Load__8DeadTreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DeadTree@@UAEIAAVGameOSFile@@@Z");
// win1.41 005115c0 mac 100c1b30 DeadTree::Save(GameOSFile &)
uint32_t __fastcall Save__8DeadTreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DeadTree@@UAEIAAVGameOSFile@@@Z");
// win1.41 005109e0 mac 100c4120 DeadTree::GetSaveType(void)
uint32_t __fastcall GetSaveType__8DeadTreeFv(struct GameThing* this) asm("?GetSaveType@DeadTree@@UAEIXZ");
// win1.41 005109d0 mac inlined DeadTree::IsRock_0(void)
uint32_t __fastcall IsRock_0__8DeadTreeFv(struct GameThingWithPos* this) asm("?IsRock@DeadTree@@UAEIXZ");
// win1.41 00510980 mac 100c0e80 DeadTree::IsAnyKindOfTree(void)
uint32_t __fastcall IsAnyKindOfTree__8DeadTreeFv(struct GameThingWithPos* this) asm("?IsAnyKindOfTree@DeadTree@@UAEIXZ");
// win1.41 00510990 mac 100c0ec0 DeadTree::IsDeadTree(void)
uint32_t __fastcall IsDeadTree__8DeadTreeFv(struct GameThingWithPos* this) asm("?IsDeadTree@DeadTree@@UAEIXZ");
// win1.41 005115b0 mac 100c1c10 DeadTree::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__8DeadTreeFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@DeadTree@@UAEIXZ");
// win1.41 005110d0 mac 100c2890 DeadTree::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__8DeadTreeFv(struct Object* this) asm("?GetHoldType@DeadTree@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 005110e0 mac 100c2820 DeadTree::GetHoldRadius(void)
float __fastcall GetHoldRadius__8DeadTreeFv(struct Object* this) asm("?GetHoldRadius@DeadTree@@UAEMXZ");
// win1.41 005110f0 mac 100c27d0 DeadTree::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__8DeadTreeFv(struct Object* this) asm("?GetHoldLoweringMultiplier@DeadTree@@UAEMXZ");
// win1.41 005109c0 mac 100c0fa0 DeadTree::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__8DeadTreeFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@DeadTree@@UAEIXZ");
// win1.41 00510ce0 mac inlined DeadTree::GetDefaultFireCentrePos(LHPoint *)
struct LHPoint* __fastcall GetDefaultFireCentrePos__8DeadTreeFP7LHPoint(struct Object* this, const void* edx, struct LHPoint* param_1) asm("?GetDefaultFireCentrePos@DeadTree@@UAEPAULHPoint@@PAU2@@Z");
// win1.41 00510e10 mac 100c2f40 DeadTree::GetDefaultFireRadius(void)
float __fastcall GetDefaultFireRadius__8DeadTreeFv(struct Object* this) asm("?GetDefaultFireRadius@DeadTree@@UAEMXZ");
// win1.41 005107f0 mac 1002b5c0 DeadTree::Draw(void)
void __fastcall Draw__8DeadTreeFv(struct Object* this) asm("?Draw@DeadTree@@UAEXXZ");
// win1.41 00511590 mac 100c1c50 DeadTree::GetWeight(void)
float __fastcall GetWeight__8DeadTreeFv(struct Object* this) asm("?GetWeight@DeadTree@@UAEMXZ");
// win1.41 00510a90 mac 100c3b20 DeadTree::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8DeadTreeFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@DeadTree@@UAEXABUMapCoords@@@Z");
// win1.41 00511ad0 mac 100c1020 DeadTree::GetWoodValue(void)
float __fastcall GetWoodValue__8DeadTreeFv(struct Object* this) asm("?GetWoodValue@DeadTree@@UAEMXZ");
// win1.41 005110c0 mac 100c28d0 DeadTree::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__8DeadTreeFv(struct Object* this) asm("?GetResourceType@DeadTree@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 00511330 mac 100c20e0 DeadTree::GetDefaultResource(void)
int __fastcall GetDefaultResource__8DeadTreeFv(struct Object* this) asm("?GetDefaultResource@DeadTree@@UAEHXZ");
// win1.41 00510e20 mac 100c2ef0 DeadTree::StartOnFire(void)
void __fastcall StartOnFire__8DeadTreeFv(struct Object* this) asm("?StartOnFire@DeadTree@@UAEXXZ");
// win1.41 00510e60 mac 100c2db0 DeadTree::EndOnFire(void)
void __fastcall EndOnFire__8DeadTreeFv(struct Object* this) asm("?EndOnFire@DeadTree@@UAEXXZ");
// win1.41 00510e90 mac 100c2cd0 DeadTree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__8DeadTreeFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@DeadTree@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00510ee0 mac 100c2a40 DeadTree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__8DeadTreeFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@DeadTree@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 00511050 mac 100c2910 DeadTree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__8DeadTreeFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@DeadTree@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 005109a0 mac 100c0f00 DeadTree::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__8DeadTreeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@DeadTree@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005109b0 mac 100c0f50 DeadTree::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__8DeadTreeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@DeadTree@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00511100 mac 100c2710 DeadTree::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__8DeadTreeFv(struct Object* this) asm("?GetPhysicsConstantsType@DeadTree@@UAEIXZ");
// win1.41 00511170 mac 100c24e0 DeadTree::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__8DeadTreeFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@DeadTree@@UAEXPAUPhysOb@@@Z");
// win1.41 005113f0 mac 100c1f10 DeadTree::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__8DeadTreeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@DeadTree@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 005111f0 mac 100c2490 DeadTree::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8DeadTreeFv(struct Object* this) asm("?InteractsWithPhysicsObjects@DeadTree@@UAE_NXZ");
// win1.41 00510ca0 mac 100c3670 DeadTree::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__8DeadTreeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@DeadTree@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00511a10 mac 100c1250 DeadTree::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__8DeadTreeFv(struct Object* this) asm("?CanBecomeAPhysicsObject@DeadTree@@UAE_NXZ");
// win1.41 00510e30 mac 100c2e50 DeadTree::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8DeadTreeFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@DeadTree@@UAE_NPAVCreature@@@Z");
// win1.41 00511200 mac 100c2450 DeadTree::IsARootedObject(void)
bool __fastcall IsARootedObject__8DeadTreeFv(struct Object* this) asm("?IsARootedObject@DeadTree@@UAE_NXZ");
// win1.41 00511130 mac 100c2640 DeadTree::GetCollideSoundType(void)
enum SOUND_COLLISION_TYPE __fastcall GetCollideSoundType__8DeadTreeFv(struct Object* this) asm("?GetCollideSoundType@DeadTree@@UAE?AW4SOUND_COLLISION_TYPE@@XZ");
// win1.41 00511a20 mac 100c10e0 DeadTree::GetCarriedTreeType(void)
uint32_t __fastcall GetCarriedTreeType__8DeadTreeFv(struct Object* this) asm("?GetCarriedTreeType@DeadTree@@UAEIXZ");
// win1.41 00511430 mac 100c1cd0 DeadTree::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8DeadTreeFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@DeadTree@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00510970 mac 100c0e20 DeadTree::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__8DeadTreeFv(struct Object* this) asm("?GetInHandImmersionTexture@DeadTree@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */

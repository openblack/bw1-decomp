#ifndef BW1_DECOMP_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct EffectValues;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct MapCoords;
struct WorshipSite;

struct SpellSeed
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x4c];
};
static_assert(sizeof(struct SpellSeed) == 0xa0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c226f0 mac inlined SpellSeed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SpellSeed asm("??_R0?AVSpellSeed@@@8");
// win1.41 009b9448 mac inlined SpellSeed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SpellSeed asm("??_R1A@?0A@A@SpellSeed@@8");
// win1.41 009b9460 mac inlined SpellSeed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SpellSeed asm("??_R2SpellSeed@@8");
// win1.41 009b9478 mac inlined SpellSeed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SpellSeed asm("??_R3SpellSeed@@8");
// win1.41 00981fbc mac 109dd91c SpellSeed::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9SpellSeed asm("??_R4SpellSeed@@6B@");
// win1.41 00981fc0 mac 109dd924 SpellSeed::`vftable'
extern const struct ObjectVftable __vt__9SpellSeed asm("??_7SpellSeed@@6B@");

// Override methods

// win1.41 00727fc0 mac 1052cbd0 SpellSeed::_dt(void)
void __fastcall __dt__9SpellSeedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellSeed@@UAEPAXI@Z");
// win1.41 00728280 mac 1052c390 SpellSeed::ToBeDeleted(int)
void __fastcall ToBeDeleted__9SpellSeedFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellSeed@@UAEXH@Z");
// win1.41 00727fb0 mac 1052cdf0 SpellSeed::GetDebugText(void)
char* __fastcall GetDebugText__9SpellSeedFv(struct GameThing* this) asm("?GetDebugText@SpellSeed@@UAEPADXZ");
// win1.41 00729fb0 mac 10527d30 SpellSeed::Load(GameOSFile &)
uint32_t __fastcall Load__9SpellSeedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellSeed@@UAEIAAVGameOSFile@@@Z");
// win1.41 00729ca0 mac 10528230 SpellSeed::Save(GameOSFile &)
uint32_t __fastcall Save__9SpellSeedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellSeed@@UAEIAAVGameOSFile@@@Z");
// win1.41 00727fa0 mac 1052cdb0 SpellSeed::GetSaveType(void)
uint32_t __fastcall GetSaveType__9SpellSeedFv(struct GameThing* this) asm("?GetSaveType@SpellSeed@@UAEIXZ");
// win1.41 00727f70 mac 1052cce0 SpellSeed::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__9SpellSeedFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@SpellSeed@@UAEIXZ");
// win1.41 00727f80 mac 1052cd20 SpellSeed::GetOrigin(void)
uint32_t __fastcall GetOrigin__9SpellSeedFv(struct GameThingWithPos* this) asm("?GetOrigin@SpellSeed@@UAEIXZ");
// win1.41 007298b0 mac 10529040 SpellSeed::GetPower( const(void))
float __fastcall GetPower__9SpellSeedCFv(const struct GameThingWithPos* this) asm("?GetPower@SpellSeed@@UBEMXZ");
// win1.41 007298f0 mac 10529000 SpellSeed::GetPSysPower( const(void))
float __fastcall GetPSysPower__9SpellSeedCFv(const struct GameThingWithPos* this) asm("?GetPSysPower@SpellSeed@@UBEMXZ");
// win1.41 00728a00 mac 1052af90 SpellSeed::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__9SpellSeedFv(struct GameThingWithPos* this) asm("?GetWorshipSite@SpellSeed@@UAEPAVWorshipSite@@XZ");
// win1.41 00727f50 mac 1052cc60 SpellSeed::IsSpellSeed(void)
uint32_t __fastcall IsSpellSeed__9SpellSeedFv(struct GameThingWithPos* this) asm("?IsSpellSeed@SpellSeed@@UAEIXZ");
// win1.41 00729c90 mac 10528780 SpellSeed::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__9SpellSeedFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@SpellSeed@@UAEIXZ");
// win1.41 00728f30 mac 1052a420 SpellSeed::InsertMapObject(void)
void __fastcall InsertMapObject__9SpellSeedFv(struct Object* this) asm("?InsertMapObject@SpellSeed@@UAEXXZ");
// win1.41 00728f40 mac 1052a3e0 SpellSeed::RemoveMapObject(void)
void __fastcall RemoveMapObject__9SpellSeedFv(struct Object* this) asm("?RemoveMapObject@SpellSeed@@UAEXXZ");
// win1.41 00728680 mac 1052b880 SpellSeed::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__9SpellSeedFv(struct Object* this) asm("?GetHoldType@SpellSeed@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00728640 mac 1052b9c0 SpellSeed::GetHoldRadius(void)
float __fastcall GetHoldRadius__9SpellSeedFv(struct Object* this) asm("?GetHoldRadius@SpellSeed@@UAEMXZ");
// win1.41 00728660 mac 1052b950 SpellSeed::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__9SpellSeedFv(struct Object* this) asm("?GetHoldLoweringMultiplier@SpellSeed@@UAEMXZ");
// win1.41 00728670 mac 1052b8f0 SpellSeed::GetHoldYRotate(void)
float __fastcall GetHoldYRotate__9SpellSeedFv(struct Object* this) asm("?GetHoldYRotate@SpellSeed@@UAEMXZ");
// win1.41 00727f60 mac 1052cc90 SpellSeed::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__9SpellSeedFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@SpellSeed@@UAEIXZ");
// win1.41 00729850 mac 10529210 SpellSeed::GetMesh( const(void))
int __fastcall GetMesh__9SpellSeedCFv(const struct Object* this) asm("?GetMesh@SpellSeed@@UBEHXZ");
// win1.41 00518710 mac 100c8c10 SpellSeed::Draw(void)
void __fastcall Draw__9SpellSeedFv(struct Object* this) asm("?Draw@SpellSeed@@UAEXXZ");
// win1.41 005190a0 mac 100c7ef0 SpellSeed::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__9SpellSeedFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@SpellSeed@@UAEX_N@Z");
// win1.41 00728600 mac 1052bac0 SpellSeed::IsG3DObjectDrawnInHand(void)
bool __fastcall IsG3DObjectDrawnInHand__9SpellSeedFv(struct Object* this) asm("?IsG3DObjectDrawnInHand@SpellSeed@@UAE_NXZ");
// win1.41 00728360 mac 1052bef0 SpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9SpellSeedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@SpellSeed@@UAEXABUMapCoords@@@Z");
// win1.41 00728580 mac 1052bba0 SpellSeed::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__9SpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00728810 mac 1052b1f0 SpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__9SpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00728940 mac 1052b0d0 SpellSeed::InterfaceSetOutMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetOutMagicHand__9SpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetOutMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00728760 mac 1052b4f0 SpellSeed::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToRemoveFromHand__9SpellSeedFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToRemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00728f00 mac 1052a460 SpellSeed::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall RemoveFromHand__9SpellSeedFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?RemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 007286d0 mac 1052b6d0 SpellSeed::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__9SpellSeedFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00728d10 mac 1052a720 SpellSeed::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__9SpellSeedFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 00728720 mac 1052b600 SpellSeed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__9SpellSeedFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z");
// win1.41 00728e20 mac 1052a5d0 SpellSeed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__9SpellSeedFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 00728750 mac 1052b580 SpellSeed::ValidForLockedApplyProcess(GInterfaceStatus *)
uint32_t __fastcall ValidForLockedApplyProcess__9SpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedApplyProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00728eb0 mac 1052a500 SpellSeed::ApplyUnlockProcess(GInterfaceStatus *)
uint32_t __fastcall ApplyUnlockProcess__9SpellSeedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ApplyUnlockProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 007286a0 mac 1052b830 SpellSeed::IsInterfacePowerUpWhenInHand( const(void))
uint32_t __fastcall IsInterfacePowerUpWhenInHand__9SpellSeedCFv(const struct Object* this) asm("?IsInterfacePowerUpWhenInHand@SpellSeed@@UBEIXZ");
// win1.41 007286b0 mac 1052b7c0 SpellSeed::ApplyOnlyAfterRecSystem(void)
uint32_t __fastcall ApplyOnlyAfterRecSystem__9SpellSeedFv(struct Object* this) asm("?ApplyOnlyAfterRecSystem@SpellSeed@@UAEIXZ");
// win1.41 0072acd0 mac 10526410 SpellSeed::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t __fastcall ThrowObjectFromHand__9SpellSeedFP16GInterfaceStatusi(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, int param_2) asm("?ThrowObjectFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@H@Z");
// win1.41 00728f50 mac 1052a390 SpellSeed::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__9SpellSeedFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@SpellSeed@@UAEIPAVEffectValues@@@Z");
// win1.41 00728570 mac 1052bca0 SpellSeed::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9SpellSeedFv(struct Object* this) asm("?InteractsWithPhysicsObjects@SpellSeed@@UAE_NXZ");
// win1.41 00729930 mac 10528d60 SpellSeed::ProcessInHand(void)
bool __fastcall ProcessInHand__9SpellSeedFv(struct Object* this) asm("?ProcessInHand@SpellSeed@@UAE_NXZ");
// win1.41 00727f90 mac 1052cd60 SpellSeed::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9SpellSeedFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@SpellSeed@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 0072a2d0 mac 10527cc0 SpellSeed::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__9SpellSeedFv(struct Object* this) asm("?GetInHandImmersionTexture@SpellSeed@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */

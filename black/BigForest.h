#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct Creature;
struct Forest;
struct GBigForestInfo;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct LHOSFile;
struct MapCoords;
struct Object;
struct Villager;

struct BigForest
{
  struct MultiMapFixed super;  /* 0x0 */
  uint32_t field_0x80;  /* 0x7c */
  struct Forest* forest;  /* 0x80 */
  uint32_t field_0x84;
};
static_assert(sizeof(struct BigForest) == 0x88, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd2c0 mac inlined BigForest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9BigForest asm("??_R0?AVBigForest@@@8");
// win1.41 009a8498 mac inlined BigForest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9BigForest asm("??_R1A@?0A@A@BigForest@@8");
// win1.41 009a84b0 mac inlined BigForest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9BigForest asm("??_R2BigForest@@8");
// win1.41 009a84d0 mac inlined BigForest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9BigForest asm("??_R3BigForest@@8");
// win1.41 008c5900 mac 10783da4 BigForest::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9BigForest asm("??_R4BigForest@@6B@");
// win1.41 008c5904 mac 106f7ce0 BigForest::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__9BigForest asm("??_7BigForest@@6B@");

// Static methods

// win1.41 00438ec0 mac 100b3590 BigForest::Create(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
struct BigForest* __cdecl Create__9BigForestFRC9MapCoordsPC14GBigForestInfoUlff(struct MapCoords* coords, struct GBigForestInfo* info, uint32_t param_3, float param_4, float param_5) asm("?Create@BigForest@@SAPAV1@ABUMapCoords@@PBVGBigForestInfo@@KMM@Z");

// Constructors

// win1.41 00438ce0 mac 100b3a20 BigForest::BigForest(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
struct BigForest* __fastcall __ct__9BigForestFRC9MapCoordsPC14GBigForestInfoUlff(struct BigForest* this, const void* edx, const struct MapCoords* coords, const struct GBigForestInfo* info, uint32_t param_3, float param_4, float param_5) asm("??0BigForest@@QAE@ABUMapCoords@@PBVGBigForestInfo@@KMM@Z");

// Override methods

// win1.41 00438e20 mac 100b3990 BigForest::_dt(void)
void __fastcall __dt__9BigForestFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBigForest@@UAEPAXI@Z");
// win1.41 00438e60 mac 100b36e0 BigForest::ToBeDeleted(int)
void __fastcall ToBeDeleted__9BigForestFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@BigForest@@UAEXH@Z");
// win1.41 004390d0 mac 100b2d80 BigForest::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__9BigForestF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@BigForest@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 00438e10 mac 100b25b0 BigForest::GetDebugText(void)
char* __fastcall GetDebugText__9BigForestFv(struct GameThing* this) asm("?GetDebugText@BigForest@@UAEPADXZ");
// win1.41 004394e0 mac 100b2760 BigForest::Load(GameOSFile &)
bool __fastcall Load__9BigForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@BigForest@@UAE_NAAVGameOSFile@@@Z");
// win1.41 00439470 mac 100b2840 BigForest::Save(GameOSFile &)
uint32_t __fastcall Save__9BigForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@BigForest@@UAEIAAVGameOSFile@@@Z");
// win1.41 00438e00 mac 100b2570 BigForest::GetSaveType(void)
uint32_t __fastcall GetSaveType__9BigForestFv(struct GameThing* this) asm("?GetSaveType@BigForest@@UAEIXZ");
// win1.41 00438df0 mac 100b24d0 BigForest::GetMesh( const(void))
int __fastcall GetMesh__9BigForestCFv(const struct Object* this) asm("?GetMesh@BigForest@@UBEHXZ");
// win1.41 00438f60 mac 10020e40 BigForest::Draw(void)
void __fastcall Draw__9BigForestFv(struct Object* this) asm("?Draw@BigForest@@UAEXXZ");
// win1.41 00439550 mac 100b2690 BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__9BigForestFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@BigForest@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 00439050 mac 100b30a0 BigForest::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9BigForestFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@BigForest@@UAEXABUMapCoords@@@Z");
// win1.41 00438da0 mac 100b2350 BigForest::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__9BigForestFv(struct Object* this) asm("?Get3DType@BigForest@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 004390b0 mac 100b2fe0 BigForest::GetWoodValue(void)
float __fastcall GetWoodValue__9BigForestFv(struct Object* this) asm("?GetWoodValue@BigForest@@UAEMXZ");
// win1.41 00438db0 mac 100b2390 BigForest::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__9BigForestFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@BigForest@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 004393c0 mac 100b29f0 BigForest::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__9BigForestFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@BigForest@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00438dc0 mac 100b23e0 BigForest::IsTuggable(void)
uint32_t __fastcall IsTuggable__9BigForestFv(struct Object* this) asm("?IsTuggable@BigForest@@UAEIXZ");
// win1.41 004390a0 mac 100b3050 BigForest::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9BigForestFv(struct Object* this) asm("?InteractsWithPhysicsObjects@BigForest@@UAE_NXZ");
// win1.41 00438f50 mac 100b3530 BigForest::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__9BigForestFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@BigForest@@UAE_NPAVCreature@@@Z");
// win1.41 00438dd0 mac 100b2420 BigForest::VillagerMustAvoid(Villager *)
uint32_t __fastcall VillagerMustAvoid__9BigForestFP8Villager(struct Object* this, const void* edx, struct Villager* param_1) asm("?VillagerMustAvoid@BigForest@@UAEIPAVVillager@@@Z");
// win1.41 00438de0 mac 100b2470 BigForest::GetCarriedTreeType(void)
uint32_t __fastcall GetCarriedTreeType__9BigForestFv(struct Object* this) asm("?GetCarriedTreeType@BigForest@@UAEIXZ");
// win1.41 00438f70 mac 100b3190 BigForest::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9BigForestFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@BigForest@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(BigForest);

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */

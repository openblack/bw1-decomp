#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct Abode;
struct Base;
struct GMultiMapFixedInfo;
struct GPlannedAbodeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Town;

struct PlannedAbode
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
  struct Town* town;  /* 0x48 */
};
static_assert(sizeof(struct PlannedAbode) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8000 mac inlined PlannedAbode::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12PlannedAbode asm("??_R0?AVPlannedAbode@@@8");
// win1.41 009a64b0 mac inlined PlannedAbode::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12PlannedAbode asm("??_R1A@?0A@A@PlannedAbode@@8");
// win1.41 009a64c8 mac inlined PlannedAbode::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12PlannedAbode asm("??_R2PlannedAbode@@8");
// win1.41 009a64e0 mac inlined PlannedAbode::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12PlannedAbode asm("??_R3PlannedAbode@@8");
// win1.41 008aa3b8 mac 10746fa8 PlannedAbode::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12PlannedAbode asm("??_R4PlannedAbode@@6B@");
// win1.41 008aa3bc mac 10746fb0 PlannedAbode::`vftable'
extern const struct PlannedMultiMapFixedVftable __vt__12PlannedAbode asm("??_7PlannedAbode@@6B@");

// Static methods

// win1.41 004055c0 mac 103e4530 PlannedAbode::CreateNoInit(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __cdecl CreateNoInit__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5) asm("?CreateNoInit@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z");
// win1.41 00405600 mac 10479fb0 PlannedAbode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __cdecl Create__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5) asm("?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z");
// win1.41 00405660 mac 1043fad0 PlannedAbode::Create(Abode*)
struct PlannedAbode* __cdecl Create__12PlannedAbodeFP5Abode(struct Abode* abode) asm("?Create@PlannedAbode@@SAPAV1@PAVAbode@@@Z");
// win1.41 004056d0 mac 10007bf0 PlannedAbode::GetInfo(void)
struct GPlannedAbodeInfo* __cdecl GetInfo__12PlannedAbodeFv(void) asm("?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");

// Constructors

// win1.41 00405080 mac 103e51a0 PlannedAbode::PlannedAbode(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __fastcall __ct__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct PlannedAbode* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5) asm("??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");
// win1.41 00405580 mac 103e4ca0 PlannedAbode::PlannedAbode(Abode*)
struct PlannedAbode* __fastcall __ct__12PlannedAbodeFP5Abode(struct PlannedAbode* this, const void* edx, struct Abode* abode) asm("??0PlannedAbode@@QAE@PAVAbode@@@Z");

// Non-virtual methods

// win1.41 004055a0 mac 103e5560 PlannedAbode::Init(Town *)
void __fastcall Init__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, struct Town* town) asm("?Init@PlannedAbode@@QAEXPAVTown@@@Z");
// win1.41 004056f0 mac inlined PlannedAbode::FUN_004056f0(int)
bool32_t __fastcall FUN_004056f0__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, int param_1) asm("?FUN_004056f0@PlannedAbode@@QAE_NH@Z");
// win1.41 004057f0 mac inlined PlannedAbode::IsOkToBuild(void)
bool32_t __fastcall IsOkToBuild__12PlannedAbodeFv(struct PlannedAbode* this) asm("?IsOkToBuild@PlannedAbode@@UAE_NXZ");

// Override methods

// win1.41 00405110 mac 1017d1f0 PlannedAbode::_dt(unsigned int)
void __fastcall __dt__12PlannedAbodeFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedAbode@@QAEXXZ");
// win1.41 004056b0 mac 100c5460 PlannedAbode::ToBeDeleted(int)
void __fastcall ToBeDeleted__12PlannedAbodeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlannedAbode@@UAEXH@Z");
// win1.41 004050e0 mac 10352440 PlannedAbode::GetTown(void)
struct Town* __fastcall GetTown__12PlannedAbodeFv(struct GameThing* this) asm("?GetTown@PlannedAbode@@QAEPAVTown@@XZ");
// win1.41 00405100 mac 10179a00 PlannedAbode::GetDebugText(void)
char* __fastcall GetDebugText__12PlannedAbodeFv(struct GameThing* this) asm("?GetDebugText@PlannedAbode@@QAEPADXZ");
// win1.41 00405860 mac 10260310 PlannedAbode::Load(GameOSFile &)
uint32_t __fastcall Load__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z");
// win1.41 00405830 mac 10350950 PlannedAbode::Save(GameOSFile &)
uint32_t __fastcall Save__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z");
// win1.41 004050f0 mac 10531c20 PlannedAbode::GetSaveType(void)
uint32_t __fastcall GetSaveType__12PlannedAbodeFv(struct GameThing* this) asm("?GetSaveType@PlannedAbode@@UAEIXZ");
// win1.41 004061a0 mac 104333f0 PlannedAbode::IsWonder(void)
bool32_t __fastcall IsWonder__12PlannedAbodeFv(struct GameThingWithPos* this) asm("?IsWonder@PlannedAbode@@UAE_NXZ");
// win1.41 00405710 mac 10570d80 PlannedAbode::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 00405770 mac 10282ed0 PlannedAbode::CreatePlannedNoFixedCheck(float)
struct MultiMapFixed* __fastcall CreatePlannedNoFixedCheck__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 004060c0 mac 101a36e0 PlannedAbode::IsCivic(void)
bool __fastcall IsCivic__12PlannedAbodeFv(struct PlannedMultiMapFixed* this) asm("?IsCivic@PlannedAbode@@QAE_NXZ");
// win1.41 004061e0 mac 10007c40 PlannedAbode::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__12PlannedAbodeFv(struct PlannedMultiMapFixed* this) asm("?GetAbodeType@PlannedAbode@@QAE?AW4ABODE_TYPE@@XZ");

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */

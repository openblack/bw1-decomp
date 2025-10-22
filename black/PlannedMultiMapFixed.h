#ifndef BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

struct GFootpathLink;
struct GMultiMapFixedInfo;
struct GObjectInfo;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct MultiMapFixed;
struct PlannedMultiMapFixed;

struct PlannedMultiMapFixedVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  struct MultiMapFixed* (__fastcall* CreatePlanned)(struct PlannedMultiMapFixed* this, const void* edx, float param_1);  /* 0x500 */
  struct MultiMapFixed* (__fastcall* CreatePlannedNoFixedCheck)(struct PlannedMultiMapFixed* this, const void* edx, float param_1);
  void (__fastcall* PostCreatePlanned)(struct PlannedMultiMapFixed* this, const void* edx, struct MultiMapFixed* param_1);
  bool (__fastcall* IsCivic)(struct PlannedMultiMapFixed* this);
  enum ABODE_TYPE (__fastcall* GetAbodeType)(struct PlannedMultiMapFixed* this);  /* 0x510 */
  float (__fastcall* GetDesireToBeRepaired)(struct PlannedMultiMapFixed* this);
  void (__fastcall* Draw)(struct PlannedMultiMapFixed* this);
};
static_assert(sizeof(struct PlannedMultiMapFixedVftable) == 0x51c, "Data type is of wrong size");

struct PlannedMultiMapFixed
{
  struct GameThingWithPos super;  /* 0x0 */
  float field_0x28;
  float scale;
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct GFootpathLink* footpath_link;
  int creation_turn;
  struct GObjectInfo* info;  /* 0x40 */
  struct PlannedMultiMapFixed* next;
};
static_assert(sizeof(struct PlannedMultiMapFixed) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7fd8 mac inlined PlannedMultiMapFixed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20PlannedMultiMapFixed asm("??_R0?AVPlannedMultiMapFixed@@@8");
// win1.41 009a6498 mac inlined PlannedMultiMapFixed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20PlannedMultiMapFixed asm("??_R1A@?0A@A@PlannedMultiMapFixed@@8");
// win1.41 009ae968 mac inlined PlannedMultiMapFixed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20PlannedMultiMapFixed asm("??_R2PlannedMultiMapFixed@@8");
// win1.41 009ae980 mac inlined PlannedMultiMapFixed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20PlannedMultiMapFixed asm("??_R3PlannedMultiMapFixed@@8");
// win1.41 008f3150 mac 107340b0 PlannedMultiMapFixed::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20PlannedMultiMapFixed asm("??_R4PlannedMultiMapFixed@@6B@");
// win1.41 008f3154 mac 107340d0 PlannedMultiMapFixed::`vftable'
extern const struct PlannedMultiMapFixedVftable __vt__20PlannedMultiMapFixed asm("??_7PlannedMultiMapFixed@@6B@");

// Constructors

// win1.41 00648780 mac 10115620 PlannedMultiMapFixed::PlannedMultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float)
struct PlannedMultiMapFixed* __fastcall __ct__20PlannedMultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfoff(struct PlannedMultiMapFixed* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, float param_3, float param_4) asm("??0PlannedMultiMapFixed@@QAE@ABUMapCoords@@PBVGMultiMapFixedInfo@@MM@Z");

// Non-virtual Destructors

// win1.41 0055cbf0 mac 103e4400 PlannedMultiMapFixed::~PlannedMultiMapFixed(void)
void __fastcall __dt__20PlannedMultiMapFixedFv(struct PlannedMultiMapFixed* this, const void* edx, uint8_t param_1) asm("??1PlannedMultiMapFixed@@UAE@XZ");

// Override methods

// win1.41 0055cbe0 mac 10111890 PlannedMultiMapFixed::GetDebugText(void)
char* __fastcall GetDebugText__20PlannedMultiMapFixedFv(struct GameThing* this) asm("?GetDebugText@PlannedMultiMapFixed@@QAEPADXZ");
// win1.41 00648af0 mac 10114cd0 PlannedMultiMapFixed::Load(GameOSFile &)
uint32_t __fastcall Load__20PlannedMultiMapFixedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z");
// win1.41 00648990 mac 10114ef0 PlannedMultiMapFixed::Save(GameOSFile &)
uint32_t __fastcall Save__20PlannedMultiMapFixedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0055cbd0 mac inlined PlannedMultiMapFixed::GetSaveType(void)
uint32_t __fastcall GetSaveType__20PlannedMultiMapFixedFv(struct GameThing* this) asm("?GetSaveType@PlannedMultiMapFixed@@UAEIXZ");
// win1.41 004050c0 mac 1017d1b0 PlannedMultiMapFixed::GetScale(void)
float __fastcall GetScale__20PlannedMultiMapFixedFv(struct GameThingWithPos* this) asm("?GetScale@PlannedMultiMapFixed@@UBEMXZ");
// win1.41 004050d0 mac 103509e0 PlannedMultiMapFixed::SetScale(float)
void __fastcall SetScale__20PlannedMultiMapFixedFf(struct GameThingWithPos* this, const void* edx, float scale) asm("?SetScale@PlannedMultiMapFixed@@UAEXM@Z");
// win1.41 00648940 mac 10115200 PlannedMultiMapFixed::GetText(void)
const char* __fastcall GetText__20PlannedMultiMapFixedFv(struct GameThingWithPos* this) asm("?GetText@PlannedMultiMapFixed@@UAEPBDXZ");
// win1.41 00465560 mac 100d17b0 PlannedMultiMapFixed::IsWonder(void)
bool __fastcall IsWonder__20PlannedMultiMapFixedFv(struct GameThingWithPos* this) asm("?IsWonder@PlannedMultiMapFixed@@UAE_NXZ");
// win1.41 00648950 mac inlined PlannedMultiMapFixed::CreateBuildingSite(void)
bool32_t __fastcall CreateBuildingSite__20PlannedMultiMapFixedFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@PlannedMultiMapFixed@@UBE_NXZ");
// win1.41 00469660 mac 100bd510 PlannedMultiMapFixed::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__20PlannedMultiMapFixedFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedMultiMapFixed@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 00465540 mac 100d1720 PlannedMultiMapFixed::CreatePlannedNoFixedCheck(float)
struct MultiMapFixed* __fastcall CreatePlannedNoFixedCheck__20PlannedMultiMapFixedFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlannedNoFixedCheck@PlannedMultiMapFixed@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 00648c50 mac 10114bf0 PlannedMultiMapFixed::PostCreatePlanned(MultiMapFixed&)
void __fastcall PostCreatePlanned__20PlannedMultiMapFixedFR13MultiMapFixed(struct PlannedMultiMapFixed* this, const void* edx, struct MultiMapFixed* param_1) asm("?PostCreatePlanned@PlannedMultiMapFixed@@QAEXAAVMultiMapFixed@@@Z");
// win1.41 00465550 mac 100d1770 PlannedMultiMapFixed::IsCivic(void)
bool __fastcall IsCivic__20PlannedMultiMapFixedFv(struct PlannedMultiMapFixed* this) asm("?IsCivic@PlannedMultiMapFixed@@QAE_NXZ");
// win1.41 00465570 mac 100d17f0 PlannedMultiMapFixed::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__20PlannedMultiMapFixedFv(struct PlannedMultiMapFixed* this) asm("?GetAbodeType@PlannedMultiMapFixed@@QAE?AW4ABODE_TYPE@@XZ");
// win1.41 00648910 mac 1006f570 PlannedMultiMapFixed::GetDesireToBeRepaired(void)
float __fastcall GetDesireToBeRepaired__20PlannedMultiMapFixedFv(struct PlannedMultiMapFixed* this) asm("?GetDesireToBeRepaired@PlannedMultiMapFixed@@QAEMXZ");
// win1.41 00648930 mac 10115260 PlannedMultiMapFixed::Draw(void)
void __fastcall Draw__20PlannedMultiMapFixedFv(struct PlannedMultiMapFixed* this) asm("?Draw@PlannedMultiMapFixed@@QAEXXZ");

DECLARE_LH_LIST_HEAD(PlannedMultiMapFixed);

#endif /* BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H */

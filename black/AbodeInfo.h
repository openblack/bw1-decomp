#ifndef BW1_DECOMP_ABODE_INFO_INCLUDED_H
#define BW1_DECOMP_ABODE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE, enum DYK_CATEGORY, enum TRIBE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "Name.h" /* For struct Name */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;
struct LHFile;
struct MapCoords;
struct Town;

struct GAbodeInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  enum ABODE_TYPE abodeType;  /* 0x120 */
  enum ABODE_NUMBER abodeNumber;
  struct Name description;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  uint32_t field_0x150;
  uint32_t field_0x154;
  enum TRIBE_TYPE tribe_type;
  uint32_t meshId;
  uint32_t canBePhysicallyDamaged;  /* 0x160 */
  float startLife;
  uint32_t startStrength;
  float startDefence;
  uint32_t startInfluence;  /* 0x170 */
  int maxVillagersInAbode;
  int maxChildrenInAbode;
  uint32_t startVillagersInAbode;
  uint32_t startChildrenInAbode;  /* 0x180 */
  uint32_t startFood;
  uint32_t startFoodRAnd;
  uint32_t startWood;
  uint32_t startWoodRAnd;  /* 0x190 */
  uint32_t howLongRuinLastsFor;
  uint32_t potForResourceFood;
  uint32_t potForResourceWood;
  float percentTooCrowded;  /* 0x1a0 */
  int producesMobileObject;
  float maxNumMobileObjectsToProduce;
  float timeEachMobileObjectTakesToProduce;
  float emptyAbodeLifeReducer;  /* 0x1b0 */
  int populationWhenNeeded;
  float thresholdForStopBeingFunctional;
  int toolTipsForBuild;
  int didYouKnow;  /* 0x1c0 */
  enum DYK_CATEGORY dykCategory;
};
static_assert(sizeof(struct GAbodeInfo) == 0x1c8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7ef8 mac inlined GAbodeInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GAbodeInfo asm("??_R0?AVGAbodeInfo@@@8");
// win1.41 009a6368 mac inlined GAbodeInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GAbodeInfo asm("??_R1A@?0A@A@GAbodeInfo@@8");
// win1.41 009a6380 mac inlined GAbodeInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GAbodeInfo asm("??_R2GAbodeInfo@@8");
// win1.41 009a6398 mac inlined GAbodeInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GAbodeInfo asm("??_R3GAbodeInfo@@8");
// win1.41 008a99f4 mac 107346c4 GAbodeInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GAbodeInfo asm("??_R4GAbodeInfo@@6B@");
// win1.41 008a99f8 mac 107346cc GAbodeInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__10GAbodeInfo asm("??_7GAbodeInfo@@6B@");

// Static methods

// win1.41 00405a70 mac 101ca0c0 GAbodeInfo::GetInfoFromText(char *)
int __cdecl GetInfoFromText__10GAbodeInfoFPc(const char* text) asm("?GetInfoFromText@GAbodeInfo@@SAHPAD@Z");
// win1.41 00405b30 mac 1006f680 GAbodeInfo::Find(TRIBE_TYPE, ABODE_NUMBER)
struct GAbodeInfo* __cdecl Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER(enum TRIBE_TYPE tribe_type, enum ABODE_NUMBER abode_number) asm("?Find@GAbodeInfo@@SAPAV1@W4TRIBE_TYPE@@W4ABODE_NUMBER@@@Z");

// Global Static variable lifetime methods

// win1.41 00401170 mac inlined GAbodeInfo::`global initializer for 'AbodeInfos''
void __cdecl crt_global_initialize_for_AbodeInfos__10GAbodeInfoFv(void);
// win1.41 00401180 mac inlined GAbodeInfo::`dynamic initializer for 'AbodeInfos''
void __cdecl dynamic_initializer_for_AbodeInfos__10GAbodeInfoFv(void) asm("??__EAbodeInfos@@YAXXZ");
// win1.41 004012d0 mac inlined GAbodeInfo::`dynamic destructor registrar for 'AbodeInfos''
void __cdecl crt_global_destruction_register_for_AbodeInfos__10GAbodeInfoFv(void);
// win1.41 004012e0 mac inlined GAbodeInfo::`dynamic atexit destructor for 'AbodeInfos''
void __cdecl dynamic_atexit_destructor_for_AbodeInfos__10GAbodeInfoFv(void) asm("??__FAbodeInfos@@YAXXZ");

// Non-virtual methods

// win1.41 00404b10 mac 1015a260 GAbodeInfo::IsOkToCreateAtPos(MapCoords const &, float, float, Town *) const
bool __fastcall IsOkToCreateAtPos__10GAbodeInfoCFRC9MapCoordsffP4Town(const struct GAbodeInfo* this, const void* edx, const struct MapCoords* coords, float param_2, float param_3, struct Town* town) asm("?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z");
// win1.41 00405a60 mac inlined GAbodeInfo::GetDescription(void)
const char* __fastcall GetDescription__10GAbodeInfoFv(struct GAbodeInfo* this) asm("?GetDescription@GAbodeInfo@@QAEPBDXZ");
// win1.41 0042e520 mac inlined GAbodeInfo::LoadBinary(LHFile *)
void __fastcall LoadBinary__10GAbodeInfoFP6LHFile(struct GAbodeInfo* this, const void* edx, struct LHFile* file) asm("?LoadBinary@GAbodeInfo@@QAEXPAVLHFile@@@Z");

// Override methods

// win1.41 00401320 mac 101ca240 GAbodeInfo::~GAbodeInfo(unsigned int)
void __fastcall __dt__10GAbodeInfoFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAbodeInfo@@UAE@XZ");
// win1.41 00401270 mac 103d3790 GAbodeInfo::GetBaseInfo(ulong&)
struct GBaseInfo* __fastcall GetBaseInfo__10GAbodeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GAbodeInfo@@UAEPAVGBaseInfo@@AAK@Z");
// win1.41 00401240 mac 1019a370 GAbodeInfo::GetMesh() const
uint32_t __fastcall GetMesh__10GAbodeInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GAbodeInfo@@UBE?AW4MeshId@@XZ");
// win1.41 00401250 mac 106fde70 GAbodeInfo::GetAbodeType() const
enum ABODE_TYPE __fastcall GetAbodeType__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this) asm("?GetAbodeType@GAbodeInfo@@UBE?AW4ABODE_TYPE@@XZ");
// win1.41 00401260 mac 100984c0 GAbodeInfo::GetAbodeNumber() const
enum ABODE_NUMBER __fastcall GetAbodeNumber__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this) asm("?GetAbodeNumber@GAbodeInfo@@UBE?AW4ABODE_NUMBER@@XZ");

#endif /* BW1_DECOMP_ABODE_INFO_INCLUDED_H */

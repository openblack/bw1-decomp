#ifndef BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lhall/released/headers/RPHolder.h> /* For struct RPHolder */
#include <lhall/released/headers/RPlan.h> /* For struct RPlan */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GFootpath;
struct GFootpathNode;
struct GameOSFile;
struct GameThingWithPos;

struct GFootpathFinder
{
  struct GameThing super;  /* 0x0 */
  struct RPHolder holder;  /* 0x14 */
  struct RPlan plan;  /* 0x64040 */
  struct GameThingWithPos* gamethingwithpos_start;  /* 0x640b4 */
  struct GameThingWithPos* gamethingwithpos_dest;
  struct GFootpath* footpath_0x7c;
  struct GFootpathNode* start_node;  /* 0x640c0 */
  struct GFootpathNode* dest_node;
};
static_assert(sizeof(struct GFootpathFinder) == 0x640c8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea200 mac inlined GFootpathFinder::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GFootpathFinder asm("??_R0?AVGFootpathFinder@@@8");
// win1.41 009ac6e0 mac inlined GFootpathFinder::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GFootpathFinder asm("??_R1A@?0A@A@GFootpathFinder@@8");
// win1.41 009ac6f8 mac inlined GFootpathFinder::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GFootpathFinder asm("??_R2GFootpathFinder@@8");
// win1.41 009ac708 mac inlined GFootpathFinder::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GFootpathFinder asm("??_R3GFootpathFinder@@8");
// win1.41 008de2dc mac 10742ed0 GFootpathFinder::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15GFootpathFinder asm("??_R4GFootpathFinder@@6B@");
// win1.41 008de2e0 mac 10742ed8 GFootpathFinder::`vftable'
extern const struct GameThingVftable __vt__15GFootpathFinder asm("??_7GFootpathFinder@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathFinder::GFootpathFinder(void)
struct GFootpathFinder* __fastcall __ct__15GFootpathFinderFv(struct GFootpathFinder* this) asm("??0GFootpathFinder@@QAE@XZ");

// Non-virtual methods

// win1.41 00539040 mac 100e7dc0 GFootpathFinder::GameTurnProcess(void)
void __fastcall GameTurnProcess__15GFootpathFinderFv(struct GFootpathFinder* this) asm("?GameTurnProcess@GFootpathFinder@@QAEXXZ");
// win1.41 00539240 mac 100e7760 GFootpathFinder::Done(void)
void __fastcall Done__15GFootpathFinderFv(struct GFootpathFinder* this) asm("?Done@GFootpathFinder@@QAEXXZ");
// win1.41 005392f0 mac 100e7150 GFootpathFinder::Init(void)
void __fastcall Init__15GFootpathFinderFv(struct GFootpathFinder* this) asm("?Init@GFootpathFinder@@QAEXXZ");

// Override methods

// win1.41 00538ff0 mac 100e7f30 GFootpathFinder::_dt(void)
void __fastcall __dt__15GFootpathFinderFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootpathFinder@@UAEPAXI@Z");
// win1.41 005391c0 mac 100e78e0 GFootpathFinder::ToBeDeleted(int)
void __fastcall ToBeDeleted__15GFootpathFinderFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GFootpathFinder@@UAEXH@Z");
// win1.41 00538fe0 mac 100e7110 GFootpathFinder::GetDebugText(void)
char* __fastcall GetDebugText__15GFootpathFinderFv(struct GameThing* this) asm("?GetDebugText@GFootpathFinder@@UAEPADXZ");
// win1.41 005390e0 mac 100e7ce0 GFootpathFinder::Load(GameOSFile &)
uint32_t __fastcall Load__15GFootpathFinderFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GFootpathFinder@@UAEIAAVGameOSFile@@@Z");
// win1.41 00539150 mac 100e7c00 GFootpathFinder::Save(GameOSFile &)
uint32_t __fastcall Save__15GFootpathFinderFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GFootpathFinder@@UAEIAAVGameOSFile@@@Z");
// win1.41 00538fd0 mac 100e70d0 GFootpathFinder::GetSaveType(void)
uint32_t __fastcall GetSaveType__15GFootpathFinderFv(struct GameThing* this) asm("?GetSaveType@GFootpathFinder@@UAEIXZ");

DECLARE_LH_LINKED_LIST(GFootpathFinder);

#endif /* BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H */

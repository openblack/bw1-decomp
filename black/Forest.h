#ifndef BW1_DECOMP_FOREST_INCLUDED_H
#define BW1_DECOMP_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Container.h" /* For struct Container, struct ContainerVftable */
#include "Tree.h" /* For struct Tree */

// Forward Declares

struct Base;
struct Creature;
struct GFootpath;
struct GFootpathLink;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Living;
struct MapCoords;

struct ForestVftable
{
  struct ContainerVftable super;  /* 0x0 */
};
static_assert(sizeof(struct ForestVftable) == 0x500, "Data type is of wrong size");

union ForestBase
{
  struct Container super;
  struct ForestVftable* vftable;
};
static_assert(sizeof(union ForestBase) == 0x30, "Data type is of wrong size");

struct Forest
{
  union ForestBase base;  /* 0x0 */
  uint8_t field_0x30[0x10];
  uint32_t id;  /* 0x40 */
  struct Forest* next;
  struct LHLinkedList__Tree trees_0;
  struct LHLinkedList__Tree trees_1;  /* 0x50 */
};
static_assert(sizeof(struct Forest) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdea58 mac inlined Forest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Forest asm("??_R0?AVForest@@@8");
// win1.41 009ac788 mac inlined Forest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Forest asm("??_R1A@?0A@A@Forest@@8");
// win1.41 009ac7a0 mac inlined Forest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Forest asm("??_R2Forest@@8");
// win1.41 009ac7b8 mac inlined Forest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Forest asm("??_R3Forest@@8");
// win1.41 008de418 mac 107434e0 Forest::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Forest asm("??_R4Forest@@6B@");
// win1.41 008de41c mac 107434e8 Forest::`vftable'
extern const struct ForestVftable __vt__6Forest asm("??_7Forest@@6B@");

// Constructors

// win1.41 00539bd0 mac 100f2620 Forest::Forest(MapCoords const&, unsigned long)
struct Forest* __fastcall __ct__6ForestFRC9MapCoordsUl(struct Forest* this, const void* edx, const struct MapCoords* coords, uint32_t param_2) asm("??0Forest@@QAE@ABUMapCoords@@K@Z");

// Non-virtual methods

// win1.41 0053a310 mac 100f16f0 Forest::AddTree(Tree*)
void __fastcall AddTree__6ForestFP4Tree(struct Forest* this, const void* edx, struct Tree* tree) asm("?AddTree@Forest@@QAEXPAVTree@@@Z");
// win1.41 0053abf0 mac 100f0a00 Forest::GetForestCentreTree(void)
struct Tree* __fastcall GetForestCentreTree__6ForestFv(struct Forest* this) asm("?GetForestCentreTree@Forest@@QAEPAVTree@@XZ");

// Override methods

// win1.41 00539b20 mac 100ef2f0 Forest::_dt(void)
void __fastcall __dt__6ForestFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GForest@@UAEPAXI@Z");
// win1.41 00539c60 mac 100f2300 Forest::ToBeDeleted(int)
void __fastcall ToBeDeleted__6ForestFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Forest@@UAEXH@Z");
// win1.41 00539ae0 mac 100ef710 Forest::IsFootpathLink(void)
uint32_t __fastcall IsFootpathLink__6ForestFv(struct GameThing* this) asm("?IsFootpathLink@Forest@@UAEIXZ");
// win1.41 00539af0 mac 100ef750 Forest::GetFootpathLink(void)
struct GFootpathLink* __fastcall GetFootpathLink__6ForestFv(struct GameThing* this) asm("?GetFootpathLink@Forest@@UAEPAVGFootpathLink@@XZ");
// win1.41 0053acf0 mac 100f07e0 Forest::GetNearestPathTo(MapCoords const &, float, int)
uint32_t __fastcall GetNearestPathTo__6ForestFRC9MapCoordsfi(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3) asm("?GetNearestPathTo@Forest@@UAEIABUMapCoords@@MH@Z");
// win1.41 0053ad60 mac 100f05a0 Forest::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__6ForestFP6LivingRC9MapCoordsUc(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3) asm("?UseFootpathIfNecessary@Forest@@UAEXPAVLiving@@ABUMapCoords@@E@Z");
// win1.41 0053ac50 mac 100f08e0 Forest::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__6ForestFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpath@Forest@@UAEIPAVGFootpath@@@Z");
// win1.41 0053acc0 mac 100f0830 Forest::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__6ForestFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@Forest@@UAEIPAVGFootpath@@@Z");
// win1.41 00539a60 mac 100ef4a0 Forest::IsFunctional(void)
bool __fastcall IsFunctional__6ForestFv(struct GameThing* this) asm("?IsFunctional@Forest@@UAE_NXZ");
// win1.41 00539b10 mac 100ef7d0 Forest::GetDebugText(void)
char* __fastcall GetDebugText__6ForestFv(struct GameThing* this) asm("?GetDebugText@Forest@@UAEPADXZ");
// win1.41 0053b070 mac 100ef950 Forest::Load(GameOSFile &)
bool __fastcall Load__6ForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@Forest@@UAE_NAAVGameOSFile@@@Z");
// win1.41 0053ae40 mac 100efda0 Forest::Save(GameOSFile &)
uint32_t __fastcall Save__6ForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Forest@@UAEIAAVGameOSFile@@@Z");
// win1.41 00539b00 mac 100ef790 Forest::GetSaveType(void)
uint32_t __fastcall GetSaveType__6ForestFv(struct GameThing* this) asm("?GetSaveType@Forest@@UAEIXZ");
// win1.41 00539a80 mac 100ef580 Forest::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__6ForestFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Forest@@UAEIXZ");
// win1.41 00539a90 mac 100ef5c0 Forest::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__6ForestFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Forest@@UAEIXZ");
// win1.41 00539ab0 mac 100ef650 Forest::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__6ForestFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@Forest@@UAE_NPAVCreature@@@Z");
// win1.41 00539aa0 mac 100ef600 Forest::IsSuitableForCreatureActivity(void)
uint32_t __fastcall IsSuitableForCreatureActivity__6ForestFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@Forest@@UAEIXZ");
// win1.41 00539ac0 mac 100ef6b0 Forest::GetText(void)
const char* __fastcall GetText__6ForestFv(struct GameThingWithPos* this) asm("?GetText@Forest@@UAEPBDXZ");
// win1.41 00539ad0 mac 100ef6e0 Forest::IsForest(void)
uint32_t __fastcall IsForest__6ForestFv(struct GameThingWithPos* this) asm("?IsForest@Forest@@UAEIXZ");

DECLARE_LH_LIST_HEAD(Forest);

#endif /* BW1_DECOMP_FOREST_INCLUDED_H */

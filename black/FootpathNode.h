#ifndef BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct GameOSFile;

struct GFootpathNode
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14;
  struct MapCoords coords;
  struct GFootpathNode* next;  /* 0x24 */
  struct LHLinkedList__Living followers;
};
static_assert(sizeof(struct GFootpathNode) == 0x30, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea140 mac inlined GFootpathNode::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GFootpathNode asm("??_R0?AVGFootpathNode@@@8");
// win1.41 009ac5f0 mac inlined GFootpathNode::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GFootpathNode asm("??_R1A@?0A@A@GFootpathNode@@8");
// win1.41 009ac608 mac inlined GFootpathNode::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GFootpathNode asm("??_R2GFootpathNode@@8");
// win1.41 009ac618 mac inlined GFootpathNode::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GFootpathNode asm("??_R3GFootpathNode@@8");
// win1.41 008ddfb8 mac 10742ff0 GFootpathNode::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13GFootpathNode asm("??_R4GFootpathNode@@6B@");
// win1.41 008ddfbc mac 10742ff8 GFootpathNode::`vftable'
extern const struct GameThingVftable __vt__13GFootpathNode asm("??_7GFootpathNode@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathNode::GFootpathNode(void)
struct GFootpathNode* __fastcall __ct__13GFootpathNodeFv(struct GFootpathNode* this) asm("??0GFootpathNode@@QAE@XZ");
// win1.41 00534cf0 mac 100eed50 GFootpathNode::GFootpathNode(MapCoords const &, int, int)
struct GFootpathNode* __fastcall __ct__13GFootpathNodeFRC9MapCoordsii(struct GFootpathNode* this, const void* edx, struct MapCoords* coords, int param_2, int param_3) asm("??0GFootpathNode@@QAE@ABUMapCoords@@HH@Z");

// Non-virtual methods

// win1.41 005389d0 mac 100e90a0 GFootpathNode::PurgeFollowerList(void)
void __fastcall PurgeFollowerList__13GFootpathNodeFv(struct GFootpathNode* this) asm("?PurgeFollowerList@GFootpathNode@@QAEXXZ");
// win1.41 00538b10 mac 100e8d10 GFootpathNode::ClearFromPreviousNode(void)
void __fastcall ClearFromPreviousNode__13GFootpathNodeFv(struct GFootpathNode* this) asm("?ClearFromPreviousNode@GFootpathNode@@QAEXXZ");

// Override methods

// win1.41 00534d70 mac 100eef60 GFootpathNode::_dt(void)
void __fastcall __dt__13GFootpathNodeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootpathNode@@UAEPAXI@Z");
// win1.41 00538970 mac 100e91f0 GFootpathNode::ToBeDeleted(int)
void __fastcall ToBeDeleted__13GFootpathNodeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GFootpathNode@@UAEXH@Z");
// win1.41 00534d60 mac 100ef030 GFootpathNode::GetDebugText(void)
char* __fastcall GetDebugText__13GFootpathNodeFv(struct GameThing* this) asm("?GetDebugText@GFootpathNode@@UAEPADXZ");
// win1.41 00538c10 mac 100e86f0 GFootpathNode::Load(GameOSFile &)
uint32_t __fastcall Load__13GFootpathNodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GFootpathNode@@UAEIAAVGameOSFile@@@Z");
// win1.41 00538d70 mac 100e83f0 GFootpathNode::Save(GameOSFile &)
uint32_t __fastcall Save__13GFootpathNodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GFootpathNode@@UAEIAAVGameOSFile@@@Z");
// win1.41 00534d50 mac 100eeff0 GFootpathNode::GetSaveType(void)
uint32_t __fastcall GetSaveType__13GFootpathNodeFv(struct GameThing* this) asm("?GetSaveType@GFootpathNode@@UAEIXZ");
// win1.41 00538ea0 mac 100e83b0 GFootpathNode::ResolveLoad(void)
void __fastcall ResolveLoad__13GFootpathNodeFv(struct GameThing* this) asm("?ResolveLoad@GFootpathNode@@UAEXXZ");

#endif /* BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H */

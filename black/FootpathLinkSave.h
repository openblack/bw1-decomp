#ifndef BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct GFootpathLink;
struct GameOSFile;

struct GFootpathLinkSave
{
  struct GameThing super;  /* 0x0 */
  struct GFootpathLink* link;  /* 0x14 */
  struct MapCoords coords;
};
static_assert(sizeof(struct GFootpathLinkSave) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea1c0 mac inlined GFootpathLinkSave::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17GFootpathLinkSave asm("??_R0?AVGFootpathLinkSave@@@8");
// win1.41 009ac690 mac inlined GFootpathLinkSave::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17GFootpathLinkSave asm("??_R1A@?0A@A@GFootpathLinkSave@@8");
// win1.41 009ac6a8 mac inlined GFootpathLinkSave::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17GFootpathLinkSave asm("??_R2GFootpathLinkSave@@8");
// win1.41 009ac6b8 mac inlined GFootpathLinkSave::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17GFootpathLinkSave asm("??_R3GFootpathLinkSave@@8");
// win1.41 008de1c0 mac 10743110 GFootpathLinkSave::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17GFootpathLinkSave asm("??_R4GFootpathLinkSave@@6B@");
// win1.41 008de1c4 mac 10743118 GFootpathLinkSave::`vftable'
extern const struct GameThingVftable __vt__17GFootpathLinkSave asm("??_7GFootpathLinkSave@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathLinkSave::GFootpathLinkSave(void)
struct GFootpathLinkSave* __fastcall __ct__17GFootpathLinkSaveFv(struct GFootpathLinkSave* this) asm("??0GFootpathLinkSave@@QAE@XZ");

// Non-virtual methods

// win1.41 00536fa0 mac inlined GFootpathLinkSave::FUN_00536fa0(void)
void __fastcall FUN_00536fa0__17GFootpathLinkSaveFv(struct GFootpathLinkSave* this) asm("?FUN_00536fa0@GFootpathLinkSave@@QAEXXZ");

// Override methods

// win1.41 005371f0 mac 100eb6b0 GFootpathLinkSave::_dt(void)
void __fastcall __dt__17GFootpathLinkSaveFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootpathLinkSave@@UAEPAXI@Z");
// win1.41 005371e0 mac 100ef0b0 GFootpathLinkSave::GetDebugText(void)
char* __fastcall GetDebugText__17GFootpathLinkSaveFv(struct GameThing* this) asm("?GetDebugText@GFootpathLinkSave@@UAEPADXZ");
// win1.41 005370a0 mac 100eb5c0 GFootpathLinkSave::Load(GameOSFile &)
uint32_t __fastcall Load__17GFootpathLinkSaveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GFootpathLinkSave@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */

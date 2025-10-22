#ifndef BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Footpath.h" /* For struct GFootpath */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GFootpathNode;
struct GameOSFile;
struct GameThingWithPos;
struct Living;
struct MapCoords;

struct GFootpathLink
{
  struct GameThing super;  /* 0x0 */
  struct LHLinkedList__GFootpath footpath_list;  /* 0x14 */
};
static_assert(sizeof(struct GFootpathLink) == 0x1c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be68c0 mac inlined GFootpathLink::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GFootpathLink asm("??_R0?AVGFootpathLink@@@8");
// win1.41 009ab608 mac inlined GFootpathLink::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GFootpathLink asm("??_R1A@?0A@A@GFootpathLink@@8");
// win1.41 009ab620 mac inlined GFootpathLink::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GFootpathLink asm("??_R2GFootpathLink@@8");
// win1.41 009ab630 mac inlined GFootpathLink::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GFootpathLink asm("??_R3GFootpathLink@@8");
// win1.41 008d3e84 mac 10743230 GFootpathLink::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13GFootpathLink asm("??_R4GFootpathLink@@6B@");
// win1.41 008d3e88 mac 10743238 GFootpathLink::`vftable'
extern const struct GameThingVftable __vt__13GFootpathLink asm("??_7GFootpathLink@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathLink::GFootpathLink(void)
struct GFootpathLink* __fastcall __ct__13GFootpathLinkFv(struct GFootpathLink* this) asm("??0GFootpathLink@@QAE@XZ");

// Non-virtual methods

// win1.41 00536110 mac 100ec590 GFootpathLink::GetNearestPathTo(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
struct GFootpath* __fastcall GetNearestPathTo__13GFootpathLinkFRC9MapCoordsRC9MapCoordsfRiPP13GFootpathNode(struct GFootpathLink* this, const void* edx, const struct MapCoords* param_1, const struct MapCoords* param_2, float param_3, int* param_4, struct GFootpathNode** param_5) asm("?GetNearestPathTo@GFootpathLink@@QAEPAVGFootpath@@ABUMapCoords@@0MAAHPAPAVGFootpathNode@@@Z");
// win1.41 005361f0 mac 100ec3e0 GFootpathLink::GetNearestPathToQuick(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
struct GFootpath* __fastcall GetNearestPathToQuick__13GFootpathLinkFRC9MapCoordsRC9MapCoordsfRiPP13GFootpathNode(struct GFootpathLink* this, const void* edx, const struct MapCoords* param_1, const struct MapCoords* param_2, float param_3, int* param_4, struct GFootpathNode** param_5) asm("?GetNearestPathToQuick@GFootpathLink@@QAEPAVGFootpath@@ABUMapCoords@@0MAAHPAPAVGFootpathNode@@@Z");
// win1.41 005362e0 mac 100ebe90 GFootpathLink::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char, GameThingWithPos *)
uint32_t __fastcall UseFootpathIfNecessary__13GFootpathLinkFP6LivingRC9MapCoordsUcP16GameThingWithPos(struct GFootpathLink* this, const void* edx, struct Living* living, const struct MapCoords* coord, uint32_t param_4, struct GameThingWithPos* game_thing_with_pos) asm("?UseFootpathIfNecessary@GFootpathLink@@QAEIPAVLiving@@ABUMapCoords@@EPAVGameThingWithPos@@@Z");

// Override methods

// win1.41 0050caf0 mac 100ef100 GFootpathLink::_dt(void)
void __fastcall __dt__13GFootpathLinkFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootpathLink@@UAEPAXI@Z");
// win1.41 00536010 mac 100ec980 GFootpathLink::ToBeDeleted(int)
void __fastcall ToBeDeleted__13GFootpathLinkFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GFootpathLink@@UAEXH@Z");
// win1.41 00536070 mac 100ec840 GFootpathLink::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__13GFootpathLinkFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpath@GFootpathLink@@UAEIPAVGFootpath@@@Z");
// win1.41 005360b0 mac 100ec730 GFootpathLink::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__13GFootpathLinkFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@GFootpathLink@@UAEIPAVGFootpath@@@Z");
// win1.41 0050cae0 mac 100ef1d0 GFootpathLink::GetDebugText(void)
char* __fastcall GetDebugText__13GFootpathLinkFv(struct GameThing* this) asm("?GetDebugText@GFootpathLink@@UAEPADXZ");
// win1.41 005365a0 mac 100eb8e0 GFootpathLink::Load(GameOSFile &)
uint32_t __fastcall Load__13GFootpathLinkFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GFootpathLink@@UAEIAAVGameOSFile@@@Z");
// win1.41 005364f0 mac 100ebc00 GFootpathLink::Save(GameOSFile &)
uint32_t __fastcall Save__13GFootpathLinkFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GFootpathLink@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050cad0 mac 100ef190 GFootpathLink::GetSaveType(void)
uint32_t __fastcall GetSaveType__13GFootpathLinkFv(struct GameThing* this) asm("?GetSaveType@GFootpathLink@@UAEIXZ");

#endif /* BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H */

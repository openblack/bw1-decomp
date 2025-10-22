#ifndef BW1_DECOMP_FOOTPATH_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GFootpathNode;
struct GameOSFile;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Point2D;
struct RPHolder;
struct RPlan;

struct GFootpath
{
  struct GameThing super;  /* 0x0 */
  struct GFootpathNode* nodes;  /* 0x14 */
  int node_count;
  struct GFootpath* next;
  uint32_t field_0x20;
};
static_assert(sizeof(struct GFootpath) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea170 mac inlined GFootpath::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GFootpath asm("??_R0?AVGFootpath@@@8");
// win1.41 009ac640 mac inlined GFootpath::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GFootpath asm("??_R1A@?0A@A@GFootpath@@8");
// win1.41 009ac658 mac inlined GFootpath::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GFootpath asm("??_R2GFootpath@@8");
// win1.41 009ac668 mac inlined GFootpath::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GFootpath asm("??_R3GFootpath@@8");
// win1.41 008de0b8 mac 10743350 GFootpath::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GFootpath asm("??_R4GFootpath@@6B@");
// win1.41 008de0bc mac 10743358 GFootpath::`vftable'
extern const struct GameThingVftable __vt__9GFootpath asm("??_7GFootpath@@6B@");

// Static methods

// win1.41 00535a80 mac inlined GFootpath::FUN_00535a80(Point2D *, MultiMapFixed *, float, float)
void __cdecl FUN_00535a80__9GFootpathFP7Point2DP13MultiMapFixedff(struct Point2D* param_1, struct MultiMapFixed* param_2, float point_x, float point_y) asm("?FUN_00535a80@GFootpath@@SAXPAUPoint2D@@PAVMultiMapFixed@@MM@Z");
// win1.41 00537290 mac 100ea6f0 GFootpath::SendFootpathsAroundObsticle(float, MapCoords const &)
void __cdecl SendFootpathsAroundObsticle__9GFootpathFfRC9MapCoords(float radius, struct MapCoords* coords) asm("?SendFootpathsAroundObsticle@GFootpath@@SAXMABUMapCoords@@@Z");
// win1.41 00538340 mac 100e95b0 GFootpath::ConvertCreaturePlanToFootpath(RPHolder &, RPlan &, GFootpathNode *, GFootpathNode *, MapCoords const &)
void __cdecl ConvertCreaturePlanToFootpath__9GFootpathFR8RPHolderR5RPlanP13GFootpathNodeP13GFootpathNodeRC9MapCoords(struct RPHolder* holder, struct RPlan* plan, struct GFootpathNode* start, struct GFootpathNode* end, struct MapCoords* coord) asm("?ConvertCreaturePlanToFootpath@GFootpath@@SAXAAURPHolder@@AAURPlan@@PAVGFootpathNode@@2ABUMapCoords@@@Z");
// win1.41 005387d0 mac 100e93a0 GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode *, GFootpathNode *, MapCoords const &)
uint32_t __cdecl AttemptRerenderFootpathWithCreatureRP__9GFootpathFP13GFootpathNodeP13GFootpathNodeRC9MapCoords(struct GFootpathNode* start, struct GFootpathNode* end, struct MapCoords* coord) asm("?AttemptRerenderFootpathWithCreatureRP@GFootpath@@SAIPAVGFootpathNode@@0ABUMapCoords@@@Z");

// Constructors

// win1.41 00534dc0 mac 100eecb0 GFootpath::GFootpath(void)
struct GFootpath* __fastcall __ct__9GFootpathFv(struct GFootpath* this) asm("??0GFootpath@@QAE@XZ");
// win1.41 00534eb0 mac 100ee9b0 GFootpath::GFootpath(GameThingWithPos *, GameThingWithPos *)
struct GFootpath* __fastcall __ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos(struct GFootpath* this, const void* edx, struct GameThingWithPos* param_2, struct GameThingWithPos* param_3) asm("??0GFootpath@@QAE@PAVGameThingWithPos@@0@Z");

// Non-virtual methods

// win1.41 00534fc0 mac 100ee4c0 GFootpath::AddPos(MapCoords const &)
void __fastcall AddPos__9GFootpathFRC9MapCoords(struct GFootpath* this, const void* edx, struct MapCoords* coords) asm("?AddPos@GFootpath@@QAEXABUMapCoords@@@Z");
// win1.41 005351a0 mac 100ee290 GFootpath::GetNextNode(GFootpathNode *, int)
struct GFootpathNode* __fastcall GetNextNode__9GFootpathFP13GFootpathNodei(struct GFootpath* this, const void* edx, struct GFootpathNode* node, int backwards) asm("?GetNextNode@GFootpath@@QAEPAVGFootpathNode@@PAV2@H@Z");
// win1.41 005351f0 mac 100ee190 GFootpath::GetNextPos(MapCoords const &, GFootpathNode *&, MapCoords &, int, float)
uint32_t __fastcall GetNextPos__9GFootpathFRC9MapCoordsRP13GFootpathNodeR9MapCoordsif(struct GFootpath* this, const void* edx, struct MapCoords* current_pos, struct GFootpathNode** next_node, struct MapCoords* next_pos, int backwards, float max_t);
// win1.41 00535270 mac 100ee0d0 GFootpath::GetNextPos(GFootpathNode *&, MapCoords &, int)
uint32_t __fastcall GetNextPos__9GFootpathFRP13GFootpathNodeR9MapCoordsi(struct GFootpath* this, const void* edx, struct GFootpathNode** next_node, struct MapCoords* next_pos, int backwards);
// win1.41 005352c0 mac 100edfa0 GFootpath::GetNearestPos(MapCoords const &, int)
struct GFootpathNode* __fastcall GetNearestPos__9GFootpathFRC9MapCoordsi(struct GFootpath* this, const void* edx, const struct MapCoords* coords, int param_3) asm("?GetNearestPos@GFootpath@@QAEPAVGFootpathNode@@ABUMapCoords@@H@Z");

// Override methods

// win1.41 00534e00 mac 100eeb80 GFootpath::_dt(void)
void __fastcall __dt__9GFootpathFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootpath@@UAEPAXI@Z");
// win1.41 00534f00 mac 100ee7a0 GFootpath::ToBeDeleted(int)
void __fastcall ToBeDeleted__9GFootpathFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GFootpath@@UAEXH@Z");
// win1.41 00534df0 mac 100ef250 GFootpath::GetDebugText(void)
char* __fastcall GetDebugText__9GFootpathFv(struct GameThing* this) asm("?GetDebugText@GFootpath@@UAEPADXZ");
// win1.41 00535f10 mac 100ecb10 GFootpath::Load(GameOSFile &)
uint32_t __fastcall Load__9GFootpathFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GFootpath@@UAEIAAVGameOSFile@@@Z");
// win1.41 00535e00 mac 100ece10 GFootpath::Save(GameOSFile &)
uint32_t __fastcall Save__9GFootpathFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GFootpath@@UAEIAAVGameOSFile@@@Z");
// win1.41 00534de0 mac 100ef210 GFootpath::GetSaveType(void)
uint32_t __fastcall GetSaveType__9GFootpathFv(struct GameThing* this) asm("?GetSaveType@GFootpath@@UAEIXZ");

DECLARE_LH_LINKED_LIST(GFootpath);

DECLARE_LH_LIST_HEAD(GFootpath);

#endif /* BW1_DECOMP_FOOTPATH_INCLUDED_H */

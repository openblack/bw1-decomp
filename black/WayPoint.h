#ifndef BW1_DECOMP_WAY_POINT_INCLUDED_H
#define BW1_DECOMP_WAY_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GameThing;

struct WayPoint
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct WayPoint) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24708 mac inlined WayPoint::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8WayPoint asm("??_R0?AVWayPoint@@@8");
// win1.41 009b9f80 mac inlined WayPoint::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8WayPoint asm("??_R1A@?0A@A@WayPoint@@8");
// win1.41 009b9f98 mac inlined WayPoint::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8WayPoint asm("??_R2WayPoint@@8");
// win1.41 009b9fb0 mac inlined WayPoint::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8WayPoint asm("??_R3WayPoint@@8");

// Override methods

// win1.41 00770b50 mac 1015fc80 WayPoint::_dt(void)
void __fastcall __dt__8WayPointFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWayPoint@@UAEPAXI@Z");
// win1.41 00770c00 mac 1015fa00 WayPoint::ToBeDeleted(int)
void __fastcall ToBeDeleted__8WayPointFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WayPoint@@UAEXH@Z");
// win1.41 00770b30 mac 1015f750 WayPoint::GetDebugText(void)
char* __fastcall GetDebugText__8WayPointFv(struct GameThing* this) asm("?GetDebugText@WayPoint@@UAEPADXZ");
// win1.41 00770b20 mac 1015f710 WayPoint::GetSaveType(void)
uint32_t __fastcall GetSaveType__8WayPointFv(struct GameThing* this) asm("?GetSaveType@WayPoint@@UAEIXZ");
// win1.41 00770b40 mac 1015f790 WayPoint::GetText(void)
const char* __fastcall GetText__8WayPointFv(struct GameThingWithPos* this) asm("?GetText@WayPoint@@UAEPBDXZ");

struct Waypoint
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x4];
};
static_assert(sizeof(struct Waypoint) == 0x2c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 0099b4a8 mac 1075f65c Waypoint::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Waypoint asm("??_R4Waypoint@@6B@");
// win1.41 0099b4ac mac 1075f664 Waypoint::`vftable'
extern const struct GameThingWithPosVftable __vt__8Waypoint asm("??_7Waypoint@@6B@");

DECLARE_LH_LIST_HEAD(Waypoint);

#endif /* BW1_DECOMP_WAY_POINT_INCLUDED_H */

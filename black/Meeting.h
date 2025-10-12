#ifndef BW1_DECOMP_MEETING_INCLUDED_H
#define BW1_DECOMP_MEETING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameThing;
struct Town;

struct Meeting
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct Meeting) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf41c8 mac inlined Meeting::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Meeting asm("??_R0?AVMeeting@@@8");
// win1.41 009b1f40 mac inlined Meeting::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Meeting asm("??_R1A@?0A@A@Meeting@@8");
// win1.41 009b1f58 mac inlined Meeting::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Meeting asm("??_R2Meeting@@8");
// win1.41 009b1f70 mac inlined Meeting::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Meeting asm("??_R3Meeting@@8");

// Override methods

// win1.41 00606160 mac inlined Meeting::_dt(void)
void __fastcall __dt__7MeetingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMeeting@@UAEPAXI@Z");
// win1.41 00606180 mac inlined Meeting::ToBeDeleted(int)
void __fastcall ToBeDeleted__7MeetingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Meeting@@UAEXH@Z");
// win1.41 00606230 mac inlined Meeting::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__7MeetingFv(struct GameThing* this) asm("?GetPlayer@Meeting@@UAEPAVGPlayer@@XZ");
// win1.41 00606150 mac inlined Meeting::RemoveDance(void)
void __fastcall RemoveDance__7MeetingFv(struct GameThing* this) asm("?RemoveDance@Meeting@@UAEXXZ");
// win1.41 00606140 mac inlined Meeting::GetTown(void)
struct Town* __fastcall GetTown__7MeetingFv(struct GameThing* this) asm("?GetTown@Meeting@@UAEPAVTown@@XZ");

#endif /* BW1_DECOMP_MEETING_INCLUDED_H */

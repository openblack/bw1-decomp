#ifndef BW1_DECOMP_CREATURE_ROOM_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "TempleRoom.h" /* For struct TempleRoom */

struct CreatureRoom
{
  struct TempleRoom super;  /* 0x0 */
  uint8_t field_0xec[0x380];
  uint32_t field_0x46c;
  uint8_t field_0x470[0x68];
};
static_assert(sizeof(struct CreatureRoom) == 0x4d8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c274c8 mac inlined CreatureRoom::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12CreatureRoom asm("??_R0?AVCreatureRoom@@@8");
// win1.41 009ba5f8 mac inlined CreatureRoom::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12CreatureRoom asm("??_R1A@?0A@A@CreatureRoom@@8");
// win1.41 009ba610 mac inlined CreatureRoom::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12CreatureRoom asm("??_R2CreatureRoom@@8");
// win1.41 009ba620 mac inlined CreatureRoom::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12CreatureRoom asm("??_R3CreatureRoom@@8");
// win1.41 0099eb2c mac 1098e5f0 CreatureRoom::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12CreatureRoom asm("??_R4CreatureRoom@@6B@");
// win1.41 0099eb30 mac 1098e5f8 CreatureRoom::`vftable'
extern const struct TempleRoomVftable __vt__12CreatureRoom asm("??_7CreatureRoom@@6B@");

// Constructors

// win1.41 007865e0 mac 10287800 CreatureRoom::CreatureRoom(void)
struct CreatureRoom* __fastcall __ct__12CreatureRoomFv(struct CreatureRoom* this) asm("??0CreatureRoom@@QAE@XZ");

// Override methods

// win1.41 007878e0 mac 10284d70 CreatureRoom::InitEngine(void)
void __fastcall InitEngine__12CreatureRoomFv(struct TempleRoom* this) asm("?InitEngine@CreatureRoom@@UAEXXZ");

#endif /* BW1_DECOMP_CREATURE_ROOM_INCLUDED_H */

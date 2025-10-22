#ifndef BW1_DECOMP_PICTURE_ROOM_INCLUDED_H
#define BW1_DECOMP_PICTURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "TempleRoom.h" /* For struct TempleRoom */

struct PictureRoomBase
{
  struct TempleRoom super;  /* 0x0 */
  uint8_t field_0xec[0x74];
};
static_assert(sizeof(struct PictureRoomBase) == 0x160, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24e78 mac inlined PictureRoomBase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15PictureRoomBase asm("??_R0?AVPictureRoomBase@@@8");
// win1.41 009ba590 mac inlined PictureRoomBase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15PictureRoomBase asm("??_R1A@?0A@A@PictureRoomBase@@8");
// win1.41 009baac0 mac inlined PictureRoomBase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15PictureRoomBase asm("??_R2PictureRoomBase@@8");
// win1.41 009baad0 mac inlined PictureRoomBase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15PictureRoomBase asm("??_R3PictureRoomBase@@8");
// win1.41 0099ed74 mac 10746f04 PictureRoomBase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15PictureRoomBase asm("??_R4PictureRoomBase@@6B@");
// win1.41 0099ed78 mac 10746f0c PictureRoomBase::`vftable'
extern const struct TempleRoomVftable __vt__15PictureRoomBase asm("??_7PictureRoomBase@@6B@");

// Constructors

// win1.41 0078f110 mac 10114a00 PictureRoomBase::PictureRoomBase(char const *)
struct TempleRoom* __fastcall __ct__15PictureRoomBaseFPCc(struct PictureRoomBase* this, const void* edx, const char* param_1) asm("??0PictureRoomBase@@QAE@PBD@Z");

#endif /* BW1_DECOMP_PICTURE_ROOM_INCLUDED_H */

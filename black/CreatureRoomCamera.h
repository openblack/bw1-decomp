#ifndef BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "InnerCamera.h" /* For struct InnerCamera */

// Forward Declares

struct InnerRoom;
struct LHCoord;

struct CreatureRoomCamera
{
  struct InnerCamera super;  /* 0x0 */
  uint8_t field_0x46c[0x58];
};
static_assert(sizeof(struct CreatureRoomCamera) == 0x4c4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c275c8 mac inlined CreatureRoomCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18CreatureRoomCamera asm("??_R0?AUCreatureRoomCamera@@@8");
// win1.41 009ba6b8 mac inlined CreatureRoomCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18CreatureRoomCamera asm("??_R1A@?0A@A@CreatureRoomCamera@@8");
// win1.41 009ba6d0 mac inlined CreatureRoomCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18CreatureRoomCamera asm("??_R2CreatureRoomCamera@@8");
// win1.41 009ba6e0 mac inlined CreatureRoomCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18CreatureRoomCamera asm("??_R3CreatureRoomCamera@@8");
// win1.41 0099eb88 mac 1098e6ec CreatureRoomCamera::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18CreatureRoomCamera asm("??_R4CreatureRoomCamera@@6B@");
// win1.41 0099eb8c mac 1098e6f4 CreatureRoomCamera::`vftable'
extern const struct InnerCameraVftable __vt__18CreatureRoomCamera asm("??_7CreatureRoomCamera@@6B@");

// Override methods

// win1.41 00789da0 mac 10288e30 CreatureRoomCamera::Init(char *)
void __fastcall Init__18CreatureRoomCameraFPc(struct InnerCamera* this, const void* edx, char* param_1) asm("?Init@CreatureRoomCamera@@UAEXPAD@Z");
// win1.41 00789e00 mac 10288de0 CreatureRoomCamera::Close(void)
void __fastcall Close__18CreatureRoomCameraFv(struct InnerCamera* this) asm("?Close@CreatureRoomCamera@@UAEXXZ");
// win1.41 00789e10 mac 10288d70 CreatureRoomCamera::Update(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall Update__18CreatureRoomCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?Update@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");
// win1.41 0078a3e0 mac 10287ad0 CreatureRoomCamera::UpdateMain(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall UpdateMain__18CreatureRoomCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?UpdateMain@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");
// win1.41 00789e40 mac 10288c00 CreatureRoomCamera::UpdateState(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall UpdateState__18CreatureRoomCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?UpdateState@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");

#endif /* BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H */

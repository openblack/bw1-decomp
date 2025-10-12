#ifndef BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H
#define BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "PictureRoom.h" /* For struct PictureRoomBase */

// Forward Declares

struct TempleRoom;

struct GameOptionsRoom
{
  struct PictureRoomBase super;  /* 0x0 */
};
static_assert(sizeof(struct GameOptionsRoom) == 0x160, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c282c0 mac inlined GameOptionsRoom::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GameOptionsRoom asm("??_R0?AVGameOptionsRoom@@@8");
// win1.41 009ba758 mac inlined GameOptionsRoom::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GameOptionsRoom asm("??_R1A@?0A@A@GameOptionsRoom@@8");
// win1.41 009ba770 mac inlined GameOptionsRoom::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GameOptionsRoom asm("??_R2GameOptionsRoom@@8");
// win1.41 009ba780 mac inlined GameOptionsRoom::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GameOptionsRoom asm("??_R3GameOptionsRoom@@8");

// Override methods

// win1.41 0078d8f0 mac 102ffdb0 GameOptionsRoom::IsAvailable(void)
bool __fastcall IsAvailable__15GameOptionsRoomFv(struct TempleRoom* this) asm("?IsAvailable@GameOptionsRoom@@UAE_NXZ");
// win1.41 0079a230 mac inlined GameOptionsRoom::DrawAdditional(bool)
void __fastcall DrawAdditional__15GameOptionsRoomFb(struct TempleRoom* this, const void* edx, bool param_1) asm("?DrawAdditional@GameOptionsRoom@@UAEX_N@Z");
// win1.41 00799f80 mac inlined GameOptionsRoom::PreDraw(void)
void __fastcall PreDraw__15GameOptionsRoomFv(struct TempleRoom* this) asm("?PreDraw@GameOptionsRoom@@UAEXXZ");
// win1.41 0078d810 mac 10300060 GameOptionsRoom::Draw(void)
void __fastcall Draw__15GameOptionsRoomFv(struct TempleRoom* this) asm("?Draw@GameOptionsRoom@@UAEXXZ");
// win1.41 00799ed0 mac inlined GameOptionsRoom::DrawHand(void)
void __fastcall DrawHand__15GameOptionsRoomFv(struct TempleRoom* this) asm("?DrawHand@GameOptionsRoom@@UAEXXZ");
// win1.41 0078d860 mac 102ffe70 GameOptionsRoom::Update(void)
void __fastcall Update__15GameOptionsRoomFv(struct TempleRoom* this) asm("?Update@GameOptionsRoom@@UAEXXZ");
// win1.41 0078d820 mac 102fffd0 GameOptionsRoom::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES)
void __fastcall UpdateMouse__15GameOptionsRoomF7LHCoord23INTERFACE_MESSAGE_TYPES(struct TempleRoom* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2) asm("?UpdateMouse@GameOptionsRoom@@UAEXULHCoord@@W4INTERFACE_MESSAGE_TYPES@@@Z");
// win1.41 0078d840 mac 102fff70 GameOptionsRoom::UpdateKeyboard(LH_KEY, unsigned short)
void __fastcall UpdateKeyboard__15GameOptionsRoomF6LH_KEYUs(struct TempleRoom* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@GameOptionsRoom@@UAEXW4LH_KEY@@G@Z");

#endif /* BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H */

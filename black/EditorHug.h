#ifndef BW1_DECOMP_EDITOR_HUG_INCLUDED_H
#define BW1_DECOMP_EDITOR_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct MouseInput;

struct EditorHug
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct EditorHug) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9138 mac inlined EditorHug::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9EditorHug asm("??_R0?AVEditorHug@@@8");
// win1.41 009abb68 mac inlined EditorHug::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9EditorHug asm("??_R1A@?0A@A@EditorHug@@8");
// win1.41 009abb80 mac inlined EditorHug::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9EditorHug asm("??_R2EditorHug@@8");
// win1.41 009abb90 mac inlined EditorHug::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9EditorHug asm("??_R3EditorHug@@8");

// Override methods

// win1.41 0051f180 mac inlined EditorHug::ProcessTurn(void)
int __fastcall ProcessTurn__9EditorHugFv(struct Prss* this) asm("?ProcessTurn@EditorHug@@UAEHXZ");
// win1.41 0051f200 mac inlined EditorHug::Display(void)
void __fastcall Display__9EditorHugFv(struct Prss* this) asm("?Display@EditorHug@@UAEXXZ");
// win1.41 0060db30 mac inlined EditorHug::PrssKey(LH_KEY, unsigned short)
void __fastcall PrssKey__9EditorHugF6LH_KEYUs(struct Prss* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?PrssKey@EditorHug@@UAEXW4LH_KEY@@G@Z");
// win1.41 0051f3b0 mac inlined EditorHug::PrssMouse(MouseInput *)
void __fastcall PrssMouse__9EditorHugFP10MouseInput(struct Prss* this, const void* edx, struct MouseInput* param_1) asm("?PrssMouse@EditorHug@@UAEXPAUMouseInput@@@Z");
// win1.41 0051f5b0 mac inlined EditorHug::ClickFunction(int, int, int)
void __fastcall ClickFunction__9EditorHugFiii(struct Prss* this, const void* edx, int param_1, int param_2, int param_3) asm("?ClickFunction@EditorHug@@UAEXHHH@Z");

#endif /* BW1_DECOMP_EDITOR_HUG_INCLUDED_H */

#ifndef BW1_DECOMP_START_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_START_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupList;
struct SetupStaticText;

struct StartGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* text;  /* 0x10 */
  struct SetupList* list;
  struct SetupButton* button;
  struct SetupBigButton* big_button;
};
static_assert(sizeof(struct StartGameBox) == 0x20, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea4d8 mac inlined StartGameBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12StartGameBox asm("??_R0?AVStartGameBox@@@8");
// win1.41 009acce0 mac inlined StartGameBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12StartGameBox asm("??_R1A@?0A@A@StartGameBox@@8");
// win1.41 009accf8 mac inlined StartGameBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12StartGameBox asm("??_R2StartGameBox@@8");
// win1.41 009acd08 mac inlined StartGameBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12StartGameBox asm("??_R3StartGameBox@@8");
// win1.41 008de998 mac 109ed694 StartGameBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12StartGameBox asm("??_R4StartGameBox@@6B@");
// win1.41 008de99c mac 109ed69c StartGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__12StartGameBox asm("??_7StartGameBox@@6B@");

// Override methods

// win1.41 005445b0 mac 105bae70 StartGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__12StartGameBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@StartGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00544730 mac 105bae10 StartGameBox::Destroy(void)
void __fastcall Destroy__12StartGameBoxFv(struct DialogBoxBase* this) asm("?Destroy@StartGameBox@@UAEXXZ");
// win1.41 00544740 mac 105bad90 StartGameBox::InitControls(void)
void __fastcall InitControls__12StartGameBoxFv(struct DialogBoxBase* this) asm("?InitControls@StartGameBox@@UAEXXZ");

#endif /* BW1_DECOMP_START_GAME_BOX_INCLUDED_H */

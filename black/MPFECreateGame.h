#ifndef BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MPFECreateGame
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECreateGame) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4ad8 mac inlined MPFECreateGame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14MPFECreateGame asm("??_R0?AVMPFECreateGame@@@8");
// win1.41 009b2548 mac inlined MPFECreateGame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14MPFECreateGame asm("??_R1A@?0A@A@MPFECreateGame@@8");
// win1.41 009b2560 mac inlined MPFECreateGame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14MPFECreateGame asm("??_R2MPFECreateGame@@8");
// win1.41 009b2570 mac inlined MPFECreateGame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14MPFECreateGame asm("??_R3MPFECreateGame@@8");

// Override methods

// win1.41 0062a630 mac 1039bd40 MPFECreateGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__14MPFECreateGameFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MPFECreateGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0062ab00 mac 1039bd00 MPFECreateGame::Destroy(void)
void __fastcall Destroy__14MPFECreateGameFv(struct DialogBoxBase* this) asm("?Destroy@MPFECreateGame@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H */

#ifndef BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MPFEFindGame
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEFindGame) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd8f0 mac inlined MPFEFindGame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12MPFEFindGame asm("??_R0?AVMPFEFindGame@@@8");
// win1.41 009b28c0 mac inlined MPFEFindGame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12MPFEFindGame asm("??_R1A@?0A@A@MPFEFindGame@@8");
// win1.41 009b28d8 mac inlined MPFEFindGame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12MPFEFindGame asm("??_R2MPFEFindGame@@8");
// win1.41 009b28e8 mac inlined MPFEFindGame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12MPFEFindGame asm("??_R3MPFEFindGame@@8");

// Override methods

// win1.41 0062f650 mac 103a5d40 MPFEFindGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__12MPFEFindGameFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MPFEFindGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0062f8c0 mac 103a5d10 MPFEFindGame::Destroy(void)
void __fastcall Destroy__12MPFEFindGameFv(struct DialogBoxBase* this) asm("?Destroy@MPFEFindGame@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H */

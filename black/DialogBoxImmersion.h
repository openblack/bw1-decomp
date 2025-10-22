#ifndef BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupStaticText;

struct DialogBoxImmersion
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* field_0x10;
  struct SetupStaticText* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupBigButton* field_0x1c;
  struct SetupButton* field_0x20;
  struct SetupBigButton* field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
};
static_assert(sizeof(struct DialogBoxImmersion) == 0x30, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8da0 mac inlined DialogBoxImmersion::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18DialogBoxImmersion asm("??_R0?AVDialogBoxImmersion@@@8");
// win1.41 009ab9f8 mac inlined DialogBoxImmersion::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18DialogBoxImmersion asm("??_R1A@?0A@A@DialogBoxImmersion@@8");
// win1.41 009aba10 mac inlined DialogBoxImmersion::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18DialogBoxImmersion asm("??_R2DialogBoxImmersion@@8");
// win1.41 009aba20 mac inlined DialogBoxImmersion::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18DialogBoxImmersion asm("??_R3DialogBoxImmersion@@8");
// win1.41 008d8640 mac 109990a8 DialogBoxImmersion::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18DialogBoxImmersion asm("??_R4DialogBoxImmersion@@6B@");
// win1.41 008d8644 mac 109990b0 DialogBoxImmersion::`vftable'
extern const struct DialogBoxBaseVftable __vt__18DialogBoxImmersion asm("??_7DialogBoxImmersion@@6B@");

// Constructors

// win1.41 005149d0 mac inlined DialogBoxImmersion::DialogBoxImmersion(void)
struct DialogBoxImmersion* __fastcall __ct__18DialogBoxImmersion(struct DialogBoxImmersion* this) asm("??0DialogBoxImmersion@@QAE@XZ");

// Override methods

// win1.41 00514a80 mac 102b39f0 DialogBoxImmersion::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__18DialogBoxImmersionFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@DialogBoxImmersion@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00514d70 mac 102b3990 DialogBoxImmersion::Destroy(void)
void __fastcall Destroy__18DialogBoxImmersionFv(struct DialogBoxBase* this) asm("?Destroy@DialogBoxImmersion@@UAEXXZ");
// win1.41 00514d80 mac 102b3920 DialogBoxImmersion::InitControls(void)
void __fastcall InitControls__18DialogBoxImmersionFv(struct DialogBoxBase* this) asm("?InitControls@DialogBoxImmersion@@UAEXXZ");

#endif /* BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H */

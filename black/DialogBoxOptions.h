#ifndef BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

#ifdef __cplusplus

// Forward Declares

class DialogBoxImmersion;
class MiniDialogBoxOptions;
class SetupBigButton;
class SetupButton;
class SetupCheckBox;
class SetupSlider;

// win1.41 00be8d20 mac inlined DialogBoxOptions::`RTTI Type Descriptor'
// win1.41 009ab9a8 mac inlined DialogBoxOptions::`RTTI Base Class Descriptor'
// win1.41 009ab9c0 mac inlined DialogBoxOptions::`RTTI Base Class Array'
// win1.41 009ab9d0 mac inlined DialogBoxOptions::`RTTI Class Hierarchy Descriptor'
// win1.41 008d8618 mac 109990e8 DialogBoxOptions::`RTTI Complete Object Locator'
// win1.41 008d861c mac 109990f0 DialogBoxOptions::`vftable'
class DialogBoxOptions: public DialogBoxBase
{
public:
    SetupButton* field_0x10;
    SetupBigButton* field_0x14;
    SetupBigButton* field_0x18;
    SetupButton* field_0x1c;
    SetupBigButton* field_0x20;
    SetupBigButton* field_0x24;
    SetupBigButton* field_0x28;
    SetupBigButton* field_0x2c;
    SetupBigButton* field_0x30;
    SetupCheckBox* field_0x34;
    SetupCheckBox* field_0x38;
    SetupCheckBox* field_0x3c;
    SetupSlider* field_0x40;
    SetupBigButton* field_0x44;
    int field_0x48;
    int field_0x4c;
    int field_0x50;
    uint32_t* field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    MiniDialogBoxOptions* mini; /* 0x60 */
    DialogBoxImmersion* immersion;

    // Override methods

    // win1.41 00513860 mac 102b5130 DialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00513da0 mac 102b50c0 DialogBoxOptions::Destroy(void)
    virtual void Destroy();
    // win1.41 00513830 mac 102b5900 DialogBoxOptions::CanESCOut(void)
    virtual bool CanESCOut();
    // win1.41 00513dc0 mac 102b4ff0 DialogBoxOptions::InitControls(void)
    virtual void InitControls();

    // Constructors

    // win1.41 00513810 mac 102b5740 DialogBoxOptions::DialogBoxOptions(void)
    DialogBoxOptions();
};

#else // __cplusplus

// Forward Declares

struct DialogBoxImmersion;
struct MiniDialogBoxOptions;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;

struct DialogBoxOptions
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupButton* field_0x10;
  struct SetupBigButton* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupButton* field_0x1c;
  struct SetupBigButton* field_0x20;
  struct SetupBigButton* field_0x24;
  struct SetupBigButton* field_0x28;
  struct SetupBigButton* field_0x2c;
  struct SetupBigButton* field_0x30;
  struct SetupCheckBox* field_0x34;
  struct SetupCheckBox* field_0x38;
  struct SetupCheckBox* field_0x3c;
  struct SetupSlider* field_0x40;
  struct SetupBigButton* field_0x44;
  int field_0x48;
  int field_0x4c;
  int field_0x50;
  uint32_t* field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct MiniDialogBoxOptions* mini;  /* 0x60 */
  struct DialogBoxImmersion* immersion;
};
static_assert(sizeof(struct DialogBoxOptions) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8d20 mac inlined DialogBoxOptions::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16DialogBoxOptions asm("??_R0?AVDialogBoxOptions@@@8");
// win1.41 009ab9a8 mac inlined DialogBoxOptions::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16DialogBoxOptions asm("??_R1A@?0A@A@DialogBoxOptions@@8");
// win1.41 009ab9c0 mac inlined DialogBoxOptions::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16DialogBoxOptions asm("??_R2DialogBoxOptions@@8");
// win1.41 009ab9d0 mac inlined DialogBoxOptions::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16DialogBoxOptions asm("??_R3DialogBoxOptions@@8");
// win1.41 008d8618 mac 109990e8 DialogBoxOptions::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16DialogBoxOptions asm("??_R4DialogBoxOptions@@6B@");
// win1.41 008d861c mac 109990f0 DialogBoxOptions::`vftable'
extern const struct DialogBoxBaseVftable __vt__16DialogBoxOptions asm("??_7DialogBoxOptions@@6B@");

// Constructors

// win1.41 00513810 mac 102b5740 DialogBoxOptions::DialogBoxOptions(void)
struct DialogBoxOptions* __fastcall __ct__16DialogBoxOptionsFv(struct DialogBoxOptions* this) asm("??0DialogBoxOptions@@QAE@XZ");

// Override methods

// win1.41 00513860 mac 102b5130 DialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__16DialogBoxOptionsFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@DialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00513da0 mac 102b50c0 DialogBoxOptions::Destroy(void)
void __fastcall Destroy__16DialogBoxOptionsFv(struct DialogBoxBase* this) asm("?Destroy@DialogBoxOptions@@UAEXXZ");
// win1.41 00513830 mac 102b5900 DialogBoxOptions::CanESCOut(void)
bool __fastcall CanESCOut__16DialogBoxOptionsFv(struct DialogBoxBase* this) asm("?CanESCOut@DialogBoxOptions@@UAE_NXZ");
// win1.41 00513dc0 mac 102b4ff0 DialogBoxOptions::InitControls(void)
void __fastcall InitControls__16DialogBoxOptionsFv(struct DialogBoxBase* this) asm("?InitControls@DialogBoxOptions@@UAEXXZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H */

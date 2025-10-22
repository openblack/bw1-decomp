#ifndef BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct DialogBoxBase;
struct SetupBox;
struct SetupControl;

struct DialogBoxBaseVftable
{
  void (__fastcall* Init)(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5));  /* 0x0 */
  void (__fastcall* Destroy)(struct DialogBoxBase* this);
  void (__fastcall* InitSubDialogs)(struct DialogBoxBase* this);
  void (__fastcall* Show)(struct DialogBoxBase* this);
  void (__fastcall* CloseNotification)(struct DialogBoxBase* this);  /* 0x10 */
  bool (__fastcall* WantsKeyControl)(struct DialogBoxBase* this);
  bool (__fastcall* WantsMouseControl)(struct DialogBoxBase* this);
  bool (__fastcall* CanESCOut)(struct DialogBoxBase* this);
  void (__fastcall* InitControls)(struct DialogBoxBase* this);  /* 0x20 */
};
static_assert(sizeof(struct DialogBoxBaseVftable) == 0x24, "Data type is of wrong size");

struct DialogBoxBase
{
  struct DialogBoxBaseVftable* vftable;  /* 0x0 */
  struct SetupBox* setup_box;
  uint8_t field_0x8;
  uint8_t field_0x9;
  uint8_t field_0xa;
  uint8_t field_0xb;
  struct DialogBoxBase* next;
};
static_assert(sizeof(struct DialogBoxBase) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8be0 mac inlined DialogBoxBase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13DialogBoxBase asm("??_R0?AVDialogBoxBase@@@8");
// win1.41 009ab8c8 mac inlined DialogBoxBase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13DialogBoxBase asm("??_R1A@?0A@A@DialogBoxBase@@8");
// win1.41 009ab92c mac inlined DialogBoxBase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13DialogBoxBase asm("??_R2DialogBoxBase@@8");
// win1.41 009ab938 mac inlined DialogBoxBase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13DialogBoxBase asm("??_R3DialogBoxBase@@8");

// Static methods

// win1.41 005136e0 mac 102b1ff0 DialogBoxBase::HideAll(void)
void __stdcall HideAll__13DialogBoxBaseFv(void);

// Constructors

// win1.41 005133a0 mac 102b2750 DialogBoxBase::DialogBoxBase(void)
struct DialogBoxBase* __fastcall __ct__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("??0DialogBoxBase@@QAE@XZ");

// Override methods

// win1.41 00513400 mac 102b24c0 DialogBoxBase::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@DialogBoxBase@@UAEXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z");
// win1.41 00513590 mac 102b23a0 DialogBoxBase::Destroy(void)
void __fastcall Destroy__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?Destroy@DialogBoxBase@@UAEXXZ");
// win1.41 005127d0 mac 100fd590 DialogBoxBase::InitSubDialogs(void)
void __fastcall InitSubDialogs__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?InitSubDialogs@DialogBoxBase@@UAEXXZ");
// win1.41 005135f0 mac 102b22e0 DialogBoxBase::Show(void)
void __fastcall Show__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?Show@DialogBoxBase@@UAEXXZ");
// win1.41 005127e0 mac 100fd5d0 DialogBoxBase::CloseNotification(void)
bool __fastcall CloseNotification__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?CloseNotification@DialogBoxBase@@UAE_NXZ");
// win1.41 005127f0 mac 10504080 DialogBoxBase::WantsKeyControl(void)
bool __fastcall WantsKeyControl__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?WantsKeyControl@DialogBoxBase@@UAE_NXZ");
// win1.41 00512800 mac 100fd610 DialogBoxBase::WantsMouseControl(void)
bool __fastcall WantsMouseControl__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?WantsMouseControl@DialogBoxBase@@UAE_NXZ");
// win1.41 00512810 mac 103c4090 DialogBoxBase::CanESCOut(void)
void __fastcall CanESCOut__13DialogBoxBaseFv(struct DialogBoxBase* this) asm("?CanESCOut@DialogBoxBase@@UAEXXZ");

#endif /* BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H */

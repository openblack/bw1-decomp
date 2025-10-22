#ifndef BW1_DECOMP_MPFE_LOGIN_INCLUDED_H
#define BW1_DECOMP_MPFE_LOGIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "MPFEDatabase.h" /* For struct MPFEDatabase */

// Forward Declares

struct SetupBigButton;
struct SetupEdit;
struct SetupStaticText;

struct MPFELogin
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupBigButton* left_arrow_button;  /* 0x10 */
  struct SetupBigButton* right_arrow_button;
  struct SetupEdit* edit;
  struct SetupEdit* edit2;
  struct SetupStaticText* text1;  /* 0x20 */
  struct SetupStaticText* text2;
  struct SetupStaticText* text3;
  struct MPFEDatabase database;
  void* field_0x38;
  char field_0x3c[0x20];
};
static_assert(sizeof(struct MPFELogin) == 0x5c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfda80 mac inlined MPFELogin::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9MPFELogin asm("??_R0?AVMPFELogin@@@8");
// win1.41 009b2af0 mac inlined MPFELogin::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9MPFELogin asm("??_R1A@?0A@A@MPFELogin@@8");
// win1.41 009b2b08 mac inlined MPFELogin::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9MPFELogin asm("??_R2MPFELogin@@8");
// win1.41 009b2b18 mac inlined MPFELogin::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9MPFELogin asm("??_R3MPFELogin@@8");
// win1.41 00930964 mac 109a3a28 MPFELogin::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9MPFELogin asm("??_R4MPFELogin@@6B@");
// win1.41 00930968 mac 109a3a30 MPFELogin::`vftable'
extern const struct DialogBoxBaseVftable __vt__9MPFELogin asm("??_7MPFELogin@@6B@");

// Constructors

// win1.41 00630580 mac 103a80e0 MPFELogin::MPFELogin(void)
struct MPFELogin* __fastcall __ct__9MPFELoginFv(struct MPFELogin* this) asm("??0MPFELogin@@QAE@XZ");

// Override methods

// win1.41 006307f0 mac 103a7750 MPFELogin::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__9MPFELoginFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MPFELogin@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00630d60 mac 103a7720 MPFELogin::Destroy(void)
void __fastcall Destroy__9MPFELoginFv(struct DialogBoxBase* this) asm("?Destroy@MPFELogin@@UAEXXZ");
// win1.41 00630610 mac 103a7d90 MPFELogin::InitControls(void)
void __fastcall InitControls__9MPFELoginFv(struct DialogBoxBase* this) asm("?InitControls@MPFELogin@@UAEXXZ");

struct MPFELoginDatabase
{
  struct MPFEDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFELoginDatabase) == 0xc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdb38 mac inlined MPFELoginDatabase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17MPFELoginDatabase asm("??_R0?AVMPFELoginDatabase@@@8");
// win1.41 009b2b40 mac inlined MPFELoginDatabase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17MPFELoginDatabase asm("??_R1A@?0A@A@MPFELoginDatabase@@8");
// win1.41 009b2b58 mac inlined MPFELoginDatabase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17MPFELoginDatabase asm("??_R2MPFELoginDatabase@@8");
// win1.41 009b2b68 mac inlined MPFELoginDatabase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17MPFELoginDatabase asm("??_R3MPFELoginDatabase@@8");
// win1.41 0093098c mac 109a39c4 MPFELoginDatabase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17MPFELoginDatabase asm("??_R4MPFELoginDatabase@@6B@");
// win1.41 00930990 mac 109a39cc MPFELoginDatabase::`vftable'
extern const struct MPFEDatabaseVftable __vt__17MPFELoginDatabase asm("??_7MPFELoginDatabase@@6B@");

// Constructors

// win1.41 00631050 mac 103a7490 MPFELoginDatabase::MPFELoginDatabase(void)
struct MPFELoginDatabase* __fastcall __ct__17MPFELoginDatabaseFv(struct MPFELoginDatabase* this) asm("??0MPFELoginDatabase@@QAE@XZ");

// win1.41 00630530 mac 103a8100 __sinit_MPFELogin_cpp
void __cdecl __sinit_MPFELogin_cpp(void);

#endif /* BW1_DECOMP_MPFE_LOGIN_INCLUDED_H */

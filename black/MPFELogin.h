#ifndef BW1_DECOMP_MPFE_LOGIN_INCLUDED_H
#define BW1_DECOMP_MPFE_LOGIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

// win1.41 00930964 mac 109a3a28 MPFELogin::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9MPFELogin asm("??_R4MPFELogin@@6B@");

// win1.41 00930968 mac 109a3a30 MPFELogin::`vftable'
extern const struct DialogBoxBaseVftable __vt__9MPFELogin asm("??_7MPFELogin@@6B@");

// Constructors

// win1.41 00630580 mac 103a80e0 MPFELogin::MPFELogin(void)
struct MPFELogin* __fastcall __ct__9MPFELoginFv(struct MPFELogin* this);

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

// win1.41 0093098c mac 109a39c4 MPFELoginDatabase::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17MPFELoginDatabase asm("??_R4MPFELoginDatabase@@6B@");

// win1.41 00930990 mac 109a39cc MPFELoginDatabase::`vftable'
extern const struct MPFEDatabaseVftable __vt__17MPFELoginDatabase asm("??_7MPFELoginDatabase@@6B@");

// Constructors

// win1.41 00631050 mac 103a7490 MPFELoginDatabase::MPFELoginDatabase(void)
struct MPFELoginDatabase* __fastcall __ct__17MPFELoginDatabaseFv(struct MPFELoginDatabase* this);

// win1.41 00630530 mac 103a8100 __sinit_MPFELogin_cpp
void __cdecl __sinit_MPFELogin_cpp(void);

#endif /* BW1_DECOMP_MPFE_LOGIN_INCLUDED_H */

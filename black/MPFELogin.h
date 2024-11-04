#ifndef BW1_DECOMP_MPFE_LOGIN_INCLUDED_H
#define BW1_DECOMP_MPFE_LOGIN_INCLUDED_H

#include <assert.h> /* For static_assert */

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

static struct DialogBoxBaseVftable* __vt__9MPFELogin = (struct DialogBoxBaseVftable*)0x00930968;

// Constructors

// win1.41 00630580 mac 103a80e0 MPFELogin::MPFELogin(void)
struct MPFELogin* __fastcall __ct__9MPFELoginFv(struct MPFELogin* this);

struct MPFELoginDatabase
{
  struct MPFEDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFELoginDatabase) == 0xc, "Data type is of wrong size");

static struct MPFEDatabaseVftable* __vt__17MPFELoginDatabase = (struct MPFEDatabaseVftable*)0x00930990;

// Constructors

// win1.41 00631050 mac 103a7490 MPFELoginDatabase::MPFELoginDatabase(void)
struct MPFELoginDatabase* __fastcall __ct__17MPFELoginDatabaseFv(struct MPFELoginDatabase* this);

// win1.41 00630530 mac 103a8100 __sinit_MPFELogin_cpp
void __cdecl __sinit_MPFELogin_cpp(void);

#endif /* BW1_DECOMP_MPFE_LOGIN_INCLUDED_H */

#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct MPFEDatabase;

struct MPFEDatabaseVftable
{
  void (__fastcall* DatabaseError)(struct MPFEDatabase* this);  /* 0x0 */
  void (__fastcall* DatabaseComplete)(struct MPFEDatabase* this);
};
static_assert(sizeof(struct MPFEDatabaseVftable) == 0x8, "Data type is of wrong size");

struct MPFEDatabase
{
  struct MPFEDatabaseVftable* vftable;  /* 0x0 */
  float progress_percentage;
  bool32_t populated;
};
static_assert(sizeof(struct MPFEDatabase) == 0xc, "Data type is of wrong size");

// win1.41 00930868 mac 109a37c0 MPFEDatabase::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12MPFEDatabase asm("??_R4MPFEDatabase@@6B@");

// win1.41 0093086c mac 109a37c8 MPFEDatabase::`vftable'
extern const struct MPFEDatabaseVftable __vt__12MPFEDatabase asm("??_7MPFEDatabase@@6B@");

// Constructors

// win1.41 0062e100 mac 103a3ce0 MPFEDatabase::MPFEDatabase(void)
struct MPFEDatabase* __fastcall __ct__12MPFEDatabaseFv(struct MPFEDatabase* this);

// Override methods

// win1.41 0062e4f0 mac 103a35b0 MPFEDatabase::DatabaseError(void)
void __fastcall DatabaseError__12MPFEDatabaseFv(struct MPFEDatabase* this);
// win1.41 0062e510 mac 103a3520 MPFEDatabase::DatabaseComplete(void)
void __fastcall DatabaseComplete__12MPFEDatabaseFv(struct MPFEDatabase* this);

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */

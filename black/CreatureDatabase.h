#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

struct CreatureDatabase
{
  struct MultiplayerDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDatabase) == 0x10, "Data type is of wrong size");

// win1.41 009309fc mac 10745cbc CreatureDatabase::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16CreatureDatabase asm("??_R4CreatureDatabase@@6B@");

// win1.41 00930a00 mac 10745cc4 CreatureDatabase::`vftable'
extern const struct MultiplayerDatabaseVftable __vt__16CreatureDatabase asm("??_7CreatureDatabase@@6B@");

// Constructors

// win1.41 006336b0 mac 10109d30 CreatureDatabase::CreatureDatabase(void)
struct CreatureDatabase* __fastcall __ct__16CreatureDatabaseFv(struct CreatureDatabase* this);

// Override methods

// win1.41 006336d0 mac 10109aa0 CreatureDatabase::Send(void)
uint32_t __fastcall Send__16CreatureDatabaseFv(struct MultiplayerDatabase* this) asm("?Send@CreatureDatabase@@UAEIXZ");

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */

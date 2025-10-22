#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

struct CreatureDatabase
{
  struct MultiplayerDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDatabase) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdd98 mac inlined CreatureDatabase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16CreatureDatabase asm("??_R0?AVCreatureDatabase@@@8");
// win1.41 009b2d68 mac inlined CreatureDatabase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16CreatureDatabase asm("??_R1A@?0A@A@CreatureDatabase@@8");
// win1.41 009b2d80 mac inlined CreatureDatabase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16CreatureDatabase asm("??_R2CreatureDatabase@@8");
// win1.41 009b2d90 mac inlined CreatureDatabase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16CreatureDatabase asm("??_R3CreatureDatabase@@8");
// win1.41 009309fc mac 10745cbc CreatureDatabase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16CreatureDatabase asm("??_R4CreatureDatabase@@6B@");
// win1.41 00930a00 mac 10745cc4 CreatureDatabase::`vftable'
extern const struct MultiplayerDatabaseVftable __vt__16CreatureDatabase asm("??_7CreatureDatabase@@6B@");

// Constructors

// win1.41 006336b0 mac 10109d30 CreatureDatabase::CreatureDatabase(void)
struct CreatureDatabase* __fastcall __ct__16CreatureDatabaseFv(struct CreatureDatabase* this) asm("??0CreatureDatabase@@QAE@XZ");

// Override methods

// win1.41 006336d0 mac 10109aa0 CreatureDatabase::Send(void)
uint32_t __fastcall Send__16CreatureDatabaseFv(struct MultiplayerDatabase* this) asm("?Send@CreatureDatabase@@UAEIXZ");

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */

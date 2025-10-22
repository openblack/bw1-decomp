#ifndef BW1_DECOMP_STATS_DATABASE_INCLUDED_H
#define BW1_DECOMP_STATS_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

struct StatsDatabase
{
  struct MultiplayerDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct StatsDatabase) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfddd8 mac inlined StatsDatabase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13StatsDatabase asm("??_R0?AVStatsDatabase@@@8");
// win1.41 009b2db8 mac inlined StatsDatabase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13StatsDatabase asm("??_R1A@?0A@A@StatsDatabase@@8");
// win1.41 009b2dd0 mac inlined StatsDatabase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13StatsDatabase asm("??_R2StatsDatabase@@8");
// win1.41 009b2de0 mac inlined StatsDatabase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13StatsDatabase asm("??_R3StatsDatabase@@8");
// win1.41 00930a08 mac 10745c98 StatsDatabase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13StatsDatabase asm("??_R4StatsDatabase@@6B@");
// win1.41 00930a0c mac 10745ca0 StatsDatabase::`vftable'
extern const struct MultiplayerDatabaseVftable __vt__13StatsDatabase asm("??_7StatsDatabase@@6B@");

// Constructors

// win1.41 006338d0 mac 10109a30 StatsDatabase::StatsDatabase(void)
struct StatsDatabase* __fastcall __ct__13StatsDatabaseFv(struct StatsDatabase* this) asm("??0StatsDatabase@@QAE@XZ");

// Override methods

// win1.41 006338f0 mac 10109920 StatsDatabase::Send(void)
uint32_t __fastcall Send__13StatsDatabaseFv(struct MultiplayerDatabase* this) asm("?Send@StatsDatabase@@UAEIXZ");

#endif /* BW1_DECOMP_STATS_DATABASE_INCLUDED_H */

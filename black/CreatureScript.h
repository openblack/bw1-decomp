#ifndef BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SubArgument.h" /* For struct SubArgument */

// Forward Declares

struct CreatureSubActionAgenda;
struct LHPoint;
struct Object;

struct SubArgumentInteger
{
  struct SubArgument super;  /* 0x0 */
};
static_assert(sizeof(struct SubArgumentInteger) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 004ff6f0 mac 10290fd0 SubArgumentInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
void __fastcall SetArgumentOfSubActionAgenda__18SubArgumentIntegerFP23CreatureSubActionAgendaUl(struct SubArgument* this, const void* edx, struct CreatureSubActionAgenda* param_1, uint32_t param_2) asm("?SetArgumentOfSubActionAgenda@SubArgumentInteger@@UAEXPAVCreatureSubActionAgenda@@I@Z");

struct SubArgumentObjectAndInteger
{
  struct SubArgument super;  /* 0x0 */
};
static_assert(sizeof(struct SubArgumentObjectAndInteger) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 004ff6d0 mac 10291050 SubArgumentObjectAndInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
void __fastcall SetArgumentOfSubActionAgenda__27SubArgumentObjectAndIntegerFP23CreatureSubActionAgendaUl(struct SubArgument* this, const void* edx, struct CreatureSubActionAgenda* param_1, uint32_t param_2) asm("?SetArgumentOfSubActionAgenda@SubArgumentObjectAndInteger@@UAEXPAVCreatureSubActionAgenda@@I@Z");
// win1.41 0047c880 mac inlined SubArgumentObjectAndInteger::HasDestination(void)
uint32_t __fastcall HasDestination__27SubArgumentObjectAndIntegerFv(struct SubArgument* this) asm("?HasDestination@SubArgumentObjectAndInteger@@UAEIXZ");
// win1.41 0047c890 mac inlined SubArgumentObjectAndInteger::GetDestination(void)
struct LHPoint* __fastcall GetDestination__27SubArgumentObjectAndIntegerFv(struct SubArgument* this) asm("?GetDestination@SubArgumentObjectAndInteger@@UAEPAULHPoint@@XZ");

struct SubArgumentPoint
{
  struct SubArgument super;  /* 0x0 */
};
static_assert(sizeof(struct SubArgumentPoint) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 004ff780 mac 10290e40 SubArgumentPoint::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
void __fastcall SetArgumentOfSubActionAgenda__16SubArgumentPointFP23CreatureSubActionAgendaUl(struct SubArgument* this, const void* edx, struct CreatureSubActionAgenda* param_1, uint32_t param_2) asm("?SetArgumentOfSubActionAgenda@SubArgumentPoint@@UAEXPAVCreatureSubActionAgenda@@I@Z");
// win1.41 004791c0 mac 102914c0 SubArgumentPoint::HasDestination(void)
uint32_t __fastcall HasDestination__16SubArgumentPointFv(struct SubArgument* this) asm("?HasDestination@SubArgumentPoint@@UAEIXZ");
// win1.41 004791d0 mac 10291500 SubArgumentPoint::GetDestination(void)
struct LHPoint* __fastcall GetDestination__16SubArgumentPointFv(struct SubArgument* this) asm("?GetDestination@SubArgumentPoint@@UAEPAULHPoint@@XZ");
// win1.41 004791b0 mac inlined SubArgumentPoint::GetObject(void)
struct Object* __fastcall GetObject__16SubArgumentPointFv(struct SubArgument* this) asm("?GetObject@SubArgumentPoint@@UAEPAVObject@@XZ");

#endif /* BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H */

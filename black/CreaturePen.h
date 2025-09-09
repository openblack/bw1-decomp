#ifndef BW1_DECOMP_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPart.h" /* For struct CitadelPart */

// Forward Declares

struct Base;
struct LHOSFile;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PlannedMultiMapFixed;

struct CreaturePen
{
  struct CitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct CreaturePen) == 0x8c, "Data type is of wrong size");

// Override methods

// win1.41 004eeed0 mac 10275140 CreaturePen::_dt(void)
void __fastcall __dt__11CreaturePenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePen@@UAEPAXI@Z");
// win1.41 004ef100 mac 10274980 CreaturePen::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__11CreaturePenFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@CreaturePen@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 004eefc0 mac 10274e70 CreaturePen::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__11CreaturePenFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@CreaturePen@@UAEPAVPlannedMultiMapFixed@@XZ");

#endif /* BW1_DECOMP_CREATURE_PEN_INCLUDED_H */

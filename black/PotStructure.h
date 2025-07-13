#ifndef BW1_DECOMP_POT_STRUCTURE_INCLUDED_H
#define BW1_DECOMP_POT_STRUCTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Pot.h" /* For struct Pot */

// Forward Declares

struct GPotInfo;
struct MapCoords;
struct MultiMapFixed;
struct Town;

struct PotStructure
{
  struct Pot super;  /* 0x0 */
  struct MultiMapFixed* field_0x78;
  uint32_t field_0x7c;
  bool field_0x80;
};
static_assert(sizeof(struct PotStructure) == 0x84, "Data type is of wrong size");

static struct PotVftable* const __vt__12PotStructure = (struct PotVftable* const)0x008f8dcc;

// Constructors

// win1.41 0066d910 mac 1011b5e0 PotStructure::PotStructure(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PotStructure* __fastcall __ct__12PotStructureFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PotStructure* this, const void* edx, struct MapCoords* coords, struct GPotInfo* param_2, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8);

// Override methods

// win1.41 0066db90 mac 1011afa0 PotStructure::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__12PotStructureFRC9MapCoords(struct PotStructure* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@PotStructure@@QAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_POT_STRUCTURE_INCLUDED_H */

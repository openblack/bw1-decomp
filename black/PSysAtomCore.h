#ifndef BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H
#define BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct Q222UR_GesturingRecognised8AtomData;

struct AtomCollection
{
  uint8_t field_0x0[0x4];
};
static_assert(sizeof(struct AtomCollection) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00674ed0 mac 100773a0 AtomCollection::GetAge(void)
float __fastcall GetAge__14AtomCollectionFv(struct AtomCollection* this);

struct UR_GesturingRecognised
{
  uint8_t field_0x0[0x4];
};
static_assert(sizeof(struct UR_GesturingRecognised) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 006884f0 mac 1007c960 UR_GesturingRecognised::ModifyAtomCollection(AtomCollection *) const
uint32_t __fastcall ModifyAtomCollection__22UR_GesturingRecognisedCFP14AtomCollection(const struct UR_GesturingRecognised* this, const void* edx, struct AtomCollection* collection);
// win1.41 00688910 mac 10406f90 UR_GesturingRecognised::ModifySubCollection(AtomCollection *, UR_GesturingRecognised::AtomData *) const
void __fastcall ModifySubCollection__22UR_GesturingRecognisedCFP14AtomCollectionPQ222UR_GesturingRecognised8AtomData(const struct UR_GesturingRecognised* this, const void* edx, struct AtomCollection* collection, struct Q222UR_GesturingRecognised8AtomData* data);

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */

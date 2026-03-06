#ifndef BW1_DECOMP_VISIT_BLOCK_INCLUDED_H
#define BW1_DECOMP_VISIT_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uintptr_t */

#ifdef __cplusplus

struct VisitBlock
{
    uintptr_t field_0x0;
    VisitBlock* next;

    // Non-virtual methods

    // win1.41 0086e1b0 mac 100ad730 VisitBlock::~VisitBlock
    void __dt(bool param_2);
};

#else // __cplusplus

struct VisitBlock
{
  uintptr_t field_0x0;
  struct VisitBlock* next;
};
static_assert(sizeof(struct VisitBlock) == 0x8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0086e1b0 mac 100ad730 VisitBlock::~VisitBlock
void __fastcall __dt__10VisitBlockFv(struct VisitBlock* this, const void* edx, bool param_2) asm("??_DVisitBlock@@QAEXXZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_VISIT_BLOCK_INCLUDED_H */

#ifndef BW1_DECOMP_CPU_CHECK_INCLUDED_H
#define BW1_DECOMP_CPU_CHECK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct CPUCheck;

struct CPUCheckVftable
{
  void (__fastcall* __dt)(struct CPUCheck* this, const void* edx, uint32_t param_1);
};
static_assert(sizeof(struct CPUCheckVftable) == 0x4, "Data type is of wrong size");

struct CPUCheck
{
    struct CPUCheckVftable* vftable;
};

// Override methods

// win1.41 00471a80 mac 100c00a0 CPUCheck::~CPUCheck(void)
void __fastcall __dt__8CPUCheckFUi(struct CPUCheck* this, const void* edx, uint32_t param_1) asm("??GCPUCheck@@UAE@XZ");


#endif // BW1_DECOMP_CPU_CHECK_INCLUDED_H

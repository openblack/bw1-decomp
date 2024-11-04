#ifndef BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

struct LHPacketisableObjectVftable
{
  uintptr_t (__fastcall* GetEncodedLength)(void* param_0, const void* edx);  /* 0x0 */
  uintptr_t (__fastcall* EncodeToBuffer)(void* param_0, const void* edx);
  uintptr_t (__fastcall* DecodeFromBuffer)(void* param_0, const void* edx);
  uintptr_t (__fastcall* ClearObject)(void* param_0, const void* edx);
};
static_assert(sizeof(struct LHPacketisableObjectVftable) == 0x10, "Data type is of wrong size");

struct LHPacketisableObject
{
  struct LHPacketisableObjectVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct LHPacketisableObject) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H */

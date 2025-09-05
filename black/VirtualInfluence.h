#ifndef BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GInterfaceStatus;

struct GVirtualInfluence
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  float field_0x30;
  float field_0x34;
  struct GInterfaceStatus* interface_status;
  uint32_t field_0x3c;
  float field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  uint8_t field_0x54[0xc];
};
static_assert(sizeof(struct GVirtualInfluence) == 0x60, "Data type is of wrong size");

// win1.41 0099aa6c mac 1075e9c4 GVirtualInfluence::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GVirtualInfluence asm("??_R4GVirtualInfluence@@6B@");

// win1.41 0099aa70 mac 1075e9cc GVirtualInfluence::`vftable'
extern const struct BaseVftable __vt__17GVirtualInfluence asm("??_7GVirtualInfluence@@6B@");

// Constructors

// win1.41 0076cca0 mac 1015a6f0 GVirtualInfluence::GVirtualInfluence(GInterfaceStatus *)
void __fastcall __ct__17GVirtualInfluenceFP16GInterfaceStatus(struct GVirtualInfluence* this, const void* edx, struct GInterfaceStatus* status);

#endif /* BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H */

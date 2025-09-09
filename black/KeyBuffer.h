#ifndef BW1_DECOMP_KEY_BUFFER_INCLUDED_H
#define BW1_DECOMP_KEY_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t, uintptr_t */

#include "Base.h" /* For struct Base */

struct GKeyBuffer
{
  struct Base super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xc;
  uint8_t field_0xd;
  uint16_t buffered_keys;
};
static_assert(sizeof(struct GKeyBuffer) == 0x10, "Data type is of wrong size");

// win1.41 008df77c mac 10733c44 GKeyBuffer::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GKeyBuffer asm("??_R4GKeyBuffer@@6B@");

// win1.41 008df780 mac 10733c4c GKeyBuffer::`vftable'
extern const struct BaseVftable __vt__10GKeyBuffer asm("??_7GKeyBuffer@@6B@");

// Constructors

// win1.41 0054b930 mac inlined GKeyBuffer::GKeyBuffer(void)
struct GKeyBuffer* __fastcall __ct__10GKeyBuffer(struct GKeyBuffer* this);

// Override methods

// win1.41 0054b950 mac 10167a10 GKeyBuffer::_dt(void)
void __fastcall __dt__10GKeyBufferFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGKeyBuffer@@UAEPAXI@Z");

struct GKeyInput
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GKeyInput) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 005e1b40 mac 1016c7e0 GKeyInput::_dt(void)
void __fastcall __dt__9GKeyInputFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGKeyInput@@UAEPAXI@Z");

#endif /* BW1_DECOMP_KEY_BUFFER_INCLUDED_H */

#ifndef BW1_DECOMP_TEMPLE_INCLUDED_H
#define BW1_DECOMP_TEMPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

// Forward Declares

struct TempleRoom;

struct Temple
{
  struct TempleRoom* rooms[0x7];  /* 0x0 */
  struct TempleRoom* active_room;  /* 0x1c */
  uintptr_t field_0x20;
  uint32_t field_0x24;
  float fov;
  float field_0x2c;
  float field_0x30;
  float field_0x34;
  float field_0x38;
  float field_0x3c;
  float field_0x40;
  uint32_t field_0x44;
  uint8_t field_0x48;
  uint8_t field_0x49;
  uint8_t field_0x4a;
  uint8_t field_0x4b;
  uint8_t field_0x4c;
  uint8_t field_0x4d;
  uint8_t field_0x4e;
  uint8_t field_0x4f;
  uint32_t field_0x50;
};
static_assert(sizeof(struct Temple) == 0x54, "Data type is of wrong size");

// Static methods

// win1.41 00794a30 mac 105362a0 Temple::ProcessGameTurn(void)
void __stdcall ProcessGameTurn__6TempleFv(void);

// Constructors

// win1.41 00793ac0 mac 10537d50 Temple::Temple(void)
struct Temple* __fastcall __ct__6TempleFv(struct Temple* this) asm("??0Temple@@QAE@XZ");

// Non-virtual methods

// win1.41 00794a20 mac 10536350 Temple::StartScript(unsigned long)
bool __fastcall StartScript__6TempleFUl(struct Temple* this, const void* edx, unsigned long param_1) asm("?StartScript@Temple@@QAE_NK@Z");

#endif /* BW1_DECOMP_TEMPLE_INCLUDED_H */

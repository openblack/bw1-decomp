#ifndef BW1_DECOMP_PRSS_INCLUDED_H
#define BW1_DECOMP_PRSS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

// Forward Declares

struct MouseInput;
struct Prss;

struct PrssVftable
{
  int (__fastcall* ProcessTurn)(struct Prss* this);  /* 0x0 */
  void (__fastcall* Display)(struct Prss* this);
  void (__fastcall* Terminate)(struct Prss* this);
  void (__fastcall* PrssKey)(struct Prss* this, const void* edx, enum LH_KEY key, uint16_t param_2);
  void (__fastcall* PrssMouse)(struct Prss* this, const void* edx, struct MouseInput* param_1);  /* 0x10 */
  void (__fastcall* ClickFunction)(struct Prss* this, const void* edx, int32_t param_1, int param_2, int param_3);
  void (__fastcall* StringFunction)(struct Prss* this, const void* edx, int32_t param_1, char* param_2, int param_3);
};
static_assert(sizeof(struct PrssVftable) == 0x1c, "Data type is of wrong size");

struct Prss
{
  struct PrssVftable* vftable;  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
};
static_assert(sizeof(struct Prss) == 0x10, "Data type is of wrong size");

// win1.41 008d87b4 mac 101cbc0c Prss::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__4Prss asm("??_R4Prss@@6B@");

// win1.41 008d87b8 mac 101cbc14 Prss::`vftable'
extern const struct PrssVftable __vt__4Prss asm("??_7Prss@@6B@");

// Override methods

// win1.41 00842160 mac 100631e0 Prss::PrssKey(LH_KEY, unsigned short)
void __fastcall PrssKey__4PrssF6LH_KEYUs(struct Prss* this, const void* edx, enum LH_KEY key, uint16_t param_2);
// win1.41 00842170 mac 10063170 Prss::PrssMouse(MouseInput *)
void __fastcall PrssMouse__4PrssFP10MouseInput(struct Prss* this, const void* edx, struct MouseInput* param_1);
// win1.41 004f7200 mac 10062140 Prss::StringFunction(long, char *, int)
void __fastcall StringFunction__4PrssFlPci(struct Prss* this, const void* edx, int32_t param_1, char* param_2, int param_3);

// win1.41 008416e0 mac 100646e0 BMan_Check(Prss *, int, int, int)
int __cdecl BMan_Check__FP4Prssiii(struct Prss* param_1, int param_2, int param_3, int param_4);

#endif /* BW1_DECOMP_PRSS_INCLUDED_H */

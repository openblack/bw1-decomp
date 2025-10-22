#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LH3DColor;
struct LH3DMapCoords;
struct LH3DMaterial;
struct LH3DTexture;

struct LandCell
{
  uint8_t r;  /* 0x0 */
  uint8_t g;
  uint8_t b;
  uint8_t luminosity;
  uint8_t altitude;
  uint8_t saveColor;
  uint8_t properties;
  uint8_t flags;
};
static_assert(sizeof(struct LandCell) == 0x8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 1000cd10 LandCell::IsWater(void)
bool __fastcall IsWater__8LandCellFv(struct LandCell* this) asm("?IsWater@LandCell@@QAE_NXZ");

struct LandBlock
{
  struct LandCell cells[0x11][0x11];  /* 0x0 */
  int field_0x908;
  float field_0x90c;
  float field_0x910;
  uint32_t field_0x914;
  uint32_t field_0x918;
  uint8_t field_0x91c[0x28];
  struct LH3DTexture* field_0x944;
  struct LH3DMaterial* field_0x948;
  uint32_t field_0x94c;
  uint32_t field_0x950;
  uint32_t field_0x954;
  uint8_t field_0x958[0x68];
  uint32_t field_0x9c0;
  float field_0x9c4;
  float field_0x9c8;
  int field_0x9cc;
  int field_0x9d0;
  uint32_t field_0x9d4;
};
static_assert(sizeof(struct LandBlock) == 0x9d8, "Data type is of wrong size");

// win1.41 00803c00 mac 10046910 LH3DIsland::Create(void)
uint32_t __cdecl Create__10LH3DIslandFv(void) asm("?Create@LH3DIsland@@SAIXZ");
// win1.41 00516aa0 mac 100484b0 LH3DIsland::GetCell(long, long)
struct LandCell* __cdecl GetCell__10LH3DIslandFll(int x, int z) asm("?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z");
// win1.41 0060d3a0 mac inlined LH3DIsland::IsWater(long, long)
bool __cdecl IsWater__10LH3DIslandFll(int x, int y) asm("?IsWater@LH3DIsland@@SA_NJJ@Z");
// win1.41 00803090 mac 10048554 LH3DIsland::GetAltitude(LH3DMapCoords const &)
float __fastcall GetAltitude__10LH3DIslandFRC13LH3DMapCoords(const struct LH3DMapCoords* this) asm("?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");
// win1.41 00803340 mac 10048110 LH3DIsland::GetAltitudeAndSetColorSpecular(LH3DMapCoords const &, ulong *, ulong *)
float __fastcall GetAltitudeAndSetColorSpecular__10LH3DIslandFRC13LH3DMapCoordsPUlPUl(const struct LH3DMapCoords* this, struct LH3DColor* param_2, struct LH3DColor* param_3) asm("?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z");
// win1.41 00804790 mac 1061cc34 LH3DIsland::Release(void)
bool __stdcall Release__10LH3DIslandFv(void);
// win1.41 007ff2d0 mac 10022e10 LH3DIsland::PreDraw(void)
void __cdecl PreDraw__10LH3DIslandFv(void) asm("?PreDraw@LH3DIsland@@SAXXZ");

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */

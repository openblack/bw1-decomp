#ifndef BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H
#define BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define ECLAIRAGE_PUBLIC_OFFSET         50.0f
#define ECLAIRAGE_PUBLIC_PERIOD         30.0f
#define ECLAIRAGE_PUBLIC_TYPE_LOW       1
#define ECLAIRAGE_PUBLIC_LOW_HEIGHT     1.0f
#define ECLAIRAGE_PUBLIC_HEIGHT         5.0f
#define ECLAIRAGE_PUBLIC_GLOW           2
#define ECLAIRAGE_PUBLIC_SIZE_VARIATION 0.1f
#define ECLAIRAGE_PUBLIC_FLAME_SIZE     1.0f
#define ECLAIRAGE_PUBLIC_GLOW_SIZE      3.0f
#define ECLAIRAGE_PUBLIC_COLOUR         0xfff38421
#define ECLAIRAGE_PUBLIC_GLOW_FRAME     56
#define ECLAIRAGE_PUBLIC_FRAMES         32
#define ECLAIRAGE_PUBLIC_FRAME_STEP     10
#define ECLAIRAGE_PUBLIC_FRAME_PERIOD   700
#define ECLAIRAGE_PUBLIC_FLICKER        0.5f
#define ECLAIRAGE_PUBLIC_LIGHT_SIZE     14
#define ECLAIRAGE_PUBLIC_SPECULAR_SIZE  (ECLAIRAGE_PUBLIC_LIGHT_SIZE * ECLAIRAGE_PUBLIC_LIGHT_SIZE * 3)
#define ECLAIRAGE_PUBLIC_DARKNESS       48.0f
#define ECLAIRAGE_PUBLIC_SPECULAR_PATH  "Data\\Textures\\village_specular.raw"
#define ECLAIRAGE_PUBLIC_DIFFUSE_PATH   "Data\\Textures\\village_diffuse.raw"

// Forward Declares

struct LH3DSprite;

#define ECLAIRAGE_PUBLIC_SPRITES 3

struct EclairagePublic
{
	// BW1W120 00c383bc BW1M119 011cea24 (LHCombined Release)
	static long g_off[ECLAIRAGE_PUBLIC_SPRITES];
	// BW1W120 00eb99b8 BW1M119 011f1e78 (LHCombined Release)
	static EclairagePublic* g_first;
	// BW1W120 00eb99bc BW1M119 011f1e74 (LHCombined Release)
	static float g_alpha;

	EclairagePublic* Next;
	LHPoint          Pos;
	float            Time;
	float            OffsetX;
	float            OffsetZ;
	long             Type;
	LH3DSprite*      Sprites;
	uint32_t         field_0x24;

	// Static methods

	// BW1W120 00823240 BW1M119 010a25f0 (LHCombined Release)
	static EclairagePublic* Create(LHPoint* pos, long type);
	// BW1W120 00823460 BW1M119 010be200 (LHCombined Release)
	static void DrawAllPre();
	// BW1W120 00823570 BW1M119 0100b3b0 (LHCombined Release)
	static void DrawAllFinal();
	// BW1W120 00823690 BW1M119 01047780 (LHCombined Release)
	static void DrawAllPost();
	// BW1W120 00823780 BW1M119 010dc740 (LHCombined Release)
	static void ClearAll();

	// Non-virtual methods

	// BW1W120 00823420 BW1M119 0107d080 (LHCombined Release)
	void Release();
};
static_assert(sizeof(EclairagePublic) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H */

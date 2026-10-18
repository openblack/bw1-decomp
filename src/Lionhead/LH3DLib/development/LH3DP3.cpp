#include "LH3DP3.h"

#include "LH3DBoundingBox.h" /* For LH3DBoundingBox */
#include "LH3DIsland.h"      /* For LH3DIsland, LandBlock */
#include "LH3DLandscape.h"   /* For LH3DLandscape */
#include "LH3DMaterial.h"    /* For LH3DMaterial */
#include "LH3DMesh.h"        /* For LH3DMesh */
#include "LH3DObject.h"      /* For LH3DObject */
#include "LH3DPrimitive.h"   /* For LH3DPrimitive */
#include "LH3DRender.h"      /* For LH3DRender */
#include "LH3DSprite.h"      /* For LH3DSprite, utex, vtex */
#include "LH3DSubMesh.h"     /* For LH3DSubMesh */
#include "LH3DTShadow.h"     /* For LH3DTShadow */
#include "LH3DTech.h"        /* For LH3DTech */
#include "LH3DVertex.h"      /* For LH3DVertex, Vertex3D */
#include "LH3DVertexGroup.h" /* For LH3DVertexGroup */
#include "LHMatrix.h"        /* For LHMatrix */
#include "MeshLodInfo.h"     /* For MeshLodInfo */

#include <emmintrin.h>
#include <xmmintrin.h>

#include <AMaths.h> /* For am_sincos_ess */

// Channels of an A8R8G8B8 colour.
#define COLOR_ALPHA       0xff000000
#define COLOR_RGB         0x00ffffff
#define COLOR_RED_BLUE    0x00ff00ff
#define COLOR_GREEN       0x0000ff00
#define COLOR_CHANNEL_MAX 0x000000ff

// Channels of the landscape's 16-bit texels: the materials are X1R5G5B5 and the cell texture A4R4G4B4.
#define TEXEL_555_RED    0x7c00
#define TEXEL_555_GREEN  0x03e0
#define TEXEL_555_BLUE   0x001f
#define TEXEL_4444_ALPHA 0xf000
#define TEXEL_4444_RED   0x0f00
#define TEXEL_4444_GREEN 0x00f0
#define TEXEL_4444_BLUE  0x000f

// Bit masks to use as float operands.
union LH3DP3Mask {
	int    i[4];
	float  f[4];
	__m128 v;
};

// Keeps w only
// BW1W120 00fc0020
static const LH3DP3Mask kMaskW = {{0, 0, 0, -1}};
// Keeps x, y and w; clears z
// BW1W120 00fc0030
static const LH3DP3Mask kMaskXYW = {{-1, -1, 0, -1}};

float         LH3DTech::g_max_screen[2] = {639.0f, 479.0f};
InfoTransform LH3DTech::g_info_transform;
Vertex3D      LH3DTech::g_cache_t_points[LH3D_MAX_POINTS];
unsigned long LH3DTech::g_cache_flags[LH3D_MAX_POINTS];
unsigned long LH3DLandscape::g_coeff[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS][4];

volatile bool LH3DP3::IsPentium;
volatile bool LH3DP3::IsPentiumPro;
volatile bool LH3DP3::IsPentiumIII;
volatile bool LH3DP3::IsPentium4;
volatile int  LH3DP3::HasCMOV;
volatile int  LH3DP3::HasMMX;
volatile int  LH3DP3::HasSSE;
volatile int  LH3DP3::HasSSE2;

void LH3DP3::Init()
{
	CheckCPU();
	LH3DTech::g_b_P3 = IsPentium4;
}

__declspec(cpu_dispatch(generic, pentium, pentium_pro, pentium_mmx, pentium_ii, pentium_iii, pentium_4)) void LH3DP3::
	CheckCPU()
{
}

__declspec(cpu_specific(generic)) void LH3DP3::CheckCPU()
{
	IsPentium = false;
	IsPentiumPro = false;
	IsPentiumIII = false;
	IsPentium4 = false;
	HasCMOV = 0;
	HasMMX = 0;
	HasSSE = 0;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium)) void LH3DP3::CheckCPU()
{
	IsPentium = true;
	IsPentiumPro = false;
	IsPentiumIII = false;
	IsPentium4 = false;
	HasCMOV = 0;
	HasMMX = 0;
	HasSSE = 0;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium_pro)) void LH3DP3::CheckCPU()
{
	IsPentium = false;
	IsPentiumPro = true;
	IsPentiumIII = false;
	IsPentium4 = false;
	HasCMOV = 1;
	HasMMX = 0;
	HasSSE = 0;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium_mmx)) void LH3DP3::CheckCPU()
{
	IsPentium = true;
	IsPentiumPro = false;
	IsPentiumIII = false;
	IsPentium4 = false;
	HasCMOV = 0;
	HasMMX = 1;
	HasSSE = 0;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium_ii)) void LH3DP3::CheckCPU()
{
	IsPentium = false;
	IsPentiumPro = true;
	IsPentiumIII = false;
	IsPentium4 = false;
	HasCMOV = 1;
	HasMMX = 1;
	HasSSE = 0;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium_iii)) void LH3DP3::CheckCPU()
{
	_mm_setcsr(_mm_getcsr() | _MM_FLUSH_ZERO_ON);
	IsPentium = false;
	IsPentiumPro = false;
	IsPentiumIII = true;
	IsPentium4 = false;
	HasCMOV = 1;
	HasMMX = 1;
	HasSSE = 1;
	HasSSE2 = 0;
}

__declspec(cpu_specific(pentium_4)) void LH3DP3::CheckCPU()
{
	_mm_setcsr(_mm_getcsr() | _MM_FLUSH_ZERO_ON);
	IsPentium = false;
	IsPentiumPro = false;
	IsPentiumIII = false;
	IsPentium4 = true;
	HasCMOV = 1;
	HasMMX = 1;
	HasSSE = 1;
	HasSSE2 = 1;
}

void __fastcall LH3DP3::Intersect(uint32_t mask, uint16_t inside, uint16_t outside, uint16_t out_index)
{
	const __m128 kNegY = _mm_set_ps(0.0f, 0.0f, -0.0f, 0.0f);
	const __m128 maskXYW = kMaskXYW.v;
	const __m128 maskW = kMaskW.v;
	const __m128 vnear = _mm_set_ps1(LH3DTech::g_info_transform.NearClip);

	const __m128* vin = (const __m128*)&LH3DTech::g_cache_t_points[inside];
	const __m128* vout = (const __m128*)&LH3DTech::g_cache_t_points[outside];
	__m128*       vres = (__m128*)&LH3DTech::g_cache_t_points[out_index];

	__m128  ipos = vin[0];
	__m128  ihi = vin[1];
	__m128i icol = *(__m128i*)&ihi; // colour + specular, as bytes
	ihi = _mm_movehl_ps(ihi, ihi);  // tu, tv

	if ((LH3DTech::g_cache_flags[inside] & LH3DTech::CLIP_CODE_FRUSTUM) == 0)
	{
		// Already projected: undo it. w = NearClip / rhw,
		// x = (sx - HalfW) * w / HalfW, y = (HalfH - sy) * w / HalfH.
		__m128 zero = _mm_setzero_ps();
		__m128 half = _mm_loadl_pi(zero, (const __m64*)&LH3DTech::g_info_transform.HalfRes);
		__m128 inv_half = _mm_loadl_pi(zero, (const __m64*)&LH3DTech::g_info_transform.InvHalfRes);
		__m128 vw = _mm_shuffle_ps(ipos, ipos, 0xff);
		__m128 r = _mm_rcp_ps(vw);
		__m128 w = _mm_mul_ps(_mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(vw, r), r)), vnear);
		ipos = _mm_add_ps(_mm_xor_ps(ipos, kNegY), _mm_xor_ps(half, _mm_set_ss(-0.0f)));
		ipos = _mm_mul_ps(ipos, _mm_mul_ps(inv_half, w));
		ipos = _mm_or_ps(ipos, _mm_and_ps(w, maskW));
	}

	__m128  opos = vout[0];
	__m128  ohi = vout[1];
	__m128i ocol = *(__m128i*)&ohi;
	ohi = _mm_movehl_ps(ohi, ohi);

	// Signed distance of each endpoint to the plane, inside in lane 0 and outside
	// in lane 2. Lanes 1 and 3 are along for the ride.
	__m128 d = _mm_shuffle_ps(ipos, opos, 0xff);
	switch (mask)
	{
	case LH3DTech::CLIP_CODE_NEAR:
		d = _mm_sub_ps(d, vnear); // w - NearClip
		break;
	case LH3DTech::CLIP_CODE_LEFT:
		d = _mm_add_ps(d, _mm_movelh_ps(ipos, opos)); // w + x
		break;
	case LH3DTech::CLIP_CODE_RIGHT:
		d = _mm_sub_ps(d, _mm_movelh_ps(ipos, opos)); // w - x
		break;
	case LH3DTech::CLIP_CODE_TOP:
		d = _mm_sub_ps(d, _mm_shuffle_ps(ipos, opos, 0x55)); // w - y
		break;
	case LH3DTech::CLIP_CODE_BOTTOM:
		d = _mm_add_ps(d, _mm_shuffle_ps(ipos, opos, 0x55)); // w + y
		break;
	}

	ipos = _mm_and_ps(ipos, maskXYW);
	opos = _mm_and_ps(opos, maskXYW);

	__m128 den = _mm_sub_ss(d, _mm_movehl_ps(d, d));
	__m128 rr = _mm_rcp_ss(den);
	__m128 t = _mm_mul_ss(d, _mm_sub_ss(_mm_add_ss(rr, rr), _mm_mul_ss(_mm_mul_ss(rr, den), rr)));
	t = _mm_shuffle_ps(t, t, 0x00);
	__m128 omt = _mm_sub_ps(_mm_set_ps1(1.0f), t);

	__m128 pos = _mm_add_ps(_mm_mul_ps(opos, t), _mm_mul_ps(ipos, omt));
	__m128 hi = _mm_add_ps(_mm_mul_ps(ohi, t), _mm_mul_ps(ihi, omt));

	// Colour and specular are blended as 8.8 fixed point: t is scaled to 0..255
	// and the two byte vectors are widened to words, weighted and shifted back.
	static __m128 kByteScale = _mm_set_ps1(255.0f);

	__m128i ti = _mm_cvtps_epi32(_mm_mul_ps(t, kByteScale));
	__m128i tw = _mm_packs_epi32(ti, ti);
	__m128i inv = _mm_sub_epi16(_mm_set1_epi16(255), tw);
	__m128i zero = _mm_setzero_si128();
	ocol = _mm_unpacklo_epi8(ocol, zero);
	icol = _mm_unpacklo_epi8(icol, zero);
	__m128i blend = _mm_srli_epi16(_mm_adds_epu16(_mm_mullo_epi16(ocol, tw), _mm_mullo_epi16(icol, inv)), 8);
	blend = _mm_packus_epi16(blend, blend);

	// The new vertex lies on the plane named by mask, so only the planes the
	// caller has not reached yet can still reject it: the cases fall through.
	int    flags = 0;
	__m128 vw = _mm_shuffle_ps(pos, pos, 0xff);
	__m128 vy = _mm_shuffle_ps(pos, pos, 0x55);
	__m128 vnw = _mm_xor_ps(vw, _mm_set_ps1(-0.0f));
	switch (mask)
	{
	case LH3DTech::CLIP_CODE_NEAR:
		flags |= _mm_comigt_ss(pos, vw) ? LH3DTech::CLIP_CODE_RIGHT : 0;
		// fall through
	case LH3DTech::CLIP_CODE_RIGHT:
		flags |= _mm_comilt_ss(pos, vnw) ? LH3DTech::CLIP_CODE_LEFT : 0;
		// fall through
	case LH3DTech::CLIP_CODE_LEFT:
		flags |= _mm_comigt_ss(vy, vw) ? LH3DTech::CLIP_CODE_TOP : 0;
		// fall through
	case LH3DTech::CLIP_CODE_TOP:
		flags |= _mm_comilt_ss(vy, vnw) ? LH3DTech::CLIP_CODE_BOTTOM : 0;
		// fall through
	default:
		break;
	}
	LH3DTech::g_cache_flags[out_index] = flags;

	if (flags == 0)
	{
		// Fully inside: project. sx = HalfW * (1 + x/w) clamped to the viewport,
		// rhw = NearClip / w and sz = 1 - rhw.
		__m128 zero = _mm_setzero_ps();
		__m128 half = _mm_loadl_pi(zero, (const __m64*)&LH3DTech::g_info_transform.HalfRes);
		__m128 maxs = _mm_loadl_pi(zero, (const __m64*)LH3DTech::g_max_screen);
		__m128 r = _mm_rcp_ps(vw);
		__m128 rw = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(vw, r), r));
		pos = _mm_add_ps(_mm_mul_ps(_mm_mul_ps(_mm_xor_ps(pos, kNegY), rw), half), half);
		pos = _mm_min_ps(_mm_max_ps(pos, zero), maxs);
		__m128 kw = _mm_mul_ps(rw, vnear);
		pos =
			_mm_or_ps(pos, _mm_or_ps(_mm_and_ps(kw, maskW), _mm_andnot_ps(maskXYW, _mm_sub_ps(_mm_set_ps1(1.0f), kw))));
	}

	vres[0] = pos;
	vres[1] = _mm_movelh_ps(*(__m128*)&blend, hi);
}

// Fog and light weights are 8.8 fixed point.
#define LH3D_P3_WEIGHT_ONE 0x100

// Splats the twelve elements of a matrix into m11..m43.
#define LOAD_MATRIX(matrix)                                                                                            \
	__m128 row0 = _mm_loadu_ps(&(matrix)->m[0]);                                                                       \
	__m128 row1 = _mm_loadu_ps(&(matrix)->m[4]);                                                                       \
	__m128 row2 = _mm_loadu_ps(&(matrix)->m[8]);                                                                       \
	__m128 m12 = _mm_shuffle_ps(row0, row0, 0x55);                                                                     \
	__m128 m13 = _mm_shuffle_ps(row0, row0, 0xaa);                                                                     \
	__m128 m21 = _mm_shuffle_ps(row0, row0, 0xff);                                                                     \
	__m128 m11 = _mm_shuffle_ps(row0, row0, 0x00);                                                                     \
	__m128 m23 = _mm_shuffle_ps(row1, row1, 0x55);                                                                     \
	__m128 m31 = _mm_shuffle_ps(row1, row1, 0xaa);                                                                     \
	__m128 m32 = _mm_shuffle_ps(row1, row1, 0xff);                                                                     \
	__m128 m22 = _mm_shuffle_ps(row1, row1, 0x00);                                                                     \
	__m128 m41 = _mm_shuffle_ps(row2, row2, 0x55);                                                                     \
	__m128 m42 = _mm_shuffle_ps(row2, row2, 0xaa);                                                                     \
	__m128 m43 = _mm_shuffle_ps(row2, row2, 0xff);                                                                     \
	__m128 m33 = _mm_shuffle_ps(row2, row2, 0x00);

// Projects four vertices to the screen, clamped to the viewport: px and py are the screen position and rhw the
// reciprocal of the depth, scaled by the near plane.
#define PROJECT_VERTICES(px, py, rhw, sx, sy, sw)                                                                      \
	{                                                                                                                  \
		__m128 r = _mm_rcp_ps(sw);                                                                                     \
		rhw = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(r, sw), r));                                          \
		px = _mm_add_ps(_mm_mul_ps(_mm_mul_ps(sx, rhw), halfResX), halfResX);                                          \
		py = _mm_sub_ps(halfResY, _mm_mul_ps(_mm_mul_ps(sy, rhw), halfResY));                                          \
		px = _mm_max_ps(px, zero);                                                                                     \
		py = _mm_max_ps(py, zero);                                                                                     \
		px = _mm_min_ps(px, maxScreenX);                                                                               \
		py = _mm_min_ps(py, maxScreenY);                                                                               \
		rhw = _mm_mul_ps(rhw, nearClip);                                                                               \
	}

// Clip codes of four vertices in clipping space.
#define CLIP_CODES(codes, x, y, w)                                                                                     \
	{                                                                                                                  \
		__m128 negW = _mm_xor_ps(w, _mm_set_ps1(-0.0f));                                                               \
		codes = _mm_and_ps(_mm_cmplt_ps(w, nearClip), clipNear);                                                       \
		codes = _mm_or_ps(codes, _mm_and_ps(_mm_cmplt_ps(w, x), clipRight));                                           \
		codes = _mm_or_ps(codes, _mm_and_ps(_mm_cmplt_ps(x, negW), clipLeft));                                         \
		codes = _mm_or_ps(codes, _mm_and_ps(_mm_cmplt_ps(w, y), clipTop));                                             \
		codes = _mm_or_ps(codes, _mm_and_ps(_mm_cmplt_ps(y, negW), clipBottom));                                       \
	}

// The clip code of each frustum plane in all four lanes, to mask comparison results with.
#define LOAD_CLIP_CODES()                                                                                              \
	static const LH3DP3Mask kClipNear = {                                                                              \
		{LH3DTech::CLIP_CODE_NEAR, LH3DTech::CLIP_CODE_NEAR, LH3DTech::CLIP_CODE_NEAR, LH3DTech::CLIP_CODE_NEAR}};     \
	static const LH3DP3Mask kClipRight = {                                                                             \
		{LH3DTech::CLIP_CODE_RIGHT, LH3DTech::CLIP_CODE_RIGHT, LH3DTech::CLIP_CODE_RIGHT, LH3DTech::CLIP_CODE_RIGHT}}; \
	static const LH3DP3Mask kClipLeft = {                                                                              \
		{LH3DTech::CLIP_CODE_LEFT, LH3DTech::CLIP_CODE_LEFT, LH3DTech::CLIP_CODE_LEFT, LH3DTech::CLIP_CODE_LEFT}};     \
	static const LH3DP3Mask kClipTop = {                                                                               \
		{LH3DTech::CLIP_CODE_TOP, LH3DTech::CLIP_CODE_TOP, LH3DTech::CLIP_CODE_TOP, LH3DTech::CLIP_CODE_TOP}};         \
	static const LH3DP3Mask kClipBottom = {{LH3DTech::CLIP_CODE_BOTTOM, LH3DTech::CLIP_CODE_BOTTOM,                    \
	                                        LH3DTech::CLIP_CODE_BOTTOM, LH3DTech::CLIP_CODE_BOTTOM}};                  \
	const __m128            clipNear = _mm_load_ps(kClipNear.f);                                                       \
	const __m128            clipRight = _mm_load_ps(kClipRight.f);                                                     \
	const __m128            clipLeft = _mm_load_ps(kClipLeft.f);                                                       \
	const __m128            clipTop = _mm_load_ps(kClipTop.f);                                                         \
	const __m128            clipBottom = _mm_load_ps(kClipBottom.f);

// Scales the red, green and blue of four colours by weight / 256, one weight per 16-bit half.
#define SCALE_COLOR(result, color, weight)                                                                             \
	{                                                                                                                  \
		__m128i rb = _mm_and_si128(color, _mm_set1_epi32(COLOR_RED_BLUE));                                             \
		__m128i g = _mm_and_si128(_mm_srli_epi16(color, 8), _mm_set1_epi32(COLOR_CHANNEL_MAX));                        \
		__m128i a = _mm_and_si128(color, _mm_set1_epi32(COLOR_ALPHA));                                                 \
		rb = _mm_mullo_epi16(rb, weight);                                                                              \
		g = _mm_mullo_epi16(g, weight);                                                                                \
		rb = _mm_srli_epi16(rb, 8);                                                                                    \
		g = _mm_and_si128(g, _mm_set1_epi32(COLOR_GREEN));                                                             \
		result = _mm_or_si128(_mm_or_si128(a, rb), g);                                                                 \
	}

// Writes four Vertex3D.
#define STORE_VERTICES(point, sx, sy, sz, sw, color, specular, u, v)                                                   \
	{                                                                                                                  \
		__m128* out = (__m128*)(point);                                                                                \
		__m128  xy = _mm_unpacklo_ps(sx, sy);                                                                          \
		__m128  zw = _mm_unpacklo_ps(sz, sw);                                                                          \
		__m128  uv = _mm_unpacklo_ps(u, v);                                                                            \
		__m128  cs = _mm_unpacklo_ps(*(__m128*)&(color), *(__m128*)&(specular));                                       \
		out[0] = _mm_movelh_ps(xy, zw);                                                                                \
		out[1] = _mm_movelh_ps(cs, uv);                                                                                \
		out[2] = _mm_movehl_ps(zw, xy);                                                                                \
		out[3] = _mm_movehl_ps(uv, cs);                                                                                \
		xy = _mm_unpackhi_ps(sx, sy);                                                                                  \
		zw = _mm_unpackhi_ps(sz, sw);                                                                                  \
		uv = _mm_unpackhi_ps(u, v);                                                                                    \
		cs = _mm_unpackhi_ps(*(__m128*)&(color), *(__m128*)&(specular));                                               \
		out[4] = _mm_movelh_ps(xy, zw);                                                                                \
		out[5] = _mm_movelh_ps(cs, uv);                                                                                \
		out[6] = _mm_movehl_ps(zw, xy);                                                                                \
		out[7] = _mm_movehl_ps(uv, cs);                                                                                \
	}

static inline void StoreClipCodes(unsigned long* clip, __m128 codes)
{
	switch ((int)clip & 0xf)
	{
	case 0:
		_mm_store_ps((float*)clip, codes);
		break;
	case 8:
		_mm_storel_pi((__m64*)clip, codes);
		_mm_storeh_pi((__m64*)(clip + 2), codes);
		break;
	default:
		_mm_storeu_ps((float*)clip, codes);
		break;
	}
}

// Packs four 32-bit values into the lanes of one vector, v0 in the lowest.
#define GATHER4(result, v0, v1, v2, v3)                                                                                \
	{                                                                                                                  \
		__m128i g0 = _mm_cvtsi32_si128(v0);                                                                            \
		__m128i g1 = _mm_cvtsi32_si128(v1);                                                                            \
		__m128i g2 = _mm_cvtsi32_si128(v2);                                                                            \
		__m128i g3 = _mm_cvtsi32_si128(v3);                                                                            \
		result = _mm_unpacklo_epi64(_mm_unpacklo_epi32(g0, g1), _mm_unpacklo_epi32(g2, g3));                           \
	}

// The low-resolution island texture is an atlas of 64-texel tiles; a block is drawn on the inner 62 texels of its
// tile.
#define LAND_LOW_RES_TILE_SCALE (62.0f / 256.0f)
#define LAND_LOW_RES_TILE_INSET (1.0f / 255.0f)
// The small bump texture repeats this many times across a block.
#define LAND_SMALL_BUMP_TILING 12.0f

// Selects a where mask is set and b elsewhere.
#define SELECT(mask, a, b) _mm_or_ps(_mm_andnot_ps(mask, b), _mm_and_ps(mask, a))

// Packs four channel vectors, one byte value per lane each, into D3D colours.
#define MAKE_COLOR(a, r, g, b)                                                                                         \
	_mm_or_si128(_mm_or_si128(_mm_slli_epi32(a, 24), _mm_slli_epi32(r, 16)), _mm_or_si128(_mm_slli_epi32(g, 8), b))

// Gathers the colour, light and altitude of the four cells cell[0], cell[s], cell[2s] and cell[3s].
#define GATHER_CELLS(specular, light, altitude, cell, s)                                                               \
	{                                                                                                                  \
		LandCell* c1 = cell + s;                                                                                       \
		LandCell* c2 = c1 + s;                                                                                         \
		GATHER4(specular, *(int*)&cell[0], *(int*)&cell[s], *(int*)&c1[s], *(int*)&c2[s]);                             \
		uint32_t d0 = cell[0].darkness;                                                                                \
		uint32_t d1 = cell[s].darkness;                                                                                \
		uint32_t d2 = c1[s].darkness;                                                                                  \
		uint32_t d3 = c2[s].darkness;                                                                                  \
		GATHER4(light, LandCell::g_darkness_to_color[d0], LandCell::g_darkness_to_color[d1],                           \
		        LandCell::g_darkness_to_color[d2], LandCell::g_darkness_to_color[d3]);                                 \
		GATHER4(altitude, *(int*)&cell[0].altitude, *(int*)&cell[s].altitude, *(int*)&c1[s].altitude,                  \
		        *(int*)&c2[s].altitude);                                                                               \
	}

// Writes the first lane of each vector as one vertex.
#define STORE_VERTEX(vertex, x, y, z, w, color, specular, tu, tv)                                                      \
	{                                                                                                                  \
		((__m128*)vertex)[0] = _mm_shuffle_ps(_mm_movelh_ps(x, y), _mm_movelh_ps(z, w), 0x88);                         \
		((__m128*)vertex)[1] = _mm_shuffle_ps(_mm_movelh_ps(color, specular), _mm_movelh_ps(tu, tv), 0x88);            \
	}

// Adds the fog of four vertices to their specular and darkens their light. The fog grows from nothing at g_fog_min
// to g_max_color_fog at g_fog_max, and the light fades to g_max_fadefac / 256 over the same range.
#define APPLY_FOG                                                                                                      \
	{                                                                                                                  \
		if (block->FogMode != LAND_FOG_FULL)                                                                           \
		{                                                                                                              \
			__m128  f = _mm_mul_ps(_mm_sub_ps(_mm_min_ps(_mm_max_ps(pw, fogMin), fogMax), fogMin), invFogDelta);       \
			__m128i weight = _mm_sub_epi32(weightOne, _mm_cvttps_epi32(_mm_mul_ps(fadeRange, f)));                     \
			if (_mm_movemask_epi8(_mm_cmpgt_epi32(weightOne, weight)))                                                 \
			{                                                                                                          \
				weight = _mm_or_si128(weight, _mm_slli_epi32(weight, 16));                                             \
				SCALE_COLOR(light, light, weight)                                                                      \
			}                                                                                                          \
			__m128i fr = _mm_cvtps_epi32(_mm_mul_ps(fogR, f));                                                         \
			__m128i fg = _mm_cvtps_epi32(_mm_mul_ps(fogG, f));                                                         \
			__m128i fb = _mm_cvtps_epi32(_mm_mul_ps(f, fogB));                                                         \
			fog = MAKE_COLOR(_mm_setzero_si128(), fr, fg, fb);                                                         \
		}                                                                                                              \
		else if (fullFade)                                                                                             \
		{                                                                                                              \
			SCALE_COLOR(light, light, fullFadeWeight)                                                                  \
		}                                                                                                              \
		specular = _mm_adds_epu8(fog, specular);                                                                       \
	}

#define NO_FOG

// Lights, transforms, clips and projects the vertices of the cells cell[0], cell[s], cell[2s] and cell[3s], or only
// the first of them at the end of a row, and writes them to the vertex cache.
#define DRAW_VERTEX_GROUP(FOG)                                                                                         \
	{                                                                                                                  \
		bool32_t full = zi + step < LAND_BLOCK_SIDE_POINTS ? true : false;                                             \
		int      s = full ? step : 0;                                                                                  \
		__m128i  altitude;                                                                                             \
		GATHER_CELLS(specular, light, altitude, cell, s)                                                               \
		specular = _mm_or_si128(_mm_andnot_si128(_mm_set1_epi32(COLOR_ALPHA), specular), _mm_set1_epi32(COLOR_ALPHA)); \
		__m128 alt = _mm_cvtepi32_ps(_mm_and_si128(altitude, _mm_set1_epi32(0xff)));                                   \
		__m128 y = _mm_mul_ps(alt, heightUnit);                                                                        \
		mask = _mm_cmple_ps(alt, seaAltitude);                                                                         \
		y = _mm_andnot_ps(mask, y);                                                                                    \
		if (block->DrawSmallBump)                                                                                      \
		{                                                                                                              \
			mask = _mm_and_ps(mask, _mm_cmple_ps(alt, shoreAltitude));                                                 \
			mask = SELECT(mask, maskRGB, maskAll);                                                                     \
			specular = _mm_and_si128(specular, *(__m128i*)&mask);                                                      \
		}                                                                                                              \
		__m128 px = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(y, m21), xm11), _mm_mul_ps(z, m31)), m41);             \
		__m128 py = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(y, m22), xm12), _mm_mul_ps(z, m32)), m42);             \
		__m128 pw = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(y, m23), xm13), _mm_mul_ps(z, m33)), m43);             \
		FOG;                                                                                                           \
		if (block->NeedClipping)                                                                                       \
		{                                                                                                              \
			__m128 codes;                                                                                              \
			CLIP_CODES(codes, px, py, pw)                                                                              \
			__m128 inside = _mm_cmpeq_ps(codes, zero);                                                                 \
			if (_mm_movemask_ps(inside))                                                                               \
			{                                                                                                          \
				__m128 r = _mm_rcp_ps(pw);                                                                             \
				r = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(pw, r), r));                                    \
				__m128 sx = _mm_add_ps(_mm_mul_ps(_mm_mul_ps(px, r), halfResX), halfResX);                             \
				__m128 sy = _mm_sub_ps(halfResY, _mm_mul_ps(_mm_mul_ps(py, r), halfResY));                             \
				sx = _mm_max_ps(sx, zero);                                                                             \
				sy = _mm_max_ps(sy, zero);                                                                             \
				sx = _mm_min_ps(sx, maxScreenX);                                                                       \
				sy = _mm_min_ps(sy, maxScreenY);                                                                       \
				r = _mm_mul_ps(r, nearClip);                                                                           \
				sz = _mm_sub_ps(kOne, r);                                                                              \
				px = SELECT(inside, sx, px);                                                                           \
				py = SELECT(inside, sy, py);                                                                           \
				pw = SELECT(inside, r, pw);                                                                            \
			}                                                                                                          \
			if (full)                                                                                                  \
			{                                                                                                          \
				StoreClipCodes(clip, codes);                                                                           \
				clip += 4;                                                                                             \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				_mm_store_ss((float*)clip, codes);                                                                     \
				clip++;                                                                                                \
			}                                                                                                          \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			PROJECT_VERTICES(px, py, pw, px, py, pw);                                                                  \
			sz = _mm_sub_ps(kOne, pw);                                                                                 \
		}                                                                                                              \
		if (full)                                                                                                      \
		{                                                                                                              \
			STORE_VERTICES(vertex, px, py, sz, pw, light, specular, tu, tv);                                           \
			vertex += 4;                                                                                               \
			cell += 4 * step;                                                                                          \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			STORE_VERTEX(vertex, px, py, sz, pw, *(__m128*)&light, *(__m128*)&specular, tu, tv)                        \
			vertex++;                                                                                                  \
			cell += step;                                                                                              \
		}                                                                                                              \
	}

// One pass over the block's vertex grid, four vertices along z at a time.
#define DRAW_VERTICES(FOG)                                                                                             \
	for (int xi = 0; xi < LAND_BLOCK_SIDE_POINTS; xi += step)                                                          \
	{                                                                                                                  \
		__m128 z = z0;                                                                                                 \
		__m128 tu = u0;                                                                                                \
		__m128 xm11 = _mm_mul_ps(x, m11);                                                                              \
		__m128 xm12 = _mm_mul_ps(x, m12);                                                                              \
		__m128 xm13 = _mm_mul_ps(x, m13);                                                                              \
		for (int zi = 0; zi < LAND_BLOCK_SIDE_POINTS; zi += 4 * step)                                                  \
		{                                                                                                              \
			DRAW_VERTEX_GROUP(FOG)                                                                                     \
			z = _mm_add_ps(z, zStep);                                                                                  \
			tu = _mm_add_ps(tu, uStep);                                                                                \
		}                                                                                                              \
		x = _mm_add_ps(x, meter);                                                                                      \
		tv = _mm_add_ps(tv, uvStep4);                                                                                  \
		cell += rowSkip;                                                                                               \
	}

// The signed distance of four vertices from the line of a texture level of detail, in metres.
#define LOD_DISTANCE(tu, tv)                                                                                           \
	_mm_sub_ps(_mm_mul_ps(_mm_sub_ps(_mm_add_ps(_mm_mul_ps(tv, kBlockSize), blockX), pointX), normalZ),                \
	           _mm_mul_ps(_mm_sub_ps(_mm_add_ps(_mm_mul_ps(tu, kBlockSize), blockZ), pointZ), normalX))

// Writes the colour, specular and texture coordinates of four vertices from lane vectors.
#define STORE_COLORS_AND_UVS(t, color, specular, tu, tv)                                                               \
	{                                                                                                                  \
		__m128 uvLo = _mm_unpacklo_ps(tu, tv);                                                                         \
		__m128 csLo = _mm_unpacklo_ps(color, specular);                                                                \
		*(__m128*)&t[0].color = _mm_movelh_ps(csLo, uvLo);                                                             \
		*(__m128*)&t[1].color = _mm_movehl_ps(uvLo, csLo);                                                             \
		__m128 uvHi = _mm_unpackhi_ps(tu, tv);                                                                         \
		__m128 csHi = _mm_unpackhi_ps(color, specular);                                                                \
		*(__m128*)&t[2].color = _mm_movelh_ps(csHi, uvHi);                                                             \
		*(__m128*)&t[3].color = _mm_movehl_ps(uvHi, csHi);                                                             \
	}

// The small bump pass over every cached vertex: its alpha fades the bump in towards the line of g_sbump_lod, and
// shore cells, whose specular alpha was cleared, get none.
#define DRAW_SMALL_BUMP(UNDO_LOW_RES)                                                                                  \
	for (int i = 0; i < LH3DTech::g_points_count; i += 4)                                                              \
	{                                                                                                                  \
		__m128 cs01 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[0].color);                                             \
		__m128 uv01 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[0].uv);                                                \
		cs01 = _mm_loadh_pi(cs01, (__m64*)&t[1].color);                                                                \
		uv01 = _mm_loadh_pi(uv01, (__m64*)&t[1].uv);                                                                   \
		__m128 cs23 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[2].color);                                             \
		__m128 uv23 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[2].uv);                                                \
		cs23 = _mm_loadh_pi(cs23, (__m64*)&t[3].color);                                                                \
		uv23 = _mm_loadh_pi(uv23, (__m64*)&t[3].uv);                                                                   \
		__m128 specular = _mm_shuffle_ps(cs01, cs23, 0xdd);                                                            \
		__m128 tu = _mm_shuffle_ps(uv01, uv23, 0x88);                                                                  \
		__m128 tv = _mm_shuffle_ps(uv01, uv23, 0xdd);                                                                  \
		UNDO_LOW_RES                                                                                                   \
		__m128 d = LOD_DISTANCE(tu, tv);                                                                               \
		__m128 inside = _mm_cmplt_ps(d, limit);                                                                        \
		__m128 fading = _mm_cmplt_ps(negLimit, d);                                                                     \
		__m128 alpha = _mm_and_ps(specular, maskAlpha);                                                                \
		__m128 hasAlpha = _mm_cmpneq_ps(alpha, zero);                                                                  \
		fading = _mm_and_ps(_mm_and_ps(fading, inside), hasAlpha);                                                     \
		__m128 faded;                                                                                                  \
		if (_mm_movemask_ps(fading))                                                                                   \
		{                                                                                                              \
			__m128i a = _mm_slli_epi32(                                                                                \
				_mm_cvtps_epi32(_mm_sub_ps(kByteScale, _mm_mul_ps(_mm_sub_ps(limit, d), alphaScale))), 24);            \
			faded = _mm_or_ps(*(__m128*)&a, maskRGB);                                                                  \
		}                                                                                                              \
		alpha = _mm_or_ps(alpha, maskRGB);                                                                             \
		__m128 color = _mm_or_ps(_mm_and_ps(fading, faded), _mm_andnot_ps(inside, alpha));                             \
		tu = _mm_mul_ps(tu, kBumpTiling);                                                                              \
		tv = _mm_mul_ps(tv, kBumpTiling);                                                                              \
		STORE_COLORS_AND_UVS(t, color, specular, tu, tv)                                                               \
		t += 4;                                                                                                        \
	}

// Undoes the low-resolution texture's mapping of the texture coordinates.
#define UNDO_LOW_RES_UVS                                                                                               \
	tu = _mm_mul_ps(_mm_sub_ps(tu, uOffset), kFour);                                                                   \
	tv = _mm_mul_ps(_mm_sub_ps(tv, vOffset), kFour);

#define KEEP_UVS

bool32_t __fastcall LH3DP3::DrawLandBlock(LandBlock* block)
{
	Vertex3D*      vertex = (Vertex3D*)GetTable1();
	unsigned long* clip = (unsigned long*)GetTable0();
	double         startV = 0.0f;
	LH3DColor      fogColor;
	int            step = 1 << block->MeshLod;
	float          meterStep = step * MAP_COORDS_METRES_PER_CELL;
	float          uvStep = step * (1.0f / LAND_MESH_LOD_0_CELLS);
	float          startU = 0.0f;
	// Each row of vertices leaves the cell pointer 16 + step cells further on.
	int rowSkip = LAND_BLOCK_SIDE_POINTS * step - (step + LAND_MESH_LOD_0_CELLS);
	if (block->TextureLod == LAND_TEXTURE_LOD_LOW)
	{
		uvStep *= LAND_LOW_RES_TILE_SCALE;
		startV = block->LowResV + LAND_LOW_RES_TILE_INSET;
		startU = block->LowResU + LAND_LOW_RES_TILE_INSET;
	}

	static __m128 kLowResInset = _mm_set_ps1(LAND_LOW_RES_TILE_INSET);
	static __m128 kOne = _mm_set_ps1(1.0f);
	static __m128 kFour = _mm_set_ps1(4.0f);
	static __m128 kBumpTiling = _mm_set_ps1(LAND_SMALL_BUMP_TILING);
	static __m128 kByteScale = _mm_set_ps1(255.0f);
	static __m128 kLanes = _mm_set_ps(3.0f, 2.0f, 1.0f, 0.0f);

	static const LH3DP3Mask kMaskRGB = {{COLOR_RGB, COLOR_RGB, COLOR_RGB, COLOR_RGB}};
	static const LH3DP3Mask kMaskAlpha = {{COLOR_ALPHA, COLOR_ALPHA, COLOR_ALPHA, COLOR_ALPHA}};
	static const LH3DP3Mask kMaskAll = {{-1, -1, -1, -1}};
	__m128                  maskRGB = _mm_load_ps(kMaskRGB.f);
	__m128                  maskAlpha = _mm_load_ps(kMaskAlpha.f);
	__m128                  maskAll = _mm_load_ps(kMaskAll.f);
	__m128                  heightUnit = _mm_set_ps1(LH3DIsland::g_height_unit);
	__m128                  x = _mm_set_ps1(block->X);
	__m128                  tv = _mm_set_ps1((float)startV);
	__m128                  seaAltitude = _mm_set_ps1((float)LAND_CELL_SEA_ALTITUDE);
	__m128                  shoreAltitude = _mm_set_ps1((float)LAND_CELL_SHORE_ALTITUDE);
	LOAD_MATRIX(&LH3DTech::g_world_to_clipping);
	__m128 nearClip = _mm_set_ps1(LH3DTech::g_info_transform.NearClip);
	LOAD_CLIP_CODES();
	__m128    meter = _mm_set_ps1(meterStep);
	__m128    z0 = _mm_add_ps(_mm_set_ps1(block->Z), _mm_mul_ps(kLanes, meter));
	__m128    zStep = _mm_mul_ps(kFour, meter);
	__m128    uvStep4 = _mm_set_ps1(uvStep);
	__m128    u0 = _mm_add_ps(_mm_set_ps1(startU), _mm_mul_ps(kLanes, uvStep4));
	__m128    uStep = _mm_mul_ps(kFour, uvStep4);
	__m128    halfResX = _mm_set_ps1(LH3DTech::g_info_transform.HalfRes.x);
	__m128    halfResY = _mm_set_ps1(LH3DTech::g_info_transform.HalfRes.y);
	__m128    maxScreenX = _mm_set_ps1(LH3DTech::g_max_screen[0]);
	__m128    maxScreenY = _mm_set_ps1(LH3DTech::g_max_screen[1]);
	LandCell* cell = &block->Cells[0][0];
	__m128i   specular;
	__m128i   light;
	__m128    mask;
	__m128    sz;

	if (block->FogMode != LAND_FOG_NONE)
	{
		__m128i  weightOne = _mm_set1_epi32(LH3D_P3_WEIGHT_ONE);
		bool32_t fullFade = false;
		__m128   fogMin = _mm_set_ps1(LH3DIsland::g_fog_min);
		__m128   fogMax = _mm_set_ps1(LH3DIsland::g_fog_max);
		__m128   fogDelta = _mm_set_ps1(LH3DIsland::g_fog_delta);
		__m128   r = _mm_rcp_ps(fogDelta);
		__m128   invFogDelta = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(fogDelta, r), r));
		__m128   zero = _mm_setzero_ps();
		__m128   fadeRange = _mm_set_ps1((float)(LH3D_P3_WEIGHT_ONE - LH3DIsland::g_max_fadefac));
		__m128   fogR = _mm_set_ps1(LH3DIsland::g_max_fogr);
		__m128   fogG = _mm_set_ps1(LH3DIsland::g_max_fogg);
		__m128   fogB = _mm_set_ps1(LH3DIsland::g_max_fogb);
		__m128i  fog;
		__m128i  fullFadeWeight;
		if (block->FogMode == LAND_FOG_FULL)
		{
			__m128i b = _mm_cvtsi32_si128(LH3DIsland::g_max_color_fog.b);
			__m128i g = _mm_cvtsi32_si128(LH3DIsland::g_max_color_fog.g);
			__m128i r = _mm_cvtsi32_si128(LH3DIsland::g_max_color_fog.r);
			__m128i a = _mm_cvtsi32_si128(LH3DIsland::g_max_color_fog.a);
			b = _mm_shuffle_epi32(b, 0);
			g = _mm_shuffle_epi32(g, 0);
			r = _mm_shuffle_epi32(r, 0);
			a = _mm_shuffle_epi32(a, 0);
			fog = MAKE_COLOR(a, r, g, b);
			fullFade = LH3DIsland::g_max_fadefac < LH3D_P3_WEIGHT_ONE ? true : false;
			if (fullFade)
			{
				fullFadeWeight = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DIsland::g_max_fadefac), 0);
				fullFadeWeight = _mm_or_si128(fullFadeWeight, _mm_slli_epi32(fullFadeWeight, 16));
				fullFadeWeight = _mm_min_epi16(fullFadeWeight, _mm_set1_epi16(LH3D_P3_WEIGHT_ONE));
			}
		}
		DRAW_VERTICES(APPLY_FOG)
	}
	else
	{
		__m128 zero = _mm_setzero_ps();
		DRAW_VERTICES(NO_FOG)
	}

	int side = LAND_MESH_LOD_0_CELLS / step + 1;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = side * side;
	if (block->NeedClipping)
	{
		block->CreateListPoly(block->MeshLod);
	}
	else
	{
		block->CreateListPolyUnclipped(block->MeshLod);
	}

	bool32_t drawn = false;
	if (LH3DTech::g_index_count != 0)
	{
		if (block->DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE)
		{
			block->DrawBefore();
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		drawn = true;

		static __m128 kLowResScale = _mm_set_ps1(LAND_LOW_RES_TILE_SCALE);
		if (block->TextureLod == LAND_TEXTURE_LOD_LOW)
		{
			LH3DRender::SetMaterial(block->LowRes->Material, 0);
		}
		else
		{
			LH3DRender::SetMaterial(block->Material, 0);
			if (LH3DIsland::g_ptr_blocks[block->Index]->UseLowResTexture)
			{
				// Map the block's texture coordinates onto its tile of the low-resolution texture instead.
				LH3DRender::SetMaterial(block->LowRes->Material, 0);
				Vertex3D* t = LH3DTech::g_cache_t_points;
				__m128    offset = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&block->LowResU);
				offset = _mm_movelh_ps(offset, offset);
				offset = _mm_add_ps(offset, kLowResInset);
				for (int i = 0; i < LH3DTech::g_points_count; i += 2)
				{
					__m128 uv = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[0].uv);
					uv = _mm_loadh_pi(uv, (__m64*)&t[1].uv);
					uv = _mm_add_ps(_mm_mul_ps(uv, kLowResScale), offset);
					_mm_storel_pi((__m64*)&t[0].uv, uv);
					_mm_storeh_pi((__m64*)&t[1].uv, uv);
					t += 2;
				}
				LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
				                         LH3DTech::g_index_count);
				return true;
			}
		}
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);

		if (block->TextureLod == LAND_TEXTURE_LOD_BLEND)
		{
			// Draw the low-resolution texture again over the high one, fading it in across the line of g_texture_lod.
			LH3DRender::SetMaterial(block->LowRes->Material, 0);
			Vertex3D* t = LH3DTech::g_cache_t_points;
			__m128    width = _mm_set_ps1(LH3DIsland::g_texture_lod.Width);
			__m128    r = _mm_rcp_ps(width);
			r = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(width, r), r));
			__m128        alphaScale = _mm_mul_ps(r, kByteScale);
			__m128        uOffset = _mm_add_ps(_mm_set_ps1(block->LowResU), kLowResInset);
			__m128        vOffset = _mm_add_ps(_mm_set_ps1(block->LowResV), kLowResInset);
			static __m128 kBlockSize = _mm_set_ps1(LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL);
			__m128        blockX = _mm_set_ps1(block->X);
			__m128        blockZ = _mm_set_ps1(block->Z);
			__m128        pointX = _mm_set_ps1(LH3DIsland::g_texture_lod.Point.x);
			__m128        pointZ = _mm_set_ps1(LH3DIsland::g_texture_lod.Point.z);
			__m128        normalX = _mm_set_ps1(LH3DIsland::g_texture_lod.Normal.x);
			__m128        normalZ = _mm_set_ps1(LH3DIsland::g_texture_lod.Normal.z);
			__m128        limit = _mm_set_ps1(LH3DIsland::g_texture_lod.HalfWidth);
			__m128        negLimit = _mm_xor_ps(limit, _mm_set_ps1(-0.0f));
			for (int i = 0; i < LH3DTech::g_points_count; i += 4)
			{
				__m128 uv01 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[0].uv);
				uv01 = _mm_loadh_pi(uv01, (__m64*)&t[1].uv);
				__m128 uv23 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[2].uv);
				uv23 = _mm_loadh_pi(uv23, (__m64*)&t[3].uv);
				__m128 tu = _mm_shuffle_ps(uv01, uv23, 0x88);
				__m128 tv = _mm_shuffle_ps(uv01, uv23, 0xdd);
				__m128 d = LOD_DISTANCE(tu, tv);
				tu = _mm_add_ps(_mm_mul_ps(tu, kLowResScale), uOffset);
				tv = _mm_add_ps(_mm_mul_ps(tv, kLowResScale), vOffset);
				__m128 beyond = _mm_cmplt_ps(limit, d);
				__m128 fading = _mm_andnot_ps(beyond, _mm_cmplt_ps(negLimit, d));
				beyond = _mm_or_ps(beyond, fading);
				if (_mm_movemask_ps(beyond))
				{
					__m128 cs01 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[0].color);
					cs01 = _mm_loadh_pi(cs01, (__m64*)&t[1].color);
					__m128 cs23 = _mm_loadl_pi(_mm_setzero_ps(), (__m64*)&t[2].color);
					cs23 = _mm_loadh_pi(cs23, (__m64*)&t[3].color);
					__m128 color = _mm_shuffle_ps(cs01, cs23, 0x88);
					__m128 specular = _mm_shuffle_ps(cs01, cs23, 0xdd);
					color = _mm_or_ps(_mm_andnot_ps(beyond, color), _mm_and_ps(color, _mm_and_ps(beyond, maskRGB)));
					__m128i alpha = _mm_slli_epi32(_mm_cvtps_epi32(_mm_mul_ps(_mm_sub_ps(limit, d), alphaScale)), 24);
					color = _mm_or_ps(color, _mm_and_ps(fading, *(__m128*)&alpha));
					STORE_COLORS_AND_UVS(t, color, specular, tu, tv)
				}
				else
				{
					__m128 uvLo = _mm_unpacklo_ps(tu, tv);
					__m128 uvHi = _mm_unpackhi_ps(tu, tv);
					_mm_storel_pi((__m64*)&t[0].uv, uvLo);
					_mm_storeh_pi((__m64*)&t[1].uv, uvLo);
					_mm_storel_pi((__m64*)&t[2].uv, uvHi);
					_mm_storeh_pi((__m64*)&t[3].uv, uvHi);
				}
				t += 4;
			}
			LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
			                         LH3DTech::g_index_count);
		}

		if (block->DrawSmallBump)
		{
			LH3DRender::SetMaterial(LH3DIsland::g_bump_material, 0);
			Vertex3D* t = LH3DTech::g_cache_t_points;
			__m128    width = _mm_set_ps1(LH3DIsland::g_sbump_lod.Width);
			__m128    r = _mm_rcp_ps(width);
			r = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(width, r), r));
			__m128        alphaScale = _mm_mul_ps(r, kByteScale);
			__m128        uOffset = _mm_set_ps1(block->LowResU);
			__m128        vOffset = _mm_set_ps1(block->LowResV);
			static __m128 kBlockSize = _mm_set_ps1(LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL);
			__m128        blockX = _mm_set_ps1(block->X);
			__m128        blockZ = _mm_set_ps1(block->Z);
			__m128        pointX = _mm_set_ps1(LH3DIsland::g_sbump_lod.Point.x);
			__m128        pointZ = _mm_set_ps1(LH3DIsland::g_sbump_lod.Point.z);
			__m128        normalX = _mm_set_ps1(LH3DIsland::g_sbump_lod.Normal.x);
			__m128        normalZ = _mm_set_ps1(LH3DIsland::g_sbump_lod.Normal.z);
			__m128        limit = _mm_set_ps1(LH3DIsland::g_sbump_lod.HalfWidth);
			__m128        negLimit = _mm_xor_ps(limit, _mm_set_ps1(-0.0f));
			__m128        zero = _mm_setzero_ps();
			if (block->TextureLod == LAND_TEXTURE_LOD_BLEND || block->TextureLod == LAND_TEXTURE_LOD_LOW)
			{
				DRAW_SMALL_BUMP(UNDO_LOW_RES_UVS)
			}
			else
			{
				DRAW_SMALL_BUMP(KEEP_UVS)
			}

			// Draw only the triangles with a corner the bump shows on.
			int count = 0;
			int triangles = LH3DTech::g_index_count / 3;
			for (int i = 0, j = 0; j < triangles; j++, i += 3)
			{
				uint16_t a = LH3DTech::g_list_indices[i];
				uint16_t b = LH3DTech::g_list_indices[i + 1];
				uint16_t c = LH3DTech::g_list_indices[i + 2];
				if ((LH3DTech::g_cache_t_points[a].color & COLOR_ALPHA) ||
				    (LH3DTech::g_cache_t_points[b].color & COLOR_ALPHA) ||
				    (LH3DTech::g_cache_t_points[c].color & COLOR_ALPHA))
				{
					LH3DTech::g_list_indices_2[count] = a;
					LH3DTech::g_list_indices_2[count + 1] = b;
					LH3DTech::g_list_indices_2[count + 2] = c;
					count += 3;
				}
			}
			if (count != 0)
			{
				LH3DRender::PushTillingMode(0);
				LH3DRender::SetD3DTillingOn(0);
				LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
				                         LH3DTech::g_list_indices_2, count);
				LH3DRender::SetD3DTillingOff(0);
				LH3DRender::PopTillingMode(0);
			}
		}

		if (block->DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
	}

	if (drawn && (block->DrawFlags & LAND_BLOCK_DRAW_FLAG_AFTER))
	{
		uint32_t before = block->DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE;
		if (before)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		block->DrawAfter();
		if (before)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
	}
	return drawn;
}

#define ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	{                                                                                                                  \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v0;                                                      \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v1;                                                      \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v2;                                                      \
	}

// Appends the triangle unless it is back-facing in screen space.
#define ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	if ((LH3DTech::g_cache_t_points[v1].x - LH3DTech::g_cache_t_points[v0].x) *                                        \
	            (LH3DTech::g_cache_t_points[v2].y - LH3DTech::g_cache_t_points[v0].y) -                                \
	        (LH3DTech::g_cache_t_points[v2].x - LH3DTech::g_cache_t_points[v0].x) *                                    \
	            (LH3DTech::g_cache_t_points[v1].y - LH3DTech::g_cache_t_points[v0].y) >                                \
	    0.0f)                                                                                                          \
	{                                                                                                                  \
		ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	}

// As ADD_TRIANGLE_IF_FRONT, but a triangle with a vertex outside the frustum is clipped instead, or dropped if all
// three are outside the same plane.
#define ADD_TRIANGLE_CLIPPED(v0, v1, v2)                                                                               \
	if (LH3DTech::g_cache_flags[v0] | LH3DTech::g_cache_flags[v1] | LH3DTech::g_cache_flags[v2])                       \
	{                                                                                                                  \
		if ((LH3DTech::g_cache_flags[v0] & LH3DTech::g_cache_flags[v1] & LH3DTech::g_cache_flags[v2]) == 0)            \
		{                                                                                                              \
			LH3DP3::ClipTriangle(v0, v1, v2, LH3DTech::CLIP_CODE_NEAR);                                                \
		}                                                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	}

// As ADD_TRIANGLE_CLIPPED, but a back facing triangle is kept too.
#define ADD_TRIANGLE_CLIPPED_DOUBLE_SIDED(v0, v1, v2)                                                                  \
	if (LH3DTech::g_cache_flags[v0] | LH3DTech::g_cache_flags[v1] | LH3DTech::g_cache_flags[v2])                       \
	{                                                                                                                  \
		if ((LH3DTech::g_cache_flags[v0] & LH3DTech::g_cache_flags[v1] & LH3DTech::g_cache_flags[v2]) == 0)            \
		{                                                                                                              \
			LH3DP3::ClipTriangle(v0, v1, v2, LH3DTech::CLIP_CODE_NEAR);                                                \
		}                                                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	}

// As ADD_TRIANGLE_IF_FRONT, but back faces are kept too while LH3DTech::g_clip_with_double_sided is set.
#define EMIT_TRIANGLE(v0, v1, v2)                                                                                      \
	if (LH3DTech::g_clip_with_double_sided == false)                                                                   \
	{                                                                                                                  \
		ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	}

void __fastcall LH3DP3::ClipTriangle(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask)
{
	if (mask == 0)
	{
		EMIT_TRIANGLE(v0, v1, v2)
		return;
	}

	uint16_t i0, i1;
	int      f0 = LH3DTech::g_cache_flags[v0];
	int      f1, f2;
	if (f0 & mask)
	{
		f1 = LH3DTech::g_cache_flags[v1];
		if (f1 & mask)
		{
			// v0 and v1 outside.
			if (LH3DTech::g_cache_flags[v2] & mask)
			{
				return; // all three outside: nothing survives
			}
			i0 = LH3DTech::g_points_count;
			i1 = LH3DTech::g_points_count + 1;
			LH3DTech::g_points_count += 2;
			Intersect(mask, v2, v0, i0);
			Intersect(mask, v2, v1, i1);
			ClipTriangle(v2, i0, i1, mask >> 1);
		}
		else
		{
			// v0 outside, v1 inside.
			i0 = LH3DTech::g_points_count;
			i1 = LH3DTech::g_points_count + 1;
			LH3DTech::g_points_count += 2;
			if (LH3DTech::g_cache_flags[v2] & mask)
			{
				Intersect(mask, v1, v0, i0);
				Intersect(mask, v1, v2, i1);
				ClipTriangle(i0, v1, i1, mask >> 1);
			}
			else
			{
				Intersect(mask, v1, v0, i0);
				Intersect(mask, v2, v0, i1);
				ClipTriangle(i0, v1, v2, mask >> 1);
				ClipTriangle(i0, v2, i1, mask >> 1);
			}
		}
	}
	else
	{
		f1 = LH3DTech::g_cache_flags[v1];
		if ((f1 & mask) == 0)
		{
			f2 = LH3DTech::g_cache_flags[v2];
			if ((f2 & mask) == 0)
			{
				// Nothing crosses this plane.
				if ((f0 | f1 | f2) != 0)
				{
					ClipTriangle(v0, v1, v2, mask >> 1);
				}
				else
				{
					EMIT_TRIANGLE(v0, v1, v2)
				}
			}
			else
			{
				// v0, v1 inside, v2 outside.
				i0 = LH3DTech::g_points_count;
				i1 = LH3DTech::g_points_count + 1;
				LH3DTech::g_points_count += 2;
				Intersect(mask, v0, v2, i0);
				Intersect(mask, v1, v2, i1);
				ClipTriangle(i0, v0, v1, mask >> 1);
				ClipTriangle(i0, v1, i1, mask >> 1);
			}
		}
		else
		{
			// v0 inside, v1 outside.
			i0 = LH3DTech::g_points_count;
			i1 = LH3DTech::g_points_count + 1;
			LH3DTech::g_points_count += 2;
			if (LH3DTech::g_cache_flags[v2] & mask)
			{
				Intersect(mask, v0, v1, i0);
				Intersect(mask, v0, v2, i1);
				ClipTriangle(v0, i0, i1, mask >> 1);
			}
			else
			{
				Intersect(mask, v0, v1, i0);
				Intersect(mask, v2, v1, i1);
				ClipTriangle(v0, i0, v2, mask >> 1);
				ClipTriangle(i0, i1, v2, mask >> 1);
			}
		}
	}
}

// Blends the red/blue and green bytes of each colour in a towards b by weight / 256, one word per channel.
#define LERP_COLOR(result, a, b, weight)                                                                               \
	{                                                                                                                  \
		__m128i mask_rb = _mm_set1_epi32(COLOR_RED_BLUE);                                                              \
		__m128i a_rb = _mm_and_si128(a, mask_rb);                                                                      \
		__m128i b_rb = _mm_and_si128(b, mask_rb);                                                                      \
		__m128i mask_g = _mm_set1_epi32(COLOR_CHANNEL_MAX);                                                            \
		__m128i a_g = _mm_and_si128(_mm_srli_epi16(a, 8), mask_g);                                                     \
		__m128i b_g = _mm_and_si128(_mm_srli_epi16(b, 8), mask_g);                                                     \
		__m128i rb = _mm_and_si128(                                                                                    \
			_mm_add_epi16(_mm_srai_epi16(_mm_mullo_epi16(_mm_subs_epi16(b_rb, a_rb), weight), 8), a_rb), mask_rb);     \
		__m128i g = _mm_slli_epi16(                                                                                    \
			_mm_add_epi16(_mm_srai_epi16(_mm_mullo_epi16(_mm_subs_epi16(b_g, a_g), weight), 8), a_g), 8);              \
		result = _mm_or_si128(rb, g);                                                                                  \
	}

// Loads the colour and light of a cell's four corners: a holds the colour and light of the corner and of its
// neighbour along x, b the same one cell further along z.
#define GATHER_CELL_CORNERS(a, b, cell)                                                                                \
	{                                                                                                                  \
		uint32_t color00 = (*(uint32_t*)&cell[0] & COLOR_RGB) | COLOR_ALPHA;                                           \
		uint32_t light00 = cell[0].darkness;                                                                           \
		uint32_t color01 = (*(uint32_t*)&cell[1] & COLOR_RGB) | COLOR_ALPHA;                                           \
		uint32_t light01 = cell[1].darkness;                                                                           \
		uint32_t color10 = (*(uint32_t*)&cell[LAND_BLOCK_SIDE_POINTS] & COLOR_RGB) | COLOR_ALPHA;                      \
		uint32_t light10 = cell[LAND_BLOCK_SIDE_POINTS].darkness;                                                      \
		uint32_t color11 = (*(uint32_t*)&cell[LAND_BLOCK_SIDE_POINTS + 1] & COLOR_RGB) | COLOR_ALPHA;                  \
		uint32_t light11 = cell[LAND_BLOCK_SIDE_POINTS + 1].darkness;                                                  \
		__m128i  a0 = _mm_cvtsi32_si128(color00);                                                                      \
		__m128i  a1 = _mm_cvtsi32_si128(color10);                                                                      \
		__m128i  a2 = _mm_cvtsi32_si128(LandCell::g_darkness_to_color[light00]);                                       \
		__m128i  a3 = _mm_cvtsi32_si128(LandCell::g_darkness_to_color[light10]);                                       \
		a = _mm_unpacklo_epi64(_mm_unpacklo_epi32(a0, a1), _mm_unpacklo_epi32(a2, a3));                                \
		__m128i b0 = _mm_cvtsi32_si128(color01);                                                                       \
		__m128i b1 = _mm_cvtsi32_si128(color11);                                                                       \
		__m128i b2 = _mm_cvtsi32_si128(LandCell::g_darkness_to_color[light01]);                                        \
		__m128i b3 = _mm_cvtsi32_si128(LandCell::g_darkness_to_color[light11]);                                        \
		b = _mm_unpacklo_epi64(_mm_unpacklo_epi32(b0, b1), _mm_unpacklo_epi32(b2, b3));                                \
	}

// Bilinear blend of the four cell corners: the colour comes out in lane 2, the specular in lane 0.
#define BLEND_CELL_CORNERS(color, specular, a, b, weight_x, weight_z)                                                  \
	{                                                                                                                  \
		__m128i r;                                                                                                     \
		weight_z = _mm_or_si128(weight_z, _mm_slli_epi32(weight_z, 16));                                               \
		LERP_COLOR(r, a, b, weight_z);                                                                                 \
		__m128i s = _mm_shuffle_epi32(r, 0xf5);                                                                        \
		weight_x = _mm_or_si128(weight_x, _mm_slli_epi32(weight_x, 16));                                               \
		LERP_COLOR(r, r, s, weight_x);                                                                                 \
		r = _mm_or_si128(r, _mm_set1_epi32(COLOR_ALPHA));                                                              \
		*specular = _mm_cvtsi128_si32(r);                                                                              \
		*color = _mm_cvtsi128_si32(_mm_unpackhi_epi64(r, r));                                                          \
	}

void __fastcall LH3DP3::GetColorAndSpecular(const LHPoint* pos, unsigned long* color, unsigned long* specular)
{
	long      x = (long)(pos->x * 0.1f);
	long      z = (long)(pos->z * 0.1f);
	LandCell* cell = LH3DIsland::GetCell(x, z);
	if (cell == NULL)
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = COLOR_ALPHA;
		return;
	}
	__m128i a;
	__m128i b;
	GATHER_CELL_CORNERS(a, b, cell);
	__m128 cells = _mm_movelh_ps(_mm_load_ss(&pos->x), _mm_load_ss(&pos->z));
	cells = _mm_mul_ps(cells, _mm_set_ps1(0.1f));
	cells = _mm_sub_ps(cells, _mm_cvtepi32_ps(_mm_cvttps_epi32(cells)));
	__m128i weights = _mm_cvttps_epi32(_mm_mul_ps(cells, _mm_set_ps1(256.0f)));
	__m128i weight_z = _mm_shuffle_epi32(weights, 0xaa);
	__m128i weight_x = _mm_shuffle_epi32(weights, 0x00);
	BLEND_CELL_CORNERS(color, specular, a, b, weight_x, weight_z);
}

void __fastcall LH3DP3::GetColorAndSpecular(const LH3DMapCoords& coords, unsigned long* color, unsigned long* specular)
{
	uint32_t  x = coords.CellX;
	uint32_t  z = coords.CellZ;
	LandCell* cell = LH3DIsland::GetCell(x, z);
	if (cell == NULL)
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = COLOR_ALPHA;
		return;
	}
	__m128i a;
	__m128i b;
	GATHER_CELL_CORNERS(a, b, cell);
	__m128i weight_z = _mm_shuffle_epi32(_mm_cvtsi32_si128(z >> 8), 0);
	__m128i weight_x = _mm_shuffle_epi32(_mm_cvtsi32_si128(x >> 8), 0);
	BLEND_CELL_CORNERS(color, specular, a, b, weight_x, weight_z);
}

// Keeps the first n lanes of a vector, for a last block of fewer than four vertices.
// BW1W120 00fc0300
static const LH3DP3Mask kKeepLanes[5] = {
	{{0, 0, 0, 0}}, {{-1, 0, 0, 0}}, {{-1, -1, 0, 0}}, {{-1, -1, -1, 0}}, {{-1, -1, -1, -1}},
};

// Single lanes, for gathering the components of packed points.
// BW1W120 00fc0b20
static const LH3DP3Mask kMask0 = {{-1, 0, 0, 0}};
// BW1W120 00fc0ae0
static const LH3DP3Mask kMask1 = {{0, -1, 0, 0}};
// BW1W120 00fc0ac0
static const LH3DP3Mask kMask2 = {{0, 0, -1, 0}};
// BW1W120 00fc0aa0
static const LH3DP3Mask kMask3 = {{0, 0, 0, -1}};
// BW1W120 00fc0a80
static const LH3DP3Mask kMask03 = {{-1, 0, 0, -1}};

// Loads the positions and texture coordinates of four consecutive vertices, one component per vector. The
// vertices are only 4-byte aligned, so either the even or the odd pairs of floats can be loaded 8 bytes at a time.
#define LOAD_VERTICES(x, y, z, u, v, vertex)                                                                           \
	{                                                                                                                  \
		const float* p = (const float*)(vertex);                                                                       \
		__m128       t0, t1, t2, t3, t4, t5;                                                                           \
		if (((int)p & 7) == 0)                                                                                         \
		{                                                                                                              \
			t0 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 0));                                                \
			t1 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 2));                                                \
			t2 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 4));                                                \
			t0 = _mm_loadh_pi(t0, (const __m64*)(p + 8));                                                              \
			t1 = _mm_loadh_pi(t1, (const __m64*)(p + 10));                                                             \
			t2 = _mm_loadh_pi(t2, (const __m64*)(p + 12));                                                             \
			t3 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 16));                                               \
			t4 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 18));                                               \
			t5 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 20));                                               \
			t3 = _mm_loadh_pi(t3, (const __m64*)(p + 24));                                                             \
			t4 = _mm_loadh_pi(t4, (const __m64*)(p + 26));                                                             \
			t5 = _mm_loadh_pi(t5, (const __m64*)(p + 28));                                                             \
			x = _mm_shuffle_ps(t0, t3, 0x88);                                                                          \
			y = _mm_shuffle_ps(t0, t3, 0xdd);                                                                          \
			z = _mm_shuffle_ps(t1, t4, 0x88);                                                                          \
			u = _mm_shuffle_ps(t1, t4, 0xdd);                                                                          \
			v = _mm_shuffle_ps(t2, t5, 0x88);                                                                          \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			t0 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p - 1));                                                \
			t1 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 1));                                                \
			t2 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 3));                                                \
			t0 = _mm_loadh_pi(t0, (const __m64*)(p + 7));                                                              \
			t1 = _mm_loadh_pi(t1, (const __m64*)(p + 9));                                                              \
			t2 = _mm_loadh_pi(t2, (const __m64*)(p + 11));                                                             \
			t3 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 15));                                               \
			t4 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 17));                                               \
			t5 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 19));                                               \
			t3 = _mm_loadh_pi(t3, (const __m64*)(p + 23));                                                             \
			t4 = _mm_loadh_pi(t4, (const __m64*)(p + 25));                                                             \
			t5 = _mm_loadh_pi(t5, (const __m64*)(p + 27));                                                             \
			x = _mm_shuffle_ps(t0, t3, 0xdd);                                                                          \
			y = _mm_shuffle_ps(t1, t4, 0x88);                                                                          \
			z = _mm_shuffle_ps(t1, t4, 0xdd);                                                                          \
			u = _mm_shuffle_ps(t2, t5, 0x88);                                                                          \
			v = _mm_shuffle_ps(t2, t5, 0xdd);                                                                          \
		}                                                                                                              \
	}

// As LOAD_VERTICES, with the normals. In the odd case the normal z of each vertex shares a pair with the x of the
// next one, so the last one is loaded on its own.
#define LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex)                                                       \
	{                                                                                                                  \
		const float* p = (const float*)(vertex);                                                                       \
		__m128       t0, t1, t2, t3, t4, t5, t6, t7;                                                                   \
		if (((int)p & 7) == 0)                                                                                         \
		{                                                                                                              \
			t0 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 0));                                                \
			t1 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 2));                                                \
			t2 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 4));                                                \
			t3 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 6));                                                \
			t0 = _mm_loadh_pi(t0, (const __m64*)(p + 8));                                                              \
			t1 = _mm_loadh_pi(t1, (const __m64*)(p + 10));                                                             \
			t2 = _mm_loadh_pi(t2, (const __m64*)(p + 12));                                                             \
			t3 = _mm_loadh_pi(t3, (const __m64*)(p + 14));                                                             \
			t4 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 16));                                               \
			t5 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 18));                                               \
			t6 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 20));                                               \
			t7 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 22));                                               \
			t4 = _mm_loadh_pi(t4, (const __m64*)(p + 24));                                                             \
			t5 = _mm_loadh_pi(t5, (const __m64*)(p + 26));                                                             \
			t6 = _mm_loadh_pi(t6, (const __m64*)(p + 28));                                                             \
			t7 = _mm_loadh_pi(t7, (const __m64*)(p + 30));                                                             \
			x = _mm_shuffle_ps(t0, t4, 0x88);                                                                          \
			y = _mm_shuffle_ps(t0, t4, 0xdd);                                                                          \
			z = _mm_shuffle_ps(t1, t5, 0x88);                                                                          \
			u = _mm_shuffle_ps(t1, t5, 0xdd);                                                                          \
			v = _mm_shuffle_ps(t2, t6, 0x88);                                                                          \
			nx = _mm_shuffle_ps(t2, t6, 0xdd);                                                                         \
			ny = _mm_shuffle_ps(t3, t7, 0x88);                                                                         \
			nz = _mm_shuffle_ps(t3, t7, 0xdd);                                                                         \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			t0 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p - 1));                                                \
			t1 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 1));                                                \
			t2 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 3));                                                \
			t3 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 5));                                                \
			t0 = _mm_loadh_pi(t0, (const __m64*)(p + 7));                                                              \
			t1 = _mm_loadh_pi(t1, (const __m64*)(p + 9));                                                              \
			t2 = _mm_loadh_pi(t2, (const __m64*)(p + 11));                                                             \
			t3 = _mm_loadh_pi(t3, (const __m64*)(p + 13));                                                             \
			t4 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 15));                                               \
			t5 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 17));                                               \
			t6 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 19));                                               \
			t7 = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)(p + 21));                                               \
			t4 = _mm_loadh_pi(t4, (const __m64*)(p + 23));                                                             \
			t5 = _mm_loadh_pi(t5, (const __m64*)(p + 25));                                                             \
			t6 = _mm_loadh_pi(t6, (const __m64*)(p + 27));                                                             \
			t7 = _mm_loadh_pi(t7, (const __m64*)(p + 29));                                                             \
			x = _mm_shuffle_ps(t0, t4, 0xdd);                                                                          \
			nz = _mm_shuffle_ps(_mm_or_ps(_mm_andnot_ps(_mm_load_ss(kMask0.f), t0), _mm_load_ss(p + 31)), t4, 0x88);   \
			y = _mm_shuffle_ps(t1, t5, 0x88);                                                                          \
			z = _mm_shuffle_ps(t1, t5, 0xdd);                                                                          \
			u = _mm_shuffle_ps(t2, t6, 0x88);                                                                          \
			v = _mm_shuffle_ps(t2, t6, 0xdd);                                                                          \
			nx = _mm_shuffle_ps(t3, t7, 0x88);                                                                         \
			ny = _mm_shuffle_ps(t3, t7, 0xdd);                                                                         \
			nz = _mm_shuffle_ps(nz, nz, 0x27);                                                                         \
		}                                                                                                              \
	}

// Loads four consecutive points, one component per vector, by masking each component out of the aligned blocks
// that hold the twelve floats.
#define LOAD_POINTS(x, y, z, points)                                                                                   \
	{                                                                                                                  \
		const float* p = (const float*)(points);                                                                       \
		const __m128 mask03 = _mm_load_ps(kMask03.f);                                                                  \
		const __m128 mask3 = _mm_load_ps(kMask3.f);                                                                    \
		const __m128 mask2 = _mm_load_ps(kMask2.f);                                                                    \
		const __m128 mask1 = _mm_load_ps(kMask1.f);                                                                    \
		const __m128 mask0 = _mm_load_ss(kMask0.f);                                                                    \
		switch ((int)p & 0xf)                                                                                          \
		{                                                                                                              \
		case 0:                                                                                                        \
			x = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p), mask03), _mm_and_ps(_mm_load_ps(p + 4), mask2)),        \
			              _mm_and_ps(_mm_load_ps(p + 8), mask1));                                                      \
			y = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p), mask1), _mm_and_ps(_mm_load_ps(p + 4), mask03)),        \
			              _mm_and_ps(_mm_load_ps(p + 8), mask2));                                                      \
			z = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p), mask2), _mm_and_ps(_mm_load_ps(p + 4), mask1)),         \
			              _mm_and_ps(_mm_load_ps(p + 8), mask03));                                                     \
			x = _mm_shuffle_ps(x, x, 0x6c);                                                                            \
			y = _mm_shuffle_ps(y, y, 0xb1);                                                                            \
			z = _mm_shuffle_ps(z, z, 0xc6);                                                                            \
			break;                                                                                                     \
		case 4:                                                                                                        \
			x = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p - 1), mask1), _mm_and_ps(_mm_load_ps(p + 3), mask03)),    \
			              _mm_and_ps(_mm_load_ps(p + 7), mask2));                                                      \
			y = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p - 1), mask2), _mm_and_ps(_mm_load_ps(p + 3), mask1)),     \
			              _mm_and_ps(_mm_load_ps(p + 7), mask03));                                                     \
			z = _mm_or_ps(_mm_load_ss(p + 11), _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p - 1), mask3),              \
			                                                       _mm_and_ps(_mm_load_ps(p + 3), mask2)),             \
			                                             _mm_and_ps(_mm_load_ps(p + 7), mask1)));                      \
			x = _mm_shuffle_ps(x, x, 0xb1);                                                                            \
			y = _mm_shuffle_ps(y, y, 0xc6);                                                                            \
			z = _mm_shuffle_ps(z, z, 0x1b);                                                                            \
			break;                                                                                                     \
		case 8: {                                                                                                      \
			__m128 e = _mm_loadl_pi(_mm_loadh_pi(_mm_setzero_ps(), (const __m64*)(p - 2)), (const __m64*)(p + 10));    \
			x = _mm_or_ps(_mm_or_ps(_mm_and_ps(e, mask2), _mm_and_ps(_mm_load_ps(p + 2), mask1)),                      \
			              _mm_and_ps(_mm_load_ps(p + 6), mask03));                                                     \
			y = _mm_or_ps(_mm_or_ps(_mm_and_ps(e, mask03), _mm_and_ps(_mm_load_ps(p + 2), mask2)),                     \
			              _mm_and_ps(_mm_load_ps(p + 6), mask1));                                                      \
			z = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p + 2), mask03), _mm_and_ps(_mm_load_ps(p + 6), mask2)),    \
			              _mm_and_ps(e, mask1));                                                                       \
			x = _mm_shuffle_ps(x, x, 0xc6);                                                                            \
			y = _mm_shuffle_ps(y, y, 0x1b);                                                                            \
			z = _mm_shuffle_ps(z, z, 0x6c);                                                                            \
			break;                                                                                                     \
		}                                                                                                              \
		case 12:                                                                                                       \
			x = _mm_or_ps(                                                                                             \
				_mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p - 3), mask3), _mm_and_ps(_mm_load_ps(p + 1), mask2)),     \
			              _mm_and_ps(_mm_load_ps(p + 5), mask1)),                                                      \
				_mm_and_ps(mask0, _mm_load_ps(p + 9)));                                                                \
			y = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p + 1), mask03), _mm_and_ps(_mm_load_ps(p + 5), mask2)),    \
			              _mm_and_ps(_mm_load_ps(p + 9), mask1));                                                      \
			z = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_load_ps(p + 1), mask1), _mm_and_ps(_mm_load_ps(p + 5), mask03)),    \
			              _mm_and_ps(_mm_load_ps(p + 9), mask2));                                                      \
			x = _mm_shuffle_ps(x, x, 0x1b);                                                                            \
			y = _mm_shuffle_ps(y, y, 0x6c);                                                                            \
			z = _mm_shuffle_ps(z, z, 0xb1);                                                                            \
			break;                                                                                                     \
		default:                                                                                                       \
			x = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_loadu_ps(p), mask03), _mm_and_ps(_mm_loadu_ps(p + 4), mask2)),      \
			              _mm_and_ps(_mm_loadu_ps(p + 8), mask1));                                                     \
			y = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_loadu_ps(p), mask1), _mm_and_ps(_mm_loadu_ps(p + 4), mask03)),      \
			              _mm_and_ps(_mm_loadu_ps(p + 8), mask2));                                                     \
			z = _mm_or_ps(_mm_or_ps(_mm_and_ps(_mm_loadu_ps(p), mask2), _mm_and_ps(_mm_loadu_ps(p + 4), mask1)),       \
			              _mm_and_ps(_mm_loadu_ps(p + 8), mask03));                                                    \
			x = _mm_shuffle_ps(x, x, 0x6c);                                                                            \
			y = _mm_shuffle_ps(y, y, 0xb1);                                                                            \
			z = _mm_shuffle_ps(z, z, 0xc6);                                                                            \
			break;                                                                                                     \
		}                                                                                                              \
	}

// The sun in the space of a bone: the clipping-space sun through the inverse of the bone matrix, normalised and
// splatted into lightX..lightZ.
#define LOAD_BONE_LIGHT(matrix)                                                                                        \
	LHPoint  sun;                                                                                                      \
	LHMatrix inverse;                                                                                                  \
	inverse.SetInverse(*(matrix));                                                                                     \
	sun = inverse * LH3DTech::GetClippingSun();                                                                        \
	__m128 sunX = _mm_load_ss(&sun.x);                                                                                 \
	__m128 sunY = _mm_load_ss(&sun.y);                                                                                 \
	__m128 sunZ = _mm_load_ss(&sun.z);                                                                                 \
	__m128 length =                                                                                                    \
		_mm_rsqrt_ss(_mm_add_ss(_mm_add_ss(_mm_mul_ss(sunX, sunX), _mm_mul_ss(sunY, sunY)), _mm_mul_ss(sunZ, sunZ)));  \
	sunX = _mm_mul_ss(sunX, length);                                                                                   \
	sunY = _mm_mul_ss(sunY, length);                                                                                   \
	sunZ = _mm_mul_ss(sunZ, length);                                                                                   \
	__m128 lightX = _mm_shuffle_ps(sunX, sunX, 0x00);                                                                  \
	__m128 lightY = _mm_shuffle_ps(lightX, lightX, 0x00);                                                              \
	__m128 lightZ = _mm_shuffle_ps(lightX, lightX, 0x00);

// Transforms four vertices by the splatted matrix: sx, sy and sw (the depth) are in clipping space.
#define TRANSFORM_VERTICES(sx, sy, sw, x, y, z)                                                                        \
	{                                                                                                                  \
		sx = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(x, m11), _mm_mul_ps(y, m21)), _mm_mul_ps(z, m31)), m41);      \
		sy = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(x, m12), _mm_mul_ps(y, m22)), _mm_mul_ps(z, m32)), m42);      \
		sw = _mm_add_ps(_mm_add_ps(_mm_add_ps(_mm_mul_ps(x, m13), _mm_mul_ps(y, m23)), _mm_mul_ps(z, m33)), m43);      \
	}

// Computes the clip codes of four vertices and projects the ones that are inside the frustum: sx and sy become
// screen coordinates, sw the rhw and sz the screen depth. The others keep their clipping space coordinates for
// LH3DP3::ClipTriangle.
#define CLIP_AND_PROJECT(codes, sx, sy, sz, sw)                                                                        \
	{                                                                                                                  \
		CLIP_CODES(codes, sx, sy, sw)                                                                                  \
		__m128 inside = _mm_cmpeq_ps(codes, zero);                                                                     \
		if (_mm_movemask_ps(inside))                                                                                   \
		{                                                                                                              \
			__m128 px, py, rhw;                                                                                        \
			PROJECT_VERTICES(px, py, rhw, sx, sy, sw);                                                                 \
			sz = _mm_sub_ps(kOne, rhw);                                                                                \
			sx = _mm_or_ps(_mm_andnot_ps(inside, sx), _mm_and_ps(px, inside));                                         \
			sy = _mm_or_ps(_mm_andnot_ps(inside, sy), _mm_and_ps(py, inside));                                         \
			sw = _mm_or_ps(_mm_andnot_ps(inside, sw), _mm_and_ps(rhw, inside));                                        \
		}                                                                                                              \
	}

// Modulates the mesh colour by the light falling on four vertices: the cosine to the light, mapped onto
// MIN_LIGHT..255.
#define LIGHT_VERTICES(lit, nx, ny, nz)                                                                                \
	{                                                                                                                  \
		__m128 light = _mm_add_ps(_mm_add_ps(_mm_mul_ps(nx, lightX), _mm_mul_ps(ny, lightY)), _mm_mul_ps(nz, lightZ)); \
		light = _mm_and_ps(light, _mm_cmple_ps(zero, light));                                                          \
		light = _mm_mul_ps(_mm_add_ps(_mm_mul_ps(light, kLightRange), kMinLight), kByteScale);                         \
		__m128i intensity = _mm_cvtps_epi32(light);                                                                    \
		intensity = _mm_or_si128(intensity, _mm_slli_epi32(intensity, 16));                                            \
		intensity = _mm_min_epi16(intensity, _mm_set1_epi16(LH3D_P3_WEIGHT_ONE));                                      \
		SCALE_COLOR(lit, color, intensity);                                                                            \
	}

// The light scales the colour from MIN_LIGHT / 255 in the shade to 1 facing it.
#define LOAD_LIGHT_RANGE()                                                                                             \
	static __m128 kMinLight = _mm_set_ps1((float)LH3DPrimitive::MIN_LIGHT / 255.0);                                    \
	static __m128 kLightRange = _mm_set_ps1((float)(255 - LH3DPrimitive::MIN_LIGHT) / 255.0);

// The viewport the projected vertices are clamped to.
#define LOAD_VIEWPORT()                                                                                                \
	__m128 nearClip = _mm_set_ps1(LH3DTech::g_info_transform.NearClip);                                                \
	__m128 halfResX = _mm_set_ps1(LH3DTech::g_info_transform.HalfRes.x);                                               \
	__m128 halfResY = _mm_set_ps1(LH3DTech::g_info_transform.HalfRes.y);                                               \
	__m128 maxScreenX = _mm_set_ps1(LH3DTech::g_max_screen[0]);                                                        \
	__m128 maxScreenY = _mm_set_ps1(LH3DTech::g_max_screen[1]);

// Queues the triangles of a primitive with ADD_DOUBLE_SIDED or ADD_SINGLE_SIDED, as its material says.
#define ADD_PRIMITIVE_TRIANGLES(primitive, ADD_DOUBLE_SIDED, ADD_SINGLE_SIDED)                                         \
	{                                                                                                                  \
		LH3DTriangle* triangle = (primitive)->Triangles;                                                               \
		LH3DTech::g_clip_with_double_sided = (primitive)->Material.IsDoubleSided();                                    \
		int i = 0;                                                                                                     \
		if (LH3DTech::g_clip_with_double_sided)                                                                        \
		{                                                                                                              \
			for (; i < (primitive)->NumTriangles; i++, triangle++)                                                     \
			{                                                                                                          \
				uint16_t a = triangle->GetA();                                                                         \
				uint16_t b = triangle->GetB();                                                                         \
				uint16_t c = triangle->GetC();                                                                         \
				ADD_DOUBLE_SIDED(a, b, c)                                                                              \
			}                                                                                                          \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			for (; i < (primitive)->NumTriangles; i++, triangle++)                                                     \
			{                                                                                                          \
				uint16_t a = triangle->GetA();                                                                         \
				uint16_t b = triangle->GetB();                                                                         \
				uint16_t c = triangle->GetC();                                                                         \
				ADD_SINGLE_SIDED(a, b, c)                                                                              \
			}                                                                                                          \
		}                                                                                                              \
	}

void __fastcall LH3DP3::DrawPrimitive0(LH3DPrimitive* primitive)
{
	LH3DPrimitive::g_current_primitive = primitive;
	Vertex3D*      point = (Vertex3D*)GetTable1();
	unsigned long* clip = (unsigned long*)GetTable0();
	LH3DVertex*    vertex = primitive->Vertices;

	static __m128 kOne = _mm_set_ps1(1.0f);
	LOAD_CLIP_CODES();
	__m128i color = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_color), 0);
	__m128i specular = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_specular), 0);
	LOAD_VIEWPORT();

	if (LH3DSubMesh::g_current_sub_mesh->HasBones())
	{
		// Each group of vertices follows its own bone.
		int start = 0;
		int i = 0;
		if (i < primitive->NumVertexGroups)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[i];
				LHMatrix*        matrix = &LH3DMesh::GetCurrentMatrix()[group->GetBoneIndex()];
				LOAD_MATRIX(matrix);
				int end = start + group->vertex_count;
				int j = start;
				if (j < end)
				{
					do
					{
						__m128 x, y, z, u, v;
						LOAD_VERTICES(x, y, z, u, v, vertex);
						int  remaining = end - j;
						bool full = remaining >= 4;
						if (!full)
						{
							x = _mm_and_ps(x, kKeepLanes[remaining].v);
							y = _mm_and_ps(y, kKeepLanes[remaining].v);
							z = _mm_and_ps(z, kKeepLanes[remaining].v);
						}
						__m128 sx, sy, sw, codes;
						TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
						CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
						STORE_VERTICES(point, sx, sy, sz, sw, color, specular, u, v);
						StoreClipCodes(clip, codes);
						// The next group starts right after the last vertex of this one.
						int count = full ? 4 : remaining;
						clip += count;
						point += count;
						vertex += count;
						j += 4;
					} while (j < end);
				}
				start += group->vertex_count;
				i++;
			} while (i < primitive->NumVertexGroups);
		}
	}
	else
	{
		LOAD_MATRIX(LH3DTech::g_current_matrix);
		int i = 0;
		if (i < primitive->NumVertices)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				__m128 x, y, z, u, v;
				LOAD_VERTICES(x, y, z, u, v, vertex);
				int remaining = primitive->NumVertices - i;
				if (remaining < 4)
				{
					x = _mm_and_ps(x, kKeepLanes[remaining].v);
					y = _mm_and_ps(y, kKeepLanes[remaining].v);
					z = _mm_and_ps(z, kKeepLanes[remaining].v);
				}
				__m128 sx, sy, sw, codes;
				TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
				CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
				STORE_VERTICES(point, sx, sy, sz, sw, color, specular, u, v);
				StoreClipCodes(clip, codes);
				clip += 4;
				point += 4;
				vertex += 4;
				i += 4;
			} while (i < primitive->NumVertices);
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = primitive->NumVertices;
	ADD_PRIMITIVE_TRIANGLES(primitive, ADD_TRIANGLE_CLIPPED_DOUBLE_SIDED, ADD_TRIANGLE_CLIPPED);
	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(&primitive->Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	LH3DPrimitive::g_current_index_primitive++;
}

void __fastcall LH3DP3::DrawPrimitive1(LH3DPrimitive* primitive)
{
	LH3DPrimitive::g_current_primitive = primitive;
	Vertex3D*      point = (Vertex3D*)GetTable1();
	unsigned long* clip = (unsigned long*)GetTable0();
	LH3DVertex*    vertex = primitive->Vertices;

	static __m128 kOne = _mm_set_ps1(1.0f);
	static __m128 kByteScale = _mm_set_ps1(255.0f);
	LOAD_CLIP_CODES();
	__m128i color = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_color), 0);
	__m128i specular = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_specular), 0);
	LOAD_LIGHT_RANGE();
	LOAD_VIEWPORT();
	LOAD_MATRIX(LH3DTech::g_current_matrix);
	__m128 lightX = _mm_set_ps1(LH3DPrimitive::g_vect_light.x);
	__m128 lightY = _mm_set_ps1(LH3DPrimitive::g_vect_light.y);
	__m128 lightZ = _mm_set_ps1(LH3DPrimitive::g_vect_light.z);

	if (LH3DObject::g_current_object_in_draw->IsHDO())
	{
		// A full translation per vertex.
		float* translate = LH3DPrimitive::g_vertical_translate_vertices;
		int    i = 0;
		if (i < primitive->NumVertices)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				__m128 x, y, z, u, v, nx, ny, nz, tx, ty, tz;
				LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
				LOAD_POINTS(tx, ty, tz, translate);
				int  remaining = primitive->NumVertices - i;
				bool full = remaining >= 4;
				if (!full)
				{
					x = _mm_and_ps(x, kKeepLanes[remaining].v);
					y = _mm_and_ps(y, kKeepLanes[remaining].v);
					z = _mm_and_ps(z, kKeepLanes[remaining].v);
					tx = _mm_and_ps(tx, kKeepLanes[remaining].v);
					ty = _mm_and_ps(ty, kKeepLanes[remaining].v);
					tz = _mm_and_ps(tz, kKeepLanes[remaining].v);
					nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
					ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
					nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
				}
				x = _mm_add_ps(x, tx);
				y = _mm_add_ps(y, ty);
				z = _mm_add_ps(z, tz);
				__m128 sx, sy, sw, codes;
				TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
				CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
				__m128i lit;
				LIGHT_VERTICES(lit, nx, ny, nz);
				STORE_VERTICES(point, sx, sy, sz, sw, lit, specular, u, v);
				StoreClipCodes(clip, codes);
				clip += 4;
				point += 4;
				vertex += 4;
				translate += 3 * (full ? 4 : primitive->NumVertices - i);
				i += 4;
			} while (i < primitive->NumVertices);
		}
		LH3DPrimitive::g_vertical_translate_vertices = translate;
	}
	else
	{
		// Only a vertical translation per vertex.
		int i = 0;
		if (i < primitive->NumVertices)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				__m128 x, y, z, u, v, nx, ny, nz;
				LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
				__m128 ty = _mm_set_ps1(*LH3DPrimitive::g_vertical_translate_vertices);
				int    remaining = primitive->NumVertices - i;
				bool   full = remaining >= 4;
				if (!full)
				{
					x = _mm_and_ps(x, kKeepLanes[remaining].v);
					y = _mm_and_ps(y, kKeepLanes[remaining].v);
					z = _mm_and_ps(z, kKeepLanes[remaining].v);
					ty = _mm_and_ps(ty, kKeepLanes[remaining].v);
					nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
					ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
					nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
				}
				y = _mm_add_ps(y, ty);
				__m128 sx, sy, sw, codes;
				TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
				CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
				__m128i lit;
				LIGHT_VERTICES(lit, nx, ny, nz);
				STORE_VERTICES(point, sx, sy, sz, sw, lit, specular, u, v);
				StoreClipCodes(clip, codes);
				clip += 4;
				point += 4;
				vertex += 4;
				LH3DPrimitive::g_vertical_translate_vertices += full ? 4 : primitive->NumVertices - i;
				i += 4;
			} while (i < primitive->NumVertices);
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = primitive->NumVertices;
	ADD_PRIMITIVE_TRIANGLES(primitive, ADD_TRIANGLE_CLIPPED_DOUBLE_SIDED, ADD_TRIANGLE_CLIPPED);
	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(&primitive->Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void __fastcall LH3DP3::DrawPrimitive2(LH3DPrimitive* primitive)
{
	LH3DPrimitive::g_current_primitive = primitive;
	Vertex3D*      point = (Vertex3D*)GetTable1();
	unsigned long* clip = (unsigned long*)GetTable0();
	LH3DVertex*    vertex = primitive->Vertices;

	static __m128 kOne = _mm_set_ps1(1.0f);
	static __m128 kByteScale = _mm_set_ps1(255.0f);
	LOAD_CLIP_CODES();
	unsigned long diffuse = primitive->Material.GetTexture()
	                            ? LH3DMesh::g_color
	                            : primitive->Material.ModulateColor(LH3DColor(LH3DMesh::g_color));
	__m128i       color = _mm_shuffle_epi32(_mm_cvtsi32_si128(diffuse), 0);
	__m128i       specular = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_specular), 0);
	LOAD_LIGHT_RANGE();
	LOAD_VIEWPORT();

	if (LH3DSubMesh::g_current_sub_mesh->HasBones())
	{
		int start = 0;
		int i = 0;
		if (i < primitive->NumVertexGroups)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[i];
				LHMatrix*        matrix = &LH3DMesh::GetCurrentMatrix()[group->GetBoneIndex()];
				LOAD_MATRIX(matrix);
				LOAD_BONE_LIGHT(matrix);
				int end = start + group->GetVertexCount();
				int j = start;
				if (j < end)
				{
					do
					{
						__m128 x, y, z, u, v, nx, ny, nz;
						LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
						int  remaining = end - j;
						bool full = remaining >= 4;
						if (!full)
						{
							x = _mm_and_ps(x, kKeepLanes[remaining].v);
							y = _mm_and_ps(y, kKeepLanes[remaining].v);
							z = _mm_and_ps(z, kKeepLanes[remaining].v);
							nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
							ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
							nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
						}
						__m128 sx, sy, sw, codes;
						TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
						CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
						__m128i lit;
						LIGHT_VERTICES(lit, nx, ny, nz);
						STORE_VERTICES(point, sx, sy, sz, sw, lit, specular, u, v);
						StoreClipCodes(clip, codes);
						int count = full ? 4 : remaining;
						clip += count;
						point += count;
						vertex += count;
						j += 4;
					} while (j < end);
				}
				start += group->vertex_count;
				i++;
			} while (i < primitive->NumVertexGroups);
		}
	}
	else
	{
		LOAD_MATRIX(LH3DTech::g_current_matrix);
		__m128 lightX = _mm_set_ps1(LH3DPrimitive::g_vect_light.x);
		__m128 lightY = _mm_set_ps1(LH3DPrimitive::g_vect_light.y);
		__m128 lightZ = _mm_set_ps1(LH3DPrimitive::g_vect_light.z);
		int    i = 0;
		if (i < primitive->NumVertices)
		{
			__m128 sz = _mm_setzero_ps();
			__m128 zero = _mm_setzero_ps();
			do
			{
				__m128 x, y, z, u, v, nx, ny, nz;
				LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
				int remaining = primitive->NumVertices - i;
				if (remaining < 4)
				{
					x = _mm_and_ps(x, kKeepLanes[remaining].v);
					y = _mm_and_ps(y, kKeepLanes[remaining].v);
					z = _mm_and_ps(z, kKeepLanes[remaining].v);
					nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
					ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
					nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
				}
				__m128 sx, sy, sw, codes;
				TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
				CLIP_AND_PROJECT(codes, sx, sy, sz, sw);
				__m128i lit;
				LIGHT_VERTICES(lit, nx, ny, nz);
				STORE_VERTICES(point, sx, sy, sz, sw, lit, specular, u, v);
				StoreClipCodes(clip, codes);
				clip += 4;
				point += 4;
				vertex += 4;
				i += 4;
			} while (i < primitive->NumVertices);
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = primitive->NumVertices;
	ADD_PRIMITIVE_TRIANGLES(primitive, ADD_TRIANGLE_CLIPPED_DOUBLE_SIDED, ADD_TRIANGLE_CLIPPED);
	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(&primitive->Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	LH3DPrimitive::g_current_index_primitive++;
}

void __fastcall LH3DP3::DrawPrimitive3(LH3DPrimitive* primitive)
{
	LH3DPrimitive::g_current_primitive = primitive;
	Vertex3D*   point = (Vertex3D*)GetTable1();
	LH3DVertex* vertex = primitive->Vertices;

	static __m128 kOne = _mm_set_ps1(1.0f);
	static __m128 kByteScale = _mm_set_ps1(255.0f);
	unsigned long diffuse = primitive->Material.GetTexture()
	                            ? LH3DMesh::g_color
	                            : primitive->Material.ModulateColor(LH3DColor(LH3DMesh::g_color));
	__m128i       color = _mm_shuffle_epi32(_mm_cvtsi32_si128(diffuse), 0);
	__m128i       specular = _mm_shuffle_epi32(_mm_cvtsi32_si128(LH3DMesh::g_specular), 0);
	LOAD_LIGHT_RANGE();
	LOAD_VIEWPORT();

	if (LH3DSubMesh::g_current_sub_mesh->HasBones())
	{
		int start = 0;
		for (int i = 0; i < primitive->NumVertexGroups; i++)
		{
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[i];
				LHMatrix*        matrix = &LH3DMesh::GetCurrentMatrix()[group->GetBoneIndex()];
				LOAD_MATRIX(matrix);
				LOAD_BONE_LIGHT(matrix);
				int end = start + group->GetVertexCount();
				for (int j = start; j < end; j += 4)
				{
					{
						__m128 x, y, z, u, v, nx, ny, nz;
						LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
						int  remaining = end - j;
						bool full = remaining >= 4;
						if (!full)
						{
							x = _mm_and_ps(x, kKeepLanes[remaining].v);
							y = _mm_and_ps(y, kKeepLanes[remaining].v);
							z = _mm_and_ps(z, kKeepLanes[remaining].v);
							nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
							ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
							nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
						}
						__m128 zero = _mm_setzero_ps();
						__m128 sx, sy, sw;
						TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
						__m128 px, py, rhw;
						PROJECT_VERTICES(px, py, rhw, sx, sy, sw);
						__m128  sz = _mm_sub_ps(kOne, rhw);
						__m128i lit;
						LIGHT_VERTICES(lit, nx, ny, nz);
						STORE_VERTICES(point, px, py, sz, rhw, lit, specular, u, v);
						int count = full ? 4 : remaining;
						point += count;
						vertex += count;
					}
				}
				start += group->vertex_count;
			}
		}
	}
	else
	{
		LOAD_MATRIX(LH3DTech::g_current_matrix);
		__m128 lightX = _mm_set_ps1(LH3DPrimitive::g_vect_light.x);
		__m128 lightY = _mm_set_ps1(LH3DPrimitive::g_vect_light.y);
		__m128 lightZ = _mm_set_ps1(LH3DPrimitive::g_vect_light.z);
		for (int i = 0; i < primitive->NumVertices; i += 4)
		{
			{
				__m128 x, y, z, u, v, nx, ny, nz;
				LOAD_VERTICES_NORMALS(x, y, z, u, v, nx, ny, nz, vertex);
				int remaining = primitive->NumVertices - i;
				if (remaining < 4)
				{
					x = _mm_and_ps(x, kKeepLanes[remaining].v);
					y = _mm_and_ps(y, kKeepLanes[remaining].v);
					z = _mm_and_ps(z, kKeepLanes[remaining].v);
					nx = _mm_and_ps(nx, kKeepLanes[remaining].v);
					ny = _mm_and_ps(ny, kKeepLanes[remaining].v);
					nz = _mm_and_ps(nz, kKeepLanes[remaining].v);
				}
				__m128 zero = _mm_setzero_ps();
				__m128 sx, sy, sw;
				TRANSFORM_VERTICES(sx, sy, sw, x, y, z);
				__m128 px, py, rhw;
				PROJECT_VERTICES(px, py, rhw, sx, sy, sw);
				__m128  sz = _mm_sub_ps(kOne, rhw);
				__m128i lit;
				LIGHT_VERTICES(lit, nx, ny, nz);
				STORE_VERTICES(point, px, py, sz, rhw, lit, specular, u, v);
				point += 4;
				vertex += 4;
			}
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = primitive->NumVertices;
	ADD_PRIMITIVE_TRIANGLES(primitive, ADD_TRIANGLE, ADD_TRIANGLE_IF_FRONT);

	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(&primitive->Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

static inline void SinCos(float* sin_result, float* cos_result, float angle)
{
	__m128 s;
	__m128 c;
	am_sincos_ess(_mm_load_ss(&angle), &s, &c);
	_mm_store_ss(sin_result, s);
	_mm_store_ss(cos_result, c);
}

void __fastcall LH3DP3::DrawSprite(LH3DSprite* sprite)
{
	float camX;
	float camY;
	float camZ;
	if (!sprite->Horizontal)
	{
		camZ = sprite->pos.x * LH3DTech::g_world_to_camera._13 + LH3DTech::g_world_to_camera._43 +
		       sprite->pos.y * LH3DTech::g_world_to_camera._23 + sprite->pos.z * LH3DTech::g_world_to_camera._33;
		if (camZ <= LH3DTech::g_info_transform.NearClip)
		{
			return;
		}
		camX = sprite->pos.x * LH3DTech::g_world_to_camera._11 + LH3DTech::g_world_to_camera._41 +
		       sprite->pos.y * LH3DTech::g_world_to_camera._21 + sprite->pos.z * LH3DTech::g_world_to_camera._31;
		camY = sprite->pos.x * LH3DTech::g_world_to_camera._12 + LH3DTech::g_world_to_camera._42 +
		       sprite->pos.y * LH3DTech::g_world_to_camera._22 + sprite->pos.z * LH3DTech::g_world_to_camera._32;
	}

	LHMatrix& matrix = LH3DTech::g_local_to_clipping;
	if (sprite->Horizontal)
	{
		// Lying flat: turn about y and go straight to clip space.
		if (sprite->angle != 0.0f)
		{
			matrix.SetIdentity();
			SinCos(&matrix._13, &matrix._11, sprite->angle);
			matrix._33 = matrix._11;
			matrix._31 = -matrix._13;
		}
		else
		{
			matrix.SetIdentity();
		}
		matrix.PostTranslation(sprite->pos);
		matrix.PostMultiply(LH3DTech::g_world_to_clipping);
	}
	else
	{
		// Facing the camera: turn about the view axis.
		if (sprite->angle != 0.0f)
		{
			matrix.SetIdentity();
			SinCos(&matrix._21, &matrix._11, sprite->angle);
			matrix._22 = matrix._11;
			matrix._12 = -matrix._21;
		}
		else
		{
			matrix.SetIdentity();
		}
		matrix._11 *= LH3DTech::g_info_transform.InvHalfTanFovY;
		matrix._21 *= LH3DTech::g_info_transform.InvHalfTanFovY;
		matrix._41 = camX * LH3DTech::g_info_transform.InvHalfTanFovY;
		matrix._12 *= LH3DTech::g_info_transform.InvHalfTanFovX;
		matrix._22 *= LH3DTech::g_info_transform.InvHalfTanFovX;
		matrix._42 = camY * LH3DTech::g_info_transform.InvHalfTanFovX;
		matrix._43 = camZ;
	}

	float   halfHeight = sprite->Size * sprite->Aspect;
	LHPoint corners[4];
	if (sprite->Horizontal)
	{
		corners[0].x = corners[3].x = -(sprite->Size + sprite->OffsetX);
		corners[1].x = corners[2].x = sprite->Size - sprite->OffsetX;
		corners[0].y = corners[1].y = corners[2].y = corners[3].y = 0.0f;
		corners[0].z = corners[1].z = -(halfHeight + sprite->OffsetY);
		corners[2].z = corners[3].z = halfHeight - sprite->OffsetY;
	}
	else
	{
		corners[0].x = corners[3].x = -(sprite->Size + sprite->OffsetX);
		corners[1].x = corners[2].x = sprite->Size - sprite->OffsetX;
		corners[0].y = corners[1].y = halfHeight - sprite->OffsetY;
		corners[2].y = corners[3].y = -(halfHeight + sprite->OffsetY);
		corners[0].z = corners[1].z = corners[2].z = corners[3].z = 0.0f;
	}

	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	LHPoint*       corner = corners;
	unsigned long* clip = LH3DTech::g_cache_flags;

	__m128 framesPerRow = _mm_set_ss((float)sprite->FramesPerRow);
	__m128 r = _mm_rcp_ss(framesPerRow);
	r = _mm_sub_ss(_mm_add_ss(r, r), _mm_mul_ss(_mm_mul_ss(framesPerRow, r), r));
	float frameSize;
	_mm_store_ss(&frameSize, r);
	float    cornerScale = frameSize * LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW;
	uint32_t frame = sprite->Frame;
	float    frameU = (frame % sprite->FramesPerRow) * frameSize;
	float    frameV = (frame / sprite->FramesPerRow) * frameSize;

	for (uint32_t i = 0; i < 4; i++)
	{
		vertex->x = corner->x * matrix._11 + matrix._41 + corner->y * matrix._21 + corner->z * matrix._31;
		vertex->y = corner->x * matrix._12 + matrix._42 + corner->y * matrix._22 + corner->z * matrix._32;
		vertex->rhw = corner->x * matrix._13 + matrix._43 + corner->y * matrix._23 + corner->z * matrix._33;
		if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
		{
			*clip = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			*clip = 0;
		}
		if (vertex->x > vertex->rhw)
		{
			*clip |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (vertex->x < -vertex->rhw)
		{
			*clip |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (vertex->y > vertex->rhw)
		{
			*clip |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (vertex->y < -vertex->rhw)
		{
			*clip |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (*clip == 0)
		{
			vertex->rhw = 1.0f / vertex->rhw;
			vertex->x =
				LH3DTech::g_info_transform.HalfRes.x + vertex->x * vertex->rhw * LH3DTech::g_info_transform.HalfRes.x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else if (vertex->x > LH3DTech::g_max_screen[0])
			{
				vertex->x = LH3DTech::g_max_screen[0];
			}
			float y =
				LH3DTech::g_info_transform.HalfRes.y + vertex->y * vertex->rhw * -LH3DTech::g_info_transform.HalfRes.y;
			if (y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else if (y > LH3DTech::g_max_screen[1])
			{
				vertex->y = LH3DTech::g_max_screen[1];
			}
			else
			{
				vertex->y = y;
			}
			vertex->rhw *= LH3DTech::g_info_transform.NearClip;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->uv.x = utex[i] * cornerScale + frameU;
		vertex->uv.y = vtex[i] * cornerScale + frameV;
		vertex->color = sprite->colour.GetColor();
		vertex->specular = sprite->specular.GetColor();
		clip++;
		vertex++;
		corner++;
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = 4;
	LH3DTech::g_clip_with_double_sided = true;
	if (LH3DTech::g_cache_flags[0] | LH3DTech::g_cache_flags[1] | LH3DTech::g_cache_flags[2] |
	    LH3DTech::g_cache_flags[3])
	{
		if (!(LH3DTech::g_cache_flags[0] & LH3DTech::g_cache_flags[1] & LH3DTech::g_cache_flags[2] &
		      LH3DTech::g_cache_flags[3]))
		{
			ClipTriangle(0, 1, 2, LH3DTech::CLIP_CODE_NEAR);
			ClipTriangle(0, 2, 3, LH3DTech::CLIP_CODE_NEAR);
		}
	}
	else
	{
		ADD_TRIANGLE(0, 1, 2)
		ADD_TRIANGLE(0, 2, 3)
	}

	if (LH3DTech::g_index_count != 0)
	{
		if (sprite->UseMaterial)
		{
			LH3DMaterial* material = sprite->material;
			if (LH3DRender::g_b_do_update_material)
			{
				LH3DRender::g_current_active_material = material;
				if (material)
				{
					((LH3DMaterial::RenderFunc*)
					     LH3DMaterial::g_list_render_func)[material->GetMode() * LH3D_RENDER_FUNC_ENTRIES](material, 0);
					if (LH3DRender::g_b_need_tilling || material->IsNeedTilling())
					{
						LH3DRender::SetD3DTillingOn(0);
					}
					else
					{
						LH3DRender::SetD3DTillingOff(0);
					}
					LH3DRender::SetRenderState(D3DRENDERSTATE_CULLMODE,
					                           material->IsDoubleSided() ? D3DCULL_NONE : D3DCULL_CCW);
				}
			}
		}
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

// The cell with corners a, b, c, d in grid order is drawn as the two triangles either side of its a-d diagonal.
#define ADD_CELL(a, b, c, d)                                                                                           \
	ADD_TRIANGLE_IF_FRONT(a, b, d)                                                                                     \
	ADD_TRIANGLE_IF_FRONT(a, d, c)

// As ADD_CELL, clipping the triangles that have a vertex outside the frustum.
#define ADD_CELL_CLIPPED(a, b, c, d)                                                                                   \
	if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b] | LH3DTech::g_cache_flags[c] |                         \
	    LH3DTech::g_cache_flags[d])                                                                                    \
	{                                                                                                                  \
		if ((LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[b] & LH3DTech::g_cache_flags[d]) == 0)               \
		{                                                                                                              \
			LH3DP3::ClipTriangle(a, b, d, LH3DTech::CLIP_CODE_NEAR);                                                   \
		}                                                                                                              \
		if ((LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[c] & LH3DTech::g_cache_flags[d]) == 0)               \
		{                                                                                                              \
			LH3DP3::ClipTriangle(a, d, c, LH3DTech::CLIP_CODE_NEAR);                                                   \
		}                                                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_CELL(a, b, c, d)                                                                                           \
	}

// Picks the triangles that stitch the trimmed sides of the block to its coarser neighbours.
#define SELECT_BORDER(list, count)                                                                                     \
	if (MeshLod == LAND_MESH_LOD_0)                                                                                    \
	{                                                                                                                  \
		if (MeshLodType & MESH_LOD_NORTH)                                                                              \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_EAST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_EAST_01);                                                      \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_WEST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_WEST_01);                                                      \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_01[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_01);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_SOUTH)                                                                         \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_EAST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_EAST_01);                                                      \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_WEST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_WEST_01);                                                      \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_01[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_01);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_EAST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_EAST_01);                                                                \
			list = MeshLodInfo::g_EAST_01[0];                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_WEST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_WEST_01);                                                                \
			list = MeshLodInfo::g_WEST_01[0];                                                                          \
		}                                                                                                              \
	}                                                                                                                  \
	else if (MeshLod == LAND_MESH_LOD_1)                                                                               \
	{                                                                                                                  \
		if (MeshLodType & MESH_LOD_NORTH)                                                                              \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_EAST_12);                                                      \
				list = MeshLodInfo::g_NORTH_EAST_12[0];                                                                \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_WEST_12);                                                      \
				list = MeshLodInfo::g_NORTH_WEST_12[0];                                                                \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_12[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_12);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_SOUTH)                                                                         \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_EAST_12);                                                      \
				list = MeshLodInfo::g_SOUTH_EAST_12[0];                                                                \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_WEST_12);                                                      \
				list = MeshLodInfo::g_SOUTH_WEST_12[0];                                                                \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_12[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_12);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_EAST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_EAST_12);                                                                \
			list = MeshLodInfo::g_EAST_12[0];                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_WEST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_WEST_12);                                                                \
			list = MeshLodInfo::g_WEST_12[0];                                                                          \
		}                                                                                                              \
	}

void LandBlock::CreateListPolyP3(LandMeshLOD lod)
{
	int          rowStep = 1;
	MeshLodInfo* info = &MeshLodInfo::g_mesh_lod_info[MeshLodType];
	int          startX;
	int          endX;
	int          startZ;
	int          endZ;
	uint16_t     v00;
	uint16_t     v01;
	uint16_t     v10;
	uint16_t     v11;
	switch (lod)
	{
	case LAND_MESH_LOD_0:
		startX = info->North;
		endX = LAND_MESH_LOD_0_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_0_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_0_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_0_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_0_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_1:
		startX = info->North;
		endX = LAND_MESH_LOD_1_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_1_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_1_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_1_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_1_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_2:
		startX = 0;
		endX = LAND_MESH_LOD_2_CELLS;
		startZ = 0;
		endZ = LAND_MESH_LOD_2_CELLS;
		v00 = 0;
		v01 = 1;
		v10 = LAND_MESH_LOD_2_CELLS + 1;
		v11 = LAND_MESH_LOD_2_CELLS + 2;
		break;
	}

	// A reflection is drawn mirrored, so swapping two corners keeps the triangles front-facing.
	if (g_draw_reflection)
	{
		uint16_t swap = v01;
		v01 = v10;
		v10 = swap;
	}

	LandCell* cell = &Cells[0][0];
	LH3DTech::g_clip_with_double_sided = false;
	if (MeshLodZone == 0)
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if ((cell->Flags & LAND_CELL_SUBMERGED) == 0)
				{
					if (cell->Flags & LAND_CELL_SPLIT)
					{
						ADD_CELL_CLIPPED(v01, v11, v00, v10)
					}
					else
					{
						ADD_CELL_CLIPPED(v00, v01, v10, v11)
					}
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}
	else
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if (cell->Flags & LAND_CELL_SPLIT)
				{
					ADD_CELL_CLIPPED(v01, v11, v00, v10)
				}
				else
				{
					ADD_CELL_CLIPPED(v00, v01, v10, v11)
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}

	if (MeshLodInfo::g_mesh_lod_info[MeshLodType].HasBorder)
	{
		const uint16_t* list;
		int             count = 0;
		SELECT_BORDER(list, count)
		LH3DTech::g_clip_with_double_sided = false;
		if (g_draw_reflection)
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[2];
				uint16_t c = list[1];
				ADD_TRIANGLE_CLIPPED(a, b, c)
				list += 3;
			}
		}
		else
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[1];
				uint16_t c = list[2];
				ADD_TRIANGLE_CLIPPED(a, b, c)
				list += 3;
			}
		}
	}
}

void LandBlock::CreateListPolyUnclippedP3(LandMeshLOD lod)
{
	int          rowStep = 1;
	MeshLodInfo* info = &MeshLodInfo::g_mesh_lod_info[MeshLodType];
	int          startX;
	int          endX;
	int          startZ;
	int          endZ;
	uint16_t     v00;
	uint16_t     v01;
	uint16_t     v10;
	uint16_t     v11;
	switch (lod)
	{
	case LAND_MESH_LOD_0:
		startX = info->North;
		endX = LAND_MESH_LOD_0_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_0_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_0_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_0_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_0_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_1:
		startX = info->North;
		endX = LAND_MESH_LOD_1_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_1_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_1_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_1_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_1_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_2:
		startX = 0;
		endX = LAND_MESH_LOD_2_CELLS;
		startZ = 0;
		endZ = LAND_MESH_LOD_2_CELLS;
		v00 = 0;
		v01 = 1;
		v10 = LAND_MESH_LOD_2_CELLS + 1;
		v11 = LAND_MESH_LOD_2_CELLS + 2;
		break;
	}

	// A reflection is drawn mirrored, so swapping two corners keeps the triangles front-facing.
	if (g_draw_reflection)
	{
		uint16_t swap = v01;
		v01 = v10;
		v10 = swap;
	}

	LandCell* cell = &Cells[0][0];
	LH3DTech::g_clip_with_double_sided = false;
	if (MeshLodZone == 0)
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if ((cell->Flags & LAND_CELL_SUBMERGED) == 0)
				{
					if (cell->Flags & LAND_CELL_SPLIT)
					{
						ADD_CELL(v01, v11, v00, v10)
					}
					else
					{
						ADD_CELL(v00, v01, v10, v11)
					}
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}
	else
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if (cell->Flags & LAND_CELL_SPLIT)
				{
					ADD_CELL(v01, v11, v00, v10)
				}
				else
				{
					ADD_CELL(v00, v01, v10, v11)
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}

	if (MeshLodInfo::g_mesh_lod_info[MeshLodType].HasBorder)
	{
		const uint16_t* list;
		int             count = 0;
		SELECT_BORDER(list, count)
		LH3DTech::g_clip_with_double_sided = false;
		if (g_draw_reflection)
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[2];
				uint16_t c = list[1];
				ADD_TRIANGLE_IF_FRONT(a, b, c)
				list += 3;
			}
		}
		else
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[1];
				uint16_t c = list[2];
				ADD_TRIANGLE_IF_FRONT(a, b, c)
				list += 3;
			}
		}
	}
}

// Full 32-bit products of 16-bit values held in the low half of each lane.
#define MUL_32(result, a, b)                                                                                           \
	{                                                                                                                  \
		__m128i hi = _mm_mulhi_epu16(a, b);                                                                            \
		__m128i lo = _mm_mullo_epi16(a, b);                                                                            \
		result = _mm_or_si128(_mm_slli_epi32(hi, 16), lo);                                                             \
	}

// Alpha of the texel in the first lane of height/noise, already shifted into the top nibble.
#define SHORE_ALPHA(alpha, solid, height, noise)                                                                       \
	if ((solid) & 1)                                                                                                   \
	{                                                                                                                  \
		alpha = TEXEL_4444_ALPHA;                                                                                      \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		int level = _mm_extract_epi16(height, 0) + (int8_t)_mm_extract_epi16(noise, 0) * 4;                            \
		int index;                                                                                                     \
		if (level < LH3D_LANDSCAPE_SHORE_START)                                                                        \
		{                                                                                                              \
			index = 0;                                                                                                 \
		}                                                                                                              \
		else if (level > LH3D_LANDSCAPE_SHORE_END)                                                                     \
		{                                                                                                              \
			index = LH3D_LANDSCAPE_ALPHA_MAX;                                                                          \
		}                                                                                                              \
		else                                                                                                           \
		{                                                                                                              \
			index = LH3D_LANDSCAPE_ALPHA_MAX - ((LH3D_LANDSCAPE_SHORE_END - level) * LH3D_LANDSCAPE_ALPHA_MAX) /       \
			                                       (LH3D_LANDSCAPE_SHORE_END - LH3D_LANDSCAPE_SHORE_START);            \
			if (index > LH3D_LANDSCAPE_ALPHA_MAX)                                                                      \
			{                                                                                                          \
				index = LH3D_LANDSCAPE_ALPHA_MAX;                                                                      \
			}                                                                                                          \
		}                                                                                                              \
		alpha = alphaTable[index];                                                                                     \
	}

void __fastcall LH3DP3::ProcessCell(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z)
{
	static unsigned long alphaTable[LH3D_LANDSCAPE_ALPHA_MAX + 1] = {0x0000, 0x0000, 0x0000, 0x1000, 0x2000, 0x4000,
	                                                                 0x6000, 0x8000, 0x9000, 0xa000, 0xa000, 0xb000,
	                                                                 0xc000, 0xd000, 0xe000, 0xf000};

	LandCell*      cell = &LH3DIsland::g_current_block->Cells[x][z];
	unsigned long* coeff = LH3DLandscape::g_coeff[0];
	__m128i        altitude00 = _mm_shuffle_epi32(_mm_cvtsi32_si128(*(int*)&cell[0].altitude), 0);
	__m128i        altitude01 = _mm_shuffle_epi32(_mm_cvtsi32_si128(*(int*)&cell[1].altitude), 0);
	__m128i altitude11 = _mm_shuffle_epi32(_mm_cvtsi32_si128(*(int*)&cell[LAND_BLOCK_SIDE_POINTS + 1].altitude), 0);
	__m128i altitude10 = _mm_shuffle_epi32(_mm_cvtsi32_si128(*(int*)&cell[LAND_BLOCK_SIDE_POINTS].altitude), 0);
	__m128i byteMask = _mm_set1_epi32(0xff);
	altitude00 = _mm_and_si128(altitude00, byteMask);
	altitude01 = _mm_and_si128(altitude01, byteMask);
	altitude11 = _mm_and_si128(altitude11, byteMask);
	altitude10 = _mm_and_si128(altitude10, byteMask);

	for (int row = 0; row < LH3D_LANDSCAPE_CELL_TEXELS; row++)
	{
		for (int col = 0; col < LH3D_LANDSCAPE_CELL_TEXELS; col += 4)
		{
			__m128i zero = _mm_setzero_si128();
			__m128i weight00;
			__m128i weight01;
			__m128i weight11;
			__m128i weight10;
			GATHER4(weight00, coeff[0], coeff[4], coeff[8], coeff[12]);
			GATHER4(weight01, coeff[1], coeff[5], coeff[9], coeff[13]);
			GATHER4(weight11, coeff[2], coeff[6], coeff[10], coeff[14]);
			GATHER4(weight10, coeff[3], coeff[7], coeff[11], coeff[15]);
			coeff += 16;

			__m128i height = _mm_add_epi32(_mm_add_epi32(_mm_add_epi32(_mm_mullo_epi16(altitude00, weight00),
			                                                           _mm_mullo_epi16(altitude01, weight01)),
			                                             _mm_mullo_epi16(altitude11, weight11)),
			                               _mm_mullo_epi16(altitude10, weight10));
			__m128i sea = _mm_cmpgt_epi32(_mm_set1_epi32(LH3D_LANDSCAPE_SEA_LEVEL), height);
			if (_mm_movemask_epi8(sea) == 0xffff)
			{
				_mm_storel_epi64((__m128i*)dest, zero);
				dest += 4;
				LH3DLandscape::Material::g_offset_texture += 4;
				LH3DLandscape::Material::g_offset_noise += 4;
				continue;
			}

			__m128i noise =
				_mm_cvtsi32_si128(*(int*)&LH3DLandscape::g_noise_bitmap[LH3DLandscape::Material::g_offset_noise]);
			noise = _mm_unpacklo_epi16(_mm_unpacklo_epi8(noise, zero), zero);
			__m128i level = _mm_add_epi32(_mm_srli_epi32(height, 8), noise);
			__m128i over = _mm_cmpgt_epi32(level, byteMask);
			level = _mm_or_si128(_mm_and_si128(over, byteMask), _mm_andnot_si128(over, level));

			unsigned long level0 = _mm_extract_epi16(level, 0);
			unsigned long materialA0 = LH3DLandscape::g_current_country->Altitudes[level0].Material1;
			unsigned long materialB0 = ((unsigned long*)LH3DLandscape::g_current_country)[level0 * 3 + 2];
			unsigned long blend0 = ((unsigned long*)LH3DLandscape::g_current_country)[level0 * 3 + 3];
			unsigned long level1 = _mm_extract_epi16(level, 2);
			unsigned long materialA1 = LH3DLandscape::g_current_country->Altitudes[level1].Material1;
			unsigned long materialB1 = ((unsigned long*)LH3DLandscape::g_current_country)[level1 * 3 + 2];
			unsigned long blend1 = ((unsigned long*)LH3DLandscape::g_current_country)[level1 * 3 + 3];
			unsigned long level2 = _mm_extract_epi16(level, 4);
			unsigned long materialA2 = LH3DLandscape::g_current_country->Altitudes[level2].Material1;
			unsigned long materialB2 = ((unsigned long*)LH3DLandscape::g_current_country)[level2 * 3 + 2];
			unsigned long blend2 = ((unsigned long*)LH3DLandscape::g_current_country)[level2 * 3 + 3];
			unsigned long level3 = _mm_extract_epi16(level, 6);
			unsigned long materialA3 = LH3DLandscape::g_current_country->Altitudes[level3].Material1;
			unsigned long materialB3 = ((unsigned long*)LH3DLandscape::g_current_country)[level3 * 3 + 2];
			unsigned long blend3 = ((unsigned long*)LH3DLandscape::g_current_country)[level3 * 3 + 3];

			__m128i bump = _mm_cvtsi32_si128(*(int*)&LH3DLandscape::g_bump[LH3DLandscape::Material::g_offset_noise]);
			bump = _mm_unpacklo_epi16(_mm_unpacklo_epi8(bump, zero), zero);

			unsigned long offset = LH3DLandscape::Material::g_offset_texture;
			int           texel0 = LH3DLandscape::g_list_material[materialA0]->Texture[offset];
			int           texel1 = LH3DLandscape::g_list_material[materialA1]->Texture[offset + 1];
			int           texel2 = LH3DLandscape::g_list_material[materialA2]->Texture[offset + 2];
			int           texel3 = LH3DLandscape::g_list_material[materialA3]->Texture[offset + 3];
			__m128i       textureA;
			GATHER4(textureA, texel0, texel1, texel2, texel3);

			// Material texels are 555 and the cell texture 4444; a bump of 128 leaves the brightness unchanged.
			__m128i color;
			if (materialA0 == materialB0 && materialA1 == materialB1 && materialA2 == materialB2 &&
			    materialA3 == materialB3)
			{
				__m128i r;
				__m128i g;
				__m128i b;
				r = _mm_and_si128(_mm_set1_epi32(TEXEL_555_RED), textureA);
				MUL_32(r, r, bump);
				r = _mm_srli_epi32(r, 10);
				g = _mm_and_si128(_mm_set1_epi32(TEXEL_555_GREEN), textureA);
				MUL_32(g, g, bump);
				g = _mm_srli_epi32(g, 9);
				b = _mm_and_si128(textureA, _mm_set1_epi32(TEXEL_555_BLUE));
				b = _mm_srli_epi32(_mm_mullo_epi16(b, bump), 8);
				__m128i maxR = _mm_set1_epi32(TEXEL_4444_RED);
				__m128i maxG = _mm_set1_epi32(TEXEL_4444_GREEN);
				__m128i maxB = _mm_set1_epi32(TEXEL_4444_BLUE);
				r = _mm_and_si128(_mm_min_epi16(r, maxR), maxR);
				g = _mm_and_si128(_mm_min_epi16(g, maxG), maxG);
				b = _mm_and_si128(_mm_min_epi16(b, maxB), maxB);
				color = _mm_or_si128(_mm_or_si128(r, g), b);
			}
			else
			{
				__m128i blend;
				GATHER4(blend, blend0, blend1, blend2, blend3);
				__m128i inverseBlend = _mm_sub_epi32(_mm_set1_epi32(0x100), blend);
				offset = LH3DLandscape::Material::g_offset_texture;
				texel0 = LH3DLandscape::g_list_material[materialB0]->Texture[offset];
				texel1 = LH3DLandscape::g_list_material[materialB1]->Texture[offset + 1];
				texel2 = LH3DLandscape::g_list_material[materialB2]->Texture[offset + 2];
				texel3 = LH3DLandscape::g_list_material[materialB3]->Texture[offset + 3];
				__m128i textureB;
				GATHER4(textureB, texel0, texel1, texel2, texel3);
				__m128i r;
				__m128i g;
				__m128i b;
				__m128i p;
				__m128i q;
				__m128i maskR = _mm_set1_epi32(TEXEL_555_RED);
				MUL_32(p, _mm_and_si128(textureA, maskR), blend);
				MUL_32(q, _mm_and_si128(textureB, maskR), inverseBlend);
				r = _mm_srli_epi32(_mm_add_epi32(p, q), 8);
				__m128i maskG = _mm_set1_epi32(TEXEL_555_GREEN);
				MUL_32(p, _mm_and_si128(textureA, maskG), blend);
				MUL_32(q, _mm_and_si128(textureB, maskG), inverseBlend);
				g = _mm_srli_epi32(_mm_add_epi32(p, q), 8);
				__m128i maskB = _mm_set1_epi32(TEXEL_555_BLUE);
				MUL_32(p, _mm_and_si128(textureA, maskB), blend);
				MUL_32(q, _mm_and_si128(textureB, maskB), inverseBlend);
				b = _mm_srli_epi32(_mm_add_epi32(p, q), 8);
				MUL_32(r, r, bump);
				r = _mm_srli_epi32(r, 10);
				MUL_32(g, g, bump);
				g = _mm_srli_epi32(g, 9);
				b = _mm_srli_epi32(_mm_mullo_epi16(b, bump), 8);
				__m128i maxR = _mm_set1_epi32(TEXEL_4444_RED);
				__m128i maxG = _mm_set1_epi32(TEXEL_4444_GREEN);
				__m128i maxB = _mm_set1_epi32(TEXEL_4444_BLUE);
				r = _mm_and_si128(_mm_min_epi16(r, maxR), maxR);
				g = _mm_and_si128(_mm_min_epi16(g, maxG), maxG);
				b = _mm_and_si128(_mm_min_epi16(b, maxB), maxB);
				color = _mm_or_si128(_mm_or_si128(r, g), b);
			}

			__m128i alpha;
			int     solid = _mm_movemask_epi8(_mm_cmpgt_epi32(height, _mm_set1_epi32(LH3D_LANDSCAPE_SOLID_LEVEL)));
			if (solid == 0xffff)
			{
				alpha = _mm_set1_epi32(TEXEL_4444_ALPHA);
			}
			else
			{
				unsigned long alphas[4];
				__m128i       shifted = height;
				SHORE_ALPHA(alphas[0], solid, shifted, noise);
				shifted = _mm_shuffle_epi32(shifted, 0xf9);
				noise = _mm_shuffle_epi32(noise, 0xf9);
				SHORE_ALPHA(alphas[1], solid >> 4, shifted, noise);
				shifted = _mm_shuffle_epi32(shifted, 0xf9);
				noise = _mm_shuffle_epi32(noise, 0xf9);
				SHORE_ALPHA(alphas[2], solid >> 8, shifted, noise);
				shifted = _mm_shuffle_epi32(shifted, 0xf9);
				noise = _mm_shuffle_epi32(noise, 0xf9);
				SHORE_ALPHA(alphas[3], solid >> 12, shifted, noise);
				GATHER4(alpha, alphas[0], alphas[1], alphas[2], alphas[3]);
			}

			__m128i result = _mm_andnot_si128(sea, _mm_or_si128(alpha, color));
			result = _mm_shuffle_epi32(_mm_shufflehi_epi16(_mm_shufflelo_epi16(result, 0xd8), 0xd8), 0xd8);
			_mm_storel_epi64((__m128i*)dest, result);
			dest += 4;
			LH3DLandscape::Material::g_offset_texture += 4;
			LH3DLandscape::Material::g_offset_noise += 4;
		}
		dest += pitch - LH3D_LANDSCAPE_CELL_TEXELS;
		LH3DLandscape::Material::g_offset_texture += LH3D_LANDSCAPE_TEXTURE_SIZE - LH3D_LANDSCAPE_CELL_TEXELS;
		LH3DLandscape::Material::g_offset_noise += LH3D_LANDSCAPE_TEXTURE_SIZE - LH3D_LANDSCAPE_CELL_TEXELS;
	}
}

// Collects weight n of texels index..index + 3 into one vector.
#define GATHER_COEFF(result, index, n)                                                                                 \
	{                                                                                                                  \
		__m128i a0 = _mm_cvtsi32_si128(LH3DLandscape::g_coeff[index][n]);                                              \
		__m128i a1 = _mm_cvtsi32_si128(LH3DLandscape::g_coeff[index + 1][n]);                                          \
		__m128i a2 = _mm_cvtsi32_si128(LH3DLandscape::g_coeff[index + 2][n]);                                          \
		__m128i a3 = _mm_cvtsi32_si128(LH3DLandscape::g_coeff[index + 3][n]);                                          \
		result = _mm_unpacklo_epi64(_mm_unpacklo_epi32(a0, a1), _mm_unpacklo_epi32(a2, a3));                           \
	}

// Divides each lane by 255 as (x * 0x80808081) >> 39, the even and odd lanes separately.
#define DIV_255(result, x)                                                                                             \
	{                                                                                                                  \
		__m128i even = _mm_mul_epu32(_mm_set_epi32(0, 0x80808081, 0, 0x80808081), x);                                  \
		__m128i odd = _mm_mul_epu32(_mm_srli_epi64(x, 32), _mm_set_epi32(0, 0x80808081, 0, 0x80808081));               \
		even = _mm_srli_epi64(even, 39);                                                                               \
		odd = _mm_and_si128(_mm_srli_epi32(odd, 7), _mm_set_epi32(-1, 0, -1, 0));                                      \
		result = _mm_or_si128(even, odd);                                                                              \
	}

void __fastcall LH3DP3::BlendCountry(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1, unsigned long src1_pitch,
                                     uint16_t* src2, unsigned long src2_pitch, uint16_t* src3, unsigned long src3_pitch)
{
	__m128i zero = _mm_setzero_si128();
	for (int j = 0; j < LH3D_LANDSCAPE_CELL_TEXELS; j++)
	{
		for (int i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS; i += 4)
		{
			// Each texel blends the four textures, a 4444 channel at a time, by weights summing to 255.
			__m128i c0;
			__m128i c1;
			__m128i c2;
			__m128i c3;
			GATHER_COEFF(c0, j * LH3D_LANDSCAPE_CELL_TEXELS + i, 0);
			GATHER_COEFF(c1, j * LH3D_LANDSCAPE_CELL_TEXELS + i, 1);
			GATHER_COEFF(c2, j * LH3D_LANDSCAPE_CELL_TEXELS + i, 2);
			GATHER_COEFF(c3, j * LH3D_LANDSCAPE_CELL_TEXELS + i, 3);

			__m128i p0 = _mm_loadl_epi64((__m128i*)&dest[j * dest_pitch + i]);
			__m128i p1 = _mm_loadl_epi64((__m128i*)&src1[j * src1_pitch + i]);
			__m128i p2 = _mm_loadl_epi64((__m128i*)&src2[j * src2_pitch + i]);
			__m128i p3 = _mm_loadl_epi64((__m128i*)&src3[j * src3_pitch + i]);
			p0 = _mm_unpacklo_epi16(p0, zero);
			p1 = _mm_unpacklo_epi16(p1, zero);
			p2 = _mm_unpacklo_epi16(p2, zero);
			p3 = _mm_unpacklo_epi16(p3, zero);

			// The two upper channels need 32-bit products.
			__m128i term;
			__m128i mask0 = _mm_set1_epi32(TEXEL_4444_ALPHA);
			__m128i sum0;
			MUL_32(sum0, c0, _mm_and_si128(p0, mask0));
			MUL_32(term, c1, _mm_and_si128(p1, mask0));
			sum0 = _mm_add_epi32(sum0, term);
			MUL_32(term, c2, _mm_and_si128(p2, mask0));
			sum0 = _mm_add_epi32(sum0, term);
			MUL_32(term, c3, _mm_and_si128(p3, mask0));
			sum0 = _mm_add_epi32(sum0, term);

			__m128i mask1 = _mm_set1_epi32(TEXEL_4444_RED);
			__m128i sum1;
			MUL_32(sum1, c0, _mm_and_si128(p0, mask1));
			MUL_32(term, c1, _mm_and_si128(p1, mask1));
			sum1 = _mm_add_epi32(sum1, term);
			MUL_32(term, c2, _mm_and_si128(p2, mask1));
			sum1 = _mm_add_epi32(sum1, term);
			MUL_32(term, c3, _mm_and_si128(p3, mask1));
			sum1 = _mm_add_epi32(sum1, term);

			__m128i mask2 = _mm_set1_epi32(TEXEL_4444_GREEN);
			__m128i sum2 = _mm_mullo_epi16(c0, _mm_and_si128(p0, mask2));
			sum2 = _mm_add_epi32(sum2, _mm_mullo_epi16(c1, _mm_and_si128(p1, mask2)));
			sum2 = _mm_add_epi32(sum2, _mm_mullo_epi16(c2, _mm_and_si128(p2, mask2)));
			sum2 = _mm_add_epi32(sum2, _mm_mullo_epi16(c3, _mm_and_si128(p3, mask2)));

			__m128i mask3 = _mm_set1_epi32(TEXEL_4444_BLUE);
			__m128i sum3 = _mm_mullo_epi16(c0, _mm_and_si128(p0, mask3));
			sum3 = _mm_add_epi32(sum3, _mm_mullo_epi16(c1, _mm_and_si128(p1, mask3)));
			sum3 = _mm_add_epi32(sum3, _mm_mullo_epi16(c2, _mm_and_si128(p2, mask3)));
			sum3 = _mm_add_epi32(sum3, _mm_mullo_epi16(c3, _mm_and_si128(p3, mask3)));

			DIV_255(sum0, sum0);
			DIV_255(sum1, sum1);
			DIV_255(sum2, sum2);
			DIV_255(sum3, sum3);
			sum0 = _mm_and_si128(sum0, mask0);
			sum1 = _mm_and_si128(sum1, mask1);
			sum2 = _mm_and_si128(sum2, mask2);
			sum3 = _mm_and_si128(sum3, mask3);
			__m128i color = _mm_or_si128(_mm_or_si128(sum0, sum1), _mm_or_si128(sum2, sum3));

			// Back to 16 bits: the low word of each lane into the low quadword.
			color = _mm_shuffle_epi32(_mm_shufflehi_epi16(_mm_shufflelo_epi16(color, 0xd8), 0xd8), 0xd8);
			_mm_storel_epi64((__m128i*)&dest[j * dest_pitch + i], color);
		}
	}
}

void __fastcall LH3DP3::DrawTShadowAlpha(int unused)
{
	int    vmax = (int)LH3DTShadow::VMAX;
	__m128 zero = _mm_setzero_ps();
	for (int i = 0; i < LH3DTShadow::g_pitch; i++)
	{
		LH3DTShadow::ScanLine& line = LH3DTShadow::g_list_scan_line[i];
		if (line.Used)
		{
			int    x = line.Min;
			int    end = line.Max;
			__m128 u = _mm_load_ss(&line.MinU);
			__m128 v = _mm_load_ss(&line.MinV);
			__m128 du;
			__m128 dv;
			if (end != x)
			{
				__m128 n = _mm_cvt_si2ss(zero, end - x);
				__m128 r = _mm_rcp_ss(n);
				r = _mm_sub_ss(_mm_add_ss(r, r), _mm_mul_ss(_mm_mul_ss(r, n), r));
				du = _mm_mul_ss(_mm_sub_ss(_mm_load_ss(&line.MaxU), u), r);
				dv = _mm_mul_ss(_mm_sub_ss(_mm_load_ss(&line.MaxV), v), r);
			}
			else
			{
				du = zero;
				dv = zero;
			}
			uint8_t* dest = LH3DTShadow::g_buffer + i * LH3DTShadow::g_pitch + x;
			if (vmax < end)
			{
				end = vmax;
			}
			__m128 half = _mm_set_ss(0.5f);
			u = _mm_add_ss(u, half);
			v = _mm_add_ss(v, half);
			for (; x <= end; x++, dest++)
			{
				if (x >= 0)
				{
					*dest |= LH3DTShadow::g_bitmap[(_mm_cvt_ss2si(v) & (LH3D_T_SHADOW_BITMAP_SIZE - 1)) *
					                                   LH3D_T_SHADOW_BITMAP_SIZE +
					                               (_mm_cvt_ss2si(u) & (LH3D_T_SHADOW_BITMAP_SIZE - 1))];
				}
				u = _mm_add_ss(u, du);
				v = _mm_add_ss(v, dv);
			}
			line.Used = false;
		}
	}
}

static inline float Reciprocal(float value)
{
	__m128 v = _mm_load_ss(&value);
	__m128 r = _mm_rcp_ss(v);
	float  result;
	_mm_store_ss(&result, _mm_sub_ss(_mm_add_ss(r, r), _mm_mul_ss(_mm_mul_ss(v, r), r)));
	return result;
}

bool32_t __fastcall LH3DP3::CheckRegionOnScreen(LH3DBoundingBox* box, LH3DObject* object)
{
	float radius = box->DiagonalLength * object->scale;
	LH3DObject::g_last_selected_box = false;
	LH3DObject::g_b_last_on_screen = false;

	LHPoint world = object->matrix * box->centre;
	LHPoint camera = LH3DTech::g_world_to_clipping * world;
	LH3DObject::g_last_distance = camera.z;
	if (camera.z + radius < LH3DTech::g_info_transform.NearClip)
	{
		return false;
	}

	float dx = object->matrix.GetPos().x - LH3DTech::g_camera.pos.x;
	float dy = object->matrix.GetPos().y - LH3DTech::g_camera.pos.y;
	float dz = object->matrix.GetPos().z - LH3DTech::g_camera.pos.z;
	float distance = dx * dx + dy * dy + dz * dz;
	if (distance < radius * radius)
	{
		// The camera is inside the bounding sphere.
		object->SetNeedClipping(true);
		LH3DObject::g_b_last_on_screen = true;
		LH3DObject::g_last_selected_box = true;
		LH3DObject::g_last_radius = radius;
	}
	else
	{
		float invZ = Reciprocal(camera.z);
		float width = (float)LH3DTech::g_info_transform.resolution.x;
		float height = (float)LH3DTech::g_info_transform.resolution.y;
		float sx = (camera.x * invZ + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
		float sy = (1.0f - camera.y * invZ) * LH3DTech::g_info_transform.HalfRes.y;
		float invMeterWidth = Reciprocal(LH3DTech::g_meter_width_screen_on_2);
		LH3DObject::g_last_radius = radius;
		radius = radius * invZ * LH3DTech::g_info_transform.NearClip * width * 0.5f * invMeterWidth;

		float right = sx + radius;
		if (right < 0.0f)
		{
			return false;
		}
		float left = sx - radius;
		if (width < left)
		{
			return false;
		}
		float bottom = sy + radius;
		if (bottom < 0.0f)
		{
			return false;
		}
		float top = sy - radius;
		if (height < top)
		{
			return false;
		}

		LH3DObject::g_b_last_on_screen = true;
		float selectX = (float)LH3DObject::g_selected_px - sx;
		float selectY = (float)LH3DObject::g_selected_py - sy;
		float selectDistance = selectX * selectX + selectY * selectY;
		if (selectDistance < radius * radius)
		{
			LH3DObject::g_last_selected_box = true;
		}

		bool32_t inside = left > 0.0f && width > right && top > 0.0f && height > bottom;
		object->SetNeedClipping(!inside);
	}
	return true;
}

bool32_t LH3DP3::CheckRegionOnScreenWrapper(LH3DBoundingBox* box, LH3DObject* object)
{
	return CheckRegionOnScreen(box, object);
}

void LH3DP3::DrawTShadowAlphaWrapper()
{
	DrawTShadowAlpha(0);
}

void LH3DP3::BlendCountryWrapper(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1, unsigned long src1_pitch,
                                 uint16_t* src2, unsigned long src2_pitch, uint16_t* src3, unsigned long src3_pitch)
{
	BlendCountry(dest, dest_pitch, src1, src1_pitch, src2, src2_pitch, src3, src3_pitch);
}

void LH3DP3::ProcessCellWrapper(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z)
{
	ProcessCell(dest, pitch, x, z);
}

void LH3DP3::CreateListPolyUnclippedWrapper(LandBlock* block, LandBlock::LandMeshLOD lod)
{
	block->CreateListPolyUnclippedP3(lod);
}

void LH3DP3::CreateListPolyWrapper(LandBlock* block, LandBlock::LandMeshLOD lod)
{
	block->CreateListPolyP3(lod);
}

void LH3DP3::DrawSpriteWrapper(LH3DSprite* sprite)
{
	DrawSprite(sprite);
}

void LH3DP3::DrawPrimitive3Wrapper(LH3DPrimitive* primitive)
{
	DrawPrimitive3(primitive);
}

void LH3DP3::DrawPrimitive2Wrapper(LH3DPrimitive* primitive)
{
	DrawPrimitive2(primitive);
}

void LH3DP3::DrawPrimitive1Wrapper(LH3DPrimitive* primitive)
{
	DrawPrimitive1(primitive);
}

void LH3DP3::DrawPrimitive0Wrapper(LH3DPrimitive* primitive)
{
	DrawPrimitive0(primitive);
}

void LH3DP3::GetColorAndSpecularWrapper(const LH3DMapCoords& coords, unsigned long* color, unsigned long* specular)
{
	GetColorAndSpecular(coords, color, specular);
}

void LH3DP3::GetColorAndSpecularWrapper(const LHPoint* pos, unsigned long* color, unsigned long* specular)
{
	GetColorAndSpecular(pos, color, specular);
}

void LH3DP3::ClipTriangleWrapper(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask)
{
	ClipTriangle(v0, v1, v2, mask);
}

void* LH3DP3::GetTable0()
{
	return LH3DTech::g_cache_flags;
}

void* LH3DP3::GetTable1()
{
	return LH3DTech::g_cache_t_points;
}

LHMatrix* LH3DMesh::GetCurrentMatrix()
{
	return g_current_matrix;
}

bool32_t LH3DSubMesh::HasBones()
{
	return flags_ & LH3D_SUB_MESH_FLAGS_SKINNED;
}

int LH3DVertexGroup::GetBoneIndex()
{
	return BoneIndex;
}

int LH3DVertexGroup::GetVertexCount()
{
	return vertex_count;
}

LHPoint LH3DTech::GetClippingSun()
{
	return g_sun_light_clipping;
}

LH3DTexture* LH3DMaterial::GetTexture()
{
	return texture;
}

unsigned long LH3DMaterial::ModulateColor(LH3DColor modulate)
{
	uint8_t alpha = (color.a * modulate.a) / 255;
	uint8_t red = (color.r * modulate.r) / 255;
	uint8_t green = (color.g * modulate.g) / 255;
	uint8_t blue = (color.b * modulate.b) / 255;
	return LH3DColor(red, green, blue, alpha).GetColor();
}

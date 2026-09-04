#include "LH3DP3.h"

#include <emmintrin.h>
#include <xmmintrin.h>

// Bit masks used as float operands. There is no way to spell an all-ones float
// with _mm_set_ps, and reinterpreting an _mm_set_epi32 constant round-trips
// through the stack, so these have to be data. ICC puts 16-byte-aligned const
// objects in .data1 next to its own float packets, which is where the original
// has them, immediately before the packets.
union LH3DP3Mask {
	int    i[4];
	float  f[4];
	__m128 v;
};

// BW1W120 00fc0020  keeps w only
static const LH3DP3Mask kMaskW = {{0, 0, 0, -1}};
// BW1W120 00fc0030  keeps x, y and w; clears z
static const LH3DP3Mask kMaskXYW = {{-1, -1, 0, -1}};

// = {0} rather than a bare definition: without an initialiser ICC emits these
// as COMMON, which the linker is free to place anywhere.
int   LH3DP3::Table0[0x2080] = {0};
float LH3DP3::Table1[0x2010][8] = {{0}};

volatile bool LH3DP3::IsPentium;
volatile bool LH3DP3::IsPentiumPro;
volatile bool LH3DP3::IsPentiumIII;
volatile bool LH3DP3::IsPentium4;
volatile int  LH3DP3::HasCMOV;
volatile int  LH3DP3::HasMMX;
volatile int  LH3DP3::HasSSE;
volatile int  LH3DP3::HasSSE2;

// Intel C++ CPU dispatch: the stub tests ___intel_cpu_indicator and jumps to one
// of the seven cpu_specific bodies that follow it; if the indicator is still zero
// it calls ___intel_cpu_indicator_init and retries.
//
// 595 of 608 bytes match. The 13 that do not are all in the getcsr/setcsr stack
// frame of the two SSE bodies (0x24 vs 0x0c) plus one mov edx,1 scheduling slip,
// which is the 001120 vs 010525Z compiler build gap.
__declspec(cpu_dispatch(generic, pentium, pentium_pro, pentium_mmx, pentium_ii, pentium_iii, pentium_4)) void LH3DP3::
	CheckCPU()
{
}

// BW1W120 007acc30
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

// BW1W120 007acc00
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

// BW1W120 007acbc0
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

// BW1W120 007acb80
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

// BW1W120 007acb40
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

// BW1W120 007acae0
__declspec(cpu_specific(pentium_iii)) void LH3DP3::CheckCPU()
{
	_mm_setcsr(_mm_getcsr() | 0x8000); // flush-to-zero
	IsPentium = false;
	IsPentiumPro = false;
	IsPentiumIII = true;
	IsPentium4 = false;
	HasCMOV = 1;
	HasMMX = 1;
	HasSSE = 1;
	HasSSE2 = 0;
}

// BW1W120 007aca80
__declspec(cpu_specific(pentium_4)) void LH3DP3::CheckCPU()
{
	_mm_setcsr(_mm_getcsr() | 0x8000); // flush-to-zero
	IsPentium = false;
	IsPentiumPro = false;
	IsPentiumIII = false;
	IsPentium4 = true;
	HasCMOV = 1;
	HasMMX = 1;
	HasSSE = 1;
	HasSSE2 = 1;
}

// Interpolates the intersection of edge inside->outside with the frustum plane
// named by mask and writes it to Table1[out_index], then reclassifies the new
// vertex against the planes that have not been clipped yet and stores the result
// in Table0[out_index].
//
// A vertex whose clip flags are zero has already been projected to screen space
// by the transform stage, so an inside vertex has to be unprojected back to clip
// space before it can be interpolated; an outside vertex never was projected. If
// the new vertex ends up fully inside it is projected here, so the same invariant
// holds for it.
//
// TODO: NonMatching, 151 of 890 bytes. Structurally complete -- every block,
// branch, constant and instruction selection is accounted for. What remains is
// the 001120 vs 010525Z build gap (see ClipTriangle) plus one register
// allocation difference: the original spills maskW to the frame, ours keeps it
// in a register, costing two extra spills and 16 bytes of frame.
void __fastcall LH3DP3::ClipEdge(uint32_t mask, uint16_t inside, uint16_t outside, uint16_t out_index)
{
	const __m128 kNegY = _mm_set_ps(0.0f, 0.0f, -0.0f, 0.0f);
	const __m128 maskXYW = kMaskXYW.v;
	const __m128 maskW = kMaskW.v;
	const __m128 vnear = _mm_set_ps1(g_NearClip);

	const __m128* vin = (const __m128*)Table1[inside];
	const __m128* vout = (const __m128*)Table1[outside];
	__m128*       vres = (__m128*)Table1[out_index];

	__m128  ipos = vin[0];
	__m128  ihi = vin[1];
	__m128i icol = *(__m128i*)&ihi; // colour + specular, as bytes
	ihi = _mm_movehl_ps(ihi, ihi);  // tu, tv

	if ((Table0[inside] & 0x3f) == 0)
	{
		// Already projected: undo it. w = NearClip / rhw,
		// x = (sx - HalfW) * w / HalfW, y = (HalfH - sy) * w / HalfH.
		__m128 vw = _mm_shuffle_ps(ipos, ipos, 0xff);
		__m128 r = _mm_rcp_ps(vw);
		__m128 w = _mm_mul_ps(_mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(vw, r), r)), vnear);
		__m128 half = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)g_HalfScreen);
		ipos = _mm_add_ps(_mm_xor_ps(ipos, kNegY), _mm_xor_ps(half, _mm_set_ss(-0.0f)));
		ipos = _mm_mul_ps(ipos, _mm_mul_ps(_mm_loadl_pi(_mm_setzero_ps(), (const __m64*)g_InvHalfScreen), w));
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
	case 0x20:
		d = _mm_sub_ps(d, vnear); // near: w - NearClip
		break;
	case 0x08:
		d = _mm_add_ps(d, _mm_movelh_ps(ipos, opos)); // left: w + x
		break;
	case 0x10:
		d = _mm_sub_ps(d, _mm_movelh_ps(ipos, opos)); // right: w - x
		break;
	case 0x04:
		d = _mm_sub_ps(d, _mm_shuffle_ps(ipos, opos, 0x55)); // top: w - y
		break;
	case 0x02:
		d = _mm_add_ps(d, _mm_shuffle_ps(ipos, opos, 0x55)); // bottom: w + y
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
	case 0x20:
		flags |= _mm_comigt_ss(pos, vw) ? 0x10 : 0;
		// fall through
	case 0x10:
		flags |= _mm_comilt_ss(pos, vnw) ? 0x08 : 0;
		// fall through
	case 0x08:
		flags |= _mm_comigt_ss(vy, vw) ? 0x04 : 0;
		// fall through
	case 0x04:
		flags |= _mm_comilt_ss(vy, vnw) ? 0x02 : 0;
		// fall through
	default:
		break;
	}
	Table0[out_index] = flags;

	if (flags == 0)
	{
		// Fully inside: project. sx = HalfW * (1 + x/w) clamped to the viewport,
		// rhw = NearClip / w and sz = 1 - rhw.
		__m128 r = _mm_rcp_ps(vw);
		__m128 rw = _mm_sub_ps(_mm_add_ps(r, r), _mm_mul_ps(_mm_mul_ps(vw, r), r));
		__m128 half = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)g_HalfScreen);
		__m128 maxs = _mm_loadl_pi(_mm_setzero_ps(), (const __m64*)g_MaxScreen);
		pos = _mm_add_ps(_mm_mul_ps(_mm_mul_ps(_mm_xor_ps(pos, kNegY), rw), half), half);
		pos = _mm_min_ps(_mm_max_ps(pos, _mm_setzero_ps()), maxs);
		__m128 kw = _mm_mul_ps(rw, vnear);
		pos =
			_mm_or_ps(pos, _mm_or_ps(_mm_and_ps(kw, maskW), _mm_andnot_ps(maskXYW, _mm_sub_ps(_mm_set_ps1(1.0f), kw))));
	}

	vres[0] = pos;
	vres[1] = _mm_movelh_ps(*(__m128*)&blend, hi);
}

void LH3DP3::AddTriangle(uint16_t v0, uint16_t v1, uint16_t v2)
{
	int n = g_TriangleListSize;
	g_TriangleList[n] = v0;
	g_TriangleList[n + 1] = v1;
	g_TriangleList[n + 2] = v2;
	g_TriangleListSize = n + 3;
}

// Appends the triangle unless it is back-facing in screen space.
void LH3DP3::EmitTriangle(uint16_t v0, uint16_t v1, uint16_t v2)
{
	if (g_NoBackfaceCull != 0)
	{
		AddTriangle(v0, v1, v2);
	}
	else if ((Table1[v2][1] - Table1[v0][1]) * (Table1[v1][0] - Table1[v0][0]) -
	             (Table1[v1][1] - Table1[v0][1]) * (Table1[v2][0] - Table1[v0][0]) >
	         0.0f)
	{
		AddTriangle(v0, v1, v2);
	}
}

// Recursive Sutherland-Hodgman clip against every plane still set in mask (0x20
// down to 0x02, one bit per frustum plane), emitting the resulting fan. The last
// sub-triangle of each split is a tail call, which the compiler turns into a
// jump back to the mask test.
//
// TODO: NonMatching. Block ordering, scheduling and register assignment all
// differ from the target: this ICC is build 010525Z and the original was built
// with 001120, and block-layout heuristics move between point builds. The
// inverted (x & mask) == 0 tests below are written that way because they put the
// blocks on the target's fall-through side, not because the original is known to
// have been written so.
void __fastcall LH3DP3::ClipTriangle(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask)
{
	if (mask == 0)
	{
		EmitTriangle(v0, v1, v2);
		return;
	}

	uint16_t i0, i1;
	int      f0 = Table0[v0];
	int      f1, f2;
	if (f0 & mask)
	{
		f1 = Table0[v1];
		if (f1 & mask)
		{
			// v0 and v1 outside.
			if (Table0[v2] & mask)
			{
				return; // all three outside: nothing survives
			}
			i0 = g_NumClipVerts;
			i1 = g_NumClipVerts + 1;
			g_NumClipVerts += 2;
			ClipEdge(mask, v2, v0, i0);
			ClipEdge(mask, v2, v1, i1);
			ClipTriangle(v2, i0, i1, mask >> 1);
		}
		else
		{
			// v0 outside, v1 inside.
			i0 = g_NumClipVerts;
			i1 = g_NumClipVerts + 1;
			g_NumClipVerts += 2;
			if (Table0[v2] & mask)
			{
				ClipEdge(mask, v1, v0, i0);
				ClipEdge(mask, v1, v2, i1);
				ClipTriangle(i0, v1, i1, mask >> 1);
			}
			else
			{
				ClipEdge(mask, v1, v0, i0);
				ClipEdge(mask, v2, v0, i1);
				ClipTriangle(i0, v1, v2, mask >> 1);
				ClipTriangle(i0, v2, i1, mask >> 1);
			}
		}
	}
	else
	{
		f1 = Table0[v1];
		if ((f1 & mask) == 0)
		{
			f2 = Table0[v2];
			if ((f2 & mask) == 0)
			{
				// Nothing crosses this plane.
				if ((f0 | f1 | f2) != 0)
				{
					ClipTriangle(v0, v1, v2, mask >> 1);
				}
				else
				{
					EmitTriangle(v0, v1, v2); // fully inside every plane
				}
			}
			else
			{
				// v0, v1 inside, v2 outside.
				i0 = g_NumClipVerts;
				i1 = g_NumClipVerts + 1;
				g_NumClipVerts += 2;
				ClipEdge(mask, v0, v2, i0);
				ClipEdge(mask, v1, v2, i1);
				ClipTriangle(i0, v0, v1, mask >> 1);
				ClipTriangle(i0, v1, i1, mask >> 1);
			}
		}
		else
		{
			// v0 inside, v1 outside.
			i0 = g_NumClipVerts;
			i1 = g_NumClipVerts + 1;
			g_NumClipVerts += 2;
			if (Table0[v2] & mask)
			{
				ClipEdge(mask, v0, v1, i0);
				ClipEdge(mask, v0, v2, i1);
				ClipTriangle(v0, i0, i1, mask >> 1);
			}
			else
			{
				ClipEdge(mask, v0, v1, i0);
				ClipEdge(mask, v2, v1, i1);
				ClipTriangle(v0, i0, v2, mask >> 1);
				ClipTriangle(i0, i1, v2, mask >> 1);
			}
		}
	}
}

void LH3DP3::DrawSpriteWrapper(float* param_1)
{
	DrawSprite(param_1);
}

void* LH3DP3::GetTable0()
{
	return Table0;
}

void* LH3DP3::GetTable1()
{
	return Table1;
}

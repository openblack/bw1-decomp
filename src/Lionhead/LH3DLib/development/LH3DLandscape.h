#ifndef BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H

#include <ddraw.h>     /* For IDirectDrawSurface7 */
#include <stdint.h>    /* For uint16_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For LHPoint */

class LH3DObject;

#define LH3D_LANDSCAPE_TEXTURE_SIZE  256
#define LH3D_LANDSCAPE_CELL_TEXELS   16
#define LH3D_LANDSCAPE_NB_ALTITUDES  256
#define LH3D_LANDSCAPE_MAX_MATERIALS 50
#define LH3D_LANDSCAPE_MAX_COUNTRIES 50
// Bytes in the noise bitmap and in the bump map.
#define LH3D_LANDSCAPE_BITMAP_SIZE (LH3D_LANDSCAPE_TEXTURE_SIZE * LH3D_LANDSCAPE_TEXTURE_SIZE)

// Altitudes are 8.8 fixed point once interpolated across a cell. Below 1 the texel is sea, above 4 it is solid
// land, and in between the alpha ramps up from 2 to 950 / 256 with some noise.
#define LH3D_LANDSCAPE_SEA_LEVEL   0x100
#define LH3D_LANDSCAPE_SOLID_LEVEL 0x400
#define LH3D_LANDSCAPE_SHORE_START 512
#define LH3D_LANDSCAPE_SHORE_END   950
#define LH3D_LANDSCAPE_ALPHA_MAX   15
// The bump map spans BUMP_MIN to 255. In low resolution the textures are drawn 128 wide, and the last two columns
// and rows are copied from the first.
#define LH3D_LANDSCAPE_BUMP_MIN 64
// A texel's four corner weights fall off linearly up to BLEND_RADIUS texels away and add up to COEFF_TOTAL.
#define LH3D_LANDSCAPE_BLEND_RADIUS 14.0f
#define LH3D_LANDSCAPE_COEFF_MAX    255
// Colours of the cell texture drawn in place of the landscape: water, coast, land, steep ground and the grid lines.
#define LH3D_LANDSCAPE_CADRE_WATER  0xf00f
#define LH3D_LANDSCAPE_CADRE_COAST  0xfff0
#define LH3D_LANDSCAPE_CADRE_LAND   0xffff
#define LH3D_LANDSCAPE_CADRE_STEEP  0xf000
#define LH3D_LANDSCAPE_CADRE_LINE   0xff00
#define LH3D_LANDSCAPE_COEFF_TOTAL  255.0f
#define LH3D_LANDSCAPE_LOW_RES_EDGE 254
// The blocks whose textures TextureUpdateThread works on each frame.
#define LH3D_LANDSCAPE_UPDATES_PER_FRAME 6
#define LH3D_LANDSCAPE_LOCK_FLAGS        (DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK)
#define LH3D_LANDSCAPE_SURFACE_FLAGS     (DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT | DDSD_MIPMAPCOUNT)
#define LH3D_LANDSCAPE_SURFACE_CAPS      (DDSCAPS_COMPLEX | DDSCAPS_MIPMAP | DDSCAPS_TEXTURE | DDSCAPS_SYSTEMMEMORY)

class LH3DLandscape
{
public:
	struct Material
	{
		uint16_t Type;                                                               /* 0x0 */
		uint16_t Texture[LH3D_LANDSCAPE_TEXTURE_SIZE * LH3D_LANDSCAPE_TEXTURE_SIZE]; /* 0x2 */

		// BW1W120 00fa7688 BW1M119 0120684c (LHCombined Release)
		static unsigned long g_offset_noise;
		// BW1W120 00fa768c BW1M119 01206850 (LHCombined Release)
		static unsigned long g_offset_texture;

		// BW1W120 00872600 BW1M119 010511d0 (LHCombined Release)
		static void Open();
		// BW1W120 00872610 BW1M119 01051190 (LHCombined Release)
		static void Close();
	};

	struct Country
	{
		// The two materials used at one altitude and the weight of the first, out of 256.
		struct Altitude
		{
			unsigned long Material1; /* 0x0 */
			unsigned long Material2; /* 0x4 */
			unsigned long Coeff;     /* 0x8 */
		};

		unsigned long Type;                                   /* 0x0 */
		Altitude      Altitudes[LH3D_LANDSCAPE_NB_ALTITUDES]; /* 0x4 */

		// BW1W120 00873770 BW1M119 010342b0 (LHCombined Release)
		unsigned long __fastcall GetMostInfluentMaterialType(unsigned long altitude);
	};

	// A block's texture that is still being filled in, a line at a time, by TextureUpdateThread.
	struct UpdateListElement
	{
		float                Distance;
		LHPoint              Position;
		int                  BlockIndex;
		int                  Line;
		IDirectDrawSurface7* Surface;
		int                  Pitch;
		UpdateListElement*   Next;

		// BW1W120 inlined BW1M119 inlined
		UpdateListElement() : Surface(NULL), Next(NULL) {}
		// BW1W120 00871d50 BW1M119 01051e20 (LHCombined Release)
		~UpdateListElement();

		// BW1W120 00871d70 BW1M119 01051d50 (LHCombined Release)
		uint16_t* GetBuffer();
		// BW1W120 00871dd0 BW1M119 01051cd0 (LHCombined Release)
		void ReleaseBuffer();
		// BW1W120 00871df0 BW1M119 01051c00 (LHCombined Release)
		void SendTo3DCard();
		// BW1W120 00871e50 BW1M119 01051a40 (LHCombined Release)
		void Update();
	};

	// Bilinear weights of the four cell corners for each texel of a cell.
	// BW1W120 00e3a3e0 BW1M119 012055ec (LHCombined Release)
	static unsigned long g_coeff[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS][4];
	// Neighbouring countries' renderings of a cell, blended into it by BlendCountry.
	// BW1W120 00fa7230 BW1M119 01204fec (LHCombined Release)
	static uint16_t g_patch_3[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
	// BW1W120 00fa7030 BW1M119 012051ec (LHCombined Release)
	static uint16_t g_patch_2[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
	// BW1W120 00fa6e30 BW1M119 012053ec (LHCombined Release)
	static uint16_t g_patch_1[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
	// BW1W120 00fa7694 BW1M119 012065f0 (LHCombined Release)
	static uint8_t* g_noise_bitmap;
	// BW1W120 00fa7698 BW1M119 012065ec (LHCombined Release)
	static uint8_t* g_bump;
	// BW1W120 00fa769c BW1M119 01204fe8 (LHCombined Release)
	static Country* g_current_country;
	// The type of each material, kept when the materials themselves are not loaded.
	// BW1W120 00fa7430 BW1M119 012066bc (LHCombined Release)
	static unsigned long g_list_terrain_type[LH3D_LANDSCAPE_MAX_MATERIALS];
	// BW1W120 00fa74f8 BW1M119 01206784 (LHCombined Release)
	static Material* g_list_material[LH3D_LANDSCAPE_MAX_MATERIALS];
	// BW1W120 00fa75c0 BW1M119 012065f4 (LHCombined Release)
	static Country* g_list_country[LH3D_LANDSCAPE_MAX_COUNTRIES];
	// BW1W120 00fa76b8 BW1M119 01204fcc (LHCombined Release)
	static unsigned long g_filed_index;
	// BW1W120 00fa76b4 BW1M119 01204fd0 (LHCombined Release)
	static unsigned long g_town_index;

	// BW1W120 00fa76bc BW1M119 01204fc8 (LHCombined Release)
	static UpdateListElement* g_updatelist;
	// BW1W120 00fa76b0 BW1M119 01204fd4 (LHCombined Release)
	static unsigned long g_enum_l0;
	// BW1W120 00fa76ac BW1M119 01204fd8 (LHCombined Release)
	static unsigned long g_enum_c0;
	// BW1W120 00fa76a8 BW1M119 01204fdc (LHCombined Release)
	static LH3DObject* g_object_enum;
	// BW1W120 00fa76a4 BW1M119 01204fe0 (LHCombined Release)
	static LH3DObject*(__cdecl* g_get_next_func)();
	// BW1W120 00fa76a0 BW1M119 01204fe4 (LHCombined Release)
	static void(__fastcall* g_init_func)(unsigned long l0, unsigned long c0);
	// BW1W120 00fa7690 BW1M119 01206854 (LHCombined Release)
	static bool32_t g_open;

	// BW1W120 00871f00 BW1M119 0100f8d0 (LHCombined Release)
	static void TextureUpdateThread();
	// BW1W120 00872050 BW1M119 010517f0 (LHCombined Release)
	static bool32_t __fastcall ProcessTextureInBackground(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 00873700 BW1M119 0104f850 (LHCombined Release)
	static bool32_t __fastcall ProcessTexture(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 00873790 BW1M119 0104f350 (LHCombined Release)
	static void __fastcall ProcessTextureLine(unsigned long line, uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 008721a0 BW1M119 01051220 (LHCombined Release)
	static void __fastcall DrawShadowOnTexture(uint16_t* dest, unsigned long pitch, unsigned long grid_x,
	                                           unsigned long grid_z);
	// BW1W120 008711c0 BW1M119 01053740 (LHCombined Release)
	static void Create();
	// BW1W120 008713f0 BW1M119 01052c90 (LHCombined Release)
	static void Open();
	// BW1W120 00871440 BW1M119 01052c20 (LHCombined Release)
	static void Close();
	// BW1W120 00871470 BW1M119 01052b60 (LHCombined Release)
	static void __fastcall InitEnum(unsigned long l0, unsigned long c0);
	// BW1W120 008714c0 BW1M119 01052a40 (LHCombined Release)
	static LH3DObject* GetNextEnum();
	// BW1W120 00871560 BW1M119 010526f0 (LHCombined Release)
	static void BuildCoeff();
	// BW1W120 00871ae0 BW1M119 01051ee0 (LHCombined Release)
	static bool32_t __fastcall ProcessTextureCadre(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 008732c0 BW1M119 0104f930 (LHCombined Release)
	static void __fastcall ProcessCell(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z);
	// BW1W120 00873ab0 BW1M119 0104ef20 (LHCombined Release)
	static void __fastcall ProcessTextureLine128(unsigned long line, uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 00873d80 BW1M119 0104eaf0 (LHCombined Release)
	static void __fastcall ProcessCell128(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z);
	// BW1W120 008741d0 BW1M119 0104e8b0 (LHCombined Release)
	static void __fastcall BlendCountry128(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
	                                       unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
	                                       uint16_t* src3, unsigned long src3_pitch);
	// BW1W120 00871850 BW1M119 010524b0 (LHCombined Release)
	static void __fastcall BlendCountry(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
	                                    unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
	                                    uint16_t* src3, unsigned long src3_pitch);
	// BW1W120 00871220 BW1M119 010535d0 (LHCombined Release)
	static void Release();
	// BW1W120 008712e0 BW1M119 01052eb0 (LHCombined Release)
	static void __fastcall SetBump(void* data);
	// BW1W120 00872620 BW1M119 01051060 (LHCombined Release)
	static void __fastcall SetCountries(void* data);
	// BW1W120 008726a0 BW1M119 01050d10 (LHCombined Release)
	static void __fastcall SetNoiseMaps(void* data);
	// BW1W120 00872770 BW1M119 010509b0 (LHCombined Release)
	static void __fastcall SetMaterials(void* data);
};

#endif /* BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H */

#ifndef BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H

#include <stdint.h>    /* For uint16_t, uint8_t */
#include <re_common.h> /* For bool32_t */

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

	// Bilinear weights of the four cell corners for each texel of a cell.
	// BW1W120 00e3a3e0 BW1M119 012055ec (LHCombined Release)
	static unsigned long g_coeff[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS][4];
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

	static void TextureUpdateThread(); // 00871f00
	// BW1W120 00872050 BW1M119 010517f0 (LHCombined Release)
	static bool32_t __fastcall ProcessTextureInBackground(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 00873700 BW1M119 0104f850 (LHCombined Release)
	static bool32_t __fastcall ProcessTexture(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 008711c0 BW1M119 01053740 (LHCombined Release)
	static void Create();
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

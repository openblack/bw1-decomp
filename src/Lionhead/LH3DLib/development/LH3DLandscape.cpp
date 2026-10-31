#include "LH3DLandscape.h"

#include <string.h>  /* For memset */
#include <windows.h> /* For min, max */

#include <Lionhead/LHLib/ver5.0/LHScreen.h> /* For LHScreen */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys */

#include "FootPrintBase.h"     /* For FootPrintBase */
#include "LH3DIsland.h"        /* For LH3DIsland, LandBlock, LowResTexture */
#include "LH3DJustFootPrint.h" /* For LH3DJustFootPrint */
#include "LH3DMapCoords.h"     /* For MAP_COORDS_METRES_PER_CELL */
#include "LH3DMath.h"          /* For FloatToInt */
#include "LH3DMem.h"           /* For LH3DMem */
#include "LH3DMesh.h"          /* For LH3DMesh */
#include "LH3DMeshFootprint.h" /* For LH3DMeshFootprintData */
#include "LH3DObject.h"        /* For LH3DObject */
#include "LH3DP3.h"            /* For LH3DP3 */
#include "LH3DTShadow.h"       /* For LH3D_T_SHADOW_SIZE */
#include "LH3DTech.h"          /* For LH3DTech */
#include "LH3DTexture.h"       /* For GLock, LH3DTexture */
#include "LH3DVRAMTex.h"       /* For LH3DVRAMTex */
#include "LH3DVertex.h"        /* For Vertex3D */
#include "SnowCover.h"         /* For SnowCover */
#include "SoftTri.h"           /* For SoftTri */
#include "TShadowInfo.h"       /* For TShadowInfo */

#define LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS 8
#define LH3D_LANDSCAPE_LOW_RES_STEP        2
#define LH3D_LANDSCAPE_BLEND_SCALE         0x100

#define LH3D_LANDSCAPE_BLOCK_HALF_SIZE (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL / 2)

static const float LH3D_LANDSCAPE_BUMP_SCALE = (255 - LH3D_LANDSCAPE_BUMP_MIN) / 255.0f;

#define DRAW_TRIANGLE_SIZE         256
#define DRAW_TRIANGLE_LOW_RES_SIZE 128

struct DrawTriangle
{
	struct ScanLine
	{
		bool32_t Used;
		long     Min;
		long     Max;
		float    MinU;
		float    MaxU;
		float    MinV;
		float    MaxV;
	};

	static ScanLine  g_list_scan_line[DRAW_TRIANGLE_SIZE];
	static uint16_t* g_buffer;
	static int       g_pitch;
	static int       g_opac;

	static void            Draw();
	static void            DrawAlpha();
	static void __fastcall AddPoint(long y, long x, float u, float v);
	static void __fastcall AddEdge(Vertex3D* a, Vertex3D* b);
};

static void __fastcall FuncDrawSubPixelNULL(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z) {}

static void(__fastcall* FuncDrawSubPixel)(uint16_t* dest, unsigned long pitch, unsigned long x,
                                          unsigned long z) = FuncDrawSubPixelNULL;
static uint8_t g_small_germe_3x3[3][3] = {{12, 17, 12}, {17, 25, 17}, {12, 17, 12}};
static int     g_fp_opacity = 0xff;
static int     g_cadre_max_slope = 10;
int            DrawTriangle::g_pitch = DRAW_TRIANGLE_SIZE;
int            DrawTriangle::g_opac = 0xff000;

static bool32_t g_scan_lines_cleared;
FootPrintBase*  g_current_footprint;
uint16_t*       DrawTriangle::g_buffer;
uint8_t*        shadow_buffer;

LH3DLandscape::UpdateListElement* LH3DLandscape::g_updatelist;
unsigned long                     LH3DLandscape::g_filed_index;
unsigned long                     LH3DLandscape::g_town_index;
unsigned long                     LH3DLandscape::g_enum_l0;
unsigned long                     LH3DLandscape::g_enum_c0;
LH3DObject*                       LH3DLandscape::g_object_enum;
LH3DObject*(__cdecl* LH3DLandscape::g_get_next_func)();
void(__fastcall* LH3DLandscape::g_init_func)(unsigned long l0, unsigned long c0);
LH3DLandscape::Country*  LH3DLandscape::g_current_country;
uint8_t*                 LH3DLandscape::g_bump;
uint8_t*                 LH3DLandscape::g_noise_bitmap;
bool32_t                 LH3DLandscape::g_open;
unsigned long            LH3DLandscape::Material::g_offset_texture;
unsigned long            LH3DLandscape::Material::g_offset_noise;
LH3DLandscape::Country*  LH3DLandscape::g_list_country[LH3D_LANDSCAPE_MAX_COUNTRIES];
LH3DLandscape::Material* LH3DLandscape::g_list_material[LH3D_LANDSCAPE_MAX_MATERIALS];
unsigned long            LH3DLandscape::g_list_terrain_type[LH3D_LANDSCAPE_MAX_MATERIALS];
uint16_t                 LH3DLandscape::g_patch_3[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
uint16_t                 LH3DLandscape::g_patch_2[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
uint16_t                 LH3DLandscape::g_patch_1[LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS];
LHMatrix                 g_mat;
float                    TransX0;
float                    TransZ0;
DrawTriangle::ScanLine   DrawTriangle::g_list_scan_line[DRAW_TRIANGLE_SIZE];

void LH3DLandscape::Create()
{
	memset(g_list_country, 0, sizeof(g_list_country));
	memset(g_list_material, 0, sizeof(g_list_material));
	if (!LH3DIsland::g_b_use_always_low_texture)
	{
		g_noise_bitmap = (uint8_t*)LH3DMem::Alloc(LH3D_LANDSCAPE_BITMAP_SIZE);
		g_bump = (uint8_t*)LH3DMem::Alloc(LH3D_LANDSCAPE_BITMAP_SIZE);
	}
	g_current_country = NULL;
	g_updatelist = NULL;
}

void LH3DLandscape::Release()
{
	if (g_noise_bitmap != NULL)
	{
		LH3DMem::Free(g_noise_bitmap);
		g_noise_bitmap = NULL;
	}
	if (g_bump != NULL)
	{
		LH3DMem::Free(g_bump);
		g_bump = NULL;
	}
	UpdateListElement* element = g_updatelist;
	while (element != NULL)
	{
		UpdateListElement* next = element->Next;
		delete element;
		element = next;
	}
	g_updatelist = NULL;
	int i;
	for (i = 0; i < LH3D_LANDSCAPE_MAX_MATERIALS; i++)
	{
		if (g_list_material[i] != NULL)
		{
			LH3DMem::Free(g_list_material[i]);
			g_list_material[i] = NULL;
		}
	}
	for (i = 0; i < LH3D_LANDSCAPE_MAX_COUNTRIES; i++)
	{
		if (g_list_country[i] != NULL)
		{
			LH3DMem::Free(g_list_country[i]);
		}
		g_list_country[i] = NULL;
	}
}

void __fastcall LH3DLandscape::SetBump(void* data)
{
	if (!LH3DIsland::g_b_use_always_low_texture)
	{
		uint8_t* bitmap = (uint8_t*)data;
		int      i;
		for (i = 0; i < LH3D_LANDSCAPE_TEXTURE_SIZE; i++)
		{
			uint8_t*      row = &bitmap[i * LH3D_LANDSCAPE_TEXTURE_SIZE];
			unsigned long average = (uint8_t)((row[0] + row[LH3D_LANDSCAPE_TEXTURE_SIZE - 1]) / 2);
			row[LH3D_LANDSCAPE_TEXTURE_SIZE - 1] = average;
			row[0] = average;
		}
		for (i = 0; i < LH3D_LANDSCAPE_TEXTURE_SIZE; i++)
		{
			uint8_t*      last = &bitmap[LH3D_LANDSCAPE_BITMAP_SIZE - LH3D_LANDSCAPE_TEXTURE_SIZE + i];
			unsigned long average = (uint8_t)((bitmap[i] + *last) / 2);
			*last = average;
			bitmap[i] = average;
		}
		unsigned long highest = 0;
		unsigned long lowest = 255;
		for (i = 0; i < LH3D_LANDSCAPE_BITMAP_SIZE; i++)
		{
			unsigned long value = bitmap[i];
			if (value > highest)
			{
				highest = value;
			}
			if (value < lowest)
			{
				lowest = value;
			}
		}
		for (i = 0; i < LH3D_LANDSCAPE_BITMAP_SIZE; i++)
		{
			g_bump[i] = (uint8_t)(bitmap[i] * LH3D_LANDSCAPE_BUMP_SCALE + LH3D_LANDSCAPE_BUMP_MIN);
		}
		if (LH3DTexture::g_b_use_low_res)
		{
			for (i = 0; i < LH3D_LANDSCAPE_TEXTURE_SIZE; i++)
			{
				int edge = i * LH3D_LANDSCAPE_TEXTURE_SIZE + LH3D_LANDSCAPE_LOW_RES_EDGE;
				g_bump[edge] = g_bump[edge - LH3D_LANDSCAPE_LOW_RES_EDGE];
				g_bump[edge + LH3D_LANDSCAPE_LOW_RES_EDGE * LH3D_LANDSCAPE_TEXTURE_SIZE] = g_bump[i];
			}
		}
	}
}

void LH3DLandscape::Open()
{
	if (g_open)
	{
		Report3D__FPCce("## LH3DLandscape Open: Already Open.\n");
		return;
	}
	g_open = true;
	BuildCoeff();
	Material::Open();
	g_current_country = NULL;
	g_init_func = InitEnum;
	g_get_next_func = GetNextEnum;
}

void LH3DLandscape::Close()
{
	if (!g_open)
	{
		Report3D__FPCce("## LH3DLandscape Close: Already Close.\n");
		return;
	}
	g_open = false;
	Material::Close();
}

void __fastcall LH3DLandscape::InitEnum(unsigned long l0, unsigned long c0)
{
	g_enum_l0 = l0;
	g_enum_c0 = c0;
	g_object_enum = LH3DObject::g_first;
	while (g_object_enum != NULL)
	{
		g_object_enum->SetEnumFlag(false);
		g_object_enum = g_object_enum->next;
	}
	g_object_enum = LH3DObject::g_first;
}

LH3DObject* LH3DLandscape::GetNextEnum()
{
	LH3DObject* object = g_object_enum;
	if (object != NULL)
	{
		unsigned long l0 = g_enum_l0;
		unsigned long c0 = g_enum_c0;
		float         x = (float)(l0 * 16 + 8) * MAP_COORDS_METRES_PER_CELL;
		while (object != NULL)
		{
			float z = (float)(c0 * 16 + 8) * MAP_COORDS_METRES_PER_CELL;
			if (fabs(x - object->matrix.GetPos().x) <= 100.0 && fabs(z - object->matrix.GetPos().z) <= 100.0)
			{
				g_object_enum = object->next;
				return object;
			}
			object = object->next;
			g_object_enum = object;
		}
	}
	return object;
}

static inline float GetDistance2D(float x0, float z0, float x1, float z1)
{
	float dx = x0 - x1;
	float dz = z0 - z1;
	return sqrt(dz * dz + dx * dx);
}

void LH3DLandscape::BuildCoeff()
{
	for (int i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS; i++)
	{
		for (int j = 0; j < LH3D_LANDSCAPE_CELL_TEXELS; j++)
		{
			float x = i;
			float z = j;
			float d0 = GetDistance2D(0.0f, 0.0f, x, z);
			float d1 = GetDistance2D(0.0f, LH3D_LANDSCAPE_CELL_TEXELS, x, z);
			float d2 = GetDistance2D(LH3D_LANDSCAPE_CELL_TEXELS, LH3D_LANDSCAPE_CELL_TEXELS, x, z);
			float d3 = GetDistance2D(LH3D_LANDSCAPE_CELL_TEXELS, 0.0f, x, z);
			if (d0 > LH3D_LANDSCAPE_BLEND_RADIUS)
				d0 = 0.0f;
			else
				d0 = LH3D_LANDSCAPE_BLEND_RADIUS - d0;
			if (d1 > LH3D_LANDSCAPE_BLEND_RADIUS)
				d1 = 0.0f;
			else
				d1 = LH3D_LANDSCAPE_BLEND_RADIUS - d1;
			if (d2 > LH3D_LANDSCAPE_BLEND_RADIUS)
				d2 = 0.0f;
			else
				d2 = LH3D_LANDSCAPE_BLEND_RADIUS - d2;
			if (d3 > LH3D_LANDSCAPE_BLEND_RADIUS)
				d3 = 0.0f;
			else
				d3 = LH3D_LANDSCAPE_BLEND_RADIUS - d3;
			float scale = LH3D_LANDSCAPE_COEFF_TOTAL / (d3 + d2 + d1 + d0);
			float c0 = (unsigned long)(scale * d0);
			float c1 = (unsigned long)(scale * d1);
			float c2 = (unsigned long)(scale * d2);
			float c3 = (unsigned long)(scale * d3);
			while (c3 + c2 + c1 + c0 < LH3D_LANDSCAPE_COEFF_TOTAL)
			{
				if (c0 > c1)
				{
					if (c0 > c2)
					{
						if (c0 > c3)
							c0 += 1.0f;
						else
							c3 += 1.0f;
					}
					else
					{
						if (c2 > c3)
							c2 += 1.0f;
						else
							c3 += 1.0f;
					}
				}
				else
				{
					if (c1 > c2)
					{
						if (c1 > c3)
							c1 += 1.0f;
						else
							c3 += 1.0f;
					}
					else
					{
						if (c2 > c3)
							c2 += 1.0f;
						else
							c3 += 1.0f;
					}
				}
			}
			g_coeff[i * LH3D_LANDSCAPE_CELL_TEXELS + j][0] = (unsigned long)c0;
			g_coeff[i * LH3D_LANDSCAPE_CELL_TEXELS + j][1] = (unsigned long)c1;
			g_coeff[i * LH3D_LANDSCAPE_CELL_TEXELS + j][2] = (unsigned long)c2;
			g_coeff[i * LH3D_LANDSCAPE_CELL_TEXELS + j][3] = (unsigned long)c3;
		}
	}
}

static inline unsigned long BlendChannel(unsigned long* coeff, int p0, int p1, int p2, int p3, unsigned long mask)
{
	return ((coeff[0] * (p0 & mask) + coeff[1] * (p1 & mask) + coeff[2] * (p2 & mask) + coeff[3] * (p3 & mask)) /
	        LH3D_LANDSCAPE_COEFF_MAX) &
	       mask;
}

void __fastcall LH3DLandscape::BlendCountry(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
                                            unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
                                            uint16_t* src3, unsigned long src3_pitch)
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::BlendCountryWrapper(dest, dest_pitch, src1, src1_pitch, src2, src2_pitch, src3, src3_pitch);
		return;
	}
	for (int j = 0; j < LH3D_LANDSCAPE_CELL_TEXELS; j++)
	{
		for (unsigned long i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS; i++)
		{
			int            p0 = dest[j * dest_pitch + i];
			int            p1 = src1[j * src1_pitch + i];
			int            p2 = src2[j * src2_pitch + i];
			int            p3 = src3[j * src3_pitch + i];
			unsigned long* coeff = g_coeff[j * LH3D_LANDSCAPE_CELL_TEXELS + i];
			dest[j * dest_pitch + i] =
				BlendChannel(coeff, p0, p1, p2, p3, 0x0f00) | BlendChannel(coeff, p0, p1, p2, p3, 0x00f0) |
				BlendChannel(coeff, p0, p1, p2, p3, 0x000f) | BlendChannel(coeff, p0, p1, p2, p3, 0xf000);
		}
	}
}

bool32_t __fastcall LH3DLandscape::ProcessTextureCadre(uint16_t* dest, unsigned long pitch, void* data)
{
	LH3DIsland::g_current_block = LH3DIsland::g_ptr_blocks[(int)data];
	LandBlock* block = LH3DIsland::g_current_block;
	int        size = LH3DTexture::g_b_use_low_res ? LH3D_LANDSCAPE_CELL_TEXELS / 2 : LH3D_LANDSCAPE_CELL_TEXELS;
	int        row;
	int        column;
	int        i;
	int        j;
	int        y = 0;
	for (row = 0; row < LAND_MESH_LOD_0_CELLS; row++)
	{
		int x = 0;
		for (column = 0; column < LAND_MESH_LOD_0_CELLS; column++)
		{
			unsigned long color;
			if (block->Cells[row][column].IsWater())
			{
				color = LH3D_LANDSCAPE_CADRE_WATER;
			}
			else
			{
				color = block->Cells[row][column].IsCoastal() ? LH3D_LANDSCAPE_CADRE_COAST : LH3D_LANDSCAPE_CADRE_LAND;
			}
			uint8_t a = block->Cells[row][column].altitude;
			uint8_t b = block->Cells[row][column + 1].altitude;
			int     highest = max(a, b);
			highest = max(highest, block->Cells[row + 1][column].altitude);
			highest = max(highest, block->Cells[row + 1][column + 1].altitude);
			int lowest = min(a, b);
			lowest = min(lowest, block->Cells[row + 1][column].altitude);
			lowest = min(lowest, block->Cells[row + 1][column + 1].altitude);
			if (highest - lowest > g_cadre_max_slope)
			{
				color = LH3D_LANDSCAPE_CADRE_STEEP;
			}
			for (j = 0; j < size; j++)
			{
				uint16_t* line = &dest[(y + j) * pitch + x];
				for (i = 0; i < size; i++)
				{
					line[i] = (uint16_t)color;
				}
			}
			x += size;
		}
		y += size;
	}
	for (i = 0; i < pitch; i++)
	{
		dest[i] = LH3D_LANDSCAPE_CADRE_LINE;
		dest[i * pitch] = LH3D_LANDSCAPE_CADRE_LINE;
		dest[i * pitch + pitch - 1] = LH3D_LANDSCAPE_CADRE_LINE;
	}
	for (i = 0; i < pitch; i++)
	{
		for (j = size; j < pitch; j += size)
		{
			dest[j * pitch + i] = LH3D_LANDSCAPE_CADRE_LINE;
			dest[i * pitch + j] = LH3D_LANDSCAPE_CADRE_LINE;
		}
	}
	if (!LH3DTexture::g_b_use_low_res)
	{
		FuncDrawSubPixel(dest, pitch, LH3DIsland::g_current_block->GridX, LH3DIsland::g_current_block->GridZ);
	}
	LowResTexture::UpdateSmallTexture(LH3DIsland::g_current_block, dest, pitch);
	return true;
}

LH3DLandscape::UpdateListElement::~UpdateListElement()
{
	if (Surface != NULL)
	{
		Surface->Release();
	}
	Surface = NULL;
	Next = NULL;
}

uint16_t* LH3DLandscape::UpdateListElement::GetBuffer()
{
	if (Surface == NULL)
	{
		return NULL;
	}
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	GLock(Surface, NULL, &desc, LH3D_LANDSCAPE_LOCK_FLAGS, NULL);
	Pitch = desc.lPitch / 2;
	return (uint16_t*)desc.lpSurface;
}

void LH3DLandscape::UpdateListElement::ReleaseBuffer()
{
	if (Surface != NULL)
	{
		Surface->Unlock(NULL);
	}
}

void LH3DLandscape::UpdateListElement::SendTo3DCard()
{
	LH3DTexture* texture = LH3DIsland::g_ptr_blocks[BlockIndex]->Texture;
	if (texture->VRAMTex == NULL)
	{
		texture->VRAMTex = LH3DVRAMTex::AssignTexture(texture, 0);
	}
	if (texture->VRAMTex != NULL)
	{
		texture->VRAMTex->LoadInVRAM(Surface);
		LH3DIsland::g_current_block->UseLowResTexture = false;
	}
	else
	{
		LH3DIsland::g_current_block->UseLowResTexture = false;
	}
}

void LH3DLandscape::UpdateListElement::Update()
{
	uint16_t* buffer = GetBuffer();
	if (buffer != NULL)
	{
		LH3DIsland::g_current_block = LH3DIsland::g_ptr_blocks[BlockIndex];
		if (Line < LH3D_LANDSCAPE_CELL_TEXELS)
		{
			if (IsP4Improvement())
			{
				for (int i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS; i++)
				{
					ProcessTextureLine(Line, buffer, Pitch, (void*)BlockIndex);
					Line++;
				}
			}
			else
			{
				ProcessTextureLine(Line, buffer, Pitch, (void*)BlockIndex);
			}
		}
		if (Line == LH3D_LANDSCAPE_CELL_TEXELS)
		{
			LandBlock* block = LH3DIsland::g_current_block;
			DrawShadowOnTexture(buffer, Pitch, block->GridX, block->GridZ);
			LowResTexture::UpdateSmallTexture(LH3DIsland::g_current_block, buffer, Pitch);
		}
		ReleaseBuffer();
		Line++;
	}
}

void LH3DLandscape::TextureUpdateThread()
{
	int                count = LH3D_LANDSCAPE_UPDATES_PER_FRAME;
	LHPoint            camera = LH3DTech::g_camera.pos;
	UpdateListElement* element;
	for (element = g_updatelist; element != NULL; element = element->Next)
	{
		LHPoint position = element->Position;
		LHPoint offset = position - camera;
		element->Distance = offset.GetNorme();
	}
	bool32_t swapped;
	do
	{
		swapped = false;
		UpdateListElement* previous = NULL;
		for (element = g_updatelist; element != NULL; element = element->Next)
		{
			UpdateListElement* next = element->Next;
			if (next == NULL)
			{
				break;
			}
			if (element->Distance > next->Distance)
			{
				if (previous != NULL)
				{
					previous->Next = next;
				}
				else
				{
					g_updatelist = next;
				}
				UpdateListElement* after = element->Next->Next;
				element->Next->Next = element;
				element->Next = after;
				swapped = true;
			}
			previous = element;
		}
	} while (swapped);
	if (g_updatelist != NULL)
	{
		g_updatelist->Update();
	}
	UpdateListElement* previous = NULL;
	for (element = g_updatelist; element != NULL && count-- != 0;)
	{
		UpdateListElement* next = element->Next;
		element->Update();
		if (element->Line > LH3D_LANDSCAPE_CELL_TEXELS)
		{
			element->SendTo3DCard();
			if (previous == NULL)
			{
				g_updatelist = element->Next;
			}
			else
			{
				previous->Next = element->Next;
			}
			delete element;
			break;
		}
		previous = element;
		element = next;
	}
}

bool32_t __fastcall LH3DLandscape::ProcessTextureInBackground(uint16_t* dest, unsigned long pitch, void* data)
{
	int                index = (int)data;
	UpdateListElement* element = g_updatelist;
	while (element != NULL)
	{
		if (element->BlockIndex == index)
		{
			element->Line = 0;
			break;
		}
		element = element->Next;
	}
	if (element == NULL)
	{
		element = new UpdateListElement;
		element->Next = g_updatelist;
		element->BlockIndex = index;
		element->Line = 0;
		LandBlock* block = LH3DIsland::g_ptr_blocks[index];
		element->Position =
			LHPoint(block->X + LH3D_LANDSCAPE_BLOCK_HALF_SIZE, 0.0f, block->Z + LH3D_LANDSCAPE_BLOCK_HALF_SIZE);
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		desc.dwFlags |= LH3D_LANDSCAPE_SURFACE_FLAGS;
		unsigned long size = LH3D_LANDSCAPE_TEXTURE_SIZE / 2;
		if (!LH3DTexture::g_b_use_low_res)
		{
			size = LH3D_LANDSCAPE_TEXTURE_SIZE;
		}
		desc.dwWidth = size;
		desc.dwHeight = size;
		desc.dwMipMapCount = 1;
		desc.ddsCaps.dwCaps = LH3D_LANDSCAPE_SURFACE_CAPS;
		desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[0].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &element->Surface, NULL);
		g_updatelist = element;
	}
	LandBlock* block = LH3DIsland::g_ptr_blocks[index];
	if (block->Texture->VRAMTex == NULL)
	{
		block->UseLowResTexture = true;
	}
	return false;
}

#define LH3D_LANDSCAPE_BLOCK_SIZE (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL)

#define LH3D_LANDSCAPE_SHADOW_SIZE_LOW_RES 128
#define LH3D_LANDSCAPE_SHADOW_ALPHA_MAX    255

static void DrawFootPrint(FootPrintBase* footprint, uint16_t* dest, unsigned long grid_x, unsigned long grid_z,
                          bool32_t use_alpha);

void __fastcall LH3DLandscape::DrawShadowOnTexture(uint16_t* dest, unsigned long pitch, unsigned long grid_x,
                                                   unsigned long grid_z)
{
	int size = LH3DTexture::g_b_use_low_res ? LH3D_LANDSCAPE_SHADOW_SIZE_LOW_RES : LH3D_LANDSCAPE_TEXTURE_SIZE;
	if (shadow_buffer == NULL)
	{
		shadow_buffer = (uint8_t*)LH3DMem::Alloc((size + 1) * (size + 1));
	}
	TShadowInfo shadow;
	shadow.MinX = grid_x * LH3D_LANDSCAPE_BLOCK_SIZE;
	shadow.Light = DEFAULT_SUN;
	SoftTri::CLIPX = size * 4;
	shadow.MinZ = grid_z * LH3D_LANDSCAPE_BLOCK_SIZE;
	SoftTri::CLIPY = size * 2;
	shadow.Direction.x = 0.0f;
	shadow.Direction.y = 0.0f;
	shadow.Direction.z = 0.0f;
	shadow.MinDepth = LH3D_SHADOW_FAR;
	shadow.Color = 0;
	LHMatrix* savedMatrix = LH3DTech::g_current_matrix;
	shadow.MaxX = shadow.MinX + LH3D_LANDSCAPE_BLOCK_SIZE;
	shadow.MaxZ = shadow.MinZ + LH3D_LANDSCAPE_BLOCK_SIZE;
	bool32_t drawn = false;
	bool32_t cleared = false;
	g_init_func(grid_x, grid_z);
	LH3DObject* object = g_get_next_func();
	LH3DMesh::g_current_lod = 1;
	for (; object != NULL; object = g_get_next_func())
	{
		if ((object->IsShadowOnTexture() || object->IsFootPrintOnTexture()) && !object->GetEnumFlag())
		{
			object->SetEnumFlag(true);
			if (object->IsShadowOnTexture())
			{
				if (!cleared)
				{
					memset(shadow_buffer, 0, size * size);
					cleared = true;
				}
				if (object->IsShadowOnTextureChroma())
				{
					object->DrawTextureShadow(grid_x, grid_z);
				}
				else
				{
					LH3DObject::g_current_object_in_draw = object;
					LH3DTech::g_current_matrix = &object->matrix;
					shadow.GroundHeight = object->matrix._42;
					object->GetMesh()->CalculateShadowOntoTexture(shadow_buffer, size, &shadow);
				}
				drawn = true;
			}
			if (object->GetMesh()->IsContainsLandscapeFeature())
			{
				LH3DMeshFootprintData* data = (LH3DMeshFootprintData*)object->GetMesh()->GetFootprintData();
				if (data != NULL && data->Count != 0)
				{
					g_mat = object->matrix;
					DrawFootPrint((FootPrintBase*)data->First, dest, grid_x, grid_z, 0);
				}
			}
		}
	}
	BBox2D block;
	block.MinX = LH3DIsland::g_current_block->X;
	block.MinZ = LH3DIsland::g_current_block->Z;
	block.MaxX = LH3DIsland::g_current_block->X + LH3D_LANDSCAPE_BLOCK_SIZE;
	block.MaxZ = LH3DIsland::g_current_block->Z + LH3D_LANDSCAPE_BLOCK_SIZE;
	for (LH3DJustFootPrint* footprint = LH3DJustFootPrint::g_first; footprint != NULL; footprint = footprint->Next)
	{
		if (block.MinX <= footprint->Max.x && block.MaxX >= footprint->Min.x && block.MinZ <= footprint->Max.y &&
		    block.MaxZ >= footprint->Min.y)
		{
			if (footprint->Mesh->IsContainsLandscapeFeature())
			{
				LH3DMeshFootprintData* data = (LH3DMeshFootprintData*)footprint->Mesh->GetFootprintData();
				if (data != NULL && data->Count != 0)
				{
					g_mat = footprint->Matrix;
					g_fp_opacity = footprint->Opacity;
					DrawFootPrint((FootPrintBase*)data->First, dest, grid_x, grid_z, footprint->UseAlpha);
				}
			}
		}
	}
	LH3DTech::g_current_matrix = savedMatrix;
	if (SnowCover::g_snowcover != NULL)
	{
		SnowCover::g_snowcover->DrawSnowLoc(grid_z, grid_x, dest, size);
	}
	if (drawn)
	{
		uint8_t*  darkness = shadow_buffer;
		uint16_t* texel = dest;
		for (int i = size * size; i > 0; i--)
		{
			if (*darkness != 0)
			{
				int      factor = LH3D_LANDSCAPE_SHADOW_ALPHA_MAX - (SoftTri::bit2char[*darkness] >> 1);
				uint16_t color = *texel;
				*texel = ((((color & 0x000f) * factor) >> 8) & 0x000f) | ((((color & 0x0f00) * factor) >> 8) & 0x0f00) |
				         ((((color & 0x00f0) * factor) >> 8) & 0x00f0) | (color & 0xf000);
			}
			darkness++;
			texel++;
		}
	}
}

void LH3DLandscape::Material::Open()
{
	g_offset_noise = 0;
	g_offset_texture = 0;
}

void LH3DLandscape::Material::Close() {}

void __fastcall LH3DLandscape::SetCountries(void* data)
{
	unsigned long count = *(unsigned long*)data;
	Country*      source = (Country*)((unsigned long*)data + 2);
	for (uint16_t i = 0; i < count; i++)
	{
		g_list_country[i] = (Country*)LH3DMem::AllocClear(sizeof(Country));
		memcpy(g_list_country[i], source++, sizeof(Country));
	}
	LH3DIsland::g_max_index_country = count - 1;
}

void __fastcall LH3DLandscape::SetNoiseMaps(void* data)
{
	memcpy(g_noise_bitmap, data, LH3D_LANDSCAPE_BITMAP_SIZE);
	int i;
	for (i = 0; i < LH3D_LANDSCAPE_BITMAP_SIZE; i++)
	{
		g_noise_bitmap[i] = g_noise_bitmap[i] / 5;
	}
	if (LH3DTexture::g_b_use_low_res)
	{
		for (i = 0; i < LH3D_LANDSCAPE_TEXTURE_SIZE; i++)
		{
			int edge = i * LH3D_LANDSCAPE_TEXTURE_SIZE + LH3D_LANDSCAPE_LOW_RES_EDGE;
			g_noise_bitmap[edge] = g_noise_bitmap[edge - LH3D_LANDSCAPE_LOW_RES_EDGE];
			g_noise_bitmap[edge + LH3D_LANDSCAPE_LOW_RES_EDGE * LH3D_LANDSCAPE_TEXTURE_SIZE] = g_noise_bitmap[i];
		}
	}
}

static unsigned long MERGE_555(unsigned long a, unsigned long b)
{
	return (((a & 0x7c00) + (b & 0x7c00)) & (0x7c00 << 1) | ((a & 0x03e0) + (b & 0x03e0)) & (0x03e0 << 1) |
	        ((a & 0x001f) + (b & 0x001f)) & (0x001f << 1)) >>
	       1;
}

void __fastcall LH3DLandscape::SetMaterials(void* data)
{
	uint16_t count = *(uint16_t*)data;
	uint8_t* source = (uint8_t*)data + sizeof(uint16_t);
	int      x;
	for (unsigned long i = 0; i < count; i++)
	{
		g_list_material[i] = (Material*)LH3DMem::AllocClear(sizeof(Material));
		memcpy(g_list_material[i], source, sizeof(Material));
		uint16_t* texture = g_list_material[i]->Texture;
		for (x = 0; x < LH3D_LANDSCAPE_TEXTURE_SIZE; x++)
		{
			uint16_t* top = &texture[x];
			uint16_t* row = &texture[x * LH3D_LANDSCAPE_TEXTURE_SIZE];
			*top = top[LH3D_LANDSCAPE_BITMAP_SIZE - LH3D_LANDSCAPE_TEXTURE_SIZE] =
				MERGE_555(*top, top[LH3D_LANDSCAPE_BITMAP_SIZE - LH3D_LANDSCAPE_TEXTURE_SIZE]);
			*row = row[LH3D_LANDSCAPE_TEXTURE_SIZE - 1] = MERGE_555(*row, row[LH3D_LANDSCAPE_TEXTURE_SIZE - 1]);
		}
		if (LH3DTexture::g_b_use_low_res)
		{
			for (x = 0; x < LH3D_LANDSCAPE_TEXTURE_SIZE; x++)
			{
				int edge = x * LH3D_LANDSCAPE_TEXTURE_SIZE + LH3D_LANDSCAPE_LOW_RES_EDGE;
				texture[x * LH3D_LANDSCAPE_TEXTURE_SIZE + 1] = texture[edge] = texture[x * LH3D_LANDSCAPE_TEXTURE_SIZE];
				texture[x + LH3D_LANDSCAPE_TEXTURE_SIZE] =
					texture[edge + LH3D_LANDSCAPE_LOW_RES_EDGE * LH3D_LANDSCAPE_TEXTURE_SIZE] = texture[x];
			}
		}
		source += sizeof(Material);
	}
}

void DrawTriangle::Draw()
{
	for (int line = 0; line < g_pitch; line++)
	{
		ScanLine& scan = g_list_scan_line[line];
		if (scan.Used)
		{
			int   end = scan.Max;
			int   x = scan.Min;
			float du;
			float dv;
			float length = (float)(end - x);
			if (length == 0.0f)
			{
				du = dv = 0.0f;
			}
			else
			{
				float inverse = 1.0f / length;
				du = (scan.MaxU - scan.MinU) * inverse;
				dv = (scan.MaxV - scan.MinV) * inverse;
			}
			float     u = scan.MinU;
			float     v = scan.MinV;
			uint16_t* dest = g_buffer + line * g_pitch + x;
			if (end > g_pitch - 1)
			{
				end = g_pitch - 1;
			}
			for (; x <= end; x++, dest++)
			{
				if (x >= 0)
				{
					int texU = FloatToInt(u);
					int texV = FloatToInt(v);
					if (texU < 0)
					{
						texU = 0;
					}
					else if (texU >= g_current_footprint->Width)
					{
						texU = g_current_footprint->Width - 1;
					}
					if (texV < 0)
					{
						texV = 0;
					}
					else if (texV >= g_current_footprint->Height)
					{
						texV = g_current_footprint->Height - 1;
					}
					unsigned long texel = g_current_footprint->Pixels[texV * g_current_footprint->Width + texU];
					unsigned long pixel = *dest;
					unsigned long alpha = (texel >> 8) & 0xf0;
					unsigned long inverseAlpha = 0xff - alpha;
					*dest = (uint16_t)((((pixel & 0x0f00) * inverseAlpha + (texel & 0x0f00) * alpha) / 0xff & 0x0f00) |
					                   (((pixel & 0x00f0) * inverseAlpha + (texel & 0x00f0) * alpha) / 0xff & 0x00f0) |
					                   (((pixel & 0x000f) * inverseAlpha + (texel & 0x000f) * alpha) / 0xff & 0x000f) |
					                   (pixel & 0xf000));
				}
				u += du;
				v += dv;
			}
			scan.Used = false;
		}
	}
}

void DrawTriangle::DrawAlpha()
{
	for (int line = 0; line < g_pitch; line++)
	{
		ScanLine& scan = g_list_scan_line[line];
		if (scan.Used)
		{
			int   end = scan.Max;
			int   x = scan.Min;
			float du;
			float dv;
			float length = (float)(end - x);
			if (length == 0.0f)
			{
				du = dv = 0.0f;
			}
			else
			{
				float inverse = 1.0f / length;
				du = (scan.MaxU - scan.MinU) * inverse;
				dv = (scan.MaxV - scan.MinV) * inverse;
			}
			float     u = scan.MinU;
			float     v = scan.MinV;
			uint16_t* dest = g_buffer + line * g_pitch + x;
			if (end > g_pitch - 1)
			{
				end = g_pitch - 1;
			}
			if (g_opac == 0xf000)
			{
				for (; x <= end; x++, dest++)
				{
					if (x >= 0)
					{
						int texU = FloatToInt(u);
						int texV = FloatToInt(v);
						if (texU < 0)
						{
							texU = 0;
						}
						else if (texU >= g_current_footprint->Width)
						{
							texU = g_current_footprint->Width - 1;
						}
						if (texV < 0)
						{
							texV = 0;
						}
						else if (texV >= g_current_footprint->Height)
						{
							texV = g_current_footprint->Height - 1;
						}
						unsigned long pixel = *dest;
						unsigned long texel = g_current_footprint->Pixels[texV * g_current_footprint->Width + texU];
						*dest = (uint16_t)((pixel & ~0xf000) | min(pixel & 0xf000, texel & 0xf000));
					}
					u += du;
					v += dv;
				}
			}
			else
			{
				for (; x <= end; x++, dest++)
				{
					if (x >= 0)
					{
						int texU = FloatToInt(u);
						int texV = FloatToInt(v);
						if (texU < 0)
						{
							texU = 0;
						}
						else if (texU >= g_current_footprint->Width)
						{
							texU = g_current_footprint->Width - 1;
						}
						if (texV < 0)
						{
							texV = 0;
						}
						else if (texV >= g_current_footprint->Height)
						{
							texV = g_current_footprint->Height - 1;
						}
						unsigned long texel = g_current_footprint->Pixels[texV * g_current_footprint->Width + texU];
						unsigned long pixel = *dest;
						unsigned long alpha = min(0xf000, (texel & 0xf000) + g_opac);
						if ((pixel & 0xf000) < alpha)
						{
							alpha = pixel & 0xf000;
						}
						*dest = (uint16_t)((pixel & ~0xf000) | alpha);
					}
					u += du;
					v += dv;
				}
			}
			scan.Used = false;
		}
	}
}

void __fastcall DrawTriangle::AddPoint(long y, long x, float u, float v)
{
	if (y >= 0 && y <= g_pitch - 1)
	{
		ScanLine& scan = g_list_scan_line[y];
		if (scan.Used)
		{
			if (scan.Min > x)
			{
				scan.Min = x;
				scan.MinU = u;
				scan.MinV = v;
			}
			else if (scan.Max < x)
			{
				scan.Max = x;
				scan.MaxU = u;
				scan.MaxV = v;
			}
		}
		else
		{
			scan.Min = scan.Max = x;
			scan.MinU = scan.MaxU = u;
			scan.MinV = scan.MaxV = v;
			scan.Used = true;
		}
	}
}

void __fastcall DrawTriangle::AddEdge(Vertex3D* a, Vertex3D* b)
{
	if (a->x > b->x)
	{
		Vertex3D* swap = a;
		a = b;
		b = swap;
	}
	long  y = FloatToInt(a->x);
	long  x = FloatToInt(a->z);
	long  endY = FloatToInt(b->x);
	long  endX = FloatToInt(b->z);
	float u = a->uv.x;
	float v = a->uv.y;
	long  deltaY = endY - y;
	long  deltaX = endX - x;
	long  stepY;
	long  stepX;
	if (deltaY < 0)
	{
		stepY = -1;
		deltaY = -deltaY;
	}
	else
	{
		stepY = 1;
	}
	if (deltaX < 0)
	{
		stepX = -1;
		deltaX = -deltaX;
	}
	else
	{
		stepX = 1;
	}
	long error = 0;
	AddPoint(y, x, u, v);
	if (deltaY < deltaX)
	{
		if (deltaX)
		{
			float du = (b->uv.x - a->uv.x) / deltaX;
			float dv = (b->uv.y - a->uv.y) / deltaX;
			for (int i = deltaX; i > 0; i--)
			{
				u += du;
				v += dv;
				x += stepX;
				error += deltaY;
				if (error > deltaX)
				{
					y += stepY;
					error -= deltaX;
				}
				AddPoint(y, x, u, v);
			}
		}
	}
	else
	{
		if (deltaY)
		{
			float du = (b->uv.x - a->uv.x) / deltaY;
			float dv = (b->uv.y - a->uv.y) / deltaY;
			for (int i = deltaY; i > 0; i--)
			{
				u += du;
				v += dv;
				y += stepY;
				error += deltaX;
				if (error > deltaY)
				{
					x += stepX;
					error -= deltaY;
				}
				AddPoint(y, x, u, v);
			}
		}
	}
}

#define FOOT_PRINT_CORNER(corner, position, texture)                                                                   \
	{                                                                                                                  \
		float x = (position).x;                                                                                        \
		float z = (position).y;                                                                                        \
		float groundX = g_mat.m[0] * x + g_mat.m[6] * z + heightX + g_mat.m[9];                                        \
		float groundZ = g_mat.m[2] * x + g_mat.m[8] * z + heightZ + g_mat.m[11];                                       \
		(corner).x = (groundX - TransX0) * size * LH3D_T_SHADOW_SCALE;                                                 \
		(corner).z = (groundZ - TransZ0) * size * LH3D_T_SHADOW_SCALE;                                                 \
		(corner).uv = (texture);                                                                                       \
	}

static void DrawFootPrint(FootPrintBase* footprint, uint16_t* dest, unsigned long grid_x, unsigned long grid_z,
                          bool32_t use_alpha)
{
	float size = LH3D_T_SHADOW_SIZE / 2;
	if (!LH3DTexture::g_b_use_low_res)
	{
		size = LH3D_T_SHADOW_SIZE;
	}
	DrawTriangle::g_pitch = (int)size;
	if (!g_scan_lines_cleared)
	{
		g_scan_lines_cleared = true;
		for (DrawTriangle::ScanLine* scan = DrawTriangle::g_list_scan_line;
		     scan < DrawTriangle::g_list_scan_line + DRAW_TRIANGLE_SIZE; scan++)
		{
			scan->Used = false;
		}
	}
	DrawTriangle::g_buffer = dest;
	g_current_footprint = footprint;
	TransX0 = grid_x * LH3D_T_SHADOW_TILE_SIZE;
	TransZ0 = grid_z * LH3D_T_SHADOW_TILE_SIZE;
	DrawTriangle::g_opac = (g_fp_opacity & 0xf0) << 8;
	FootPrintTriangle* triangles = (FootPrintTriangle*)(footprint + 1);
	for (int i = 0; i < footprint->NumTriangles; i++)
	{
		FootPrintTriangle& triangle = triangles[i];
		float              heightX = 0.0f;
		float              heightZ = 0.0f;
		Vertex3D           corner0;
		Vertex3D           corner1;
		Vertex3D           corner2;
		FOOT_PRINT_CORNER(corner0, triangle.Position[0], triangle.UV[0]);
		FOOT_PRINT_CORNER(corner1, triangle.Position[1], triangle.UV[1]);
		FOOT_PRINT_CORNER(corner2, triangle.Position[2], triangle.UV[2]);
		if (use_alpha)
		{
			DrawTriangle::AddEdge(&corner0, &corner1);
			DrawTriangle::AddEdge(&corner1, &corner2);
			DrawTriangle::AddEdge(&corner2, &corner0);
			DrawTriangle::DrawAlpha();
		}
		else
		{
			DrawTriangle::AddEdge(&corner0, &corner1);
			DrawTriangle::AddEdge(&corner1, &corner2);
			DrawTriangle::AddEdge(&corner2, &corner0);
			DrawTriangle::Draw();
		}
	}
	g_fp_opacity = 0xff;
}

void __fastcall LH3DLandscape::ProcessCell(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z)
{
	static unsigned long alphaTable[LH3D_LANDSCAPE_ALPHA_MAX + 1] = {0x0000, 0x0000, 0x0000, 0x1000, 0x2000, 0x4000,
	                                                                 0x6000, 0x8000, 0x9000, 0xa000, 0xa000, 0xb000,
	                                                                 0xc000, 0xd000, 0xe000, 0xf000};

	if (LH3DTech::g_b_P3)
	{
		LH3DP3::ProcessCellWrapper(dest, pitch, x, z);
		return;
	}
	uint16_t*      pixel = dest;
	unsigned long* coeff = g_coeff[0];
	LandCell*      cell = &LH3DIsland::g_current_block->Cells[x][z];
	for (int j = 0; j < LH3D_LANDSCAPE_CELL_TEXELS; j++)
	{
		for (int i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS; i++)
		{
			unsigned long coeff0 = coeff[0];
			unsigned long coeff1 = coeff[1];
			unsigned long coeff2 = coeff[2];
			unsigned long coeff3 = coeff[3];
			coeff += 4;
			unsigned long altitude = cell[0].altitude * coeff0 + cell[1].altitude * coeff1 +
			                         cell[LAND_BLOCK_SIDE_POINTS + 1].altitude * coeff2 +
			                         cell[LAND_BLOCK_SIDE_POINTS].altitude * coeff3;
			if (altitude < LH3D_LANDSCAPE_SOLID_LEVEL)
			{
				if (altitude < LH3D_LANDSCAPE_SEA_LEVEL)
				{
					*pixel = 0;
				}
				else
				{
					unsigned long red;
					unsigned long green;
					unsigned long blue;
					uint8_t       noise = g_noise_bitmap[Material::g_offset_noise];
					unsigned long level = (altitude >> 8) + noise;
					if (level > LH3D_LANDSCAPE_NB_ALTITUDES - 1)
					{
						level = LH3D_LANDSCAPE_NB_ALTITUDES - 1;
					}
					unsigned long bump = g_bump[Material::g_offset_noise];
					unsigned long material2 = g_current_country->Altitudes[level].Material2;
					unsigned long material1 = g_current_country->Altitudes[level].Material1;
					unsigned long blend = g_current_country->Altitudes[level].Coeff;
					if (material1 == material2)
					{
						unsigned long texel = g_list_material[material1]->Texture[Material::g_offset_texture];
						red = (texel & 0x7c00) * bump >> 10;
						green = (texel & 0x03e0) * bump >> 9;
						blue = (texel & 0x001f) * bump >> 8;
					}
					else
					{
						unsigned long texel1 = g_list_material[material1]->Texture[Material::g_offset_texture];
						unsigned long texel2 = g_list_material[material2]->Texture[Material::g_offset_texture];
						unsigned long inverse = LH3D_LANDSCAPE_BLEND_SCALE - blend;
						red = (((texel1 & 0x7c00) * blend + (texel2 & 0x7c00) * inverse) * bump) >> 18;
						green = (((texel1 & 0x03e0) * blend + (texel2 & 0x03e0) * inverse) * bump) >> 17;
						blue = (((texel1 & 0x001f) * blend + (texel2 & 0x001f) * inverse) * bump) >> 16;
					}
					red = red > 0x0f00 ? 0x0f00 : red & 0x0f00;
					green = green > 0x00f0 ? 0x00f0 : green & 0x00f0;
					blue = blue > 0x000f ? 0x000f : blue & 0x000f;
					int shore = altitude + (int8_t)noise * 4;
					int index;
					if (shore < LH3D_LANDSCAPE_SHORE_START)
					{
						index = 0;
					}
					else if (shore > LH3D_LANDSCAPE_SHORE_END)
					{
						index = LH3D_LANDSCAPE_ALPHA_MAX;
					}
					else
					{
						index =
							LH3D_LANDSCAPE_ALPHA_MAX - ((LH3D_LANDSCAPE_SHORE_END - shore) * LH3D_LANDSCAPE_ALPHA_MAX) /
														   (LH3D_LANDSCAPE_SHORE_END - LH3D_LANDSCAPE_SHORE_START);
						if (index > LH3D_LANDSCAPE_ALPHA_MAX)
						{
							index = LH3D_LANDSCAPE_ALPHA_MAX;
						}
					}
					*pixel = (uint16_t)(alphaTable[index] | red | green | blue);
				}
			}
			else
			{
				unsigned long red;
				unsigned long green;
				unsigned long blue;
				uint8_t       noise = g_noise_bitmap[Material::g_offset_noise];
				unsigned long level = (altitude >> 8) + noise;
				if (level > LH3D_LANDSCAPE_NB_ALTITUDES - 1)
				{
					level = LH3D_LANDSCAPE_NB_ALTITUDES - 1;
				}
				unsigned long bump = g_bump[Material::g_offset_noise];
				unsigned long material1 = g_current_country->Altitudes[level].Material1;
				unsigned long material2 = g_current_country->Altitudes[level].Material2;
				unsigned long blend = g_current_country->Altitudes[level].Coeff;
				if (material1 == material2)
				{
					unsigned long texel = g_list_material[material1]->Texture[Material::g_offset_texture];
					red = (texel & 0x7c00) * bump >> 10;
					green = (texel & 0x03e0) * bump >> 9;
					blue = (texel & 0x001f) * bump >> 8;
				}
				else
				{
					unsigned long inverse = LH3D_LANDSCAPE_BLEND_SCALE - blend;
					unsigned long texel1 = g_list_material[material1]->Texture[Material::g_offset_texture];
					unsigned long texel2 = g_list_material[material2]->Texture[Material::g_offset_texture];
					red = (((texel1 & 0x7c00) * blend + (texel2 & 0x7c00) * inverse) * bump) >> 18;
					green = (((texel1 & 0x03e0) * blend + (texel2 & 0x03e0) * inverse) * bump) >> 17;
					blue = (((texel1 & 0x001f) * blend + (texel2 & 0x001f) * inverse) * bump) >> 16;
				}
				red = red > 0x0f00 ? 0x0f00 : red & 0x0f00;
				green = green > 0x00f0 ? 0x00f0 : green & 0x00f0;
				blue = blue > 0x000f ? 0x000f : blue & 0x000f;
				*pixel = (uint16_t)(red | green | blue | 0xf000);
			}
			pixel++;
			Material::g_offset_texture++;
			Material::g_offset_noise++;
		}
		pixel += pitch - LH3D_LANDSCAPE_CELL_TEXELS;
		Material::g_offset_texture += LH3D_LANDSCAPE_TEXTURE_SIZE - LH3D_LANDSCAPE_CELL_TEXELS;
		Material::g_offset_noise += LH3D_LANDSCAPE_TEXTURE_SIZE - LH3D_LANDSCAPE_CELL_TEXELS;
	}
}

bool32_t __fastcall LH3DLandscape::ProcessTexture(uint16_t* dest, unsigned long pitch, void* data)
{
	LH3DIsland::g_current_block = LH3DIsland::g_ptr_blocks[(int)data];
	for (int line = 0; line < LH3D_LANDSCAPE_CELL_TEXELS; line++)
	{
		ProcessTextureLine(line, dest, pitch, data);
	}
	DrawShadowOnTexture(dest, pitch, LH3DIsland::g_current_block->GridX, LH3DIsland::g_current_block->GridZ);
	LowResTexture::UpdateSmallTexture(LH3DIsland::g_current_block, dest, pitch);
	return true;
}

unsigned long __fastcall LH3DLandscape::Country::GetMostInfluentMaterialType(unsigned long altitude)
{
	unsigned long material = Altitudes[altitude].Material2;
	if (g_list_material[material] != NULL)
	{
		return g_list_material[material]->Type;
	}
	return g_list_terrain_type[material];
}

#define LAND_PATCH_PITCH     LH3D_LANDSCAPE_CELL_TEXELS
#define LAND_CELL_TEXELS_128 (LH3D_LANDSCAPE_CELL_TEXELS / 2)

void __fastcall LH3DLandscape::ProcessTextureLine(unsigned long line, uint16_t* dest, unsigned long pitch, void* data)
{
	if (LH3DTexture::g_b_use_low_res)
	{
		ProcessTextureLine128(line, dest, pitch, data);
		return;
	}
	for (unsigned long cell = 0; cell < LH3D_LANDSCAPE_CELL_TEXELS; cell++)
	{
		Material::g_offset_texture =
			line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
		Material::g_offset_noise =
			line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
		LandBlock* block = LH3DIsland::g_current_block;
		uint32_t   flags = block->Cells[line][cell].Flags;
		int        country = flags & LAND_CELL_COUNTRY_MASK;
		bool32_t   uniform = block->Cells[line][cell + 1].GetCountry() == country &&
		                     block->Cells[line + 1][cell].GetCountry() == country &&
		                     block->Cells[line + 1][cell + 1].GetCountry() == country;
		if (uniform || (flags & LAND_CELL_SUBMERGED))
		{
			if (flags & LAND_CELL_SUBMERGED)
			{
				uint16_t* row = (dest + (line * pitch + cell) * LH3D_LANDSCAPE_CELL_TEXELS);
				for (int y = 0; y < LH3D_LANDSCAPE_CELL_TEXELS; y++)
				{
					for (int x = 0; x < LH3D_LANDSCAPE_CELL_TEXELS; x++)
					{
						row[x] = 0;
					}
					row += pitch;
				}
				Material::g_offset_texture += LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise += LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_CELL_TEXELS;
			}
			else
			{
				g_current_country = g_list_country[flags & LAND_CELL_COUNTRY_MASK];
				ProcessCell((dest + (line * pitch + cell) * LH3D_LANDSCAPE_CELL_TEXELS), pitch, line, cell);
			}
		}
		else
		{
			int country0 = LH3DIsland::g_current_block->Cells[line][cell].GetCountry();
			g_current_country = g_list_country[country0];

			uint16_t* cellDest = dest + (line * pitch + cell) * LH3D_LANDSCAPE_CELL_TEXELS;
			ProcessCell(cellDest, pitch, line, cell);
			uint16_t*     src1;
			unsigned long src1_pitch;
			uint16_t*     src2;
			unsigned long src2_pitch;
			uint16_t*     src3;
			unsigned long src3_pitch;
			int           country1 = LH3DIsland::g_current_block->Cells[line][cell + 1].GetCountry();
			if (country0 != country1)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country1];
				ProcessCell(g_patch_3, LAND_PATCH_PITCH, line, cell);
				src1 = g_patch_3;
				src1_pitch = LAND_PATCH_PITCH;
			}
			else
			{
				src1 = cellDest;
				src1_pitch = pitch;
			}
			int country3 = LH3DIsland::g_current_block->Cells[line + 1][cell + 1].GetCountry();
			if (country0 != country3 && country1 != country3)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country3];
				ProcessCell(g_patch_2, LAND_PATCH_PITCH, line, cell);
				src3 = g_patch_2;
				src3_pitch = LAND_PATCH_PITCH;
			}
			else if (country0 == country3)
			{
				src3 = cellDest;
				src3_pitch = pitch;
			}
			else
			{
				src3 = src1;
				src3_pitch = src1_pitch;
			}
			int country2 = LH3DIsland::g_current_block->Cells[line + 1][cell].GetCountry();
			if (country0 != country2 && country1 != country2 && country3 != country2)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country2];
				ProcessCell(g_patch_1, LAND_PATCH_PITCH, line, cell);
				src2 = g_patch_1;
				src2_pitch = LAND_PATCH_PITCH;
			}
			else if (country0 == country2)
			{
				src2 = cellDest;
				src2_pitch = pitch;
			}
			else if (country1 == country2)
			{
				src2 = src1;
				src2_pitch = src1_pitch;
			}
			else
			{
				src2 = src3;
				src2_pitch = src3_pitch;
			}
			BlendCountry(cellDest, pitch, src1, src1_pitch, src3, src3_pitch, src2, src2_pitch);
		}
	}
}

void __fastcall LH3DLandscape::ProcessTextureLine128(unsigned long line, uint16_t* dest, unsigned long pitch,
                                                     void* data)
{
	for (unsigned long cell = 0; cell < LH3D_LANDSCAPE_CELL_TEXELS; cell++)
	{
		Material::g_offset_texture =
			line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
		Material::g_offset_noise =
			line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
		LandBlock* block = LH3DIsland::g_current_block;
		uint32_t   flags = block->Cells[line][cell].Flags;
		int        country = flags & LAND_CELL_COUNTRY_MASK;
		bool32_t   uniform = block->Cells[line][cell + 1].GetCountry() == country &&
		                     block->Cells[line + 1][cell].GetCountry() == country &&
		                     block->Cells[line + 1][cell + 1].GetCountry() == country;
		if (uniform || (flags & LAND_CELL_SUBMERGED))
		{
			if (flags & LAND_CELL_SUBMERGED)
			{
				uint16_t* row = (dest + (line * pitch + cell) * LAND_CELL_TEXELS_128);
				for (int y = 0; y < LAND_CELL_TEXELS_128; y++)
				{
					for (int x = 0; x < LAND_CELL_TEXELS_128; x++)
					{
						row[x] = 0;
					}
					row += pitch;
				}
			}
			else
			{
				g_current_country = g_list_country[flags & LAND_CELL_COUNTRY_MASK];
				ProcessCell128((dest + (line * pitch + cell) * LAND_CELL_TEXELS_128), pitch, line, cell);
			}
		}
		else
		{
			int country0 = LH3DIsland::g_current_block->Cells[line][cell].GetCountry();
			g_current_country = g_list_country[country0];

			uint16_t* cellDest = dest + (line * pitch + cell) * LAND_CELL_TEXELS_128;
			ProcessCell128(cellDest, pitch, line, cell);
			uint16_t*     src1;
			unsigned long src1_pitch;
			uint16_t*     src2;
			unsigned long src2_pitch;
			uint16_t*     src3;
			unsigned long src3_pitch;
			int           country1 = LH3DIsland::g_current_block->Cells[line][cell + 1].GetCountry();
			if (country0 != country1)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country1];
				ProcessCell128(g_patch_3, LAND_PATCH_PITCH, line, cell);
				src1 = g_patch_3;
				src1_pitch = LAND_PATCH_PITCH;
			}
			else
			{
				src1 = cellDest;
				src1_pitch = pitch;
			}
			int country3 = LH3DIsland::g_current_block->Cells[line + 1][cell + 1].GetCountry();
			if (country0 != country3 && country1 != country3)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country3];
				ProcessCell128(g_patch_2, LAND_PATCH_PITCH, line, cell);
				src3 = g_patch_2;
				src3_pitch = LAND_PATCH_PITCH;
			}
			else if (country0 == country3)
			{
				src3 = cellDest;
				src3_pitch = pitch;
			}
			else
			{
				src3 = src1;
				src3_pitch = src1_pitch;
			}
			int country2 = LH3DIsland::g_current_block->Cells[line + 1][cell].GetCountry();
			if (country0 != country2 && country1 != country2 && country3 != country2)
			{
				Material::g_offset_texture =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				Material::g_offset_noise =
					line * LH3D_LANDSCAPE_CELL_TEXELS * LH3D_LANDSCAPE_TEXTURE_SIZE + cell * LH3D_LANDSCAPE_CELL_TEXELS;
				g_current_country = g_list_country[country2];
				ProcessCell128(g_patch_1, LAND_PATCH_PITCH, line, cell);
				src2 = g_patch_1;
				src2_pitch = LAND_PATCH_PITCH;
			}
			else if (country0 == country2)
			{
				src2 = cellDest;
				src2_pitch = pitch;
			}
			else if (country1 == country2)
			{
				src2 = src1;
				src2_pitch = src1_pitch;
			}
			else
			{
				src2 = src3;
				src2_pitch = src3_pitch;
			}
			BlendCountry128(cellDest, pitch, src1, src1_pitch, src3, src3_pitch, src2, src2_pitch);
		}
	}
}

void __fastcall LH3DLandscape::ProcessCell128(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z)
{
	static unsigned long alphaTable[LH3D_LANDSCAPE_ALPHA_MAX + 1] = {0x0000, 0x0000, 0x0000, 0x1000, 0x2000, 0x4000,
	                                                                 0x6000, 0x8000, 0x9000, 0xa000, 0xa000, 0xb000,
	                                                                 0xc000, 0xd000, 0xe000, 0xf000};

	uint16_t*      pixel = dest;
	unsigned long* coeff = g_coeff[0];
	LandCell*      cell = &LH3DIsland::g_current_block->Cells[x][z];
	for (int j = 0; j < LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS; j++)
	{
		for (int i = 0; i < LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS; i++)
		{
			unsigned long* weights = coeff;
			coeff += 4 * LH3D_LANDSCAPE_LOW_RES_STEP;
			unsigned long coeff0 = weights[0];
			unsigned long coeff1 = weights[1];
			unsigned long coeff2 = weights[2];
			unsigned long coeff3 = weights[3];
			unsigned long altitude = cell[0].altitude * coeff0 + cell[1].altitude * coeff1 +
			                         cell[LAND_BLOCK_SIDE_POINTS + 1].altitude * coeff2 +
			                         cell[LAND_BLOCK_SIDE_POINTS].altitude * coeff3;
			if (altitude < LH3D_LANDSCAPE_SOLID_LEVEL)
			{
				if (altitude < LH3D_LANDSCAPE_SEA_LEVEL)
				{
					*pixel = 0;
				}
				else
				{
					unsigned long red;
					unsigned long green;
					unsigned long blue;
					uint8_t       noise = g_noise_bitmap[Material::g_offset_noise];
					unsigned long level = (altitude >> 8) + noise;
					if (level > LH3D_LANDSCAPE_NB_ALTITUDES - 1)
					{
						level = LH3D_LANDSCAPE_NB_ALTITUDES - 1;
					}
					unsigned long bump = g_bump[Material::g_offset_noise];
					unsigned long material2 = g_current_country->Altitudes[level].Material2;
					unsigned long material1 = g_current_country->Altitudes[level].Material1;
					unsigned long blend = g_current_country->Altitudes[level].Coeff;
					if (material1 == material2)
					{
						unsigned long texel = g_list_material[material1]->Texture[Material::g_offset_texture];
						red = (texel & 0x7c00) * bump >> 10;
						green = (texel & 0x03e0) * bump >> 9;
						blue = (texel & 0x001f) * bump >> 8;
					}
					else
					{
						unsigned long texel1 = g_list_material[material1]->Texture[Material::g_offset_texture];
						unsigned long texel2 = g_list_material[material2]->Texture[Material::g_offset_texture];
						unsigned long inverse = LH3D_LANDSCAPE_BLEND_SCALE - blend;
						red = (((texel1 & 0x7c00) * blend + (texel2 & 0x7c00) * inverse) * bump) >> 18;
						green = (((texel1 & 0x03e0) * blend + (texel2 & 0x03e0) * inverse) * bump) >> 17;
						blue = (((texel1 & 0x001f) * blend + (texel2 & 0x001f) * inverse) * bump) >> 16;
					}
					red = red > 0x0f00 ? 0x0f00 : red & 0x0f00;
					green = green > 0x00f0 ? 0x00f0 : green & 0x00f0;
					blue = blue > 0x000f ? 0x000f : blue & 0x000f;
					int shore = altitude + (int8_t)noise * 4;
					int index;
					if (shore < LH3D_LANDSCAPE_SHORE_START)
					{
						index = 0;
					}
					else if (shore > LH3D_LANDSCAPE_SHORE_END)
					{
						index = LH3D_LANDSCAPE_ALPHA_MAX;
					}
					else
					{
						index =
							LH3D_LANDSCAPE_ALPHA_MAX - ((LH3D_LANDSCAPE_SHORE_END - shore) * LH3D_LANDSCAPE_ALPHA_MAX) /
														   (LH3D_LANDSCAPE_SHORE_END - LH3D_LANDSCAPE_SHORE_START);
						if (index > LH3D_LANDSCAPE_ALPHA_MAX)
						{
							index = LH3D_LANDSCAPE_ALPHA_MAX;
						}
					}
					*pixel = (uint16_t)(alphaTable[index] | red | green | blue);
				}
			}
			else
			{
				unsigned long red;
				unsigned long green;
				unsigned long blue;
				uint8_t       noise = g_noise_bitmap[Material::g_offset_noise];
				unsigned long level = (altitude >> 8) + noise;
				if (level > LH3D_LANDSCAPE_NB_ALTITUDES - 1)
				{
					level = LH3D_LANDSCAPE_NB_ALTITUDES - 1;
				}
				unsigned long bump = g_bump[Material::g_offset_noise];
				unsigned long material1 = g_current_country->Altitudes[level].Material1;
				unsigned long material2 = g_current_country->Altitudes[level].Material2;
				unsigned long blend = g_current_country->Altitudes[level].Coeff;
				if (material1 == material2)
				{
					unsigned long texel = g_list_material[material1]->Texture[Material::g_offset_texture];
					red = (texel & 0x7c00) * bump >> 10;
					green = (texel & 0x03e0) * bump >> 9;
					blue = (texel & 0x001f) * bump >> 8;
				}
				else
				{
					unsigned long inverse = LH3D_LANDSCAPE_BLEND_SCALE - blend;
					unsigned long texel1 = g_list_material[material1]->Texture[Material::g_offset_texture];
					unsigned long texel2 = g_list_material[material2]->Texture[Material::g_offset_texture];
					red = (((texel1 & 0x7c00) * blend + (texel2 & 0x7c00) * inverse) * bump) >> 18;
					green = (((texel1 & 0x03e0) * blend + (texel2 & 0x03e0) * inverse) * bump) >> 17;
					blue = (((texel1 & 0x001f) * blend + (texel2 & 0x001f) * inverse) * bump) >> 16;
				}
				red = red > 0x0f00 ? 0x0f00 : red & 0x0f00;
				green = green > 0x00f0 ? 0x00f0 : green & 0x00f0;
				blue = blue > 0x000f ? 0x000f : blue & 0x000f;
				*pixel = (uint16_t)(red | green | blue | 0xf000);
			}
			pixel++;
			Material::g_offset_texture += LH3D_LANDSCAPE_LOW_RES_STEP;
			Material::g_offset_noise += LH3D_LANDSCAPE_LOW_RES_STEP;
		}
		coeff += LH3D_LANDSCAPE_CELL_TEXELS * 4;
		pixel += pitch - LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS;
		Material::g_offset_texture += LH3D_LANDSCAPE_TEXTURE_SIZE * LH3D_LANDSCAPE_LOW_RES_STEP -
		                              LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS * LH3D_LANDSCAPE_LOW_RES_STEP;
		Material::g_offset_noise += LH3D_LANDSCAPE_TEXTURE_SIZE * LH3D_LANDSCAPE_LOW_RES_STEP -
		                            LH3D_LANDSCAPE_LOW_RES_CELL_TEXELS * LH3D_LANDSCAPE_LOW_RES_STEP;
	}
}

void __fastcall LH3DLandscape::BlendCountry128(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
                                               unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
                                               uint16_t* src3, unsigned long src3_pitch)
{
	for (int j = 0; j < LH3D_LANDSCAPE_CELL_TEXELS / 2; j++)
	{
		for (unsigned long i = 0; i < LH3D_LANDSCAPE_CELL_TEXELS / 2; i++)
		{
			int            p0 = dest[j * dest_pitch + i];
			int            p1 = src1[j * src1_pitch + i];
			int            p2 = src2[j * src2_pitch + i];
			int            p3 = src3[j * src3_pitch + i];
			unsigned long* coeff = g_coeff[j * LH3D_LANDSCAPE_CELL_TEXELS * 2 + i * 2];
			dest[j * dest_pitch + i] =
				BlendChannel(coeff, p0, p1, p2, p3, 0x0f00) | BlendChannel(coeff, p0, p1, p2, p3, 0x00f0) |
				BlendChannel(coeff, p0, p1, p2, p3, 0x000f) | BlendChannel(coeff, p0, p1, p2, p3, 0xf000);
		}
	}
}

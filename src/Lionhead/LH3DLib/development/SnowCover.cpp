#include "SnowCover.h"

#include <string.h> /* For memmove, memset */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHLoadData */

#include "LH3DIsland.h" /* For struct LandBlock, class LH3DIsland */
#include "LHPoint.h"    /* For struct LHPoint */

#define SNOW_COVER_MELT_INTERVAL  0.3f
#define SNOW_COVER_MELT_AMOUNT    2.0f
#define SNOW_COVER_GRID_CELL_SIZE 40.0f
#define SNOW_COVER_FIXED_ONE      65536.0f
#define SNOW_COVER_DRAW_THRESHOLD 0x50000
#define SNOW_COVER_MAP_CELL_SIZE  (SNOW_COVER_MAP_SIZE / SNOW_COVER_BLOCK_SIZE)
#define SNOW_COVER_WHITE_SCALE    0x110
#define SNOW_COVER_MIN_ALPHA      14
#define SNOW_COVER_MAP_FILE       "data\\WeatherSystem\\snowmap.raw"

static const float SNOW_UPDATE_THRESHOLD = 96.0f;

int        SnowCover::numinq;
SnowCover* SnowCover::g_snowcover;
uint8_t    SnowCover::instances;
uint8_t*   SnowCover::alphamap;
uint8_t*   SnowCover::shademap;
uint8_t    SnowCover::multab[SNOW_COVER_MUL_LEVELS + 1][SNOW_COVER_MUL_LEVELS];
LandBlock* SnowCover::topblock[SNOW_COVER_MAX_TOP];
float      SnowCover::topblockn[SNOW_COVER_MAX_TOP];

void SnowCover::Reset()
{
	numinq = 0;
	memset(topblock, 0, sizeof(topblock));
	memset(topblockn, 0, sizeof(topblockn));
	if (g_snowcover != NULL)
	{
		memset(g_snowcover->Depth, 0, sizeof(g_snowcover->Depth));
		memset(g_snowcover->BlockMelt, 0, sizeof(g_snowcover->BlockMelt));
		g_snowcover->MeltTimer = 0.0f;
		g_snowcover->MeltStep = 0;
	}
}

void SnowCover::UpdateTextures(int start_row, int row_count)
{
	float* melt = &BlockMelt[start_row * LAND_BLOCKS_SIDE];
	if (start_row == 0)
	{
		for (int i = 0; i < numinq; i++)
		{
			if (topblock[i] != NULL)
			{
				topblock[i]->SetNeedUpdate();
			}
			topblockn[i] = 0.0f;
		}
		numinq = 0;
	}
	for (int z = start_row; z < start_row + row_count; z++)
	{
		for (int x = 0; x < LAND_BLOCKS_SIDE; melt++, x++)
		{
			float amount = fabsf(*melt);
			if (amount > SNOW_UPDATE_THRESHOLD)
			{
				for (int slot = 0; slot < SNOW_COVER_MAX_TOP; slot++)
				{
					if (amount > topblockn[slot])
					{
						if (numinq == SNOW_COVER_MAX_TOP)
						{
							if (topblock[slot] != NULL)
							{
								topblock[slot]->SetNeedUpdate();
							}
							topblockn[slot] = 0.0f;
						}
						else
						{
							memmove(&topblock[slot + 1], &topblock[slot], (numinq - slot) * sizeof(topblock[0]));
							memmove(&topblockn[slot + 1], &topblockn[slot], (numinq - slot) * sizeof(topblockn[0]));
							numinq++;
						}
						topblockn[slot] = amount;
						int index = LH3DIsland::GetIndex(x, z);
						topblock[slot] = index != 0 ? LH3DIsland::g_ptr_blocks[index] : NULL;
						*melt = 0.0f;
						break;
					}
				}
			}
		}
	}
}

#define SNOW_COVER_MELT_CELL(k)                                                                                        \
	if (depth[k] > SNOW_COVER_MELT_AMOUNT)                                                                             \
	{                                                                                                                  \
		depth[k] -= SNOW_COVER_MELT_AMOUNT;                                                                            \
		*melt -= SNOW_COVER_MELT_AMOUNT;                                                                               \
	}                                                                                                                  \
	else if (depth[k] > 0.0f)                                                                                          \
	{                                                                                                                  \
		*melt -= depth[k];                                                                                             \
		depth[k] = 0.0f;                                                                                               \
	}

void SnowCover::Melt(float time)
{
	MeltTimer += time;
	while (MeltTimer > SNOW_COVER_MELT_INTERVAL)
	{
		MeltTimer -= SNOW_COVER_MELT_INTERVAL;
		MeltStep = (MeltStep + 1) & (SNOW_COVER_MELT_STEPS - 1);
		int    row = MeltStep * (SNOW_COVER_SIZE / SNOW_COVER_MELT_STEPS);
		float* depth = &Depth[row * SNOW_COVER_SIZE];
		for (int i = 0; i < SNOW_COVER_SIZE / SNOW_COVER_MELT_STEPS; i++)
		{
			float* melt = &BlockMelt[((row + i) >> 2) * SNOW_COVER_BLOCKS_SIDE];
			for (int j = 0; j < SNOW_COVER_BLOCKS_SIDE; j++)
			{
				SNOW_COVER_MELT_CELL(0)
				SNOW_COVER_MELT_CELL(1)
				SNOW_COVER_MELT_CELL(2)
				SNOW_COVER_MELT_CELL(3)
				depth += SNOW_COVER_BLOCK_SIZE;
				melt++;
			}
		}
		UpdateTextures(row >> 2, SNOW_COVER_BLOCK_SIZE);
	}
}

void SnowCover::Init()
{
	memset(Depth, 0, sizeof(Depth));
	memset(BlockMelt, 0, sizeof(BlockMelt));
	MeltTimer = 0.0f;
	MeltStep = 0;
	Previous = g_snowcover;
	g_snowcover = this;
	if (instances == 0)
	{
		for (int i = 0; i < SNOW_COVER_MUL_LEVELS; i++)
		{
			int product = 0;
			for (int j = 0; j <= SNOW_COVER_MUL_LEVELS; j++)
			{
				multab[j][i] = product >> 4;
				product += i;
			}
		}
		shademap = new uint8_t[SNOW_COVER_MAP_SIZE * SNOW_COVER_MAP_SIZE];
		alphamap = new uint8_t[SNOW_COVER_MAP_SIZE * SNOW_COVER_MAP_SIZE];
		LHLoadData(SNOW_COVER_MAP_FILE, shademap, SNOW_COVER_MAP_SIZE * SNOW_COVER_MAP_SIZE, 0);
		for (int k = 0; k < SNOW_COVER_MAP_SIZE * SNOW_COVER_MAP_SIZE; k++)
		{
			alphamap[k] = (((shademap[k] >> 2) + (shademap[k] >> 1)) & 1) + SNOW_COVER_MIN_ALPHA;
		}
	}
	instances++;
}

void SnowCover::Close()
{
	g_snowcover = Previous;
	if (--instances == 0)
	{
		delete shademap;
		delete alphamap;
		shademap = NULL;
		alphamap = NULL;
	}
}

float SnowCover::GetDepth(float x, float z)
{
	x /= SNOW_COVER_GRID_CELL_SIZE;
	z /= SNOW_COVER_GRID_CELL_SIZE;
	if (x >= 0.0f && x < SNOW_COVER_SIZE - 1 && z >= 0.0f && z < SNOW_COVER_SIZE - 1)
	{
		int   ix = (int)x;
		int   iz = (int)z;
		float fx = x - ix;
		float a = Depth[iz * SNOW_COVER_SIZE + ix];
		float b = Depth[(iz + 1) * SNOW_COVER_SIZE + ix];
		float c = Depth[iz * SNOW_COVER_SIZE + ix + 1];
		float d = Depth[(iz + 1) * SNOW_COVER_SIZE + ix + 1];
		float top = a + (c - a) * fx;
		float bottom = b + (d - b) * fx;
		return top + (bottom - top) * (z - iz);
	}
	return 0.0f;
}

float SnowCover::GetDepth(LHPoint& point)
{
	return GetDepth(point.x, point.z);
}

#define DEPTH_AT(x, z)                                                                                                 \
	(((x) < 0 || (z) < 0 || (x) >= SNOW_COVER_SIZE || (z) >= SNOW_COVER_SIZE) ? 0.0f                                   \
	                                                                          : Depth[(x) + (z) * SNOW_COVER_SIZE])

void SnowCover::DrawSnowLoc(int grid_z, int grid_x, uint16_t* dest, int size)
{
	if (g_snowcover == NULL || size < SNOW_COVER_BLOCK_SIZE)
	{
		return;
	}
	int quarter = size / SNOW_COVER_BLOCK_SIZE;
	int step = SNOW_COVER_MAP_SIZE / size;
	for (int i = 0; i < SNOW_COVER_BLOCK_SIZE; i++)
	{
		int x = grid_x * SNOW_COVER_BLOCK_SIZE + i;
		for (int k = 0; k < SNOW_COVER_BLOCK_SIZE; k++)
		{
			int y = grid_z * SNOW_COVER_BLOCK_SIZE + k;
			int h00 = (int)(DEPTH_AT(x, y) * SNOW_COVER_FIXED_ONE);
			int h01 = (int)(DEPTH_AT(x, y + 1) * SNOW_COVER_FIXED_ONE);
			int h10 = (int)(DEPTH_AT(x + 1, y) * SNOW_COVER_FIXED_ONE);
			int h11 = (int)(DEPTH_AT(x + 1, y + 1) * SNOW_COVER_FIXED_ONE);
			if (h00 > SNOW_COVER_DRAW_THRESHOLD || h01 > SNOW_COVER_DRAW_THRESHOLD || h10 > SNOW_COVER_DRAW_THRESHOLD ||
			    h11 > SNOW_COVER_DRAW_THRESHOLD)
			{
				int       left = (h10 - h00) / quarter;
				int       right = (h11 - h01) / quarter;
				uint16_t* pixel = dest + (i * size + k) * quarter;
				uint8_t*  shade = shademap + (i * SNOW_COVER_MAP_SIZE + k) * SNOW_COVER_MAP_CELL_SIZE;
				uint8_t*  alpha = alphamap + (i * SNOW_COVER_MAP_SIZE + k) * SNOW_COVER_MAP_CELL_SIZE;
				for (int r = 0; r < quarter; r++)
				{
					int across = (h01 - h00) / quarter;
					int height = h00;
					h00 += left;
					h01 += right;
					for (int c = 0; c < quarter; c++)
					{
						int level = ((height >> 16) - *shade) >> 3;
						height += across;
						if (level > 0)
						{
							uint16_t colour;
							if (level > SNOW_COVER_MUL_LEVELS - 1)
							{
								uint16_t white = multab[SNOW_COVER_MUL_LEVELS][*alpha];
								colour = white * SNOW_COVER_WHITE_SCALE + 0xf;
							}
							else
							{
								uint16_t old = *pixel;
								uint16_t tint = multab[level][*alpha];
								int      remain = SNOW_COVER_MUL_LEVELS - level;
								uint16_t red = multab[remain][(old >> 8) & 0xf] + tint;
								uint16_t green = multab[remain][(old >> 4) & 0xf] + tint;
								uint16_t blue = multab[remain][old & 0xf] + tint;
								colour = (red << 8) + (green << 4) + blue;
							}
							*pixel = (*pixel & 0xf000) | colour;
						}
						shade += step;
						alpha += step;
						pixel++;
					}
					shade += step * SNOW_COVER_MAP_SIZE - SNOW_COVER_MAP_CELL_SIZE;
					alpha += step * SNOW_COVER_MAP_SIZE - SNOW_COVER_MAP_CELL_SIZE;
					pixel += size - quarter;
				}
			}
		}
	}
}

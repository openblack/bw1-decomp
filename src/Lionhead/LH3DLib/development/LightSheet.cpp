#include "LightSheet.h"

#include <math.h>   /* For cos, exp, sqrt */
#include <string.h> /* For memmove, memset */

#include "LH3DColor.h" /* For LH3D_SCALE_COLOR */
#include "LH3DMath.h"  /* For PI_F */
#include "LH3DTech.h"  /* For LH3DTech */

void LightSheet::Update(float time)
{
	WavePhase += time;
	SampleTimer += time;
	ScrollOffset -= time * ScrollSpeed;
	if (!ForceFieldMode)
	{
		while (SampleTimer > SampleInterval)
		{
			SampleTimer -= SampleInterval;
			memmove(Intensity + 1, Intensity, (NumPoints - 1) * sizeof(float));
			Intensity[0] = PulseLevel;
		}
		for (int i = 0; i < NumPoints; i++)
		{
			Heights[i] = (cos((float)i * (PI_F * 6) / (NumPoints - 1) - WavePhase * 3.0f) * 0.3f + 0.8f) * WaveHeight;
		}
	}
	else
	{
		float rate = 1.0f - (float)exp(time * -1.0f);
		for (int i = 0; i < NumPoints; i++)
		{
			Intensity[i] += (PulseTarget - Intensity[i]) * rate;
		}
	}
}

void LightSheet::PulseForceField(LHPoint position, float radius)
{
	if (radius > 0.0f && ForceFieldMode)
	{
		for (int i = 0; i < NumPoints; i++)
		{
			float distance = sqrt((Points[i].z - position.z) * (Points[i].z - position.z) +
			                      (Points[i].x - position.x) * (Points[i].x - position.x));
			if (distance < radius)
			{
				Intensity[i] += 1.0f - distance / radius;
			}
		}
	}
}

LightSheet::LightSheet()
{
	Points = NULL;
	Intensity = NULL;
	Heights = NULL;
	Colours = NULL;
	Positions = NULL;
	Indices = NULL;
	UVs = NULL;
}

void LightSheet::Close()
{
	delete[] Points;
	Points = NULL;
	delete[] Intensity;
	Intensity = NULL;
	delete[] Heights;
	Heights = NULL;
	delete[] Colours;
	Colours = NULL;
	delete[] Positions;
	Positions = NULL;
	delete[] Indices;
	Indices = NULL;
	delete[] UVs;
	UVs = NULL;
}

void LightSheet::Init(int num_points)
{
	ScrollOffset = 0.0f;
	SampleTimer = 0.0f;
	PulseLevel = 0.0f;
	WavePhase = 0.0f;
	NumPoints = num_points;
	Points = new LHPoint[num_points];
	Intensity = new float[NumPoints];
	Heights = new float[NumPoints];
	memset(Intensity, 0, NumPoints * sizeof(float));
	memset(Heights, 0, NumPoints * sizeof(float));
	memset(Points, 0, NumPoints * sizeof(LHPoint));
	NumVertices = num_points * LIGHT_SHEET_VERTICES_PER_POINT;
	NumIndices = (num_points - 1) * LIGHT_SHEET_INDICES_PER_SEGMENT;
	UVs = new float[NumVertices * 2];
	Indices = new long[NumIndices];
	Positions = new LHPoint[NumVertices];
	Colours = new LH3DColor[NumVertices * 2];
	long* index = Indices;
	for (int i = 0; i < NumPoints - 1; i++)
	{
		int vertex = i * LIGHT_SHEET_VERTICES_PER_POINT;
		*index++ = vertex;
		*index++ = vertex + 1;
		*index++ = vertex + 3;
		*index++ = vertex + 1;
		*index++ = vertex + 4;
		*index++ = vertex + 3;
		*index++ = vertex + 1;
		*index++ = vertex + 2;
		*index++ = vertex + 4;
		*index++ = vertex + 2;
		*index++ = vertex + 5;
		*index++ = vertex + 4;
	}
	ForceFieldMode = false;
	AnimationTime = 0.0f;
	ScaleFac = 1.1f;
	WaveHeight = 10.0f;
	SampleInterval = 0.03f;
	ScrollSpeed = 1.0f;
}

void LightSheet::DoTheDrawing(LH3DMaterial* material)
{
	NumVertices = NumPoints * LIGHT_SHEET_VERTICES_PER_POINT;
	NumIndices = (NumPoints - 1) * LIGHT_SHEET_INDICES_PER_SEGMENT;
	if (NumPoints < 2)
	{
		return;
	}
	Centre = LHPoint(0.0f, 0.0f, 0.0f);
	for (int i = 0; i < NumPoints; i++)
	{
		Centre += Points[i];
	}
	Centre *= 1.0f / NumPoints;
	if (ForceFieldMode)
	{
		ScrollOffset *= 0.2f;
	}
	ScrollOffset = ScrollOffset - (float)(int)ScrollOffset;
	float time = LH3DTech::g_delta_time * 0.0003f + AnimationTime;
	if (ForceFieldMode)
	{
		bool32_t active = false;
		for (int i = 0; i < NumPoints; i++)
		{
			if (Intensity[i] > 0.02f)
			{
				active = true;
			}
		}
		if (!active)
		{
			return;
		}
	}
	for (int pass = 0; pass < (ForceFieldMode != 0) + 1; pass++)
	{
		float     direction = 1.0f;
		float     distance = 0.0f;
		LHPoint*  position = Positions;
		uint32_t* colour = (uint32_t*)Colours;
		float*    uv = UVs;
		for (int i = 0; i < NumPoints; i++)
		{
			if (ForceFieldMode)
			{
				position[0] = Points[i];
				position[2] = (Points[i] - Centre) * ScaleFac + Centre;
				position[2].y += Heights[i];
				position[1] = position[0] + (position[2] - position[0]) * 0.5f;
				int alpha = (int)(Intensity[i] * LH3D_COLOR_CHANNEL_MAX);
				if (alpha > LH3D_COLOR_CHANNEL_MAX)
				{
					alpha = LH3D_COLOR_CHANNEL_MAX;
				}
				if (alpha < 0)
				{
					alpha = 0;
				}
				uint32_t color = (Colour & LH3D_COLOR_RGB_MASK) + (alpha << 24);
				*colour++ = color;
				*colour++ = 0;
				*colour++ = color;
				*colour++ = LH3D_HALF_COLOR(color);
				*colour++ = color & LH3D_COLOR_RGB_MASK;
				*colour++ = 0;
				if (pass)
				{
					*uv++ = distance * 0.1f - ScrollOffset;
					*uv++ = 0.0f;
					*uv++ = distance * 0.1f - ScrollOffset;
					*uv++ = 0.5f;
					*uv++ = distance * 0.1f - ScrollOffset;
					*uv++ = 1.0f;
				}
				else
				{
					*uv++ = distance * 0.1f + ScrollOffset;
					*uv++ = 0.0f;
					*uv++ = distance * 0.1f + ScrollOffset;
					*uv++ = 0.5f;
					*uv++ = distance * 0.1f + ScrollOffset;
					*uv++ = 1.0f;
				}
				position += LIGHT_SHEET_VERTICES_PER_POINT;
			}
			else
			{
				position[0] = Points[i];
				position[2] = (Points[i] - Centre) * ScaleFac + Centre;
				float height = Heights[i] * Intensity[i];
				position[2].y += height;
				position[1] = position[0] + (position[2] - position[0]) * 0.25f;
				uint32_t alpha = (long)(height * 50.0f);
				if (alpha > LH3D_COLOR_CHANNEL_MAX)
				{
					alpha = LH3D_COLOR_CHANNEL_MAX;
				}
				uint32_t color = LH3D_SCALE_COLOR(Colour, alpha);
				*colour++ = 0xff000000;
				*colour++ = 0;
				*colour++ = color | 0xff000000;
				*colour++ = LH3D_HALF_COLOR(color);
				*colour++ = 0xff000000;
				*colour++ = 0;
				*uv++ = distance;
				*uv++ = 1.0f - ScrollOffset;
				*uv++ = distance;
				*uv++ = 0.75f - ScrollOffset;
				*uv++ = distance;
				*uv++ = -ScrollOffset;
				position += LIGHT_SHEET_VERTICES_PER_POINT;
			}
			distance += (Points[i] - Points[(i + 1) % NumPoints]).GetNormSq() * direction * 0.1f;
			if (distance < 0.0f && direction < 0.0f)
			{
				direction = 1.0f;
			}
			if (distance > 1.0f && direction > 1.0f)
			{
				direction = -1.0f;
			}
		}
		AnimationTime = time;
		LH3DTech::Draw3DWorldTriangleSpecular(NumVertices, Positions, Colours, UVs, NumIndices / 3, Indices, material);
	}
}

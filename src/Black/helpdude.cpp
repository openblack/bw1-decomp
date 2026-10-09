#include "HelpDude.h"

#include <math.h>   /* For fabs, sqrt */
#include <string.h> /* For memcpy, memmove */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>
#include <Lionhead/LH3DLib/development/LH3DColor.h>
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DSprite.h>
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DVertex.h>
#include <Lionhead/LH3DLib/development/LH3DVertexGroup.h>
#include <Lionhead/LH3DLib/development/LHRandom.h>
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h>
#include <Lionhead/LHAudio/ver7.0/LH_SampleInfo.h>
#include <Lionhead/LHFile/ver3.0/LHFile.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include "Audio.h"
#include "AudioTag.h"
#include "Game.h"
#include "Global.h"
#include "HelpSystem.h"
#include "Rand.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
#define HELPDUDE_SOURCE_FILE "C:\\dev\\Black\\helpdude.cpp"
#else
#define HELPDUDE_SOURCE_FILE "C:\\dev\\MP\\Black\\helpdude.cpp"
#endif
#define HELPDUDE_LINE(line) (line)

#define HELPDUDE_TRAIL_VERTICES  (HELPDUDE_TRAIL_LENGTH * 2)
#define HELPDUDE_TRAIL_TRIANGLES (HELPDUDE_TRAIL_VERTICES - 2)
#define HELPDUDE_TRAIL_WIDTH     1.0f

// Scratch buffers for HelpDudeTrail::Draw.
static LHPoint   s_TrailPositions[HELPDUDE_TRAIL_VERTICES];
static LH3DColor s_TrailColours[HELPDUDE_TRAIL_VERTICES * 2];
static float     s_TrailUVs[HELPDUDE_TRAIL_VERTICES * 2];
static long      s_TrailIndices[HELPDUDE_TRAIL_LENGTH * 6];

void HelpDudeTrail::Update(const LHPoint& pos, float dt)
{
	Timer += dt;
	if (Timer > 0.2f)
	{
		Timer -= 0.2f;
		Points[Head] = pos;
		Head = (Head + 1) & (HELPDUDE_TRAIL_LENGTH - 1);
	}

	float            rise = dt * 0.021f;
	HelpDudeSparkle* sparkle = Sparkles;
	for (int i = 0; i < HELPDUDE_TRAIL_SPARKLES; i++, sparkle++)
	{
		sparkle->Age += dt;
		if (sparkle->Age >= 16.0f)
		{
			float dz = Random(-0.5f, 0.0f);
			float dy = Random(-0.1f, 0.1f);
			float dx = Random(-0.1f, 0.1f);
			sparkle->Pos = pos + LHPoint(dx, dy, dz);
			float vy = Random(-0.3f, 0.3f);
			sparkle->Velocity.Set(Random(-0.1f, 0.1f), vy, 0.0f);
			sparkle->Age -= 16.0f;
		}
		LHPoint move = sparkle->Velocity * dt * 0.1f;
		sparkle->Pos.x += move.x;
		sparkle->Pos.y += move.y;
		sparkle->Pos.z += move.z;
		sparkle->Velocity.y += rise;
	}
}

#define HELPDUDE_TRAIL_MAX_ALPHA 64

void HelpDudeTrail::Draw(HelpDude* dude, LH3DMaterial* material)
{
	float v = 0.0f;
	if (!dude->IsEvil)
	{
		v = 1.0f;
	}

	long*      indices = s_TrailIndices;
	LH3DColor* colours = s_TrailColours;
	LHPoint*   positions = s_TrailPositions;
	float*     uvs = s_TrailUVs;
	int        vertex = HELPDUDE_TRAIL_VERTICES - 4;
	for (int i = 0; i < HELPDUDE_TRAIL_LENGTH; i++)
	{
		*indices++ = vertex;
		*indices++ = vertex + 1;
		*indices++ = vertex + 3;
		*indices++ = vertex + 3;
		*indices++ = vertex + 2;
		*indices++ = vertex;
		vertex -= 2;

		uvs[0] = uvs[2] = i * (1.0f / HELPDUDE_TRAIL_LENGTH);
		uvs[1] = v;
		uvs[3] = 0.5f;
		uvs += 4;

		int prev = i ? i - 1 : 0;
		int next = i < HELPDUDE_TRAIL_LENGTH - 1 ? i + 1 : HELPDUDE_TRAIL_LENGTH - 1;

		LHPoint* from = &Points[(Head + prev) & (HELPDUDE_TRAIL_LENGTH - 1)];
		LHPoint* to = &Points[(Head + next) & (HELPDUDE_TRAIL_LENGTH - 1)];
		int      current = (Head + i) & (HELPDUDE_TRAIL_LENGTH - 1);
		LHPoint  dir = *to - *from;
		float    width = dir.Normalise();
		if (width > 0.0001f)
		{
			width += 0.2f;
		}
		if (width > 0.6f)
		{
			width = 0.6f;
		}

		dir *= width * dude->Size / dude->Depth * 150.0f;

		unsigned long alpha = 20 - (long)(width * -100.0f);
		alpha = min(HELPDUDE_TRAIL_MAX_ALPHA, alpha);
		*colours++ = LH3DColor((alpha << 24) | 0xffffff);
		*colours++ = LH3DColor((alpha << 24) | 0xffffff);

		LHPoint* point = &Points[current];
		LHPoint  side(dir);
		positions[0] = dude->ConvertHoverTo3D(point->x + side.y, point->y - side.x, point->z, false);
		positions[1] = dude->ConvertHoverTo3D(point->x - side.y, point->y + side.x, point->z, false);
		positions += 2;
	}

	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESS);
	LH3DTech::Draw3DWorldTriangle(HELPDUDE_TRAIL_VERTICES, s_TrailPositions, s_TrailColours, s_TrailUVs,
	                              HELPDUDE_TRAIL_TRIANGLES, s_TrailIndices, material, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

struct SortedFloatListItem
{
	int   Data;
	int   Valid;
	float Key;
};

struct SortedFloatList
{
	int                  Count;
	SortedFloatListItem* Items;

	// BW1W120 005b9410 BW1M119 null
	int Sort(int tracked);
	// BW1W120 005b94e0 BW1M119 null
	int Add(float key, int data);
	// BW1W120 005b95c0 BW1M119 null
	void Remove(int index);
};

int SortedFloatList::Sort(int tracked)
{
	bool32_t swapped;
	do
	{
		swapped = false;
		for (int i = 0; i < Count - 1; i++)
		{
			if (Items[i].Key > Items[i + 1].Key)
			{
				SortedFloatListItem item = Items[i];
				Items[i] = Items[i + 1];
				Items[i + 1] = item;
				if (i == tracked)
				{
					tracked++;
				}
				else if (i + 1 == tracked)
				{
					tracked--;
				}
				swapped = true;
			}
		}
	} while (swapped);
	return tracked;
}

int SortedFloatList::Add(float key, int data)
{
	int index;
	for (index = 0; index < Count; index++)
	{
		if (!(Items[index].Key < key))
		{
			break;
		}
	}

	Count++;
	SortedFloatListItem* items = (SortedFloatListItem*)operator new(Count * sizeof(SortedFloatListItem),
	                                                                HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(252));
	memcpy(items, Items, index * sizeof(SortedFloatListItem));
	memcpy(&items[index + 1], &Items[index], (Count - index - 1) * sizeof(SortedFloatListItem));
	delete Items;
	Items = items;
	Items[index].Key = key;
	Items[index].Valid = true;
	Items[index].Data = data;
	return index;
}

void SortedFloatList::Remove(int index)
{
	if (index >= 0 && index < Count)
	{
		memmove(&Items[index], &Items[index + 1], (Count - index - 1) * sizeof(SortedFloatListItem));
		if (--Count == 0)
		{
			delete Items;
			Items = 0;
		}
	}
}

float HoverZone::Feel(float x, float y)
{
	if (Strength == 0.0f)
	{
		return 0.0f;
	}
	float dx = x - X;
	if (fabs(dx) > OuterRadius)
	{
		return 0.0f;
	}
	float dy = y - Y;
	if (fabs(dy) > OuterRadius)
	{
		return 0.0f;
	}
	float distSq = dy * dy + dx * dx;
	if (distSq > OuterRadius * OuterRadius)
	{
		return 0.0f;
	}
	if (distSq < InnerRadius * InnerRadius)
	{
		return Strength;
	}
	return (1.0f - ((float)sqrt(distSq) - InnerRadius) / (OuterRadius - InnerRadius)) * Strength;
}

void HelpDude::Sethoverx(float x, float time, bool clamp)
{
	if (Smoking)
	{
		return;
	}
	if (clamp)
	{
		if (x > -0.75f)
		{
			x = min(x, 0.75f);
		}
		else
		{
			x = -0.75f;
		}
	}
	HoverX.SetDestinationWithSpeedAndTime(x, 0.0f, time);
}

void HelpDude::Sethovery(float y, float time, bool clamp)
{
	if (Smoking)
	{
		return;
	}
	if (clamp)
	{
		if (y > -0.6f)
		{
			y = min(y, 0.6f);
		}
		else
		{
			y = -0.6f;
		}
	}
	HoverY.SetDestinationWithSpeedAndTime(y, 0.0f, time);
}

float HelpDude::Feel(float x, float y)
{
	float maxY = 0.6f;
	if (GGame::g_game->help_system->WideScreen)
	{
		maxY *= 0.75f;
	}

	float edge = 0.0f;
	float ax = fabs(x);
	float ay = (float)fabs(y) * (4.0f / 3.0f);
	if (ax > 0.75f)
	{
		edge += ax - 0.75f;
	}
	if (ay > maxY)
	{
		edge += (ay - maxY) * 2.0f;
	}

	float feel = edge * edge * -250.0f;
	for (int i = 0; i < HELPDUDE_HOVER_ZONES; i++)
	{
		feel += HoverZones[i].Feel(x, y);
	}
	return feel;
}

unsigned long GetFeelColour(float feel)
{
	float repel = -feel;
	float attract = feel * 0.5f;
	CLAMP(attract, 0.0f, 1.0f);
	CLAMP(repel, 0.0f, 1.0f);
	unsigned long colour = (0xff00 - (long)(attract * -255.0f)) << 16;
	return colour - (long)(repel * -255.0f);
}

#define HELPDUDE_FEEL_COLUMNS 32
#define HELPDUDE_FEEL_ROWS    24
#define HELPDUDE_FEEL_CELL    25
#define HELPDUDE_FEEL_STEP    (1.0f / 16.0f)

static const float          s_FeelDepth = 0.001f;
static const unsigned short s_FeelQuadIndices[6] = {0, 1, 3, 3, 2, 0};

void HelpDude::DrawFeel()
{
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	if (LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE) != S_OK)
	{
		LH3DRender::g_render_states[D3DRENDERSTATE_ALPHABLENDENABLE] = 0xffffffff;
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
	IDirect3DDevice7* device = LH3DRender::Direct3DDevice7;
	device->SetTexture(0, NULL);

	for (int i = 0; i < HELPDUDE_FEEL_COLUMNS; i++)
	{
		float fx0 = (i - HELPDUDE_FEEL_COLUMNS / 2) * HELPDUDE_FEEL_STEP;
		float fx1 = (i + 1 - HELPDUDE_FEEL_COLUMNS / 2) * HELPDUDE_FEEL_STEP;
		float sx0 = (float)(i * HELPDUDE_FEEL_CELL);
		float sx1 = (float)((i + 1) * HELPDUDE_FEEL_CELL);
		for (int j = 0; j < HELPDUDE_FEEL_ROWS; j++)
		{
			float         fy0 = (j - HELPDUDE_FEEL_ROWS / 2) * HELPDUDE_FEEL_STEP;
			unsigned long c00 = GetFeelColour(Feel(fx0, fy0) * -0.3f);
			unsigned long c10 = GetFeelColour(Feel(fx1, fy0) * -0.3f);
			float         fy1 = (j + 1 - HELPDUDE_FEEL_ROWS / 2) * HELPDUDE_FEEL_STEP;
			unsigned long c01 = GetFeelColour(Feel(fx0, fy1) * -0.3f);
			unsigned long c11 = GetFeelColour(Feel(fx1, fy1) * -0.3f);

			D3DTLVERTEX vertices[4];
			vertices[0].sx = sx0;
			vertices[0].sy = (float)(j * HELPDUDE_FEEL_CELL);
			vertices[0].sz = s_FeelDepth;
			vertices[0].rhw = s_FeelDepth;
			vertices[0].color = c00;
			vertices[0].specular = 0;
			vertices[0].tu = 0.0f;
			vertices[0].tv = 0.0f;
			vertices[1].sx = sx1;
			vertices[1].sy = (float)(j * HELPDUDE_FEEL_CELL);
			vertices[1].sz = s_FeelDepth;
			vertices[1].rhw = s_FeelDepth;
			vertices[1].color = c10;
			vertices[1].specular = 0;
			vertices[1].tu = 1.0f;
			vertices[1].tv = 0.0f;
			vertices[2].sx = sx0;
			vertices[2].sy = (float)((j + 1) * HELPDUDE_FEEL_CELL);
			vertices[2].sz = s_FeelDepth;
			vertices[2].rhw = s_FeelDepth;
			vertices[2].color = c01;
			vertices[2].specular = 0;
			vertices[2].tu = 0.0f;
			vertices[2].tv = 1.0f;
			vertices[3].sx = sx1;
			vertices[3].sy = (float)((j + 1) * HELPDUDE_FEEL_CELL);
			vertices[3].sz = s_FeelDepth;
			vertices[3].rhw = s_FeelDepth;
			vertices[3].color = c11;
			vertices[3].specular = 0;
			vertices[3].tu = 1.0f;
			vertices[3].tv = 1.0f;
			device->DrawIndexedPrimitive(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, vertices, 4,
			                             (unsigned short*)s_FeelQuadIndices, 6, 0);
		}
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

#define HELPDUDE_OTHER_GUY_RANGE (0.6f * 1.5f)

void HelpDude::UpdateHoverZ(float min_z)
{
	if (FlyingToGimme || (LipSyncFlags & HELPDUDE_ANIM_STAY_BACK))
	{
		HoverZ.SetDestination(0.0f, 0.5f);
		return;
	}
	if (OtherGuy)
	{
		Point2D d = Point2D(HoverX.GetCurrentValue(), HoverY.GetCurrentValue()) -
		            Point2D(OtherGuy->HoverX.GetCurrentValue(), OtherGuy->HoverY.GetCurrentValue());
		float   distSq = d.GetNormSq();
		OtherGuyDistance = (float)sqrt(distSq);
		OtherGuy->OtherGuyDistance = OtherGuyDistance;
		if (distSq < HELPDUDE_OTHER_GUY_RANGE * HELPDUDE_OTHER_GUY_RANGE)
		{
			float closeness = OtherGuyDistance / HELPDUDE_OTHER_GUY_RANGE;
			closeness = 1.0f - closeness * closeness;
			OtherGuy->HoverZ.SetDestination(closeness * -0.5f, 1.0f);
			if (closeness < min_z)
			{
				closeness = min_z;
			}
			HoverZ.SetDestination(closeness, 1.0f);
		}
		else
		{
			HoverZ.SetDestination(0.0f, 1.0f);
		}
	}
	else
	{
		HoverZ.SetDestination(0.0f, 1.0f);
	}
}

#define HELPDUDE_DESPERATE_TRIES 25

void HelpDude::UpdateHoverPos(float dt)
{
	if (State == HELPDUDESTATE_AVOID || State == HELPDUDESTATE_PLAY_ANIM || (State & HELPDUDESTATE_CLING) ||
	    State == HELPDUDESTATE_ANIM)
	{
		return;
	}
	if (HoverX.CurrentTime != HoverX.duration || HoverY.CurrentTime != HoverY.duration || Smoking)
	{
		return;
	}

	float x = HoverX.GetCurrentValue();
	float y = HoverY.GetCurrentValue();
	float feel = Feel(x, y);
	float range = fabs(feel) + 1.0f;
	range *= 0.3f;
	int      tries = 1;
	bool32_t desperate = false;
	if (feel < -1.0f)
	{
		desperate = true;
		range = 2.0f;
		tries = HELPDUDE_DESPERATE_TRIES;
	}

	float bestFeel = feel;
	float bestX = x;
	float bestY = y;
	int   bestAvoid = -1;
	if (OtherGuy && OtherGuyDistance < HELPDUDE_OTHER_GUY_RANGE)
	{
		float dx = HoverX.GetCurrentValue() - OtherGuy->HoverX.GetCurrentValue();
		float dy = HoverY.GetCurrentValue() - OtherGuy->HoverY.GetCurrentValue();
		int   avoid;
		if (fabs(dx) > fabs(dy))
		{
			avoid = dx < 0.0f ? 0 : 1;
		}
		else
		{
			avoid = dy < 0.0f ? 2 : 3;
		}
		CAnim* anim = Anims[ANIM_AVOIDL + avoid];
		if (anim)
		{
			LHPoint pos = anim->Movement;
			Transform.TransformVector(pos);
			pos.Add(Transform.GetPos());
			float ax;
			float ay;
			if (Convert3DToHover(pos, &ax, &ay, true))
			{
				float avoidFeel = (Feel(ax, ay) - feel) * 6.0f + feel;
				if (avoidFeel > feel)
				{
					bestFeel = avoidFeel;
					bestX = ax;
					bestY = ay;
					bestAvoid = avoid;
				}
			}
		}
	}

	if (bestAvoid >= 0 && GRand::LocalRand(10) < 5)
	{
		bestAvoid = -1;
	}
	if (bestAvoid < 0)
	{
		for (int i = 0; i < tries; i++)
		{
			float nx = x + GRand::LocalFloatRand(range * 2.0f) - range;
			float ny = y + GRand::LocalFloatRand(range * 2.0f) - range;
			CLAMP(nx, -1.0f, 1.0f);
			CLAMP(ny, -0.75f, 0.75f);
			float newFeel = Feel(nx, ny);
			if (newFeel > bestFeel)
			{
				bestFeel = newFeel;
				bestX = nx;
				bestY = ny;
				bestAvoid = -1;
			}
		}
	}

	float chance = desperate ? 1.0f : 0.0f;
	if (!desperate && bestFeel > feel)
	{
		chance = dt * (bestFeel - feel);
	}
	if (desperate || GRand::LocalFloatRand(1.0f) <= chance)
	{
		if (bestAvoid >= 0)
		{
			AvoidDirection = bestAvoid;
			SetState(HELPDUDESTATE_AVOID, false);
		}
		else
		{
			Sethoverx(bestX, 1.0f, true);
			Sethovery(bestY, 1.0f, true);
		}
	}
}

void HoverZone::Draw()
{
	if (Strength == 0.0f)
	{
		return;
	}
	const LHColor& colour = Strength > 0.0f ? LHColor(255, 255, 255) : LHColor(255, 0, 0);

	int  halfWidth = LHSys::GetScreen().width >> 1;
	int  halfHeight = LHSys::GetScreen().height >> 1;
	long radius = (long)(halfWidth * InnerRadius);
	long cy = (long)(halfWidth * Y + halfHeight);
	long cx = (long)((X + 1.0f) * halfWidth);
	if (LHSys::GetScreen().depth == 16)
	{
		LHPixel16 pixel;
		pixel.Set(colour);
		LHSys::GetDraw().Circle16(cx, cy, radius, pixel, 1);
	}
	else
	{
		LHSys::GetDraw().Circle24(cx, cy, radius, colour, 1);
	}

	radius = (long)(halfWidth * OuterRadius);
	cy = (long)(halfWidth * Y + halfHeight);
	cx = (long)((X + 1.0f) * halfWidth);
	if (LHSys::GetScreen().depth == 16)
	{
		LHPixel16 pixel;
		pixel.Set(colour);
		LHSys::GetDraw().Circle16(cx, cy, radius, pixel, 1);
	}
	else
	{
		LHSys::GetDraw().Circle24(cx, cy, radius, colour, 1);
	}
}

void EyePositions::Interp(EyePositions* from, EyePositions* to, float t)
{
	for (int i = 0; i < 2; i++)
	{
		EyeScale[i] = (to->EyeScale[i] - from->EyeScale[i]) * t + from->EyeScale[i];
		PupilSize[i] = (to->PupilSize[i] - from->PupilSize[i]) * t + from->PupilSize[i];
		PupilStretch[i] = (to->PupilStretch[i] - from->PupilStretch[i]) * t + from->PupilStretch[i];
		Lid[i] = (to->Lid[i] - from->Lid[i]) * t + from->Lid[i];
	}
}

void HelpDudeEmotion::Interp(HelpDudeEmotion* from, HelpDudeEmotion* to, float t)
{
	Eyes.Interp(&from->Eyes, &to->Eyes, t);
	Blinker.Interp(&from->Blinker, &to->Blinker, t);
	WingSpeed = (to->WingSpeed - from->WingSpeed) * t + from->WingSpeed;
	SpareScale = (to->SpareScale - from->SpareScale) * t + from->SpareScale;
	HeadWobbleX = (to->HeadWobbleX - from->HeadWobbleX) * t + from->HeadWobbleX;
	HeadWobbleY = (to->HeadWobbleY - from->HeadWobbleY) * t + from->HeadWobbleY;
	SpareWobble = (to->SpareWobble - from->SpareWobble) * t + from->SpareWobble;
}

void EyeBlinker::Interp(EyeBlinker* from, EyeBlinker* to, float t)
{
	MinInterval = (to->MinInterval - from->MinInterval) * t + from->MinInterval;
	MaxInterval = (to->MaxInterval - from->MaxInterval) * t + from->MaxInterval;
	BlinkDuration = (to->BlinkDuration - from->BlinkDuration) * t + from->BlinkDuration;
}

VoiceKey VoiceKey::Interp(VoiceKey* from, VoiceKey* to, float time, int count)
{
	if (time <= from->Time)
	{
		VoiceKey key = *from;
		key.Time = time;
		return key;
	}
	if (time >= to->Time)
	{
		VoiceKey key = *to;
		key.Time = time;
		return key;
	}
	VoiceKey key;
	key.Time = time;
	float t = (time - from->Time) / (to->Time - from->Time);
	for (int i = 0; i < count; i++)
	{
		key.Weight[i] = (to->Weight[i] - from->Weight[i]) * t + from->Weight[i];
	}
	return key;
}

void EyeBlinker::Update(EyePositions* out, EyePositions* in, float* timer, float dt)
{
	float time = *timer;
	time += dt;
	if (time > BlinkDuration)
	{
		time = -(MinInterval + GRand::LocalFloatRand(MaxInterval - MinInterval));
		if (GRand::LocalRand(5) == 0)
		{
			time = -0.01f;
		}
	}

	float blink = 0.0f;
	if (time > 0.0f)
	{
		blink = time * 2.0f / BlinkDuration;
		if (blink > 1.0f)
		{
			blink = 2.0f - blink;
		}
		blink *= 1.2f;
		if (blink > 1.0f)
		{
			blink = 1.0f;
		}
	}

	for (int i = 0; i < 2; i++)
	{
		out->Lid[i] = (1.0f - in->Lid[i]) * blink + in->Lid[i];
		out->EyeScale[i] = in->EyeScale[i];
		out->PupilSize[i] = in->PupilSize[i];
		out->PupilStretch[i] = in->PupilStretch[i];
	}
	*timer = time;
}

static const char* EmotionNames[HELPDUDE_EMOTIONS] = {
	"Normal", "Pleased", "Displeased", "Sad", "Sarcastic", "Afraid", "Confused", "Furious",
};

const char* HelpDude::AnimNames[ANIM_LAST] = {
	"Stand",         "Hover",         "Hover left",    "Hover right",   "Wingflap",        "L Eye Shut",
	"R Eye Shut",    "Vowel E",       "Vowel O",       "Vowel S",       EmotionNames[0],   EmotionNames[1],
	EmotionNames[2], EmotionNames[3], EmotionNames[4], EmotionNames[5], EmotionNames[6],   EmotionNames[7],
	"Look L/R",      "Look Up/Dn",    "NodHead",       "ShakeHead",     "CockHead",        "HeadInHands",
	"Laugh",         "CrossArms",     "Spare",         "PointL In",     "Point L",         "PointR In",
	"Point R",       "HoverStable",   "Avoid L",       "Avoid R",       "Avoid U",         "Avoid D",
	"HandsOnHips",   "Spare!",        "ShakeFinger",   "ScratchHead",   "ScratchChin",     "PickNose",
	"PointAtCamera", "HangHead",      "Sulk",          "Cry",           "GoInvisible",     "Dance",
	"PressFace",     "StrokeBeard",   "CoverEyes",     "Pray",          "PunchAir",        "WaveNo",
	"Dodgy",         "Dismiss",       "Rude",          "HeadSlap",      "KnockScreen",     "Wanker",
	"HandGun",       "Burp",          "Fart",          "Triumph",       "Shrug",           "ClingL",
	"ClingR",        "ClingU",        "ClingD",        "GimmeFive",     "Look L/R Stable", "Look U/D Stable",
	"Chuckle",       "Spare 4",       "Spare 5",       "Spare 6",       "Spare 7",         "Spare 8",
	"Spare 9",       "Spare 10",
};

static LHColor s_DebugColours[6] = {
	LHColor(200, 200, 200), LHColor(200, 150, 150), LHColor(150, 200, 150),
	LHColor(150, 150, 200), LHColor(200, 200, 150), LHColor(150, 200, 200),
};

#define HELPDUDE_SAMPLE_OBJECT 9996

static int       s_SampleRate;
static int       s_SampleCount;
static float     s_SampleDuration;
static short*    s_SampleData;
static uint32_t  s_SampleStartTick;
static uint32_t  s_PlayingSample;
static HelpDude* s_TalkingDude;

#define HELPDUDE_VOICE_SAMPLES 0x200
static float s_VoiceBuffer[HELPDUDE_VOICE_SAMPLES * 2];

LH_AudioBank* HelpDude::SetSentenceBank(LH_AudioSystem* audio_system, LH_AudioBank* bank)
{
	SentenceBank = bank;
	if (SentenceBank)
	{
		delete[] SentenceTags;
		SentenceCount = AudioSystem->LHBankGetNumberOfSamples(SentenceBank);
		SentenceTags = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(701)) AudioTagList[SentenceCount];
	}
	return SentenceBank;
}

LH_AudioBank* HelpDude::SetSentenceBank(LH_AudioSystem* audio_system, char* name)
{
	if (SentenceBank)
	{
		FreeSentenceBank();
	}
	AudioSystem = audio_system;
	if (!audio_system)
	{
		return NULL;
	}
	CurrentSentence = 0;
	SentenceBank = AudioSystem->LHBankRegister(name, 0);
	if (SentenceBank)
	{
		delete[] SentenceTags;
		SentenceCount = AudioSystem->LHBankGetNumberOfSamples(SentenceBank);
		SentenceTags = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(718)) AudioTagList[SentenceCount];
	}
	return SentenceBank;
}

void HelpDude::FreeSentenceBank()
{
	if (AudioSystem && SentenceBank)
	{
		StopSentence();
		delete[] SentenceTags;
		SentenceTags = NULL;
		SentenceCount = 0;
		SentenceBank = NULL;
		CurrentSentence = 0;
	}
}

void HelpDude::SaySentence(int sample, bool32_t dont_interrupt, int delay)
{
	s_TalkingDude = this;
	if (!SentenceBank)
	{
		return;
	}
	if (s_PlayingSample)
	{
		if (dont_interrupt)
		{
			if (IsTalking())
			{
				return;
			}
		}
		else
		{
			StopSentence();
		}
	}
	if ((unsigned long)sample > AudioSystem->LHBankGetNumberOfSamples(SentenceBank) || sample < 1)
	{
		return;
	}
	SampleOptions.Bank = SentenceBank;
	SampleOptions.SampleNumber = sample;
	SampleOptions.AttachedObject = (Base*)HELPDUDE_SAMPLE_OBJECT;
	SampleOptions.Positional = 0;
	SampleOptions.Pos.x = Transform._41;
	SampleOptions.Pos.y = Transform._42;
	SampleOptions.Pos.z = Transform._43;
	SampleOptions.KeepData = 1;
	SaySample = sample;
	SayTick = GetTickCount() + delay;
	UpdateSaySentence();
}

float GetSampleAmplitude(LH_AudioSystem* audio_system, unsigned long sample, int window)
{
	if (sample)
	{
		float time = (GetTickCount() - s_SampleStartTick) / 1000.0f;
		if (time >= 0.0f && time < s_SampleDuration && s_SampleData &&
		    audio_system->LHSampleIsPlaying(GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_HELP_SPRITES],
		                                    HELPDUDE_SAMPLE_OBJECT, sample))
		{
			int start = (int)(time / s_SampleDuration * s_SampleCount);
			int end = start + window;
			if (start > 0)
			{
				start = min(start, s_SampleCount);
			}
			else
			{
				start = 0;
			}
			if (end > 0)
			{
				end = min(end, s_SampleCount);
			}
			else
			{
				end = 0;
			}
			if (start < end)
			{
				float  sum = 0.0f;
				short* data = &s_SampleData[start];
				for (int i = start; i < end; i++, data++)
				{
					float value = *data / 32768.0f;
					sum += value * value;
				}
				return (float)sqrt(sum);
			}
		}
	}
	return 0.0f;
}

LH_SampleInfo* HelpDude::PlaySample(LH_AudioSystem* audio_system, LH_SamplePlayOptions* options)
{
	options->KeepData = 1;
	LH_SampleInfo* info = audio_system->LHSamplePlay(options);
	if (info)
	{
		s_SampleStartTick = GetTickCount();
		if (s_SampleData)
		{
			delete s_SampleData;
		}
		s_SampleData = NULL;
		s_SampleCount = info->DataSize;
		s_SampleData = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(822)) short[s_SampleCount / 2];
		if (s_SampleData && info->Data)
		{
			memcpy(s_SampleData, info->Data, s_SampleCount);
		}
		WAVEFORMATEX* format = info->Format;
		s_SampleCount /= format->nChannels * 2;
		s_SampleRate = format->nSamplesPerSec;
		s_SampleDuration = (float)s_SampleCount / s_SampleRate;
	}
	return info;
}

void HelpDude::UpdateSaySentence()
{
	if (!SayTick || (int)GetTickCount() < (int)SayTick)
	{
		return;
	}
	SayTick = 0;
	LH_SampleInfo* info = PlaySample(AudioSystem, &SampleOptions);
	s_PlayingSample = info ? info->Handle : 0;
	if (!s_PlayingSample)
	{
		return;
	}
	CurrentSentence = SaySample;
	delete SentenceTags[CurrentSentence - 1].Tags;
	CurrentTags = &SentenceTags[CurrentSentence - 1];
	AudioTag::ErrorCount = 0;
	if (info->TagData)
	{
		CurrentTags->Count = AudioTag::BuildAudioTags(info->TagData, info->TagDataSize, &CurrentTags->Tags);
	}
	else
	{
		CurrentTags->Count = 0;
		AudioTag::ErrorCount = 1;
	}
	if (AudioTag::ErrorCount)
	{
		delete CurrentTags->Tags;
		CurrentTags->Tags = NULL;
		CurrentTags->Count = 0;
	}
	CurrentTags->Index = 0;
}

#define HELPDUDE_TALK_LINGER_MS 200

bool32_t HelpDude::IsTalkingWithDelay()
{
	if (IsTalking())
	{
		return true;
	}
	return GetTickCount() - LastTalkTick < HELPDUDE_TALK_LINGER_MS;
}

bool32_t HelpDude::IsTalking()
{
	if (s_TalkingDude == this)
	{
		if (SayTick)
		{
			LastTalkTick = GetTickCount();
			return true;
		}
		if (SentenceBank && s_PlayingSample)
		{
			if (AudioSystem->LHSampleIsPlaying(SentenceBank, HELPDUDE_SAMPLE_OBJECT, s_PlayingSample))
			{
				LastTalkTick = GetTickCount();
				return true;
			}
			StopSentence();
		}
	}
	return false;
}

float HelpDude::GetTalkedPercentage()
{
	if (s_TalkingDude == this)
	{
		if (SayTick)
		{
			LastTalkTick = GetTickCount();
			return 0.0f;
		}
		if (SentenceBank && s_PlayingSample)
		{
			float done = AudioSystem->LHSampleGetPercentageDone(SentenceBank, HELPDUDE_SAMPLE_OBJECT, s_PlayingSample);
			if (done < 1.0f)
			{
				LastTalkTick = GetTickCount();
				return done;
			}
		}
	}
	return 1.0f;
}

void HelpDude::StopSentence()
{
	SayTick = 0;
	if (SentenceBank && s_PlayingSample && s_TalkingDude == this)
	{
		AudioSystem->LHSampleStop(SentenceBank, HELPDUDE_SAMPLE_OBJECT, s_PlayingSample);
		ProcessAudioTags(s_SampleDuration + 100.0f, false);
		s_PlayingSample = 0;
		CurrentTags = NULL;
		s_TalkingDude = NULL;
	}
}

void HelpDude::ApplyStandFrame(int frame)
{
	if (Anims[ANIM_STAND])
	{
		Anims[ANIM_STAND]->FillBuffer(BoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 1);
	}
}

void HelpDude::UpdateGoInvisible(float t)
{
	if (IsEvil)
	{
		if (t > 0.13f && t < 0.25f)
		{
			Invisible = true;
		}
		if (t > 0.55f && t < 0.7f)
		{
			Invisible = true;
		}
	}
	else if (t > 0.16f && t < 0.25f)
	{
		Invisible = true;
	}
}

void HelpDude::ApplyAnim(int anim, float time, float weight, bool32_t loop)
{
	if (!Anims[anim])
	{
		return;
	}
	if (loop)
	{
		time -= (int)time;
	}
	else if (time > 1.0f)
	{
		time = 1.0f;
		goto clamped;
	}
	if (time < 0.0f)
	{
		time = 0.0f;
	}
clamped:
	if (anim == ANIM_GOINVISIBLE)
	{
		UpdateGoInvisible(time);
	}

	CAnim*  animation = Anims[anim];
	int     frameCount = animation->Duration;
	int     frame = (int)(frameCount * time);
	int     baseFrame = (int)((animation->FrameCount - 1) * weight);
	LHPoint move = animation->Movement * time;
	Transform.TransformVector(move);
	Transform.PostTranslation(move);
	if (frame >= frameCount)
	{
		frame = frameCount - 1;
	}
	if (baseFrame >= frameCount)
	{
		baseFrame = frameCount - 1;
	}
	Anims[anim]->ModifyBufferByDifferenceFromFrame(BoneMatrices, Anims[anim]->frames[baseFrame], Mesh, BaseMatrices,
	                                               InverseBaseMatrices, frame, NULL, NULL);
}

void HelpDude::ApplyAnimFrame(int anim, int frame)
{
	CAnim* animation = Anims[anim];
	if (!animation)
	{
		return;
	}
	int frameCount = animation->Duration;
	if (frameCount)
	{
		frame %= frameCount;
	}
	if (anim == ANIM_GOINVISIBLE)
	{
		UpdateGoInvisible((float)frame / frameCount);
	}
	Anims[anim]->FillBuffer(BoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 0);
}

void HelpDude::SetPos(const LHCoord& pos)
{
	int   halfWidth = LHSys::GetScreen().width >> 1;
	float x = (float)(pos.x - halfWidth) / (float)halfWidth;
	float y = (float)(pos.y - (LHSys::GetScreen().height >> 1)) / (float)halfWidth;
	HoverX.SetPosition(x);
	HoverY.SetPosition(y);
	ResetTrail();
	SetState(HELPDUDESTATE_HOVER, false);
}

void HelpDude::ResetTrail()
{
	LHPoint pos(HoverX.GetCurrentValue(), HoverY.GetCurrentValue(), HoverZ.GetCurrentValue());
	for (int i = 0; i < HELPDUDE_TRAIL_LENGTH; i++)
	{
		Trail.Points[i] = pos;
	}
}

void HelpDude::UpdateClingEdge()
{
	if (State == HELPDUDESTATE_CLING_OUTRO)
	{
		return;
	}
	if (fabs(ClingX) > fabs(ClingY / 0.78f))
	{
		if (ClingX > 0.0f)
		{
			ClingEdge = 3;
			ClingX = 1.04f;
		}
		else
		{
			ClingEdge = 1;
			ClingX = -1.04f;
		}
	}
	else if (ClingY > 0.0f)
	{
		ClingEdge = 0;
		ClingY = 0.78f;
	}
	else
	{
		ClingEdge = 2;
		ClingY = -0.78f;
	}
}

void HelpDude::FlyTo2D(const LHCoord& pos, float time, bool clamp)
{
	int   halfWidth = LHSys::GetScreen().width >> 1;
	float x = (float)(pos.x - halfWidth) / (float)halfWidth;
	float y = (float)(pos.y - (LHSys::GetScreen().height >> 1)) / (float)halfWidth;
	Sethoverx(x, time, clamp);
	Sethovery(y, time, clamp);
	ClingX = x;
	ClingY = y;
	UpdateClingEdge();
	SetState(HELPDUDESTATE_HOVER, false);
}

void HelpDude::SetCling(float x, float y, bool jump)
{
	ClingX = x;
	AnimPosX = x;
	ClingY = y;
	AnimPosY = y;
	UpdateClingEdge();
	if (jump)
	{
		SetPos(GetHomeIdx(ClingEdge));
		ResetTrail();
	}
	SetState(HELPDUDESTATE_CLING, false);
}

bool HelpDude::IsAnimPlaying()
{
	if ((State == HELPDUDESTATE_PLAY_ANIM || NextState == HELPDUDESTATE_PLAY_ANIM) && AnimState == HELPDUDESTATE_ANIM)
	{
		return true;
	}
	if (State == HELPDUDESTATE_ANIM || NextState == HELPDUDESTATE_ANIM)
	{
		return true;
	}
	return false;
}

void HelpDude::PlayAnimAtPos(float x, float y, ANIMLIST anim, float speed)
{
	if (anim == ANIM_STAND && IsAnimPlaying())
	{
		SetState(HELPDUDESTATE_HOVER, false);
		return;
	}
	AnimPosX = x;
	AnimPosY = y;
	AnimState = HELPDUDESTATE_ANIM;
	AnimSpeed = speed;
	AnimToPlay = anim;
	SetState(HELPDUDESTATE_PLAY_ANIM, false);
}

void HelpDude::PointAt2D(const LHCoord& pos)
{
	PointOffScreen = false;
	int   halfWidth = LHSys::GetScreen().width >> 1;
	float y = (float)(pos.y - (LHSys::GetScreen().height >> 1)) / (float)halfWidth;
	float x = (float)(pos.x - halfWidth) / (float)halfWidth;
	PointX = x;
	PointY = y;
	SetState(HELPDUDESTATE_POINT, false);
}

void HelpDude::LookAtInHoverPlane(LHPoint* pos)
{
	if (pos)
	{
		float x;
		float y;
		if (Convert3DToHover(*pos, &x, &y, false))
		{
			LHPoint target;
			target = ConvertHoverTo3D(x, y, -HoverZ.GetCurrentValue() - 0.6f, false);
			LookAt(&target);
		}
		else
		{
			LookAt(NULL);
		}
	}
	else
	{
		LookAt(NULL);
	}
}

void HelpDude::ProcessLookAt(float dt, bool busy, bool other_visible, bool face_camera, LHPoint* look_target)
{
	int   halfWidth = LHSys::GetScreen().width >> 1;
	int   halfHeight = LHSys::GetScreen().height >> 1;
	int   alternative = HELPDUDE_LOOK_AHEAD;
	int   look = LookMode;
	float dx = (float)((LHSys::GetMouse().Pos().x - halfWidth) / halfWidth) - HoverX.GetCurrentValue();
	float dy = (float)((LHSys::GetMouse().Pos().y - halfHeight) / halfHeight) - HoverY.GetCurrentValue();
	float mouseDistance = (float)sqrt(dx * dx + dy * dy);
	switch (LookMode)
	{
	case HELPDUDE_LOOK_AUTO:
		if (busy)
		{
			look = HELPDUDE_LOOK_AHEAD;
			alternative = HELPDUDE_LOOK_OTHER_GUY;
		}
		else
		{
			look = HELPDUDE_LOOK_OTHER_GUY;
			alternative = HELPDUDE_LOOK_AHEAD;
		}
		if (State & HELPDUDESTATE_POINT)
		{
			alternative = look;
			look = HELPDUDE_LOOK_POINT;
		}
		break;
	case HELPDUDE_LOOK_AHEAD:
		alternative = HELPDUDE_LOOK_OTHER_GUY;
		break;
	case HELPDUDE_LOOK_MOUSE:
		look = HELPDUDE_LOOK_MOUSE;
		alternative = HELPDUDE_LOOK_MOUSE;
		break;
	}
	if (look_target)
	{
		look = HELPDUDE_LOOK_TARGET;
		alternative = other_visible ? HELPDUDE_LOOK_OTHER_GUY : HELPDUDE_LOOK_AHEAD;
	}

	if (MouseSpeed > 4.0f && mouseDistance < 0.3f && MouseExcitement < 1.0f && Random(0.0f, 1.0f) < 0.3f)
	{
		MouseExcitement = (MouseSpeed - 4.0f) * 0.2f + 2.0f;
	}
	else
	{
		MouseExcitement -= dt * 0.5f;
	}
	if (MouseExcitement < 0.0f)
	{
		MouseExcitement = 0.0f;
	}
	if (MouseExcitement > 3.0f)
	{
		MouseExcitement = 3.0f;
	}
	if (!busy && MouseExcitement > 1.0f && !IsTalkingWithDelay())
	{
		alternative = look;
		look = HELPDUDE_LOOK_MOUSE;
	}
	if (IsTalkingWithDelay() || State == HELPDUDESTATE_ANIM)
	{
		look = HELPDUDE_LOOK_AHEAD;
		alternative = HELPDUDE_LOOK_AHEAD;
	}

	LookSwitchTime -= dt;
	if (LookSwitchTime < 0.0f)
	{
		LookAlternative = !LookAlternative;
		if (LookAlternative)
		{
			LookSwitchTime += Random(2.0f, 4.0f);
		}
		else
		{
			LookSwitchTime += Random(3.0f, 6.0f);
		}
	}
	if (LookAlternative)
	{
		look = alternative;
	}
	if (look == HELPDUDE_LOOK_OTHER_GUY)
	{
		if (!other_visible)
		{
			look = HELPDUDE_LOOK_AHEAD;
		}
	}
	else if (look == HELPDUDE_LOOK_POINT && !(State & HELPDUDESTATE_POINT))
	{
		look = HELPDUDE_LOOK_AHEAD;
	}

	LHPoint target;
	switch (look)
	{
	case HELPDUDE_LOOK_TARGET:
		if (look_target)
		{
			float x;
			float y;
			Convert3DToHover(*look_target, &x, &y, true);
			target = ConvertHoverTo3D(PointX, PointY, -HoverZ.GetCurrentValue() - 0.5f, false);
			LookAt(&target);
		}
		break;
	case HELPDUDE_LOOK_OTHER_GUY:
		LookAtOtherGuy();
		break;
	case HELPDUDE_LOOK_POINT: {
		target = ConvertHoverTo3D(PointX, PointY, -HoverZ.GetCurrentValue() - 0.4f, false);
		LookAt(&target);
		break;
	}
	case HELPDUDE_LOOK_MOUSE: {
		LHCoord mouse = LHSys::GetMouse().Pos();
		LH3DTech::Get3DPointFromScreen(mouse, target, Depth * 0.8f);
		LookAt(&target);
		break;
	}
	default:
		if (face_camera)
		{
			LookAtCamera();
		}
		else
		{
			LookAt(NULL);
		}
		break;
	}
}

void HelpDude::PointAt3D(LHPoint& pos, bool fly_to, float side_offset, float height_offset)
{
	if (PointBlend == 0.0f)
	{
		PointAt.SetPosition(pos);
	}
	else
	{
		PointAt.SetDestinationWithTime(pos, 0.5f);
	}
	FlyToPoint = fly_to;
	PointSideOffset = side_offset;
	PointHeightOffset = height_offset;
	PointOffScreen = false;

	int      sx;
	int      sy;
	float    depth;
	uint32_t visible = LH3DTech::ProjectPoint(&pos, &sx, &sy, &depth);
	PointOffScreen = false;
	if (!visible || depth < LH3DTech::g_info_transform.NearClip * 1.1f || sy > LHSys::GetScreen().height)
	{
		PointOffScreen = true;
	}

	float x;
	float y;
	if (Convert3DToHover(pos, &x, &y, true) && !PointOffScreen)
	{
		PointX = x;
		PointY = y;
		SetState(HELPDUDESTATE_POINT, false);
		LookAt(&pos);
		return;
	}
	PointX = 0.0f;
	PointY = 1.0f;
	SetState(HELPDUDESTATE_POINT, false);
	LookAt(NULL);
	PointOffScreen = true;
}

void HelpDude::LookAt(LHPoint* pos)
{
	LookAtValid = false;
	if (pos)
	{
		LookAtPos = *pos;
		LookAtValid = true;
	}
}

void HelpDude::LookAtCamera()
{
	LookAt(&LH3DTech::g_camera.pos);
	EyeLookAt(NULL);
}

void HelpDude::LookAtOtherGuy()
{
	if (OtherGuy)
	{
		LookAt((LHPoint*)&OtherGuy->Transform.GetPos());
		EyeLookAt(NULL);
	}
}

void HelpDude::EyeLookAt(LHPoint* pos)
{
	EyeLookAtValid = false;
	if (pos)
	{
		EyeLookAtPos = *pos;
		EyeLookAtValid = true;
	}
}

void HelpDude::EyeLookAtCamera()
{
	EyeLookAt(&LH3DTech::g_camera.pos);
}

void HelpDude::EyeLookAtOtherGuy()
{
	if (OtherGuy)
	{
		EyeLookAt((LHPoint*)&OtherGuy->Transform.GetPos());
	}
}

LH_AudioBank* HelpDude::GetSoundFXBank()
{
	return GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
}

void HelpDude::ApplyWingsHover(bool32_t stable_wings, float dt, bool32_t play_sound)
{
	if (stable_wings)
	{
		if (WingsBlend < 1.0f)
		{
			WingsBlend += dt;
			if (WingsBlend > 1.0f)
			{
				WingsBlend = 1.0f;
			}
		}
	}
	else if (WingsBlend > 0.0f)
	{
		WingsBlend -= dt;
		if (WingsBlend < 0.0f)
		{
			WingsBlend = 0.0f;
		}
	}

	CAnim* stable = Anims[ANIM_HOVERSTABLE];
	CAnim* hover = Anims[ANIM_HOVER];
	if (WingsBlend <= 0.0f || !stable)
	{
		if (hover)
		{
			int frame = (int)(WingTime * 1000.0f) % hover->Duration;
			hover->FillBuffer(BoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 0);
			if (play_sound)
			{
				PlaySoundFX(ANIM_HOVER, (float)frame / hover->Duration, GetSoundFXBank());
			}
		}
	}
	else if (WingsBlend >= 1.0f)
	{
		int frame = (int)(WingTime * 1000.0f) % stable->Duration;
		stable->FillBuffer(BoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 0);
		if (play_sound)
		{
			PlaySoundFX(ANIM_HOVERSTABLE, (float)frame / stable->Duration, GetSoundFXBank());
		}
	}
	else if (hover)
	{
		int frame = (int)(WingTime * 1000.0f) % hover->Duration;
		memcpy(BaseBoneMatrices, BoneMatrices, BoneCount * sizeof(LHMatrix));
		hover->FillBuffer(BoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 0);
		frame = (int)(WingTime * 1000.0f) % stable->Duration;
		stable->FillBuffer(BaseBoneMatrices, Mesh, BaseMatrices, InverseBaseMatrices, frame, Frame, NULL, 0);
		LHMatrix identity;
		identity.SetIdentity();
		LH3DAnim::FinishTransform(BoneMatrices, Mesh, identity);
		LH3DAnim::FinishTransform(BaseBoneMatrices, Mesh, identity);
		float* bones = BoneMatrices->m;
		float* base = BaseBoneMatrices->m;
		for (int i = 0; i < BoneCount * (int)(sizeof(LHMatrix) / sizeof(float)); i++, bones++, base++)
		{
			*bones = (*base - *bones) * WingsBlend + *bones;
		}
		LH3DAnim::UnFinishTransform(BoneMatrices, Mesh, identity);
		if (play_sound)
		{
			PlaySoundFX(ANIM_HOVER, (float)frame / hover->Duration, GetSoundFXBank());
		}
	}

	CAnim* wings = Anims[ANIM_WINGS];
	if (wings)
	{
		int frame = (int)(WingTime * 1000.0f) % wings->Duration;
		wings->ModifyBufferByDifferenceFromFrame(BoneMatrices, wings->frames[0], Mesh, BaseMatrices,
		                                         InverseBaseMatrices, frame, NULL, NULL);
		if (play_sound)
		{
			PlaySoundFX(ANIM_WINGS, (float)frame / wings->Duration, GetSoundFXBank());
		}
	}

	float flap = (IsEvil ? 1.01f : 0.99981135f) * dt;
	WingTime += flap;
	BobTime += flap;
}

void HelpDude::ProcessAudioTags(float time, bool32_t play_sound)
{
	if (CurrentTags && CurrentTags->Tags)
	{
		while (CurrentTags->Index < CurrentTags->Count && time > CurrentTags->Tags[CurrentTags->Index].Time)
		{
			CurrentTags->Tags[CurrentTags->Index].ApplyToDude(this, play_sound, 1);
			CurrentTags->Index++;
		}
	}
}

void HelpDude::ResetLipSyncAnimList()
{
	for (int i = 0; i < ANIM_LAST; i++)
	{
		LipSyncAnimState[i] = HELPDUDE_LIPSYNC_OFF;
	}
}

int HelpDude::LipSyncFromSamples(float time, short* samples, int sample_count, int sample_rate)
{
	VoiceParams.CalcKey(&Voice, time, 0.0f, samples, sample_count, (float)sample_rate, s_VoiceBuffer,
	                    HELPDUDE_VOICE_SAMPLES);
	ApplyVoiceKey(&Voice);
	return 0;
}

void HelpDude::FlyToGimme()
{
	if (IsEvil)
	{
		Sethoverx(0.15f, 0.4f, true);
		Sethovery(0.0f, 0.4f, true);
	}
	else
	{
		Sethoverx(-0.15f, 0.4f, true);
		Sethovery(0.1f, 0.4f, true);
	}
	FlyingToGimme = true;
}

int HelpDude::ApplyLipSync(float dt, bool32_t play_sound)
{
	FlyingToGimme = false;
	if (IsTalking() && s_PlayingSample)
	{
		TalkTime = (GetTickCount() - s_SampleStartTick) * 0.001f;
		long position = AudioSystem->LHSampleGetPlayPosition(SentenceBank, HELPDUDE_SAMPLE_OBJECT, s_PlayingSample);
		if (position >= 0)
		{
			TalkTime = position * 0.001f;
			if (s_PlayingSample && s_SampleData)
			{
				VoiceParams.CalcKey(&Voice, dt, TalkTime, s_SampleData, s_SampleCount, (float)s_SampleRate,
				                    s_VoiceBuffer, HELPDUDE_VOICE_SAMPLES);
			}
			ApplyVoiceKey(&Voice);
		}
		else if (TalkTime > 0.5f)
		{
			StopSentence();
		}
		ProcessAudioTags(TalkTime, true);
	}

	int flags = 0;
	for (int i = 0; i < ANIM_LAST; i++)
	{
		int state = LipSyncAnimState[i];
		if (!state)
		{
			continue;
		}
		float speed = dt;
		float length = 0.0f;
		float loopStart = 0.0f;
		float loopEnd = 0.0f;
		if (Anims[i])
		{
			speed = dt / (Anims[i]->Duration / 1000.0f);
			loopStart = SoundInfos[i].LoopStart;
			loopEnd = SoundInfos[i].LoopEnd;
			length = loopEnd - loopStart;
		}
		float time = LipSyncAnimTime[i];
		float newTime;
		switch (state)
		{
		case HELPDUDE_LIPSYNC_ONCE:
		case HELPDUDE_LIPSYNC_FINISH:
			newTime = time + speed;
			if (newTime > 1.0f)
			{
				LipSyncAnimState[i] = HELPDUDE_LIPSYNC_OFF;
				LastSoundTime[i] = -1.0f;
				continue;
			}
			if (i == ANIM_GIMMEFIVE)
			{
				FlyToGimme();
			}
			if (!(LipSyncAnimFlags[i] & HELPDUDE_ANIM_NOT_CLINGING) || !(State & HELPDUDESTATE_CLING))
			{
				ApplyAnim(i, newTime, 0.0f, false);
			}
			if ((!(LipSyncAnimFlags[i] & HELPDUDE_ANIM_NOT_CLINGING) || !(State & HELPDUDESTATE_CLING)) && play_sound)
			{
				PlaySoundFX(i, time, GetSoundFXBank());
			}
			break;
		case HELPDUDE_LIPSYNC_LOOP:
		case HELPDUDE_LIPSYNC_LOOP_ALT:
			if (length <= 0.0f)
			{
				LipSyncAnimState[i] = HELPDUDE_LIPSYNC_ONCE;
				newTime = time + speed;
				if (newTime > 1.0f)
				{
					newTime = 1.0f;
				}
			}
			else if (time < loopEnd)
			{
				newTime = time + speed;
				if (newTime >= loopEnd)
				{
					float loops = (newTime - loopStart) / length;
					newTime = (loops - (int)loops) * length + loopStart;
				}
			}
			else
			{
				LipSyncAnimState[i] = HELPDUDE_LIPSYNC_FINISH;
				newTime = time + speed;
				if (newTime > 1.0f)
				{
					newTime = 1.0f;
				}
			}
			if (i == ANIM_GIMMEFIVE)
			{
				FlyToGimme();
			}
			if (!(LipSyncAnimFlags[i] & HELPDUDE_ANIM_NOT_CLINGING) || !(State & HELPDUDESTATE_CLING))
			{
				ApplyAnim(i, newTime, 0.0f, false);
			}
			if ((!(LipSyncAnimFlags[i] & HELPDUDE_ANIM_NOT_CLINGING) || !(State & HELPDUDESTATE_CLING)) && play_sound)
			{
				PlaySoundFX(i, time, GetSoundFXBank());
			}
			break;
		default:
			continue;
		}
		LipSyncAnimTime[i] = newTime;
		flags |= LipSyncAnimFlags[i];
	}
	LipSyncFlags = flags;
	return flags;
}

void HelpDude::ApplyEmotion(float dt)
{
	float strength = EmotionStrength;
	if (strength <= 0.0f)
	{
		strength = 0.0f;
	}
	else if (strength > 1.0f)
	{
		strength = 1.0f;
	}
	CurrentEmotion.Interp(&Emotions[0], &Emotions[Emotion], strength);

	EyePositions eyes;
	CurrentEmotion.Blinker.Update(&eyes, &CurrentEmotion.Eyes, &BlinkTimer, dt);
	if (!(LipSyncFlags & HELPDUDE_ANIM_NO_BLINK))
	{
		ApplyEyelidMovement(eyes);
	}
	ApplyPupilMovement(CurrentEmotion.Eyes);

	CAnim* anim = Anims[ANIM_EM0 + Emotion];
	if (anim && strength > 0.0f)
	{
		int frameCount = anim->Duration;
		int frame = (int)(frameCount * strength);
		if (frame >= frameCount)
		{
			frame = frameCount - 1;
		}
		anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[0], Mesh, BaseMatrices, InverseBaseMatrices,
		                                        frame, NULL, NULL);
	}
}

void HelpDude::SetEmotion(int emotion, float strength)
{
	EmotionTime = 0.0f;
	strength = max(strength, 0.0f);
	TargetEmotionStrength = strength;
	TargetEmotion = emotion;
}

float HelpDude::Smoothify(float t)
{
	if (t < 0.0f)
	{
		return 0.0f;
	}
	if (t > 1.0f)
	{
		return 1.0f;
	}
	return (1.0f - (float)cos(t * PI_F)) * 0.5f;
}

LHPoint HelpDude::ConvertHoverTo3D(float x, float y, float z, bool near_plane)
{
	int     halfWidth = LHSys::GetScreen().width >> 1;
	int     halfHeight = LHSys::GetScreen().height >> 1;
	LHPoint pos;
	if (near_plane)
	{
		LHCoord screen((long)((x + 1.0f) * halfWidth), (long)(y * halfWidth + halfHeight));
		LH3DTech::Get3DPointFromScreen(screen, pos, LH3DTech::g_info_transform.NearClip * 2.0f);
	}
	else
	{
		LHCoord screen((long)((x + 1.0f) * halfWidth), (long)(y * halfWidth + halfHeight));
		LH3DTech::Get3DPointFromScreen(screen, pos,
		                               ((TalkDepth - Depth) * Smoothify(ZoomBlend) + Depth) * (z * 0.3f + 1.0f));
	}
	return pos;
}

#define HELPDUDE_CLIP_NEAR 0x20

bool32_t HelpDude::Convert3DToHover(LHPoint& pos, float* x, float* y, bool32_t allow_clipped)
{
	Vertex3D      projected;
	unsigned long clip;
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	LH3DTech::TransformProjectFlagClipping(&projected, &clip, &pos, 1);
	if (clip & HELPDUDE_CLIP_NEAR)
	{
		return false;
	}
	if (clip)
	{
		if (!allow_clipped)
		{
			return false;
		}
		LH3DTech::TransformProject(&projected, &pos, 1);
	}
	int      halfWidth = LHSys::GetScreen().width >> 1;
	uint16_t halfHeight = LHSys::GetScreen().height >> 1;
	*x = (projected.position.x - halfWidth) / halfWidth;
	*y = (projected.position.y - halfHeight) / halfWidth;
	return true;
}

LHCoord HelpDude::GetHomeIdx(int edge)
{
	long halfWidth = LHSys::GetScreen().width >> 1;
	long halfHeight = LHSys::GetScreen().height >> 1;
	switch (edge)
	{
	case 0:
		return LHCoord(halfWidth, halfHeight * 3);
	case 1:
		return LHCoord(-halfWidth, halfHeight);
	case 2:
		return LHCoord(halfWidth, -halfHeight);
	default:
		return LHCoord(halfWidth * 3, halfHeight);
	}
}

void HelpDude::SetState(HELPDUDESTATE state, bool32_t force)
{
	if (state == HELPDUDESTATE_NONE)
	{
		state = NextState;
		if (state == HELPDUDESTATE_NONE)
		{
			state = HELPDUDESTATE_HOVER;
		}
	}
	if (State == state)
	{
		return;
	}
	if (!force && (State & (HELPDUDESTATE_INTRO | HELPDUDESTATE_OUTRO)))
	{
		NextState = state;
		return;
	}
	NextState = HELPDUDESTATE_NONE;

	switch (State)
	{
	case HELPDUDESTATE_POINT_LEFT:
	case HELPDUDESTATE_POINT_RIGHT:
	case HELPDUDESTATE_POINT | HELPDUDESTATE_LEFT | HELPDUDESTATE_RIGHT:
		if (!(state & HELPDUDESTATE_POINT) && !(state & HELPDUDESTATE_CLING))
		{
			state = (HELPDUDESTATE)(State | HELPDUDESTATE_OUTRO);
			goto done;
		}
		break;
	case HELPDUDESTATE_CLING:
		if (!(state & HELPDUDESTATE_CLING))
		{
			state = HELPDUDESTATE_CLING_OUTRO;
			goto done;
		}
		break;
	case HELPDUDESTATE_POINT_OUTRO_LEFT:
	case HELPDUDESTATE_POINT_OUTRO_RIGHT:
	case HELPDUDESTATE_CLING_OUTRO:
		State = HELPDUDESTATE_HOVER;
		break;
	}

	switch (state)
	{
	case HELPDUDESTATE_CLING:
		if (State & HELPDUDESTATE_CLING)
		{
			state = HELPDUDESTATE_CLING;
		}
		else
		{
			ClingAnimTime = 0.0f;
			state = HELPDUDESTATE_CLING_INTRO;
			Sethoverx(ClingX, 1.0f, false);
			Sethovery(ClingY, 1.0f, false);
		}
		break;
	case HELPDUDESTATE_PLAY_ANIM:
		if (State != HELPDUDESTATE_PLAY_ANIM)
		{
			float dx = HoverX.GetCurrentValue() - AnimPosX;
			float dy = HoverY.GetCurrentValue() - AnimPosY;
			float time = (float)sqrt(dy * dy + dx * dx);
			if (time > 0.05f)
			{
				if (time > 1.5f)
				{
					time = 1.5f;
				}
				else if (time < 0.5f)
				{
					time = 0.5f;
				}
			}
			FlyToPoint = 0.0f;
			HoverX.SetPosition(HoverX.GetCurrentValue());
			HoverY.SetPosition(HoverY.GetCurrentValue());
			Sethoverx(AnimPosX, time, true);
			Sethovery(AnimPosY, time, true);
		}
		break;
	case HELPDUDESTATE_AVOID:
		AvoidDirection &= 3;
		if (State != HELPDUDESTATE_HOVER)
		{
			state = State;
		}
		else
		{
			FlyToPoint = 0.0f;
			HoverX.SetPosition(HoverX.GetCurrentValue());
			HoverY.SetPosition(HoverY.GetCurrentValue());
		}
		break;
	case HELPDUDESTATE_POINT: {
		int side = State & 3;
		if (!side)
		{
			side = GRand::LocalRand(2) ? 1 : 2;
		}
		if (HoverX.GetCurrentValue() < PointX || PointX > 0.25f)
		{
			side = 1;
		}
		if (HoverX.GetCurrentValue() > PointX || PointX < -0.25f)
		{
			side = 2;
		}
		if (FlyToPoint != 0.0f)
		{
			side = 1;
		}
		float x;
		if (side == 1)
		{
			x = PointX - 0.2f;
			state = HELPDUDESTATE_POINT_INTRO_LEFT;
		}
		else
		{
			side = 2;
			x = PointX + 0.2f;
			state = HELPDUDESTATE_POINT_INTRO_RIGHT;
		}
		if (!(State & HELPDUDESTATE_POINT))
		{
			Sethovery(PointY, 1.0f, true);
			Sethoverx(x, 1.0f, true);
		}
		else if ((State & 3) == side)
		{
			state = State;
		}
		else
		{
			Sethovery(PointY, 1.0f, true);
			Sethoverx(x, 1.0f, true);
			state = (HELPDUDESTATE)(State | HELPDUDESTATE_OUTRO);
			NextState = HELPDUDESTATE_POINT;
		}
		break;
	}
	case HELPDUDESTATE_HOVER: {
		float x;
		float y;
		if (!Convert3DToHover((LHPoint&)Transform.GetPos(), &x, &y, true))
		{
			x = 0.0f;
			y = 0.0f;
		}
		HoverX.SetPosition(x);
		HoverY.SetPosition(y);
		break;
	}
	}

done:
	if (State != state)
	{
		StateTime = 0.0f;
	}
	State = state;
}

void HelpDude::UpdateHoverZones(float dt, bool32_t active)
{
	if (OtherGuy && OtherGuy->PointBlend == 0.0f)
	{
		HoverZones[1].Strength = active ? -0.5f : -5.0f;
		HoverZones[1].OuterRadius = OtherGuy->GetHoverScale() * OtherGuy->Scale / OtherGuy->Depth * 2.0f;
		HoverZones[1].InnerRadius = HoverZones[1].OuterRadius * 0.1f;
		HoverZones[1].X = OtherGuy->HoverX.GetCurrentValue();
		HoverZones[1].Y = OtherGuy->HoverY.GetCurrentValue();
	}
	else
	{
		HoverZones[1].Strength = 0.0f;
	}

	if (State & HELPDUDESTATE_POINT)
	{
		HoverZones[2].Strength = 4.0f;
		HoverZones[2].InnerRadius = 0.2f;
		HoverZones[2].OuterRadius = 0.6f;
		HoverZones[2].X = PointX;
		HoverZones[2].Y = PointY;
		HoverZones[3].Strength = -1.0f;
		HoverZones[3].InnerRadius = 0.08f;
		HoverZones[3].OuterRadius = 0.16f;
		HoverZones[3].X = PointX;
		HoverZones[3].Y = PointY;
	}
	else
	{
		HoverZones[2].Strength = 0.0f;
		HoverZones[3].Strength = 0.0f;
	}

	LHCoord mouse = LHSys::GetMouse().Pos();
	float   halfWidth = (float)(LHSys::GetScreen().width >> 1);
	float   halfHeight = (float)(LHSys::GetScreen().height >> 1);
	float   dx = (mouse.x - LastMousePos.x) / halfWidth;
	float   dy = (mouse.y - LastMousePos.y) / halfWidth;
	HoverZones[4].InnerRadius = 0.16f;
	HoverZones[4].OuterRadius = 0.6f;
	LastMousePos = mouse;
	MouseSpeed = (float)sqrt(dy * dy + dx * dx) / dt;
	float strength = MouseSpeed * -1.5f - 2.0f;
	if (strength >= HoverZones[4].Strength)
	{
		strength = (strength - HoverZones[4].Strength) * 0.3f + HoverZones[4].Strength;
	}
	HoverZones[4].Strength = strength;
	HoverZones[4].X = (mouse.x - halfWidth) / halfWidth;
	HoverZones[4].Y = (mouse.y - halfHeight) / halfWidth;
	if (GGame::g_game->help_system->WideScreen)
	{
		HoverZones[4].Strength = 0.0f;
	}

	HoverZones[5].Y = 0.0f;
	HoverZones[5].X = 0.0f;
	HoverZones[5].InnerRadius = 0.0f;
	HoverZones[5].Strength = -4.0f;
	HoverZones[5].OuterRadius = 0.6f;
}

void HelpDude::UpdateInterests(float dt, bool32_t active)
{
	for (int i = 0; i < HELPDUDE_INTERESTS; i++)
	{
		Interests[i].Interest += dt * Interests[i].InterestRate;
		if (Interests[i].Interest < 0.0f)
		{
			Interests[i].Interest = 0.0f;
		}
		Interests[i].Urgency += dt * Interests[i].UrgencyRate;
		if (Interests[i].Urgency < 0.0f)
		{
			Interests[i].Urgency = 0.0f;
		}
	}
}

#define HELPDUDE_BLEND_RGB(from, to, alpha)                                                                            \
	((((((to) & 0xff0000) - ((from) & 0xff0000)) * (alpha) >> 8) + ((from) & 0xff0000)) & 0xff0000 |                   \
	 (((((to) & 0xff00) - ((from) & 0xff00)) * (alpha) >> 8) + ((from) & 0xff00)) & 0xff00 |                           \
	 (((((to) & 0xff) - ((from) & 0xff)) * (alpha) >> 8) + ((from) & 0xff)) & 0xff | ((to) & 0xff000000))

void HelpDude::Update1(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish)
{
	WobbleTime += dt;
	StateTime += dt;

	float pointTarget = 0.0f;
	if (State & HELPDUDESTATE_POINT)
	{
		pointTarget = FlyToPoint;
	}
	if (PointBlend < pointTarget)
	{
		PointBlend += dt;
		if (PointBlend > pointTarget)
		{
			PointBlend = pointTarget;
		}
	}
	else if (PointBlend > pointTarget)
	{
		PointBlend -= dt;
		if (PointBlend < pointTarget)
		{
			PointBlend = pointTarget;
		}
	}

	UpdateSaySentence();
	if (IsTalkingWithDelay())
	{
		ZoomTarget = 1.0f;
		ZoomSpeed = 2.0f;
	}
	else
	{
		ZoomTarget = 0.0f;
		ZoomSpeed = 1.5f;
	}
	if (LipSyncFlags & HELPDUDE_ANIM_STAY_BACK)
	{
		ZoomTarget = 0.0f;
		ZoomSpeed = 2.5f;
	}
	if (FlyingToGimme)
	{
		ZoomTarget = 1.0f;
		ZoomSpeed = 0.5f;
	}
	if (ZoomBlend < ZoomTarget)
	{
		ZoomBlend += dt * ZoomSpeed;
		if (ZoomBlend > ZoomTarget)
		{
			ZoomBlend = ZoomTarget;
		}
	}
	if (ZoomBlend > ZoomTarget)
	{
		ZoomBlend -= dt * ZoomSpeed;
		if (ZoomBlend < ZoomTarget)
		{
			ZoomBlend = ZoomTarget;
		}
	}

	UpdateHoverPos(State == HELPDUDESTATE_HOVER ? 1.0f : 1.0f / 3.0f);
	if (active)
	{
		UpdateHoverZ(min_z);
	}
	HoverX.Update(dt);
	HoverY.Update(dt);
	HoverZ.Update(dt);
	PointAt.Update(dt);
	UpdateHoverZones(dt, active);
	UpdateInterests(dt, active);

	EmotionTime += dt;
	if (Emotion != TargetEmotion)
	{
		EmotionStrength -= dt * 3.0f;
		if (EmotionStrength < 0.0f)
		{
			EmotionStrength = -EmotionStrength;
			if (EmotionStrength > TargetEmotionStrength)
			{
				EmotionStrength = TargetEmotionStrength;
			}
			Emotion = TargetEmotion;
		}
	}
	else
	{
		EmotionStrength += dt * 3.0f;
		if (EmotionStrength > TargetEmotionStrength)
		{
			EmotionStrength = TargetEmotionStrength;
		}
	}
	if (EmotionStrength <= 0.0f)
	{
		EmotionStrength = 0.0f;
		Emotion = 0;
	}
	if (TargetEmotion && EmotionTime > 1.5f)
	{
		TargetEmotionStrength -= dt * 0.3f;
		if (TargetEmotionStrength < 0.0f)
		{
			TargetEmotionStrength = 0.0f;
		}
	}

	Transform = LH3DTech::g_world_to_camera;
	Transform.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
	Transform.SetInverse();
	float cling = 0.0f;
	float scale = GetHoverScale();
	Transform.PreScale(scale, scale, scale);
	if (State == HELPDUDESTATE_CLING)
	{
		cling = 1.0f;
	}
	else if (State == HELPDUDESTATE_CLING_INTRO)
	{
		cling = StateTime;
	}
	else if (State == HELPDUDESTATE_CLING_OUTRO)
	{
		cling = 1.0f - StateTime;
	}
	cling = Smoothify(cling);
	float notCling = 1.0f - cling;
	Transform.RotateX(notCling * (HoverZ.CurrentSpeed * 0.3f + Tilt));
	Transform.RotateY(notCling * (HoverX.GetCurrentValue() * -0.8f));

	float clingAngle = cling * ((float)(((ClingEdge - 2) & 3) - 2) * HALF_PI_F);
	if (ClingRoll < 0.0f)
	{
		ClingRoll += TWO_PI;
	}
	if (ClingRoll > TWO_PI)
	{
		ClingRoll -= TWO_PI;
	}
	if (State != HELPDUDESTATE_CLING && State != HELPDUDESTATE_CLING_INTRO)
	{
		clingAngle = 0.0f;
	}
	float turn = clingAngle - ClingRoll;
	if (turn > PI_F)
	{
		turn -= TWO_PI;
	}
	if (turn < -PI_F)
	{
		turn += TWO_PI;
	}
	clingAngle = turn + ClingRoll;
	if (clingAngle < ClingRoll)
	{
		ClingRoll -= dt * 3.0f;
		if (clingAngle > ClingRoll)
		{
			ClingRoll = clingAngle;
		}
	}
	if (clingAngle > ClingRoll)
	{
		ClingRoll += dt * 3.0f;
		if (clingAngle < ClingRoll)
		{
			ClingRoll = clingAngle;
		}
	}
	Transform.RotateZ(ClingRoll);
	(LHPoint&)Transform.GetPos() =
		ConvertHoverTo3D(HoverX.GetCurrentValue(), HoverY.GetCurrentValue(), -HoverZ.GetCurrentValue(), false);

	float blend = PointBlend;
	if (blend != 0.0f)
	{
		blend = Smoothify(blend);
		static float s_PointWobble = 0.0f;
		s_PointWobble += dt * 0.3f;
		LHMatrix camera = LH3DTech::g_world_to_camera;
		camera._41 = 0.0f;
		camera._42 = 0.0f;
		camera._43 = 0.0f;
		camera.SetInverse();
		LHPoint target;
		target = PointAt.GetCurrentValue();
		target.Add(LHPoint(0.0f, PointHeightOffset + (float)sin(s_PointWobble * 2.3f), 0.0f));
		target -= camera.GetVectorX() * PointSideOffset;
		float ground = LH3DIsland::GetAltitude(target) + 3.0f;
		if (target.y < ground)
		{
			target.y = ground;
		}
		*(LHPoint*)&camera._41 = target;
		Transform.SetBlend(Transform, camera, blend);
		Transform.NormaliseMatrixOnly();
		float pointScale = (blend * 3.0f + 1.0f) * GetHoverScale();
		Transform.PreScale(pointScale, pointScale, pointScale);
		unsigned long colour;
		unsigned long specular;
		LH3DIsland::GetColorAndSpecular(&Transform.GetPos(), &colour, &specular);
		unsigned long alpha = (int)(blend * 255.0f);
		Object->SetColorSpecular(HELPDUDE_BLEND_RGB(0xffffffff, colour, alpha), HELPDUDE_BLEND_RGB(0, specular, alpha));
	}
	else
	{
		Object->SetColorSpecular(0xffffffff, 0);
	}

	ApplyStandFrame(0);
	if (State != HELPDUDESTATE_CLING)
	{
		ApplyWingsHover(State != HELPDUDESTATE_HOVER || (LipSyncFlags & HELPDUDE_ANIM_FLAP),
		                dt * CurrentEmotion.WingSpeed, play_sound);
	}
	if (!(LipSyncFlags & HELPDUDE_ANIM_NO_EMOTION))
	{
		ApplyEmotion(dt);
	}
	ApplyLipSync(dt, play_sound);

	HELPDUDESTATE newState = State;
	float         notAtCamera = 1.0f - CameraPointBlend;
	float         pointWeight = 1.0f;
	switch (State)
	{
	case HELPDUDESTATE_HOVER:
		break;
	case HELPDUDESTATE_POINT_INTRO_LEFT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = StateTime * 4.0f * notAtCamera;
			ApplyAnim(ANIM_POINTLINTRO, pointWeight, 0.0f, false);
		}
		if (StateTime > 0.25f)
		{
			newState = HELPDUDESTATE_POINT_LEFT;
		}
		break;
	case HELPDUDESTATE_POINT_INTRO_RIGHT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = StateTime * 4.0f * notAtCamera;
			ApplyAnim(ANIM_POINTRINTRO, pointWeight, 0.0f, false);
		}
		if (StateTime > 0.25f)
		{
			newState = HELPDUDESTATE_POINT_RIGHT;
		}
		break;
	case HELPDUDESTATE_POINT_OUTRO_LEFT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = (1.0f - StateTime * 4.0f) * notAtCamera;
			ApplyAnim(ANIM_POINTLINTRO, pointWeight, 0.0f, false);
		}
		if (StateTime > 0.25f)
		{
			newState = HELPDUDESTATE_NONE;
		}
		break;
	case HELPDUDESTATE_POINT_OUTRO_RIGHT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = (1.0f - StateTime * 4.0f) * notAtCamera;
			ApplyAnim(ANIM_POINTRINTRO, pointWeight, 0.0f, false);
		}
		if (StateTime > 0.25f)
		{
			newState = HELPDUDESTATE_NONE;
		}
		break;
	case HELPDUDESTATE_POINT_LEFT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = notAtCamera;
			ApplyAnim(ANIM_POINTLINTRO, pointWeight, 0.0f, false);
		}
		break;
	case HELPDUDESTATE_POINT_RIGHT:
		if (!(LipSyncFlags & HELPDUDE_ANIM_HOLD_STATE))
		{
			pointWeight = notAtCamera;
			ApplyAnim(ANIM_POINTRINTRO, pointWeight, 0.0f, false);
		}
		break;
	case HELPDUDESTATE_AVOID: {
		int anim = AvoidDirection + ANIM_AVOIDL;
		ApplyAnim(anim, StateTime * 1.5f, 0.0f, false);
		if (play_sound)
		{
			PlaySoundFX(anim, StateTime * 1.5f, GetSoundFXBank());
		}
		if (StateTime > 0.6666667f)
		{
			newState = HELPDUDESTATE_NONE;
			LastSoundTime[anim] = -1.0f;
		}
		break;
	}
	case HELPDUDESTATE_PLAY_ANIM:
		if (HoverX.CurrentTime == HoverX.duration && HoverY.CurrentTime == HoverY.duration)
		{
			newState = AnimState;
		}
		break;
	case HELPDUDESTATE_CLING_INTRO:
		UpdateClingEdge();
		if (StateTime >= 1.0f)
		{
			newState = HELPDUDESTATE_CLING;
		}
		Sethoverx(ClingX, 1.0f, false);
		Sethovery(ClingY, 1.0f, false);
		break;
	case HELPDUDESTATE_CLING_OUTRO:
		if (StateTime >= 1.0f)
		{
			newState = HELPDUDESTATE_NONE;
		}
		Sethoverx(ClingX, 1.0f, false);
		Sethovery(ClingY, 1.0f, false);
		break;
	case HELPDUDESTATE_CLING:
		UpdateClingEdge();
		Sethoverx(ClingX, 1.0f, false);
		Sethovery(ClingY, 1.0f, false);
		break;
	case HELPDUDESTATE_ANIM:
		if (!(LipSyncAnimFlags[AnimToPlay] & HELPDUDE_ANIM_NOT_CLINGING) || !(State & HELPDUDESTATE_CLING))
		{
			int anim = AnimToPlay;
			if (Anims[anim])
			{
				float time = AnimSpeed * StateTime * 1000.0f / Anims[anim]->Duration;
				ApplyAnim(anim, time, 0.0f, false);
				if (play_sound)
				{
					PlaySoundFX(anim, time, GetSoundFXBank());
				}
				if (time > 1.0f)
				{
					newState = HELPDUDESTATE_NONE;
					LastSoundTime[anim] = -1.0f;
				}
			}
		}
		break;
	}

	if (State & HELPDUDESTATE_CLING)
	{
		ANIMLIST clingAnim;
		switch (ClingEdge)
		{
		case 0:
			clingAnim = ANIM_CLINGD;
			break;
		case 1:
			clingAnim = ANIM_CLINGL;
			break;
		case 2:
			clingAnim = ANIM_CLINGU;
			break;
		case 3:
			clingAnim = ANIM_CLINGR;
			break;
		}
		CAnim* anim = Anims[clingAnim];
		if (anim)
		{
			float t = 1.0f;
			if (State == HELPDUDESTATE_CLING_INTRO)
			{
				t = StateTime;
			}
			if (State == HELPDUDESTATE_CLING_OUTRO)
			{
				t = 1.0f - StateTime;
			}
			LHPoint start = anim->frames[0]->Positions[0];
			LHPoint end = anim->frames[(int)(anim->FrameCount * SoundInfos[clingAnim].LoopEnd)]->Positions[0];
			LHPoint move = (end - start) * t;
			Transform.TransformVector(move);
			(LHPoint&)Transform.GetPos() -= move;

			float time = ClingAnimTime * 1000.0f / Anims[clingAnim]->Duration;
			if (State == HELPDUDESTATE_CLING)
			{
				if (time > SoundInfos[clingAnim].LoopEnd)
				{
					time = SoundInfos[clingAnim].LoopEnd;
					ClingAnimTime = time * Anims[clingAnim]->Duration / 1000.0f;
				}
				else
				{
					ClingAnimTime += dt;
				}
			}
			if (State == HELPDUDESTATE_CLING_OUTRO)
			{
				time = (1.0f - SoundInfos[clingAnim].LoopEnd) * StateTime + SoundInfos[clingAnim].LoopEnd;
			}
			CLAMP(time, 0.0f, 1.0f);
			ApplyAnim(clingAnim, time, 0.0f, false);
			if (play_sound)
			{
				PlaySoundFX(clingAnim, time, GetSoundFXBank());
			}
		}
	}

	float lean = HoverX.CurrentSpeed / GetHoverScale() / 40.0f;
	lean *= 1.0f - WingsBlend * 0.8f;
	if (fabs(lean) > 0.01f)
	{
		int anim = ANIM_HOVERR;
		if (lean < 0.0f)
		{
			anim = ANIM_HOVERL;
			lean = -lean;
		}
		if (lean != 0.0f && PointBlend == 0.0f)
		{
			ApplyAnim(anim, lean, 0.0f, false);
		}
	}

	if (State & HELPDUDESTATE_POINT)
	{
		LHMatrix hand = *BoneMatrices;
		hand.PostMultiply(Transform);
		float   side = FingerSide * Scale;
		float   forward = FingerForward * Scale;
		LHPoint target = ConvertHoverTo3D(PointX, PointY, 0.0f, false);
		if (FlyToPoint != 0.0f)
		{
			target = PointAt.GetCurrentValue();
		}
		hand._41 += hand._11 * side;
		hand._42 += hand._12 * side;
		hand._43 += hand._13 * side;
		hand._41 += hand._31 * forward;
		hand._42 += hand._32 * forward;
		hand._43 += hand._33 * forward;
		LHPoint finger = hand.GetPos();
		float   x;
		float   y;
		if (!Convert3DToHover(finger, &x, &y, true))
		{
			x = HoverX.GetCurrentValue();
			y = HoverY.GetCurrentValue();
		}
		x -= PointX;
		y -= PointY;
		int anim = ANIM_POINTR;
		if (State & 1)
		{
			x = -x;
			anim = ANIM_POINTL;
		}
		float blend = pointWeight * (float)(atan2(y, x) / (100.0f * PI_F / 180.0f)) + 0.5f;
		if (PointBlend != 0.0f)
		{
			blend = 0.2f;
			anim = ANIM_POINTL;
		}
		bool clamped = false;
		if (blend < 0.0f)
		{
			blend = 0.0f;
			clamped = true;
		}
		else if (blend > 1.0f)
		{
			clamped = true;
			blend = 1.0f;
		}
		if (clamped)
		{
			Sethovery(PointY, 1.0f, true);
		}
		float dx = HoverX.GetCurrentValue() - PointX;
		if (fabs(dx) < 0.16f || fabs(dx) > 0.3f)
		{
			Sethoverx(dx < 0.0f ? PointX - 0.2f : PointX + 0.2f, 1.0f, true);
		}
		if (PointOffScreen)
		{
			Sethoverx(PointX, 1.0f, true);
			Sethovery(PointY, 1.0f, true);
			ApplyAnim(anim, (1.0f - CameraPointBlend) * blend + CameraPointBlend * 0.5f, 0.5f, false);
			ApplyAnim(ANIM_POINTATCAMERA, CameraPointBlend * 0.5f, 0.0f, false);
			CameraPointBlend += dt * 0.5f;
			if (CameraPointBlend > 1.0f)
			{
				CameraPointBlend = 1.0f;
			}
		}
		else
		{
			ApplyAnim(anim, blend, 0.5f, false);
			CameraPointBlend -= dt * 0.5f;
			if (CameraPointBlend < 0.0f)
			{
				CameraPointBlend = 0.0f;
			}
		}
	}

	SetState(newState, true);
}

void HelpDude::Update(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish)
{
	Update1(dt, active, min_z, play_sound, finish);
	Update2(dt, active, min_z, play_sound, finish);
}

void HelpDude::Update2(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish)
{
	if (LookAtValid && !(LipSyncFlags & HELPDUDE_ANIM_NO_LOOK))
	{
		CalcHeadPos(Transform, LookAtPos, Bones.Head);
	}
	else
	{
		HeadLookTarget = LHPoint(0.0f, 0.0f, 0.0f);
	}

	float turnSpeed = 4.5f;
	if (!IsEvil)
	{
		turnSpeed *= 0.3f;
	}
	LHPoint turn = HeadLookTarget - HeadLook;
	turn *= 0.95f;
	float maxTurn = dt * turnSpeed;
	if (turn.x > maxTurn)
	{
		turn.x = maxTurn;
	}
	else if (turn.x < -maxTurn)
	{
		turn.x = -maxTurn;
	}
	if (turn.y > maxTurn)
	{
		turn.y = maxTurn;
	}
	else if (turn.y < -maxTurn)
	{
		turn.y = -maxTurn;
	}
	if (turn.z > maxTurn)
	{
		turn.z = maxTurn;
	}
	else if (turn.z < -maxTurn)
	{
		turn.z = -maxTurn;
	}
	HeadLook.x += turn.x;
	HeadLook.y += turn.y;
	HeadLook.z += turn.z;

	if (PointBlend == 0.0f)
	{
		ApplyHeadMovement((State & HELPDUDESTATE_POINT) != 0);
	}
	if (finish)
	{
		FinishUpdate();
	}
}

void HelpDude::FinishUpdate()
{
	FinishAnimStack(Transform);
}

void HelpDude::ApplyVoiceKey(VoiceKey* key)
{
	for (int i = 0; i < 3; i++)
	{
		if (key->Weight[i] > 0.0f)
		{
			CAnim* anim = Anims[ANIM_VOWELE + i];
			if (anim)
			{
				int duration = anim->Duration;
				int frame = (int)(duration * key->Weight[i]);
				if (frame < 0)
				{
					frame = 0;
				}
				if (frame >= duration)
				{
					frame = duration - 1;
				}
				anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[0], Mesh, BaseMatrices,
				                                        InverseBaseMatrices, frame, NULL, NULL);
			}
		}
	}
}

void HelpDude::ApplyLookAnims(LHPoint* look)
{
	if (look->y != 0.0f)
	{
		CAnim* anim = Anims[ANIM_LOOKLR];
		if (anim)
		{
			int duration = anim->Duration;
			int frame = (int)((look->y + 1.0f) * duration * 0.5f);
			if (frame < 0)
			{
				frame = 0;
			}
			if (frame >= duration)
			{
				frame = duration - 1;
			}
			anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[anim->FrameCount / 2], Mesh,
			                                        BaseMatrices, InverseBaseMatrices, frame, NULL, NULL);
		}
	}
	if (look->z != 0.0f)
	{
		CAnim* anim = Anims[ANIM_LOOKUD];
		if (anim)
		{
			int duration = anim->Duration;
			int frame = (int)((look->z + 1.0f) * duration * 0.5f);
			if (frame < 0)
			{
				frame = 0;
			}
			if (frame >= duration)
			{
				frame = duration - 1;
			}
			anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[anim->FrameCount / 2], Mesh,
			                                        BaseMatrices, InverseBaseMatrices, frame, NULL, NULL);
		}
	}
}

void HelpDude::ApplyPupilMovement(EyePositions& eyes)
{
	LH3DMesh*     mesh = Object->GetMesh();
	LH3DSubMesh** submeshes = mesh->submeshes;
	int           submeshCount = mesh->SubmeshCount;
	for (int i = 0; i < submeshCount; i++)
	{
		LH3DPrimitive** primitives = submeshes[i]->primitives_;
		int             primitiveCount = submeshes[i]->NumPrimitives;
		for (int j = 0; j < primitiveCount; j++)
		{
			int              groupCount = primitives[j]->NumVertexGroups;
			LH3DVertexGroup* group = primitives[j]->VertexGroups;
			LH3DVertex*      vertex = primitives[j]->Vertices;
			int              first = 0;
			for (int k = 0; k < groupCount; k++, group++)
			{
				int eye;
				if (group->BoneIndex == Bones.Eyes[0][0])
				{
					eye = 0;
				}
				else if (group->BoneIndex == Bones.Eyes[1][0])
				{
					eye = 1;
				}
				else
				{
					eye = -1;
				}
				if (eye >= 0)
				{
					float u = eyes.PupilStretch[eye] + eyes.PupilSize[eye];
					float v = eyes.PupilSize[eye] - eyes.PupilStretch[eye];
					CLAMP(u, 0.0f, 2.0f);
					CLAMP(v, 0.0f, 2.0f);
					u *= PupilScale;
					v *= PupilScale;
					for (int l = 0; l < group->vertex_count; l++)
					{
						if (IsEvil)
						{
							vertex->uv.x = u * (vertex->position.x * 10.0f) + PupilU;
							vertex->uv.y = v * (vertex->position.z * 10.0f) + PupilV;
						}
						else
						{
							vertex->uv.x = u * (vertex->position.x * 10.0f) + PupilU;
							vertex->uv.y = v * (vertex->position.y * 10.0f) + PupilV;
						}
						vertex++;
					}
				}
				else
				{
					vertex += group->vertex_count;
				}
				first += group->vertex_count;
			}
		}
	}
}

void HelpDude::PointEyesAt(LHPoint* pos)
{
	for (int i = 0; i < 2; i++)
	{
		LHMatrix* eye = &BoneMatrices[Bones.Eyes[i][0]];
		LHMatrix  inverse;
		inverse.SetInverse(*eye);
		LHPoint local = inverse * *pos;
		if (-local.y < 0.0f)
		{
			return;
		}
		float yaw = (float)atan2(local.x, -local.y);
		if (yaw > PI_F / 6.0f)
		{
			yaw = PI_F / 6.0f;
		}
		else if (yaw < -PI_F / 6.0f)
		{
			yaw = -PI_F / 6.0f;
		}
		eye->RotateZ(-yaw);
		inverse.SetInverse(*eye);
		local = inverse * *pos;
		float pitch = (float)atan2(local.z, -local.y);
		float limit = (float)(1.0f - fabs(yaw) / QUARTER_PI_F) * (PI_F / 5.0f);
		if (pitch > limit)
		{
			pitch = limit;
		}
		if (pitch < -limit)
		{
			pitch = -limit;
		}
		eye->RotateX(pitch);
	}
}

#define HELPDUDE_MAX_HEAD_TURN (PI_F / 3.0f)

void HelpDude::CalcHeadPos(LHMatrix& transform, LHPoint& look_at, int bone)
{
	HeadLookTarget = LHPoint(0.0f, 0.0f, 0.0f);
	LHMatrix rightEye = LH3DAnim::FinishTransformForBone(BoneMatrices, Mesh, transform, Bones.Eyes[1][0]);
	LHMatrix leftEye = LH3DAnim::FinishTransformForBone(BoneMatrices, Mesh, transform, Bones.Eyes[0][0]);
	LHMatrix head = LH3DAnim::FinishTransformForBone(BoneMatrices, Mesh, transform, bone);
	LHMatrix eyes = head;
	eyes._41 = (rightEye._41 + leftEye._41) * 0.5f;
	eyes._42 = (rightEye._42 + leftEye._42) * 0.5f;
	eyes._43 = (rightEye._43 + leftEye._43) * 0.5f;
	LHMatrix inverse;
	inverse.SetInverse(eyes);
	LHPoint local = inverse * look_at;
	if (local.y < 0.0f)
	{
		return;
	}
	local.FastNormalizeInline();
	float yaw = (float)atan2(local.z, local.y);
	float pitch = (float)asin(local.x);
	if (yaw > HELPDUDE_MAX_HEAD_TURN)
	{
		yaw = HELPDUDE_MAX_HEAD_TURN;
	}
	else if (yaw < -HELPDUDE_MAX_HEAD_TURN)
	{
		yaw = -HELPDUDE_MAX_HEAD_TURN;
	}
	if (pitch > HELPDUDE_MAX_HEAD_TURN)
	{
		pitch = HELPDUDE_MAX_HEAD_TURN;
	}
	else if (pitch < -HELPDUDE_MAX_HEAD_TURN)
	{
		pitch = -HELPDUDE_MAX_HEAD_TURN;
	}
	HeadLookTarget.x = yaw * 0.5f / HELPDUDE_MAX_HEAD_TURN;
	HeadLookTarget.y = pitch * 0.5f / HELPDUDE_MAX_HEAD_TURN;
}

// A smooth pseudo-random wobble of about -1 to 1 over time, for idle head movement.
float HeadWobble(float speed, float time)
{
	float t = speed * time;
	return (float)(cos(t * 0.95325 + 53.0) * 0.75 - sin(t * 2.2335 - 53.0) * 0.2 + sin(t * 0.7647 + 1.0) -
	               cos(22.0 - t * 0.13) * 0.53 - sin(t * 6.2335 - 53.0) * 0.1);
}

void HelpDude::ApplyHeadMovement(bool pointing)
{
	float x = HeadWobble(3.0f, WobbleTime * 1.24f + BobTime * 0.95f) * CurrentEmotion.HeadWobbleX + HeadLook.x + 0.5f;
	float y = HeadWobble(3.0f, WobbleTime * 0.935f + BobTime + 245.0f) * CurrentEmotion.HeadWobbleY + HeadLook.y + 0.5f;
	CLAMP(x, 0.0f, 1.0f);
	CLAMP(y, 0.0f, 1.0f);
	int    lookUD = pointing ? ANIM_LOOKUDSTABLE : ANIM_LOOKUD;
	CAnim* anim = Anims[lookUD];
	int    lookLR = pointing ? ANIM_LOOKLRSTABLE : ANIM_LOOKLR;
	if (anim)
	{
		int duration = anim->Duration;
		int frame = (int)(duration * y);
		if (frame < 0)
		{
			frame = 0;
		}
		if (frame >= duration)
		{
			frame = duration - 1;
		}
		anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[anim->FrameCount / 2], Mesh, BaseMatrices,
		                                        InverseBaseMatrices, frame, NULL, NULL);
	}
	anim = Anims[lookLR];
	if (anim)
	{
		int duration = anim->Duration;
		int frame = (int)(duration * x);
		if (frame < 0)
		{
			frame = 0;
		}
		if (frame >= duration)
		{
			frame = duration - 1;
		}
		anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[anim->FrameCount / 2], Mesh, BaseMatrices,
		                                        InverseBaseMatrices, frame, NULL, NULL);
	}
}

void HelpDude::ApplyEyelidMovement(EyePositions& eyes)
{
	if (Bones.Eyes[0][0])
	{
		float scale = eyes.EyeScale[0];
		BoneMatrices[Bones.Eyes[0][0]].PreScale(scale, scale, scale);
	}
	if (Bones.Eyes[0][1])
	{
		float scale = eyes.EyeScale[0];
		BoneMatrices[Bones.Eyes[0][1]].PreScale(scale, scale, scale);
	}
	if (Bones.Eyes[0][2])
	{
		float scale = eyes.EyeScale[0];
		BoneMatrices[Bones.Eyes[0][2]].PreScale(scale, scale, scale);
	}
	if (Bones.Eyes[1][0])
	{
		float scale = eyes.EyeScale[1];
		BoneMatrices[Bones.Eyes[1][0]].PreScale(scale, scale, scale);
	}
	if (Bones.Eyes[1][1])
	{
		float scale = eyes.EyeScale[1];
		BoneMatrices[Bones.Eyes[1][1]].PreScale(scale, scale, scale);
	}
	if (Bones.Eyes[1][2])
	{
		float scale = eyes.EyeScale[1];
		BoneMatrices[Bones.Eyes[1][2]].PreScale(scale, scale, scale);
	}
	CAnim* anim = Anims[ANIM_LEYE];
	if (anim)
	{
		int duration = anim->Duration;
		int frame = (int)(duration * eyes.Lid[0]);
		if (frame < 0)
		{
			frame = 0;
		}
		if (frame >= duration)
		{
			frame = duration - 1;
		}
		anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[0], Mesh, BaseMatrices, InverseBaseMatrices,
		                                        frame, NULL, NULL);
	}
	anim = Anims[ANIM_REYE];
	if (anim)
	{
		int duration = anim->Duration;
		int frame = (int)(duration * eyes.Lid[1]);
		if (frame < 0)
		{
			frame = 0;
		}
		if (frame >= duration)
		{
			frame = duration - 1;
		}
		anim->ModifyBufferByDifferenceFromFrame(BoneMatrices, anim->frames[0], Mesh, BaseMatrices, InverseBaseMatrices,
		                                        frame, NULL, NULL);
	}
}

void HelpDude::FinishAnimStack(LHMatrix& transform)
{
	LH3DAnim::FinishTransform(BoneMatrices, Mesh, transform);
	Object->SetPosition(LHPoint(BoneMatrices->_41, BoneMatrices->_42, BoneMatrices->_43), 0.0f, 1.0f);
	Object->SetMesh(Mesh, NULL, NULL);
	Object->Matrix0x80 = BoneMatrices;
}

void HelpDude::DrawHoverZones()
{
	for (int i = 0; i < HELPDUDE_HOVER_ZONES; i++)
	{
		HoverZones[i].Draw();
	}
}

void HelpDude::SetHoverArea(float x, float y, float inner_radius, float outer_radius, float strength, int index)
{
	HoverZones[index].Strength = strength;
	HoverZones[index].OuterRadius = outer_radius;
	HoverZones[index].InnerRadius = inner_radius;
	HoverZones[index].X = x;
	HoverZones[index].Y = y;
}

// The evil dude's smoke is a dark red.
#define HELPDUDE_EVIL_SMOKE_TINT 0x7f1f1f

void HelpDude::Draw(bool deferred)
{
	LHPoint sun = LH3DTech::GetSun();
	LHPoint point;
	LH3DTech::Get3DPointFromScreen(LHCoord(0, LHSys::GetScreen().height >> 1), point, -10.0f);
	if (PointBlend < 0.5f)
	{
		point.Add((LH3DTech::GetSun() - point) * PointBlend * 2.0f);
		if (!deferred)
		{
			LH3DTech::SetSun(point);
		}
	}

	int alpha = (int)(Visibility * 255.0f);
	if (Invisible)
	{
		static int s_Flicker = 0;
		static int s_NextFlicker = 0;
		int        now = GetTickCount();
		if (now > s_NextFlicker)
		{
			s_NextFlicker = now + GRand::LocalRand(50) + 10;
			s_Flicker = GRand::LocalRand(255);
			if (s_Flicker < 64)
			{
				s_Flicker = 0;
			}
			else
			{
				s_Flicker = 256;
			}
		}
		alpha = alpha * s_Flicker / 256;
		Invisible = false;
	}
	*(uint32_t*)&Object->color &= 0xffffff;
	*(uint32_t*)&Object->color |= alpha << 24;

	float dt = GetAlexTimeInc() * 0.001f;
	if (TargetVisibility > Visibility)
	{
		Visibility += dt * 3.0f;
		if (Visibility > TargetVisibility)
		{
			Visibility = TargetVisibility;
		}
	}
	else if (TargetVisibility < Visibility)
	{
		Visibility -= dt * 2.0f;
		if (Visibility < TargetVisibility)
		{
			Visibility = TargetVisibility;
		}
	}
	GGame::g_game->help_system->GetSpirit(IsEvil ? HELP_SPIRIT_TYPE_EVIL : HELP_SPIRIT_TYPE_GOOD);
	if (alpha)
	{
		Object->SetDrawWithGlobalAlpha(alpha < 255);
		if (deferred)
		{
			DrawObject->AddDrawing();
		}
		else
		{
			DrawObject->Draw();
		}
	}

	if (GlowSize != 0.0f && alpha)
	{
		uint32_t colour = (alpha << 24) + 0xffffff;
		if (!GlowSprite)
		{
			GlowSprite = LH3DSprite::Create(1, 1);
			GlowSprite->colour = 0xf0ffffff;
		}
		GlowSprite->pos = Object->matrix * GlowOffset;
		GlowSprite->colour = colour;
		static int s_GlowTime = 0;
		s_GlowTime += GetAlexTimeInc();
		GlowSprite->Frame = (s_GlowTime / 200) & 15;
		GlowSprite->Aspect = 0.3f;
		GlowSprite->Size = GlowSize * GetHoverScale() * 100.0f;
		GlowSprite->Draw();
	}

	if (Smoking)
	{
		float smokeDt = GetAlexTimeInc() * 0.001f * 3.2f;
		SmokeTime += smokeDt;
		if (!SmokeSprites)
		{
			SmokeSprites = LH3DSprite::Create(HELPDUDE_SMOKE_PUFFS, 1);
			SmokePuffs = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(2992)) Smoke3[HELPDUDE_SMOKE_PUFFS];
		}
		bool32_t visible = false;
		uint32_t tint = 0xffffff;
		if (IsEvil)
		{
			tint = HELPDUDE_EVIL_SMOKE_TINT;
		}
		float fade = SmokeTime * 4.0f > 0.0f ? (min(SmokeTime * 4.0f, 1.0f)) : 0.0f;
		for (int i = 0; i < HELPDUDE_SMOKE_PUFFS; i++)
		{
			int puffAlpha = (int)(255.0f - SmokePuffs[i].Age * 32.0f);
			SmokePuffs[i].Age += smokeDt;
			float faded = puffAlpha * fade;
			if (faded > 0.0f)
			{
				faded = min(faded, 255.0f);
			}
			else
			{
				faded = 0.0f;
			}
			puffAlpha = (int)faded;
			if (puffAlpha > 0)
			{
				SmokeSprites[i].colour = (puffAlpha * 2 / 4 << 24) + (SmokePuffs[i].Colour & tint);
				visible = true;
				SmokeSprites[i].SetSize(
					(SmokePuffs[i].Size - SmokePuffs[i].Shrink * SmokePuffs[i].Age * fade * 0.5f + 1.0f) * 0.12f);
				SmokeSprites[i].angle = SmokePuffs[i].Spin * SmokePuffs[i].Age + i;
				SmokeSprites[i].Frame = (int)(SmokePuffs[i].Age * 8.0f) & 15;
				float x;
				float y;
				Convert3DToHover((LHPoint&)Object->matrix.GetPos(), &x, &y, true);
				SmokeSprites[i].pos = ConvertHoverTo3D(SmokePuffs[i].Pos.x * 0.1f + x, SmokePuffs[i].Pos.y * 0.1f + y,
				                                       -HoverZ.GetCurrentValue() - 0.6f, false);
				SmokePuffs[i].Pos.y -= (SmokePuffs[i].Spin + 1.0f) * smokeDt * 3.0f * 0.1f;
				SmokeSprites[i].Draw();
			}
		}
		Smoking = visible != false;
	}

	if (!deferred)
	{
		LH3DTech::SetSun(sun);
	}
}

#define HELPDUDE_SEGMENT_NAME "helpdude"

void HelpDude::SaveMesh(LHFile* file, LH3DMesh* mesh, unsigned int size)
{
	LHFileLength(MeshFile, &size);
	unsigned int length = size;
	file->WriteSegmentData(&length, sizeof(length));
	void* data = LH3DMem::Alloc(size);
	LHLoadData(MeshFile, data, size, NULL);
	file->WriteSegmentData(data, size);
	LH3DMem::Free(data);
}

void HelpDude::LoadMesh(LHFile* file)
{
	if (Mesh)
	{
		Mesh->Release();
	}
	unsigned int size;
	if (file)
	{
		long fileSize;
		file->GetSegmentData(&fileSize, sizeof(fileSize), -1);
		size = fileSize;
	}
	else
	{
		LHFileLength(MeshFile, &size);
	}
	void* data = LH3DMem::Alloc(size);
	if (file)
	{
		file->GetSegmentData(data, size, -1);
	}
	else
	{
		LHLoadData(MeshFile, data, size, NULL);
	}
	MeshSize = size;
	Mesh = LH3DMesh::Create(data, false);
	LH3DMem::Free(data);
	if (Object)
	{
		Object->Release();
	}
	Object = (LH3DComplexObject*)LH3DObject::Create(LH3DObject::COMPLEX);
	Object->SetMesh(Mesh, NULL, NULL);
	Object->SetDynamicLighting(1);
	Object->SetColorSpecular(0xffffffff, 0);
	DrawObject = Object;
	BoneCount = Mesh->flags & 0xff;
}

void HelpDude::SaveAnim(int anim, LHFile* file)
{
	if (AnimFiles[anim][0])
	{
		int size = 0;
		if (Anims[anim])
		{
			size = Anims[anim]->GetWriteSize() + 4;
		}
		long fileSize = size;
		file->WriteSegmentData(&fileSize, sizeof(fileSize));
		if (size)
		{
			Anims[anim]->WriteBinary(file);
		}
	}
}

void HelpDude::LoadAnim(int anim, LHFile* file)
{
	delete Anims[anim];
	Anims[anim] = NULL;
	if (!AnimFiles[anim][0])
	{
		return;
	}

	if (file)
	{
		int size;
		file->GetSegmentData(&size, sizeof(size), -1);
		if (!size)
		{
			return;
		}
		Anims[anim] = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3117)) CAnim();
		Anims[anim]->ReadBinary(file);
		if (anim == ANIM_STAND)
		{
			if (BaseMatrices)
			{
				LH3DMem::Free(BaseMatrices);
			}
			if (InverseBaseMatrices)
			{
				LH3DMem::Free(InverseBaseMatrices);
			}
			if (BoneMatrices)
			{
				LH3DMem::Free(BoneMatrices);
			}
			if (BaseBoneMatrices)
			{
				LH3DMem::Free(BaseBoneMatrices);
			}
			BaseMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			InverseBaseMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			BoneMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			BaseBoneMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			LHMatrix identity;
			identity.SetIdentity();
			Scale = LH3DAnim::SetTransform(BaseMatrices, Mesh, identity);
			for (int i = 0; i < BoneCount; i++)
			{
				InverseBaseMatrices[i].SetInverse(BaseMatrices[i]);
			}
			Frame = Anims[ANIM_STAND]->frames[0];
		}
		return;
	}

	LH3DAnim* data = LH3DAnim::Load(AnimFiles[anim]);
	if (!data)
	{
		return;
	}
	if ((uint8_t)data->Flags == BoneCount)
	{
		if (anim == ANIM_STAND)
		{
			if (BaseMatrices)
			{
				LH3DMem::Free(BaseMatrices);
			}
			if (InverseBaseMatrices)
			{
				LH3DMem::Free(InverseBaseMatrices);
			}
			if (BoneMatrices)
			{
				LH3DMem::Free(BoneMatrices);
			}
			if (BaseBoneMatrices)
			{
				LH3DMem::Free(BaseBoneMatrices);
			}
			BaseMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			InverseBaseMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			BoneMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			BaseBoneMatrices = (LHMatrix*)LH3DMem::Alloc(BoneCount * sizeof(LHMatrix));
			LHMatrix identity;
			identity.SetIdentity();
			Scale = LH3DAnim::SetTransform(BaseMatrices, Mesh, identity);
			for (int i = 0; i < BoneCount; i++)
			{
				InverseBaseMatrices[i].SetInverse(BaseMatrices[i]);
			}
		}
		Anims[anim] =
			new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3174)) CAnim(Mesh, BaseMatrices, InverseBaseMatrices, data);
		if (anim == ANIM_STAND)
		{
			Frame = Anims[ANIM_STAND]->frames[0];
			LH3DMem::Free(data);
			return;
		}
		CAnim* based = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3182)) CAnim(Anims[anim], Frame);
		delete Anims[anim];
		Anims[anim] = based;
	}
	LH3DMem::Free(data);
}

void HelpDude::LoadAnims(LHFile* file)
{
	if (Anims)
	{
		delete[] Anims;
	}
	Anims = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3199)) CAnim*[ANIM_LAST];
	memset(Anims, 0, ANIM_LAST * sizeof(CAnim*));
	int count;
	if (file)
	{
		long fileCount;
		file->GetSegmentData(&fileCount, sizeof(fileCount), -1);
		count = fileCount;
	}
	else
	{
		count = ANIM_LAST;
	}
	for (int i = 0; i < count; i++)
	{
		LoadAnim(i, file);
		RenderLoadingFrame(true);
	}
}

void HelpDude::SaveAnims(LHFile* file)
{
	int count = ANIM_LAST;
	file->WriteSegmentData(&count, sizeof(count));
	for (int i = 0; i < ANIM_LAST; i++)
	{
		SaveAnim(i, file);
	}
}

void HelpDude::Uninit(bool reinit)
{
	FreeSentenceBank();
	if (s_SampleData)
	{
		delete[] s_SampleData;
	}
	s_SampleData = NULL;
	if (Mesh)
	{
		Mesh->Release();
	}
	if (Object)
	{
		Object->Release();
	}
	Mesh = NULL;
	Object = NULL;
	if (BaseMatrices)
	{
		LH3DMem::Free(BaseMatrices);
	}
	if (InverseBaseMatrices)
	{
		LH3DMem::Free(InverseBaseMatrices);
	}
	if (BoneMatrices)
	{
		LH3DMem::Free(BoneMatrices);
	}
	if (BaseBoneMatrices)
	{
		LH3DMem::Free(BaseBoneMatrices);
	}
	if (Anims)
	{
		for (int i = 0; i < ANIM_LAST; i++)
		{
			if (Anims[i])
			{
				delete Anims[i];
			}
		}
	}
	delete[] Anims;
	delete[] SentenceTags;
	delete[] SoundInfos;
	Trail.Sprite->Release();
	if (GlowSprite)
	{
		GlowSprite->Release();
	}
	GlowSprite = NULL;
	if (SmokeSprites)
	{
		SmokeSprites->Release();
		SmokeSprites = NULL;
	}
	if (SmokePuffs)
	{
		delete[] SmokePuffs;
		SmokePuffs = NULL;
	}
	if (reinit)
	{
		Init(IsEvil, AudioSystem);
	}
}

// The pupil texture is at (19, 238) in 256ths of the face texture, 19 256ths across.
#define HELPDUDE_PUPIL_U     (19.0f / 256.0f)
#define HELPDUDE_PUPIL_V     (238.0f / 256.0f)
#define HELPDUDE_PUPIL_SCALE (19.0f / 256.0f)

void HelpDude::Init(bool32_t is_evil, LH_AudioSystem* audio_system)
{
	s_TalkingDude = NULL;
	SizeScale = 1.0f;
	Invisible = false;
	FlyingToGimme = false;
	s_SampleData = NULL;
	s_SampleCount = 0;
	PointOffScreen = false;
	CameraPointBlend = 0.0f;
	PointBlend = 0.0f;
	FlyToPoint = 0.0f;
	PointAt.SetPosition(LHPoint(0.0f, 0.0f, 0.0f));
	ClingRoll = 0.0f;
	SayTick = 0;
	LastTalkTick = 0;
	memset(&GlowSprite, 0, sizeof(GlowSprite));
	GlowSize = 0.0f;
	GlowOffset = LHPoint(0.0f, 0.0f, 0.0f);
	Visibility = 1.0f;
	TargetVisibility = 1.0f;
	Smoking = false;
	SmokeTime = 0.0f;
	SmokeSprites = NULL;
	SmokePuffs = NULL;
	memset(LipSyncAnimFlags, 0, sizeof(LipSyncAnimFlags));
	memset(AnimFiles, 0, sizeof(AnimFiles));
	memset(HoverZones, 0, sizeof(HoverZones));
	memset(Interests, 0, sizeof(Interests));
	LastMousePos = LHSys::GetMouse().Pos();
	IsEvil = is_evil;
	memset(LipSyncAnimTime, 0, sizeof(LipSyncAnimTime));
	for (int i = 0; i < ANIM_LAST; i++)
	{
		LastSoundTime[i] = -1.0f;
	}
	memset(LipSyncAnimState, 0, sizeof(LipSyncAnimState));
	LookMode = 0;
	SavedLookMode = 0;
	LipSyncFlags = 0;
	MouseSpeed = 0.0f;
	MouseExcitement = 0.0f;
	LookAlternative = false;
	LookSwitchTime = 0.0f;
	AvoidDirection = 0;
	Trail.Init(LHPoint(0.0f, 0.0f, 0.0f));
	Mesh = NULL;
	Anims = NULL;
	Object = NULL;
	DrawObject = NULL;
	BaseMatrices = NULL;
	InverseBaseMatrices = NULL;
	BoneMatrices = NULL;
	BaseBoneMatrices = NULL;
	Frame = NULL;
	OtherGuy = NULL;
	OtherGuyDistance = 100.0f;
	SoundInfos = NULL;
	Emotion = 0;
	EmotionStrength = 0.0f;
	TargetEmotion = 0;
	TargetEmotionStrength = 0.0f;
	PupilBone = 0;
	memset(&Bones, 0, sizeof(Bones));
	BlinkTimer = 0.0f;
	WingTime = 0.0f;
	BobTime = 0.0f;
	WobbleTime = 0.0f;
	StateTime = 0.0f;
	WingsBlend = 0.0f;
	PupilU = HELPDUDE_PUPIL_U;
	PupilV = HELPDUDE_PUPIL_V;
	PupilScale = HELPDUDE_PUPIL_SCALE;
	HoverX.SetPosition(0.0f);
	HoverY.SetPosition(0.0f);
	FingerSide = 0.12f;
	FingerForward = 0.0f;
	TalkDepth = 10.0f;
	ZoomBlend = 0.0f;
	ZoomTarget = 1.0f;
	ZoomSpeed = 1.0f;
	Depth = 15.0f;
	Size = 5.0f;
	Tilt = 0.0f;
	HoverZ.SetPosition(0.0f);
	LookAtValid = false;
	EyeLookAtValid = false;
	HeadLook = LHPoint(0.0f, 0.0f, 0.0f);
	HeadLookTarget = LHPoint(0.0f, 0.0f, 0.0f);
	AudioSystem = audio_system;
	s_PlayingSample = 0;
	SentenceBank = NULL;
	SentenceTags = NULL;
	CurrentTags = NULL;
	SentenceCount = 0;
	CurrentSentence = 0;
	SaySample = 0;
	TalkTime = 0.0f;
	s_SampleCount = 0;
	State = HELPDUDESTATE_NONE;
	NextState = HELPDUDESTATE_NONE;
	Transform.SetIdentity();
	(LHPoint&)Transform.GetPos() = *LH3DTech::GetCameraTarget();
	SetState(HELPDUDESTATE_HOVER, false);
	memset(&GlowSprite, 0, sizeof(GlowSprite));
}

void HelpDudeTrail::Init(LHPoint pos)
{
	for (int i = 0; i < HELPDUDE_TRAIL_LENGTH; i++)
	{
		Points[i] = pos;
	}
	Timer = 5.0f;
	Head = 0;
	Sprite = LH3DSprite::Create(HELPDUDE_TRAIL_SPARKLES, 1);
	for (int j = 0; j < HELPDUDE_TRAIL_SPARKLES; j++)
	{
		Sparkles[j].Age = j * 16.0f / HELPDUDE_TRAIL_SPARKLES;
		Sparkles[j].Pos.SetNull();
		Sparkles[j].Velocity.SetNull();
	}
}

void HelpDude::TriggerSmoke()
{
	if (SmokePuffs)
	{
		for (int i = 0; i < HELPDUDE_SMOKE_PUFFS; i++)
		{
			SmokePuffs[i].Init();
		}
	}
	Smoking = true;
	SmokeTime = 0.0f;
	if (Visibility > 0.5f)
	{
		TargetVisibility = 0.0f;
	}
	else
	{
		TargetVisibility = 1.0f;
	}
}

HelpDude::HelpDude(char* mesh_file, int anim_count, char** anim_files, bool32_t is_evil)
{
	Init(is_evil, NULL);
	strcpy(MeshFile, mesh_file);
	for (int i = 0; i < anim_count; i++)
	{
		strcpy(AnimFiles[i], anim_files[i]);
	}
	LoadMesh(NULL);
	LoadAnims(NULL);
	SoundInfos = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3434)) HelpDudeSoundInfo[ANIM_LAST];
	memset(SoundInfos, 0, ANIM_LAST * sizeof(HelpDudeSoundInfo));
}

void HelpDude::Load(LHFile* file, LH_AudioSystem* audio_system)
{
	Uninit(true);
	AudioSystem = audio_system;
	RenderLoadingFrame(true);
	file->OpenSegment(HELPDUDE_SEGMENT_NAME);
	RenderLoadingFrame(true);
	file->GetSegmentData(&BoneCount, sizeof(BoneCount), -1);
	int animCount;
	file->GetSegmentData(&animCount, sizeof(animCount), -1);
	file->GetSegmentData(&Scale, sizeof(Scale), -1);
	file->GetSegmentData(MeshFile, sizeof(MeshFile), -1);
	memset(AnimFiles, 0, sizeof(AnimFiles));
	for (int i = 0; i < animCount; i++)
	{
		file->GetSegmentData(AnimFiles[i], sizeof(AnimFiles[i]), -1);
	}
	int withMesh = 0;
	file->GetSegmentData(&withMesh, sizeof(withMesh), -1);
	RenderLoadingFrame(true);
	if (withMesh)
	{
		LoadMesh(file);
		RenderLoadingFrame(true);
		LoadAnims(file);
	}
	RenderLoadingFrame(true);
	file->GetSegmentData(&Bones, sizeof(Bones), -1);
	file->GetSegmentData(&PupilBone, sizeof(PupilBone), -1);
	file->GetSegmentData(&PupilU, sizeof(PupilU), -1);
	file->GetSegmentData(&PupilV, sizeof(PupilV), -1);
	file->GetSegmentData(&PupilScale, sizeof(PupilScale), -1);
	file->GetSegmentData(&Emotion, sizeof(Emotion), -1);
	int emotionSize = 0;
	file->GetSegmentData(&emotionSize, sizeof(emotionSize), -1);
	if (emotionSize != sizeof(Emotions))
	{
		for (int i = 0; i < emotionSize; i++)
		{
			file->GetSegmentData(Emotions, 1, -1);
		}
	}
	else
	{
		file->GetSegmentData(Emotions, sizeof(Emotions), -1);
	}
	file->GetSegmentData(&Depth, sizeof(Depth), -1);
	file->GetSegmentData(&Size, sizeof(Size), -1);
	file->GetSegmentData(&Tilt, sizeof(Tilt), -1);
	SoundInfos = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3502)) HelpDudeSoundInfo[ANIM_LAST];
	memset(SoundInfos, 0, ANIM_LAST * sizeof(HelpDudeSoundInfo));
	int infoCount = 0;
	file->GetSegmentData(&infoCount, sizeof(infoCount), -1);
	for (int j = 0; j < infoCount; j++)
	{
		file->GetSegmentData(&SoundInfos[j].SoundCount, sizeof(SoundInfos[j].SoundCount), -1);
		SoundInfos[j].Sounds = new (HELPDUDE_SOURCE_FILE, HELPDUDE_LINE(3511)) HelpDudeSound[SoundInfos[j].SoundCount];
		for (int k = 0; k < SoundInfos[j].SoundCount; k++)
		{
			file->GetSegmentData(&SoundInfos[j].Sounds[k], sizeof(HelpDudeSound), -1);
		}
		file->GetSegmentData(&SoundInfos[j].LoopStart, sizeof(SoundInfos[j].LoopStart), -1);
		file->GetSegmentData(&SoundInfos[j].LoopEnd, sizeof(SoundInfos[j].LoopEnd), -1);
	}
	file->GetSegmentData(&FingerSide, sizeof(FingerSide), -1);
	file->GetSegmentData(&FingerForward, sizeof(FingerForward), -1);
	file->GetSegmentData(&TalkDepth, sizeof(TalkDepth), -1);
	file->GetSegmentData(LipSyncAnimFlags, sizeof(LipSyncAnimFlags), -1);
	file->GetSegmentData(&GlowSize, sizeof(GlowSize), -1);
	file->GetSegmentData(&GlowOffset, sizeof(GlowOffset), -1);
	RenderLoadingFrame(true);
	file->CloseSegment();
}

void HelpDude::Save(LHFile* file, bool32_t with_mesh)
{
	file->OpenSegment(HELPDUDE_SEGMENT_NAME);
	int animCount = ANIM_LAST;
	file->WriteSegmentData(&BoneCount, sizeof(BoneCount));
	file->WriteSegmentData(&animCount, sizeof(animCount));
	file->WriteSegmentData(&Scale, sizeof(Scale));
	file->WriteSegmentData(MeshFile, sizeof(MeshFile));
	for (int i = 0; i < animCount; i++)
	{
		file->WriteSegmentData(AnimFiles[i], sizeof(AnimFiles[i]));
	}
	file->WriteSegmentData(&with_mesh, sizeof(with_mesh));
	if (with_mesh)
	{
		SaveMesh(file, Mesh, MeshSize);
		SaveAnims(file);
	}
	file->WriteSegmentData(&Bones, sizeof(Bones));
	file->WriteSegmentData(&PupilBone, sizeof(PupilBone));
	file->WriteSegmentData(&PupilU, sizeof(PupilU));
	file->WriteSegmentData(&PupilV, sizeof(PupilV));
	file->WriteSegmentData(&PupilScale, sizeof(PupilScale));
	file->WriteSegmentData(&Emotion, sizeof(Emotion));
	int emotionSize = sizeof(Emotions);
	file->WriteSegmentData(&emotionSize, sizeof(emotionSize));
	file->WriteSegmentData(Emotions, sizeof(Emotions));
	file->WriteSegmentData(&Depth, sizeof(Depth));
	file->WriteSegmentData(&Size, sizeof(Size));
	file->WriteSegmentData(&Tilt, sizeof(Tilt));
	int infoCount = ANIM_LAST;
	file->WriteSegmentData(&infoCount, sizeof(infoCount));
	for (int j = 0; j < infoCount; j++)
	{
		file->WriteSegmentData(&SoundInfos[j].SoundCount, sizeof(SoundInfos[j].SoundCount));
		for (int k = 0; k < SoundInfos[j].SoundCount; k++)
		{
			file->WriteSegmentData(&SoundInfos[j].Sounds[k], sizeof(HelpDudeSound));
		}
		file->WriteSegmentData(&SoundInfos[j].LoopStart, sizeof(SoundInfos[j].LoopStart));
		file->WriteSegmentData(&SoundInfos[j].LoopEnd, sizeof(SoundInfos[j].LoopEnd));
	}
	file->WriteSegmentData(&FingerSide, sizeof(FingerSide));
	file->WriteSegmentData(&FingerForward, sizeof(FingerForward));
	file->WriteSegmentData(&TalkDepth, sizeof(TalkDepth));
	file->WriteSegmentData(LipSyncAnimFlags, sizeof(LipSyncAnimFlags));
	file->WriteSegmentData(&GlowSize, sizeof(GlowSize));
	file->WriteSegmentData(&GlowOffset, sizeof(GlowOffset));
	file->CloseSegment();
}

#define HELPDUDE_SOUND_LEVEL   IMPACT_SOUND_LEVEL_HEAVY
#define HELPDUDE_SOUND_PARAM_1 1
#define HELPDUDE_SOUND_HITTER  17
#define HELPDUDE_SOUND_TARGET  1

int HelpDude::PlaySoundFX(int anim, float time, LH_AudioBank* bank)
{
	if (!bank)
	{
		bank = GetSoundFXBank();
		if (!bank)
		{
			return 0;
		}
	}
	float last = LastSoundTime[anim];
	if (last < 0.0f)
	{
		last = time;
	}
	time -= (int)time;
	last -= (int)last;
	float end = time;
	LastSoundTime[anim] = time;
	if (time < last)
	{
		end = time + 1.0f;
	}
	if (last + 0.5f < end)
	{
		return 0;
	}
	HelpDudeSoundInfo* info = &SoundInfos[anim];
	for (int i = 0; i < info->SoundCount; i++)
	{
		if (info->Sounds[i].Time > end)
		{
			break;
		}
		if (info->Sounds[i].Time >= last || (end >= 1.0f && end - 1.0f > info->Sounds[i].Time))
		{
			LHPoint camera = *LH3DTech::GetCameraPosition();
			LHPoint pos(Transform._41, Transform._42, Transform._43);
			long    params[5];
			params[0] = HELPDUDE_SOUND_LEVEL;
			params[1] = HELPDUDE_SOUND_PARAM_1;
			params[2] = HELPDUDE_SOUND_HITTER;
			params[3] = HELPDUDE_SOUND_TARGET;
			params[4] = info->Sounds[i].Sample;
			GGlobal::Global.audio->SamplePlayAnimEffect(this, camera.GetDistance(pos), params,
			                                            !info->Sounds[i].Optional, bank, 0, 0.0f, 0.0f);
		}
	}
	return 0;
}

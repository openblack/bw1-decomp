#include <Lionhead/LH3DLib/development/Leash.h>

#include "LH3DAtmos.h"
#include "LH3DIsland.h"
#include "LH3DRender.h"
#include "LH3DTexture.h"
#include "LH3DTech.h"
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#define LEASH_CLAMP(value, low, high) ((value) > (low) ? min((value), (high)) : (low))
#define LEASH_MAX_SPEED               300.0f
#define LEASH_WORLD_MIN               -1000.0f
#define LEASH_MOTION_STEP             0.005f

static const float LEASH_GRAVITY = -9.81f;
static const float LEASH_NODE_MASS = 0.8f;
static const float LEASH_STIFFNESS = 20000.0f;
static const float LEASH_DRAG = -0.1f;
#define LEASH_NODE_SPACING          (1.0f / (LEASH_NODE_COUNT + 1))
#define LEASH_STEP_RATE             -200.0f
#define LEASH_WORLD_MAX             6120.0f
#define LEASH_VERTEX_COUNT          ((LEASH_NODE_COUNT + 2) * 4)
#define LEASH_TRIANGLE_COUNT        ((LEASH_NODE_COUNT + 1) * 4)
#define LEASH_MAX_STRETCH_FADE      0.7f
#define LEASH_BLUE_SCALE            64
#define LEASH_NORMAL_EPSILON        0.000001f
#define LEASH_SHADOW_HEIGHT         0.1f
#define LEASH_SHADOW_COLOUR         0x41000000
#define LEASH_TEXTURE_LENGTH        5.0f
#define LEASH_TEXTURE_U_SCALE       0.25f
#define LEASH_MIN_TENSION           0.5f
#define LEASH_NODE_CLEARANCE        0.5f
#define LEASH_LINK_EPSILON          0.1f
#define LEASH_MIN_PICK_DEPTH        1.0f
#define LEASH_MIN_PICK_RADIUS       2
#define LEASH_ALPHA_REFERENCE       0x38
#define LEASH_DEFAULT_TEXTURE_SCALE 2.5f
#define LEASH_DEFAULT_TEXTURE_V0    0.125f
#define LEASH_DEFAULT_TEXTURE_V1    0.25f
#define LEASH_DEFAULT_RADIUS        0.15f

void LeashNode::PullTo(LHPoint* target, float rest_length)
{
	LHPoint delta = *target - Pos;
	float   length = delta.GetNorme();
	if (length > rest_length)
	{
		Stretch = length / rest_length - 1.0f;
		delta *= rest_length / length;
		LHPoint rest = Pos + delta;
		delta = *target - rest;
		Force += delta * LEASH_STIFFNESS;
	}
	else
	{
		Stretch = 0.0f;
	}
}

void LeashNode::UpdateForces(LHPoint* prev, LHPoint* next, float tension)
{
	float   speed = Vel.GetNorme();
	float   t = max(LEASH_MIN_TENSION, tension);
	LHPoint drag = Vel * speed;
	Force.Set((drag * LEASH_DRAG) * (1.0f / t));
	Force.y += LEASH_GRAVITY * LEASH_NODE_MASS;
	PullTo(prev, tension);
	PullTo(next, tension);
}

Leash::~Leash()
{
	if (Material != NULL)
	{
		Material->Release();
		Material = NULL;
	}
}

LH3DTexture* Leash::g_leash_tex;

LH3DTexture* Leash::GetTexture()
{
	if (g_leash_tex == NULL)
		g_leash_tex = LH3DTexture::Create("data\\textures\\leash.raw",
		                                  LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
	return g_leash_tex;
}

void Leash::Init(LHPoint* start, LHPoint* end)
{
	Start = *start;
	End = *end;
	TextureScale = LEASH_DEFAULT_TEXTURE_SCALE;
	TextureV0 = LEASH_DEFAULT_TEXTURE_V0;
	TextureV1 = LEASH_DEFAULT_TEXTURE_V1;
	Radius = LEASH_DEFAULT_RADIUS;
	UnusedStyleFlag = false;
	LHPoint delta = (End - Start) * LEASH_NODE_SPACING;
	LHPoint pos = Start + delta;
	for (int i = 0; i < LEASH_NODE_COUNT; i++)
	{
		float altitude = LH3DIsland::GetAltitude(pos) + Radius;
		Nodes[i].Pos = pos;
		if (pos.y < altitude)
			pos.y = altitude;
		pos += delta;
		Nodes[i].Vel.SetNull();
	}
	Material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA, GetTexture());
	Material->AlphaReference = LEASH_ALPHA_REFERENCE;
	Material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	Material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
}

void Leash::UpdateForces(LHPoint* start, LHPoint* end, float dt)
{
	float tension = RestLength * LEASH_NODE_SPACING;
	Nodes[0].UpdateForces(start, &Nodes[1].Pos, tension);
	for (int i = 1; i < LEASH_NODE_COUNT - 1; i++)
	{
		Nodes[i].UpdateForces(&Nodes[i - 1].Pos, &Nodes[i + 1].Pos, tension);
	}
	Nodes[LEASH_NODE_COUNT - 1].UpdateForces(&Nodes[LEASH_NODE_COUNT - 2].Pos, end, tension);
}

void Leash::UpdateMotion(float dt)
{
	LeashNode* node = Nodes;
	for (int i = 0; i < LEASH_NODE_COUNT; i++, node++)
	{
		node->Vel += node->Force * (dt / LEASH_NODE_MASS);
		float speedSq = node->Vel.GetNormeSq();
		if (speedSq > LEASH_MAX_SPEED * LEASH_MAX_SPEED)
		{
			float speed = sqrt(speedSq);
			node->Vel *= LEASH_MAX_SPEED / speed;
		}
		node->Pos += node->Vel * dt;
		float altitude = LH3DIsland::GetAltitude(node->Pos) + Radius + LEASH_NODE_CLEARANCE;
		if (node->Pos.y < altitude)
			node->Pos.y = altitude;
	}
}

void Leash::Update(LHPoint* start, LHPoint* end, float dt)
{
	LHPoint newStart(LEASH_CLAMP(start->x, LEASH_WORLD_MIN, LEASH_WORLD_MAX),
	                 LEASH_CLAMP(start->y, 0.0f, LEASH_WORLD_MAX),
	                 LEASH_CLAMP(start->z, LEASH_WORLD_MIN, LEASH_WORLD_MAX));
	LHPoint newEnd(LEASH_CLAMP(end->x, LEASH_WORLD_MIN, LEASH_WORLD_MAX), LEASH_CLAMP(end->y, 0.0f, LEASH_WORLD_MAX),
	               LEASH_CLAMP(end->z, LEASH_WORLD_MIN, LEASH_WORLD_MAX));
	if (dt < 0.0f)
		dt = 0.0f;
	int     steps = 1 - (int)(dt * LEASH_STEP_RATE);
	float   stepScale = 1.0f / steps;
	LHPoint startStep = (newStart - Start) * stepScale;
	LHPoint endStep = (newEnd - End) * stepScale;
	for (int i = 0; i < steps; i++)
	{
		Start += startStep;
		End += endStep;
		UpdateForces(&Start, &End, LEASH_MOTION_STEP);
		UpdateMotion(LEASH_MOTION_STEP);
	}
	Start = newStart;
	End = newEnd;
	float tension = RestLength * LEASH_NODE_SPACING;
	float length = (Nodes[0].Pos - newStart).GetNorme();
	Tautness = (length - tension) / (TautLength * LEASH_NODE_SPACING - tension);
	Tautness = LEASH_CLAMP(Tautness, 0.0f, 1.0f);
}

LH3DColor Leash::GetNodeColour(int index)
{
	unsigned long color;
	unsigned long specular;
	LH3DIsland::GetColorAndSpecular(&GetNodePoint(index), &color, &specular);
	if (index < 0 || index >= LEASH_NODE_COUNT)
		color &= LH3D_COLOR_RGB_MASK;
	return color;
}

LHPoint Leash::GetNodePoint(int index)
{
	if (index < 0)
		return Start;
	if (index >= LEASH_NODE_COUNT)
		return End;
	return Nodes[index].Pos;
}

bool Leash::CheckLink(int x, int y, int x1, int y1, int radius1, int x2, int y2, int radius2, float* t)
{
	int radius = max(radius1, radius2);
	int minX = min(x1, x2) - radius;
	int maxX = max(x1, x2) + radius;
	if (x < minX || x > maxX)
		return false;
	int minY = min(y1, y2) - radius;
	int maxY = max(y1, y2) + radius;
	if (y < minY || y > maxY)
		return false;
	if (x >= x1 - radius1 && x <= x1 + radius1 && y >= y1 - radius1 && y <= y1 + radius1)
	{
		if ((x - x1) * (x - x1) + (y - y1) * (y - y1) < radius1 * radius1)
		{
			if (t != NULL)
				*t = 0.0f;
			return true;
		}
	}
	if (x >= x2 - radius2 && x <= x2 + radius2 && y >= y2 - radius2 && y <= y2 + radius2)
	{
		if ((x - x2) * (x - x2) + (y - y2) * (y - y2) < radius2 * radius2)
		{
			if (t != NULL)
				*t = 1.0f;
			return true;
		}
	}
	x -= x1;
	y -= y1;
	x2 -= x1;
	y2 -= y1;
	float pointLength = sqrt(x * x + y * y);
	float linkLength = sqrt(x2 * x2 + y2 * y2);
	if (pointLength * linkLength < LEASH_LINK_EPSILON)
		return false;
	float along = (x * x2 + y * y2) / (pointLength * linkLength);
	if (along < 0.0f || along > 1.0f)
		return false;
	float linkRadius = (radius2 - radius1) * along + radius1;
	if (pointLength * pointLength - along * along * linkLength * linkLength > linkRadius * linkRadius)
		return false;
	if (t != NULL)
		*t = along;
	return true;
}

bool Leash::CheckCollide(int x, int y, float radius, LHPoint* hit, float* depth)
{
	LHPoint prevPoint = GetNodePoint(-1);
	int     prevX;
	int     prevY;
	float   prevDepth;
	bool    prevInFront = LH3DTech::ProjectPoint(&prevPoint, &prevX, &prevY, &prevDepth) != LH3D_PROJECT_BEHIND_CAMERA;
	radius = LHSys::TheSystem.screen.width * Radius * radius;
	for (int i = 0; i <= LEASH_NODE_COUNT; i++)
	{
		LHPoint point = GetNodePoint(i);
		int     pointX;
		int     pointY;
		float   pointDepth;
		bool    inFront = LH3DTech::ProjectPoint(&point, &pointX, &pointY, &pointDepth) != LH3D_PROJECT_BEHIND_CAMERA;
		if (inFront && prevInFront && prevDepth > LEASH_MIN_PICK_DEPTH && pointDepth > LEASH_MIN_PICK_DEPTH)
		{
			int prevRadius = (int)(radius / prevDepth);
			int pointRadius = (int)(radius / pointDepth);
			if (prevRadius < LEASH_MIN_PICK_RADIUS)
				prevRadius = LEASH_MIN_PICK_RADIUS;
			if (pointRadius < LEASH_MIN_PICK_RADIUS)
				pointRadius = LEASH_MIN_PICK_RADIUS;
			float t;
			if (CheckLink(x, y, prevX, prevY, prevRadius, pointX, pointY, pointRadius, &t))
			{
				point = prevPoint + (point - prevPoint) * t;
				if (hit != NULL)
					*hit = point;
				if (depth != NULL)
					*depth = LH3DTech::g_world_to_camera.m[11] + point.x * LH3DTech::g_world_to_camera.m[2] +
					         point.y * LH3DTech::g_world_to_camera.m[5] + point.z * LH3DTech::g_world_to_camera.m[8];
				return true;
			}
		}
		prevInFront = inFront;
		prevPoint = point;
		prevX = pointX;
		prevY = pointY;
		prevDepth = pointDepth;
	}
	return false;
}

void Leash::Draw()
{
	float     stretchRange = (MaxLength - RestLength) / RestLength;
	LH3DColor nodeColors[LEASH_NODE_COUNT];
	for (int n = 0; n < LEASH_NODE_COUNT; n++)
	{
		unsigned long color;
		unsigned long specular;
		LH3DIsland::GetColorAndSpecular(&Nodes[n].Pos, &color, &specular);
		float stretch = Nodes[n].Stretch / stretchRange;
		if (stretch > LEASH_MAX_STRETCH_FADE)
			stretch = LEASH_MAX_STRETCH_FADE;
		nodeColors[n] =
			LH3DColor((((color & LH3D_COLOR_BLUE_MASK) * LEASH_BLUE_SCALE) >> 8) + (color & LH3D_COLOR_GREEN_MASK) +
		              (color & LH3D_COLOR_RED_MASK) + ((int)((1.0f - stretch) * LH3D_COLOR_CHANNEL_MAX) << 24));
	}

	LHPoint camera;
	camera = *LH3DTech::GetCameraPosition();
	LHPoint*   points = LH3DAtmos::v_pnt[0];
	LH3DColor* colors = LH3DAtmos::v_col[0];
	long*      indices = LH3DAtmos::v_idx[0];
	float*     uvs = LH3DAtmos::v_uv[0];
	int        base = 0;
	float      length = 0.0f;
	for (int i = -1; i <= LEASH_NODE_COUNT; i++)
	{
		LHPoint   prev = GetNodePoint(i - 1);
		LHPoint   cur = GetNodePoint(i);
		LHPoint   next = GetNodePoint(i + 1);
		LH3DColor colour = GetNodeColour(i);
		LHPoint   tangent = next - prev;
		LHPoint   view = cur - camera;
		view.Normalise();
		length += cur.GetDistance(prev);
		if (tangent.GetNormeSq() < LEASH_NORMAL_EPSILON)
			tangent = LHPoint(0.0f, 0.0f, 1.0f);
		else
			tangent.Normalise();
		LHPoint side = tangent ^ view;
		side.Normalise();
		side *= Radius;
		points[0] = cur + side;
		points[1] = cur - side;
		points += 2;
		view = LHPoint(0.0f, 1.0f, 0.0f);
		side = tangent ^ view;
		side.y = 0.0f;
		side.Normalise();
		side *= Radius;
		points[0] = cur + side;
		points[1] = cur - side;
		points[0].y = LH3DIsland::GetAltitude(points[0]) + LEASH_SHADOW_HEIGHT;
		points[1].y = LH3DIsland::GetAltitude(points[1]) + LEASH_SHADOW_HEIGHT;
		points += 2;
		if (i < LEASH_NODE_COUNT)
		{
			*indices++ = base + 5;
			*indices++ = base + 4;
			*indices++ = base;
			*indices++ = base;
			*indices++ = base + 1;
			*indices++ = base + 5;
			base += 2;
			*indices++ = base + 5;
			*indices++ = base + 4;
			*indices++ = base;
			*indices++ = base;
			*indices++ = base + 1;
			*indices++ = base + 5;
			base += 2;
		}
		*colors++ = colour;
		*colors++ = colour;
		*colors++ = LH3DColor((i < 0 || i == LEASH_NODE_COUNT) ? 0 : LEASH_SHADOW_COLOUR);
		*colors++ = LH3DColor((i < 0 || i == LEASH_NODE_COUNT) ? 0 : LEASH_SHADOW_COLOUR);
		uvs[0] = uvs[2] = uvs[4] = uvs[6] = length / LEASH_TEXTURE_LENGTH * TextureScale * LEASH_TEXTURE_U_SCALE;
		uvs[1] = uvs[5] = TextureV1;
		uvs[3] = uvs[7] = TextureV0;
		uvs += 8;
	}
	LH3DMaterial::SetGlobalAlpha(true);
	LH3DTech::Draw3DWorldTriangle(LEASH_VERTEX_COUNT, LH3DAtmos::v_pnt[0], LH3DAtmos::v_col[0], LH3DAtmos::v_uv[0],
	                              LEASH_TRIANGLE_COUNT, LH3DAtmos::v_idx[0], Material, false);
	LH3DMaterial::SetGlobalAlpha(false);
}

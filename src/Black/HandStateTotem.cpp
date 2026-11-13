#include "HandConstants.h"
#include "HandStateTotem.h"

#include <limits.h> /* For SHRT_MIN */
#include <math.h>   /* For atan */
#include <windows.h>

#include <Lionhead/LH3DLib/development/CAnim.h>      /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For FloatToInt, PI_F */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech::g_current_matrix */
#include <Lionhead/LH3DLib/development/LH3DVertex.h> /* For struct Vertex3D */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>          /* For LHSys */

#include "ControlHand.h"  /* For CHand */
#include "Game.h"         /* For GGame */
#include "Game3DObject.h" /* For Game3DObject */
#include "Interface.h"    /* For GInterface */
#include "Landscape.h"    /* For GLandscape */
#include "TotemStatue.h"  /* For TotemStatue */
#include "Utils.h"        /* For GUtils */

static int Unused = 0;

const float TotemHandHeight = 0.7f;

// BW1W120 005b7c10 BW1M119 01344e90
void ProjectPoint(Vertex3D* vertex, unsigned long* flags, LHPoint* point);

HandStateTotem::HandStateTotem(CHand* hand) : HandState(hand) {}

void HandStateTotem::Enter()
{
	GInterface* gameInterface = GGame::g_game->MyInterface();
	AnimationTime = 0;
	Object* object = gameInterface->interface_collide.GetObjectA();
	dynamic_cast<TotemStatue*>(object);

	if (object->Game3dObject != NULL)
	{
		float height = object->GetHeight() * TotemHandHeight;
		Height = height + object->Game3dObject->matrix.GetPos().y;
	}
	else
	{
		Height = object->Pos.Altitude() + LH3DIsland::GetAltitude(object->Pos);
	}

	Hand->SetDistanceFromView(Hand->GetDistanceFromObject(object));
	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, Hand->DistanceFromView, &Hand->GetPos());

	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
	Hand->GetPos().x = pos.x;
	Hand->GetPos().z = pos.z;
	Hand->GetPos().y = Height;

	LHSys::TheSystem.mouse.PinImage(SHRT_MIN, SHRT_MIN);
}

void HandStateTotem::Exit()
{
	LHSys::TheSystem.mouse.Pinned = false;
}

void HandStateTotem::Update(float dt, LHMatrix* buffer)
{
	GInterface* gameInterface = GGame::g_game->MyInterface();
	Object*     object = gameInterface->interface_collide.GetObjectA();
	if (object != NULL)
	{
		dynamic_cast<TotemStatue*>(object);

		int dy = Hand->PreviousScreenPos.y - Hand->ScreenPos.y;
		if (dy != 0)
		{
			float height = object->GetHeight();
			float heightChange = dy * height * 3.0f / LHSys::TheSystem.screen.height;
			if (heightChange < 0.0f)
			{
				LHPoint& pos = Hand->GetPos();
				float    altitude = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
				float    heightAboveGround = Hand->GetPos().y - altitude;
				if (-heightChange > heightAboveGround)
				{
					heightChange = -heightAboveGround;
				}
			}
			if (object != NULL && object->IsInHandInteract() && object->IsReadyForNetworkUnfriendlyLockedSelect())
			{
				ControlHandUpdateInfo info;
				info.HeightChange = heightChange;
				object->NetworkUnfriendlyLockedSelect(&info);
			}
		}

		float height = object->GetHeight() * TotemHandHeight;
		float y = height + object->Game3dObject->matrix.GetPos().y;
		Hand->GetPos().y = y;
		Height = y;

		Vertex3D      screen;
		unsigned long flags;
		LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
		ProjectPoint(&screen, &flags, &Hand->GetPos());
		if (flags == LH3DTech::CLIP_CODE_NONE)
		{
			Hand->DrawScreenPos = LHCoord((long)screen.x, (long)screen.y);
			LHCoord pin(FloatToInt(screen.x), FloatToInt(screen.y));
			LHSys::TheSystem.mouse.PinImage(pin.x, pin.y);
		}
	}

	float tilt = PI_F * 7.0f / 16.0f;
	if (Hand->GetPos().y < HandTiltHeight)
	{
		tilt += atan((HandTiltHeight - Hand->GetPos().y) / CHand::GetStandardSize());
	}

	LHMatrix rotation;
	rotation.SetRotationX(-tilt);
	rotation.PostRotateY(PI_F + Hand->Heading);

	LHMatrix root;
	Hand->SetUpPositionMatrix(root);
	root.PostMultiplyMatrixOnly(rotation);
	root.SetTranslateOnly(Hand->GetPos());

	float radiusRatio = object->GetHoldRadius() / (CHand::GetStandardSize() * 0.5f);
	float openness = min(1.0f, radiusRatio);

	CAnim* anim = Hand->GetAnim(HAND_ANIM_HOLD_SIDE, 0);
	float  halfDuration = anim->Duration >> 1;
	AnimationTime = (long)(halfDuration * (openness * 0.5f));

	anim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime, Hand->frame,
	                 NULL, true);
	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);
}

void ProjectPoint(Vertex3D* vertex, unsigned long* flags, LHPoint* point)
{
	vertex->x = point->x * LH3DTech::g_current_matrix->m[0] + point->y * LH3DTech::g_current_matrix->m[3] +
	            point->z * LH3DTech::g_current_matrix->m[6] + LH3DTech::g_current_matrix->m[9];
	vertex->y = point->x * LH3DTech::g_current_matrix->m[1] + point->y * LH3DTech::g_current_matrix->m[4] +
	            point->z * LH3DTech::g_current_matrix->m[7] + LH3DTech::g_current_matrix->m[10];
	vertex->rhw = point->x * LH3DTech::g_current_matrix->m[2] + point->y * LH3DTech::g_current_matrix->m[5] +
	              point->z * LH3DTech::g_current_matrix->m[8] + LH3DTech::g_current_matrix->m[11];
	*flags = vertex->rhw < LH3DTech::g_info_transform.NearClip;
	if (*flags == LH3DTech::CLIP_CODE_NONE)
	{
		vertex->rhw = 1.0f / vertex->rhw;
		vertex->x = (vertex->rhw * vertex->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
		CLAMP(vertex->x, 0.0f, LH3DTech::g_max_screen[0]);
		vertex->y =
			LH3DTech::g_info_transform.HalfRes.y - vertex->rhw * vertex->y * LH3DTech::g_info_transform.HalfRes.y;
		CLAMP(vertex->y, 0.0f, LH3DTech::g_max_screen[1]);
		vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
		vertex->z = 1.0f - vertex->rhw;
	}
}

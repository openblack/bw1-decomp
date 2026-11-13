#include "MapCellConstants.h"
#include "HandConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateCitadel.h"

#include <Lionhead/LH3DLib/development/CAnim.h>         /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For struct LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::g_delta_time */
#include <Lionhead/LH3DLib/development/LHMatrix.h>      /* For struct LHMatrix */

#include "Camera.h"          /* For GCamera */
#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "Game.h"            /* For GGame */
#include "GJUtils.h"         /* For boundf */
#include "Interface.h"       /* For GInterface */
#include "Utils.h"           /* For GUtils */

static int Unused = 0;

// BW1W120 00e360b8
extern LHPoint TempleHandUp;
// BW1W120 00e360c8
extern LHPoint TempleHandPos;

HandStateCitadel::HandStateCitadel(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStateCitadel::Enter()
{
	UpZoomer.SetPosition(LHPoint(0.0f, 1.0f, 0.0f));
	AnimationTime = 0;
	Anim = HAND_ANIM_NORMAL;
	DistanceFromViewZoomer.SetPosition(Hand->DistanceFromView);
}

void HandStateCitadel::Update(float dt, LHMatrix* buffer)
{
	LHPoint cameraPos;
	GGame::g_game->GetCamera()->GetPosition(cameraPos);

	LHPoint normal = TempleHandUp;
	float   distance = LHPoint(TempleHandPos).GetRange(cameraPos) - 5.0f;
	if (distance < 1.0f)
	{
		distance = 1.0f;
	}

	LHPoint handPos;
	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, distance, &handPos);

	GGame::g_game->MyInterface()->interface_collide.GetObjectA();

	float distanceFromView = cameraPos.GetDistance(handPos);
	CLAMP(distanceFromView, 4.0f, 300.0f);

	if (distanceFromView < DistanceFromViewZoomer.GetDestination())
	{
		DistanceFromViewZoomer.SetDestination(distanceFromView, 0.2f);
	}
	else
	{
		DistanceFromViewZoomer.SetDestination(distanceFromView, 0.4f);
	}
	DistanceFromViewZoomer.Update(dt);

	distanceFromView = DistanceFromViewZoomer.GetCurrentValue();
	Hand->SetDistanceFromView(distanceFromView);

	LH3DIsland::GetAltitude(Hand->GetPos());
	CHand::GetStandardSize();

	float tilt = 0.0f;
	if (tilt != 0.0f)
	{
		normal = LHPoint(0.0f, 1.0f, 0.0f);

		LHPoint toCamera;
		GGame::g_game->GetCamera()->GetPosition(toCamera);
		toCamera -= Hand->GetPos();
		toCamera.Normalise();

		LHMatrix matrix;
		matrix.SetFromVectorAndAngle(toCamera, tilt);
		matrix.TransformPoint(normal);
	}
	normal.Normalise();
	CHand::GetStandardSize();
	UpZoomer.SetDestinationWithTime(normal, 0.4f);
	UpZoomer.Update((float)LH3DTech::g_delta_time / 1000.0f);

	LHPoint up = UpZoomer.GetCurrentValue();
	up.Normalise();

	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, distanceFromView, &Hand->GetPos());

	HAND_ANIM anim = HAND_ANIM_NORMAL;
	CAnim*    handAnim = Hand->GetAnim(anim, 0);
	AnimationTime = (AnimationTime + LH3DTech::g_delta_time) % handAnim->Duration;

	if (anim != Anim)
	{
		Anim = anim;
		Hand->BlendToNewPosition();
		buffer = Hand->GetMatrixBuffer();
	}

	LHMatrix root;
	Hand->FillStandardPositionMatrix(root, Hand->GetPos(), up);
	handAnim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime,
	                     Hand->frame, NULL, true);

	CAnim* lagAnimX = Hand->GetAnim(anim + HAND_ANIM_LAG_X, 0);
	float  lagX = boundf(-MaxHandLagX, Hand->LaggedScreenPosX - (float)Hand->ScreenPos.x, MaxHandLagX);
	if (lagAnimX != NULL && fabs(lagX) > 0.0001f)
	{
		lagAnimX->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimX->frames[(lagAnimX->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((MaxHandLagX + lagX) / (MaxHandLagX + MaxHandLagX) * lagAnimX->Duration),
			NULL, NULL);
	}

	CAnim* lagAnimY = Hand->GetAnim(anim + HAND_ANIM_LAG_Y, 0);
	float  lagY = boundf(-MaxHandLagY, (float)Hand->ScreenPos.y - Hand->LaggedScreenPosY, MaxHandLagY);
	if (lagAnimY != NULL && fabs(Hand->LaggedScreenPosY) > 0.0001f)
	{
		lagAnimY->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimY->frames[(lagAnimY->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((MaxHandLagY + lagY) / (MaxHandLagY + MaxHandLagY) * lagAnimY->Duration),
			NULL, NULL);
	}

	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);

	Hand->DrawScreenPos = Hand->ScreenPos;
}

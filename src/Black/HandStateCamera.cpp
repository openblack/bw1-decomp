#include "MapCellConstants.h"
#include "HandConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateCamera.h"

#include <Lionhead/LH3DLib/development/CAnim.h>    /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_delta_time */
#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */

#include "Camera.h"          /* For GCamera */
#include "camerahelp.h"      /* For CameraHelp */
#include "CameraModeNew3.h"  /* For CameraModeNew3 */
#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "Game.h"            /* For GGame */
#include "GJUtils.h"         /* For boundf */
#include "Interface.h"       /* For GInterface */
#include "Utils.h"           /* For GUtils */

static int Unused = 0;

// BW1W120 00c5b100
extern Zoomer CameraGrabZoomer;
// BW1W120 00d13f30
extern LHPoint HandLandPos;
// BW1W120 00d13f60
extern LHPoint HandUp;

HandStateCamera::HandStateCamera(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

bool HandStateCamera::AllowCameraTricons()
{
	return true;
}

void HandStateCamera::Enter()
{
	UpZoomer.SetPosition(LHPoint(0.0f, 1.0f, 0.0f));
	AnimationTime = 0;
	BlendUp = false;
	DistanceFromViewZoomer.SetPosition(Hand->DistanceFromView);
	GrabbingLand = false;
	Anim = HAND_ANIM_NORMAL;
}

void HandStateCamera::Update(float dt, LHMatrix* buffer)
{
	LHPoint   up = HandUp;
	HAND_ANIM anim = HAND_ANIM_NORMAL;

	LHPoint cameraPos;
	GGame::g_game->GetCamera()->GetPosition(cameraPos);

	float standardDistance = Hand->WorkOutStandardDistanceFromView(false);

	GGame::g_game->MyInterface()->interface_collide.GetObjectA();

	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());

	float distanceFromView = (Hand->GetPos() - cameraPos).GetNorme();
	Hand->SetDistanceFromView(distanceFromView);
	CHand::GetStandardSize();

	float tilt = 0.0f;
	if (tilt != 0.0f)
	{
		up = LHPoint(0.0f, 1.0f, 0.0f);

		LHPoint toCamera;
		GGame::g_game->GetCamera()->GetPosition(toCamera);
		toCamera -= Hand->GetPos();
		toCamera.FastNormalize();

		LHMatrix matrix;
		matrix.SetFromVectorAndAngle(toCamera, tilt);
		matrix.TransformPoint(up);
	}

	if (!GrabbingLand)
	{
		DistanceFromViewZoomer.SetDestination((Hand->GetPos() - cameraPos).GetNorme(), 0.4f);
		DistanceFromViewZoomer.Update(dt);

		float distance = min(standardDistance, DistanceFromViewZoomer.GetCurrentValue());
		Hand->SetDistanceFromView(distance);
		GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, distance, &Hand->GetPos());
	}

	uint32_t triconFlags = mode != NULL ? mode->MouseTriconFlags : 0;
	float    raise = 0.0f;

	if (mode->HandStatus == CAMERA_MODE_HAND_STATUS_GRABBING_LAND || CameraGrabZoomer.GetCurrentValue() > 0.01f)
	{
		anim = HAND_ANIM_GRAB_LAND;
	}
	else if (triconFlags & CAMERA_TRICON_INPUT_ROTATE)
	{
		if (CameraHelp::EnabledFeatures & CAMERA_FEATURE_ROTATE)
		{
			up.Set(*LH3DTech::GetCameraTarget() - Hand->GetPos());
			float length = up.GetNorme();
			up.y += length * 0.3f;
			up.FastNormalizeInline();
			anim = HAND_ANIM_ROTATE;
			float scale = Hand->DistanceScale;
			float size = CHand::GetStandardSize();
			float handSize = scale * size;
			raise = handSize * 0.33f;
		}
	}
	else if (triconFlags & CAMERA_TRICON_INPUT_ZOOM)
	{
		if (CameraHelp::EnabledFeatures & CAMERA_FEATURE_ZOOM)
		{
			anim = HAND_ANIM_ZOOM;
		}
	}
	else if (triconFlags & CAMERA_TRICON_INPUT_PITCH)
	{
		if (CameraHelp::EnabledFeatures & CAMERA_FEATURE_PITCH)
		{
			anim = HAND_ANIM_PITCH;
		}
	}

	if (Anim != anim)
	{
		if (anim == HAND_ANIM_GRAB_LAND)
		{
			GrabbingLand = true;

			GInterface* gameInterface = GGame::g_game->MyInterface();
			if (gameInterface->interface_collide.GetObjectA() == NULL &&
			    gameInterface->interface_collide.bubble == NULL && gameInterface->interface_collide.leash == NULL)
			{
				Hand->BlendToNewPosition();
				Hand->GetPos() = HandLandPos;
			}
		}
		else if (Anim == HAND_ANIM_GRAB_LAND)
		{
			GrabbingLand = false;
		}
		Anim = anim;
		Hand->BlendToNewPosition();
	}

	CAnim* handAnim = Hand->GetAnim(anim, 0);
	AnimationTime = (LH3DTech::g_delta_time + AnimationTime) % handAnim->Duration;

	if (BlendUp)
	{
		UpZoomer.SetDestinationWithTime(up, 0.8f);
	}
	else
	{
		UpZoomer.SetPosition(up);
		BlendUp = false;
	}
	UpZoomer.Update(LH3DTech::g_delta_time / 1000.0f);

	LHPoint currentUp = UpZoomer.GetCurrentValue();
	currentUp.Normalise();

	LHPoint pos = Hand->GetPos();
	pos.y += raise;

	LHMatrix root;
	Hand->FillStandardPositionMatrix(root, pos, currentUp);
	handAnim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime,
	                     Hand->frame, NULL, true);

	CAnim* lagAnimX = Hand->GetAnim(anim + HAND_ANIM_LAG_X, 0);
	float  lagX = boundf(-MaxHandLagX, (float)Hand->ScreenPos.x - Hand->LaggedScreenPosX, MaxHandLagX);
	if (lagAnimX != NULL && fabs(lagX) > 0.0001f)
	{
		lagAnimX->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimX->frames[(lagAnimX->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((lagX + MaxHandLagX) / (MaxHandLagX * 2.0f) * lagAnimX->Duration), NULL,
			NULL);
	}

	CAnim* lagAnimY = Hand->GetAnim(anim + HAND_ANIM_LAG_Y, 0);
	float  lagY = boundf(-MaxHandLagY, (float)Hand->ScreenPos.y - Hand->LaggedScreenPosY, MaxHandLagY);
	if (lagAnimY != NULL && fabs(Hand->LaggedScreenPosY) > 0.0001f)
	{
		lagAnimY->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimY->frames[(lagAnimY->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((lagY + MaxHandLagY) / (MaxHandLagY * 2.0f) * lagAnimY->Duration), NULL,
			NULL);
	}

	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);

	Hand->DrawScreenPos = Hand->ScreenPos;
}

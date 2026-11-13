#include "HandConstants.h"
#include "HandStateMultiPickUp.h"

#include <limits.h> /* For SHRT_MIN */
#include <math.h>   /* For atan */
#include <windows.h>

#include <Lionhead/LH3DLib/development/CAnim.h>         /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For PI_F */
#include <Lionhead/LH3DLib/development/LHMatrix.h>      /* For struct LHMatrix */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>             /* For LHSys */

#include "ControlHand.h"     /* For CHand */
#include "Game.h"            /* For GGame */
#include "Interface.h"       /* For GInterface */
#include "InterfaceStatus.h" /* For GInterfaceStatus */
#include "Landscape.h"       /* For GLandscape */
#include "Utils.h"           /* For GUtils */

static int Unused = 0;

static int HandHeightAboveInteractObject = 3;

HandStateMultiPickUp::HandStateMultiPickUp(CHand* hand) : HandState(hand) {}

void HandStateMultiPickUp::Enter()
{
	GInterface* gameInterface = GGame::g_game->MyInterface();
	Object*     object = gameInterface->interface_collide.GetObjectA();

	Hand->SetDistanceFromView(Hand->GetDistanceFromObject(object));
	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, Hand->DistanceFromView, &Hand->GetPos());

	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, point);

	LHSys::GetMouse().PinImage(SHRT_MIN, SHRT_MIN);
}

void HandStateMultiPickUp::Exit()
{
	LHSys::GetMouse().Pinned = false;
}

void HandStateMultiPickUp::Update(float dt, LHMatrix* buffer)
{
	GInterface* gameInterface = GGame::g_game->MyInterface();
	Object*     object = gameInterface->interface_collide.GetObjectA();
	Object*     interactObject = gameInterface->status->ObjectInteract;
	float       tilt = PI_F * 7.0f / 16.0f;

	if (interactObject != NULL)
	{
		LHPoint& pos = Hand->GetPos();
		pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
		Hand->position.y += interactObject->GetHeight() + HandHeightAboveInteractObject;
	}

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
	anim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices,
	                 (long)(halfDuration * (openness * 0.5f)), Hand->frame, NULL, true);
	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);
}

void HandStateMultiPickUp::DrawTheHeldObject()
{
	Hand->HeldObject->DrawOutOfMap(false);
}

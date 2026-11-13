#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateTug.h"

#include <Lionhead/LH3DLib/development/CAnim.h>      /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetNormal */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For SquareRoot */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech::GetCameraPosition */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */

#include "Camera.h"          /* For class GCamera */
#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "Game.h"            /* For GGame */
#include "Game3DObject.h"    /* For class Game3DObject */
#include "Landscape.h"       /* For GLandscape::DrawListRebuildCount */
#include "Living.h"          /* For class Living */
#include "Object.h"          /* For class Object */
#include "RoutePlan.h"       /* For range_2d */
#include "Tree.h"            /* For class Tree */
#include "Utils.h"           /* For struct GUtils */

static int Unused = 0;

const float HandBlendDuration = 0.13f;
const float TugSpringStiffness = 1000.0f;
const float TugInertia = 1000.0f;
const float TugDamping = 4000.0f;

HandStateTug::HandStateTug(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStateTug::Enter()
{
	LHPoint cameraPos;
	LHPoint direction;
	LHPoint grabPoint;

	UpZoomer.SetPosition(LHPoint(0.0f, 1.0f, 0.0f));
	AnimationTime = 0;
	HeldObjectMatrixValid = false;

	LHMatrix* objectMatrix = &Hand->HeldObject->Game3dObject->matrix;
	Hand->HeldObject->GetWorldMatrix(objectMatrix);
	Hand->PickUpPos = objectMatrix->GetPos();
	LH3DIsland::GetNormal(&Hand->PickUpPos, &GroundNormal);

	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	GUtils::SetUnitDirectionVectorFromScreenPoint(Hand->ScreenPos, &direction);

	float handRange = range_2d(cameraPos, Hand->position);
	float objectRange = range_2d(cameraPos, Hand->PickUpPos);
	grabPoint.x = Hand->PickUpPos.x;
	grabPoint.y = cameraPos.y - (cameraPos.y - Hand->position.y) * (objectRange / handRange);
	grabPoint.z = Hand->PickUpPos.z;

	float minHoldHeight = CHand::GetStandardSize() * Hand->DistanceScale * 0.3f;
	Hand->HoldHeight = Hand->HeldObject->GetHoldLoweringMultiplier() * Hand->HeldObject->GetHeight();
	Hand->HoldHeight = max(minHoldHeight, Hand->HoldHeight);

	GrabPoint = grabPoint;
	WaitingForBlend = true;
	Hand->TugAngularVelocity.SetNull();
	StretchZoomer.SetPosition(1.0f);
	TugMatrix = *objectMatrix;
}

void HandStateTug::Update(float dt, LHMatrix* buffer)
{
	Game3DObject* object3d = Hand->HeldObject->Game3dObject;

	if (WaitingForBlend)
	{
		if (Hand->BlendTime >= HandBlendDuration)
		{
			WaitingForBlend = false;
		}
	}
	else
	{
		LHPoint cameraPos;
		GGame::g_game->GetCamera()->GetPosition(cameraPos);
		LHPoint direction;
		GUtils::SetUnitDirectionVectorFromScreenPoint(Hand->ScreenPos, &direction);

		LHPoint toGrabPoint(GrabPoint.x - cameraPos.x, GrabPoint.y - cameraPos.y, GrabPoint.z - cameraPos.z);
		float   planeDistance = GroundNormal * toGrabPoint;
		float   closingSpeed = GroundNormal * direction;
		float   distanceAlongRay = planeDistance / closingSpeed;
		LHPoint handPos = cameraPos + direction * distanceAlongRay;
		Hand->position = handPos;

		LHMatrix matrix;
		LHPoint  holdPoint(0.0f, Hand->HoldHeight, 0.0f);
		matrix = TugMatrix;
		matrix.NormaliseMatrixOnly();
		matrix.TransformPoint(holdPoint);

		LHPoint force = Hand->position - holdPoint;
		float   distance = SquareRoot(force.GetNormeSq());
		float   springForce = TugSpringStiffness * distance;
		if (springForce < Hand->GetMaxForce())
		{
			force *= TugSpringStiffness;
		}
		else
		{
			force *= Hand->GetMaxForce() / distance;
		}

		LHPoint unused(0.0f, 0.0f, 0.0f);
		float   weight = Hand->HeldObject->GetWeight();
		float   weightForce = OBJECT_GRAVITY * weight;

		StretchZoomer.SetDestination(min(1.3f, (Hand->HoldHeight + distance) / Hand->HoldHeight), 0.3f);
		float dead = 0.0f;
		if (dead != 0.0f)
		{
			LHPoint deadPoint(dead, dead, dead);
			deadPoint += deadPoint;
		}
		StretchZoomer.Update(dt);

		bool isRock = Hand->HeldObject->GetPhysicsConstantsType() == PHYSICS_CONSTANTS_TYPE_ROCK;
		if (!Hand->HeldObject->IsTree())
		{
			Hand->Tugging = false;
		}
		else if (Hand->GetMaxForce() >= weightForce && SquareRoot(force.GetNormeSq()) > weight)
		{
			Tree* tree = dynamic_cast<Tree*>(Hand->HeldObject);
			if (tree != NULL && !tree->InPhysics)
			{
				tree->AddPermanentFootPrint();
			}
			Hand->Tugging = false;
			if (dynamic_cast<Living*>(Hand->HeldObject) != NULL)
			{
				GLandscape::DrawListRebuildCount = 1;
			}
		}

		LHPoint lever = holdPoint - Hand->PickUpPos;
		LHPoint torque = force ^ lever;
		LHPoint angularAcceleration;
		if (isRock)
		{
			angularAcceleration.SetNull();
		}
		else
		{
			angularAcceleration.Set(torque * (1.0f / TugInertia));
		}

		float   unused0 = 0.0f;
		float   unused1 = 0.0f;
		float   unused2 = 0.0f;
		float   unused3 = 0.0f;
		float   unused4 = 0.0f;
		float   unused5 = 0.0f;
		float   unused6 = 0.0f;
		float   unused7 = 0.0f;
		float   unused8 = 0.0f;
		float   unused9 = 0.0f;
		float   unused10 = 0.0f;
		float   unused11 = 0.0f;
		float   unused12 = 0.0f;
		float   unused13 = 0.0f;
		float   unused14 = 0.0f;
		float   unused15 = 0.0f;
		float   unused16 = 0.0f;
		float   unused17 = 0.0f;
		float   unused18 = 0.0f;
		float   unused19 = 0.0f;
		LHPoint velocityChange = angularAcceleration * dt;
		velocityChange -= Hand->TugAngularVelocity *
		                  (dt * (TugDamping * SquareRoot(Hand->TugAngularVelocity.GetNormeSq())) / TugInertia);
		Hand->TugAngularVelocity += velocityChange;

		LHPoint  rotation = Hand->TugAngularVelocity * dt;
		float    angle = rotation.Normalize();
		LHMatrix rotationMatrix;
		rotationMatrix.SetFromVectorAndAngle(rotation, angle);

		float   halfHeight = Hand->HeldObject->GetHeight() * 0.5f;
		LHPoint centre(0.0f, halfHeight, 0.0f);
		LHPoint oldCentre;
		oldCentre = centre;
		TugMatrix.TransformPoint(oldCentre);
		TugMatrix.PostMultiplyMatrixOnly(rotationMatrix);
		LHPoint newCentre;
		newCentre = centre;
		TugMatrix.TransformPoint(newCentre);

		object3d->matrix = TugMatrix;
		if (isRock)
		{
			Hand->HeldObjectVelocity.SetNull();
		}
		else
		{
			object3d->matrix.PreScale(1.0f, StretchZoomer.GetCurrentValue(), 1.0f);
			Hand->HeldObjectVelocity.Set(newCentre - oldCentre);
			Hand->HeldObjectVelocity *= 1.0f / dt;
		}

		HeldObjectMatrix = object3d->matrix;
		HeldObjectMatrixValid = true;
	}

	float    standardSize = CHand::GetStandardSize();
	LHMatrix root;
	if (Hand->HeldObject != NULL)
	{
		CAnim* anim;
		switch (Hand->HoldType)
		{
		case HOLD_TYPE_ABOVE: {
			float holdRadius = Hand->HeldObject->GetHoldRadius() * 1.2f;
			float ratio = holdRadius / (standardSize * Hand->DistanceScale * 1.2f);
			float openness = min(1.0f, ratio);
			Hand->HoldHeight = Hand->HeldObject->GetHoldLoweringMultiplier() * Hand->HeldObject->GetHeight();
			anim = Hand->GetAnim(HAND_ANIM_HOLD_ABOVE, 0);
			AnimationTime = (int)((anim->Duration * 0.5f) * (1.0f - openness));
			break;
		}
		case HOLD_TYPE_MAGIC:
			Hand->HoldHeight = Hand->HeldObject->GetHoldLoweringMultiplier() * Hand->HeldObject->GetHeight();
			anim = Hand->GetAnim(HAND_ANIM_NORMAL, 0);
			AnimationTime = anim->Duration >> 1;
			break;
		case HOLD_TYPE_GRAIN: {
			float holdRadius = Hand->HeldObject->GetHoldRadius();
			float ratio = holdRadius / (standardSize * Hand->DistanceScale);
			float openness = min(1.0f, ratio);
			Hand->HoldHeight = Hand->HeldObject->GetHoldLoweringMultiplier() * Hand->HeldObject->GetHeight();
			anim = Hand->GetAnim(HAND_ANIM_HOLD_GRAIN, 0);
			AnimationTime = (int)((anim->Duration >> 1) * openness);
			break;
		}
		case HOLD_TYPE_TREE:
		case HOLD_TYPE_SIDE:
		case HOLD_TYPE_VILLAGER: {
			float holdRadius = Hand->HeldObject->GetHoldRadius();
			float ratio = holdRadius / (standardSize * Hand->DistanceScale);
			float openness = min(1.0f, ratio);
			Hand->HoldHeight = Hand->HeldObject->GetHoldLoweringMultiplier() * Hand->HeldObject->GetHeight();
			anim = Hand->GetAnim(HAND_ANIM_HOLD_SIDE, 0);
			AnimationTime = (int)((anim->Duration >> 1) * openness);
			break;
		}
		}

		LHMatrix matrix = TugMatrix;
		matrix.NormaliseMatrixOnly();
		matrix.PreScale(1.0f, StretchZoomer.GetCurrentValue(), 1.0f);

		Hand->position.Set(0.0f, Hand->HoldHeight, 0.0f);
		matrix.TransformPoint(Hand->position);

		LHPoint up = object3d->matrix.GetVectorY();
		up.FastNormalizeInline();

		CHand::GetStandardSize();
		LHPoint pos = Hand->position;
		Hand->FillStandardPositionMatrix(root, pos, up);

		anim->FillBuffer(buffer, Hand->meshes[Hand->CurrentMesh], Hand->BaseMatrices, Hand->InverseBaseMatrices,
		                 AnimationTime, Hand->frame, NULL, true);
	}
	else
	{
		return;
	}
	LH3DAnim::FinishTransform(buffer, Hand->meshes[Hand->CurrentMesh], root);

	Hand->DrawScreenPos = Hand->ScreenPos;
}

void HandStateTug::DrawTheHeldObject()
{
	Hand->HeldObject->DrawOutOfMap(false);
}

void HandStateTug::UpdateHeldObject()
{
	if (HeldObjectMatrixValid)
	{
		Hand->HeldObject->Game3dObject->matrix = HeldObjectMatrix;
	}
}

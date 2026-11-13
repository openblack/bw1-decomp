#include "MapCellConstants.h"
#include "HandConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

const float HoldHeightAbove = 0.2f;
const float MinHoldHeightSide = 1.9f;

#include "HandStateHolding.h"

#include <Lionhead/LH3DLib/development/CAnim.h>      /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For PI_F, heading_from_direction_vector */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/PhysOb.h>     /* For PhysOb::MaximumVelocity */

#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "Creature.h"        /* For Creature */
#include "Creature3D.h"      /* For LH3DCreature */
#ifdef VERSION_BW1WCI
#include "CreatureMental.h" /* For CreatureMental */
#endif
#include "Game.h"            /* For GGame */
#include "Game3DObject.h"    /* For Game3DObject */
#include "GJUtils.h"         /* For boundf */
#include "Interface.h"       /* For GInterface */
#include "InterfaceStatus.h" /* For GInterfaceStatus */
#include "Living.h"          /* For Living */
#include "Packet.h"          /* For PACKET_TYPE */
#include "PhysicsObject.h"   /* For PhysicsObject */

static int Unused = 0;

// BW1W120 00c5e640
extern LHPoint HandLandPosForRequiredState;
// BW1W120 00c5e650
extern LHPoint RequiredHandPos;
// BW1W120 00d20178
extern bool32_t HandHoldingAbove;

int     GiveToCreatureTimeLeft;
LHPoint HandLandPos;
LHPoint HeldObjectOffset;
float   HeldObjectHeight = 0.0f;

float ThrowSpringStrength = 260.0f;
float ThrowSpringDamping = 40.0f;

bool HandStateHolding::AllowCameraTricons()
{
	GInterface* iface = GGame::g_game->MyInterface();
	iface->interface_collide.GetObjectA();
	Object* object = iface->status->ObjectInteract;
	return !(object != NULL && object->IsLockedInInteract());
}

HandStateHolding::HandStateHolding(CHand* hand) : HandState(hand)
{
	GiveToCreatureTimeLeft = 0;
	AnimationTime = 0;
	UnusedClearedOnCreate = 0;
}

float HandStateHolding::GetTiltForRender()
{
	return 0.0f;
}

float HandStateHolding::GetRaiseForRender()
{
	return 0.0f;
}

void HandStateHolding::OverrideHandPos(LHPoint* pos) {}

void HandStateHolding::Enter()
{
	LHPoint up;
	up.x = 0.0f;
	up.y = 1.0f;
	up.z = 0.0f;
	UpZoomer.SetPosition(up);
	ThrowVelocity.SetNull();
	InThrow = false;
	AnimationTime = 0;
	DistanceFromViewZoomer.SetPosition(Hand->DistanceFromView);
	RotationZoomer.SetPosition(0.0f);
	GiveToCreatureTimeLeft = 0;
	HeldObjectOffset.x = HeldObjectOffset.y = HeldObjectOffset.z = 0.0f;

	if (Hand->HeldObject != NULL)
	{
		Hand->HoldHeight = Hand->HeldObject->GetHeight() * Hand->HeldObject->GetHoldLoweringMultiplier();
	}
}

bool HandStateHolding::CanCurrentlyGiveToCreature()
{
	return GiveToCreatureTimeLeft > 0;
}

void HandStateHolding::Update(float dt, LHMatrix* buffer)
{
	GGame::g_game->GetCamera();

	LHPoint cameraPos;
	cameraPos = *LH3DTech::GetCameraPosition();

	Game3DObject* object3d = Hand->HeldObject != NULL ? Hand->HeldObject->Game3dObject : NULL;

	LHPoint pickUpPos(0.0f, 0.0f, 0.0f);
	float   distance;
	if ((GiveToCreatureTimeLeft > 300 || Hand->CreatureBeingGivenTo != NULL) && Hand->InteractCreature3d != NULL)
	{
		LHPoint direction = cameraPos - Hand->InteractCreature3d->GetPos();
		float   heading = heading_from_direction_vector(direction);
		Hand->InteractCreature3d->GetPickUpFromHandPosition(&pickUpPos, true, heading);
		distance = pickUpPos.GetDistance(cameraPos);
	}
	else
	{
		distance = Hand->WorkOutStandardDistanceFromView(false);
	}
	Hand->SetDistanceFromView(distance);

	GInterface* iface = GGame::g_game->MyInterface();
	Object*     collideObject = iface->interface_collide.GetObjectA();
	Object*     interactObject = iface->status->ObjectInteract;

	bool holdingAbove = Hand->HoldType == HOLD_TYPE_ABOVE;
	HandHoldingAbove = holdingAbove;

	float holdHeight;
	switch (Hand->HoldType)
	{
	case HOLD_TYPE_ABOVE:
		holdHeight = HoldHeightAbove;
		break;
	case HOLD_TYPE_MAGIC:
		holdHeight = CHand::GetStandardSize() * Hand->DistanceScale;
		break;
	case HOLD_TYPE_GRAIN:
	case HOLD_TYPE_TREE:
	case HOLD_TYPE_SIDE:
	case HOLD_TYPE_VILLAGER:
		holdHeight = max(Hand->HoldHeight, MinHoldHeightSide);
		break;
	}

	float height = holdHeight;
	if (Hand->HeldObject != NULL && Hand->HeldObject->IsARootedObject())
	{
		height = Hand->HeldObject->GetHeight() * 0.1f + holdHeight;
	}
	HeldObjectHeight = height * 0.6f;

	LHPoint handPos;
	if (interactObject != NULL && interactObject->IsLockedInInteract())
	{
		handPos = Hand->GetPos();
		RequiredHandPos = HandLandPosForRequiredState;
		handPos.y = LH3DIsland::GetAltitude(handPos);
		handPos.y += interactObject->GetHeightForHandAboveInteractObject();
	}
	else
	{
		bool    keepClearOfLand = Hand->HoldType == HOLD_TYPE_MAGIC || Hand->InteractCreature != NULL;
		float   unused;
		LHPoint up;
		int     anim;
		ObtainRequiredHandPosition(Hand, dt, GetTiltForRender(), unused, handPos, up, anim, false, keepClearOfLand);
		RequiredHandPos = handPos;
		OverrideHandPos(&handPos);
		handPos.y += GetRaiseForRender();
	}

	if (Hand->CreatureBeingGivenTo != NULL)
	{
		LH3DCreature* creature3d = Hand->CreatureBeingGivenTo->GetCreature3D();
		if (creature3d->MoveState == LH3D_CREATURE_STATE_PICK_UP_FROM_HAND)
		{
			int timeLeft = abs((float)creature3d->AnimTimeInc * GGame::g_game->TurnFraction + creature3d->CycleTime[0] -
			                   creature3d->PickUpFromHandTime);
			if (timeLeft < 500)
			{
				float t = timeLeft / 500.0f;
				handPos = pickUpPos + (handPos - pickUpPos) * t;
				handPos.y -= (1.0f - t) * Hand->HoldHeight;
			}
		}
	}

	if (dynamic_cast<Living*>(collideObject) != NULL)
	{
		Creature*         creature = dynamic_cast<Creature*>(collideObject);
		GInterfaceStatus* status = GGame::g_game->MyInterface()->status;
		if (creature != NULL && Hand->HeldObject != NULL &&
		    creature->InterfaceValidToGiveObject(status, Hand->HeldObject) == true)
		{
			if (Hand->InteractCreature != creature)
			{
				Hand->InteractCreature = creature;
				Hand->InteractCreature3d = Hand->InteractCreature->GetCreature3D();
			}
			GiveToCreatureTimeLeft = 1100;
		}
	}

	if (GiveToCreatureTimeLeft > 0 && Hand->CreatureBeingGivenTo == NULL)
	{
		GiveToCreatureTimeLeft -= LH3DTech::g_delta_time;
		if (GiveToCreatureTimeLeft < 0)
		{
			GiveToCreatureTimeLeft = 0;
			Hand->InteractCreature = NULL;
			Hand->InteractCreature3d = NULL;
		}
	}

	if (Hand->CreatureBeingGivenTo != NULL)
	{
		LH3DCreature* creature3d = Hand->InteractCreature3d;
		float         maxDistance = creature3d != NULL ? creature3d->Size1 * 15.0f : 0.0f;
		if (creature3d != NULL && pickUpPos.GetDistance(Hand->GetPos()) > maxDistance)
		{
#ifdef VERSION_BW1WCI
			Creature* creature = creature3d->creature;
			if (creature == NULL ||
			    creature->mind->agenda.CurrentPlan.creature_action != CREATURE_TAKE_OBJECT_FROM_HAND)
			{
				GGame::g_game->SetPacket(PACKET_TYPE_CANCEL_GIVE_TO_CREATURE, creature->GetIndexOffset());
			}
#else
			GGame::g_game->SetPacket(PACKET_TYPE_CANCEL_GIVE_TO_CREATURE, creature3d->creature->GetIndexOffset());
#endif
		}
	}

	if (GiveToCreatureTimeLeft < 300 && Hand->CreatureBeingGivenTo == NULL)
	{
		RotationZoomer.SetDestination(0.0f, 0.4f);
	}
	else
	{
		switch (Hand->HoldType)
		{
		case HOLD_TYPE_ABOVE:
			RotationZoomer.SetDestination(Hand->HandOrientation != 0 ? -PI_F : PI_F, 0.4f);
			break;
		case HOLD_TYPE_TREE:
		case HOLD_TYPE_SIDE:
		case HOLD_TYPE_VILLAGER:
			RotationZoomer.SetDestination((Hand->HandOrientation != 0 ? -PI_F : PI_F) * 0.5f, 0.4f);
			break;
		}
	}
	RotationZoomer.Update(dt);

	HandLandPos.y += HeldObjectHeight;
	handPos.y += height;

	static uint32_t realTime = 0;
	static uint32_t throwTime = 0;
	realTime += GGame::g_game->TimeInc;

	if (InThrow && !(Hand->HeldObject != NULL && Hand->HeldObject->IsSpellSeed()))
	{
		do
		{
			throwTime += HAND_THROW_TIME_STEP;
			LHPoint spring = (handPos - Hand->GetPos()) * ThrowSpringStrength;
			LHPoint damping = ThrowVelocity * ThrowSpringDamping;
			LHPoint force = spring - damping;
			ThrowVelocity += force * (HAND_THROW_TIME_STEP * 0.001f);
			float speed = SquareRoot(ThrowVelocity.GetNormeSq());
			if (speed > PhysOb::MaximumVelocity)
			{
				ThrowVelocity *= PhysOb::MaximumVelocity / speed;
			}
			Hand->GetPos() += ThrowVelocity * (HAND_THROW_TIME_STEP * 0.001f);
		} while (throwTime < realTime);
	}
	else
	{
		Hand->GetPos() = handPos;
		if (GGame::g_game->MyInterface()->GetHandState() == HAND_STATE_IN_THROW)
		{
			if (!(Hand->HeldObject != NULL && Hand->HeldObject->IsSpellSeed()))
			{
				InThrow = true;
				Hand->GetPos() = handPos;
				ThrowVelocity.SetNull();
			}
		}
	}

	HeldObjectOffset.Set(0.0f, -Hand->HoldHeight, 0.0f);
	Hand->PickUpPos = handPos + HeldObjectOffset;

	if (InThrow)
	{
		Hand->ThrowVelocity = ThrowVelocity;
		Hand->ThrowSpin.SetNull();
	}

	if (Hand->HeldObject == NULL)
	{
		Hand->SetDistanceFromView((cameraPos - Hand->GetPos()).Normalize());

		CAnim*   anim = Hand->GetAnim(HAND_ANIM_NORMAL, 0);
		LHMatrix root;
		Hand->FillStandardPositionMatrix(root, Hand->GetPos(), LHPoint(0.0f, 1.0f, 0.0f));
		anim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime,
		                 Hand->frame, NULL, true);
		LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);
		Hand->DrawScreenPos = Hand->ScreenPos;
		return;
	}

	HeldObjectOffset.Set(0.0f, -1.0f, 0.0f);
	object3d->matrix.GetVectorY().Set(0.0f, 1.0f, 0.0f);

	float lagX = Hand->LaggedScreenPosX - Hand->ScreenPos.x;
	float tilt = 0.3f / MaxHandLagX * boundf(-MaxHandLagX, lagX, MaxHandLagX);

	LHPoint toCamera = cameraPos - Hand->GetPos();
	Hand->SetDistanceFromView(toCamera.Normalize());

	LHMatrix rotation;
	rotation.SetFromVectorAndAngle(toCamera, RotationZoomer.GetCurrentValue() + GetTiltForRender() + tilt);

	float lagY = Hand->ScreenPos.y - Hand->LaggedScreenPosY;
	tilt = 0.3f / MaxHandLagY * boundf(-MaxHandLagY, lagY, MaxHandLagY);

	LHPoint side = toCamera ^ LHPoint(0.0f, 1.0f, 0.0f);
	side.Normalise();

	LHMatrix tiltRotation;
	tiltRotation.SetFromVectorAndAngle(side, tilt);
	rotation.PostMultiply(tiltRotation);
	rotation.TransformPoint(object3d->matrix.GetVectorY());

	Hand->FillStandardObjectMatrix(object3d->matrix, LHPoint(Hand->GetPos()), LHPoint(object3d->matrix.GetVectorY()));
	object3d->matrix.RotateY(Hand->HeldObject->GetHoldYRotate());

	rotation.Set(object3d->matrix);
	rotation.NormaliseMatrixOnly();
	rotation.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));

	float scale = object3d->scale;
	object3d->matrix.GetVectorX().SetLength(scale);
	object3d->matrix.GetVectorY().SetLength(scale);
	object3d->matrix.GetVectorZ().SetLength(scale);

	LHPoint handUp = object3d->matrix.GetVectorY();
	handUp.Normalise();

	float  standardSize = CHand::GetStandardSize();
	CAnim* anim;
	switch (Hand->HoldType)
	{
	case HOLD_TYPE_ABOVE: {
		float holdRadius = Hand->HeldObject->GetHoldRadius();
		float ratio = holdRadius / (standardSize * Hand->DistanceScale * 1.2f);
		float fraction = min(1.0f, ratio);
		Hand->HoldHeight = Hand->HeldObject->GetHeight() * Hand->HeldObject->GetHoldLoweringMultiplier();
		anim = Hand->GetAnim(HAND_ANIM_HOLD_ABOVE, 0);
		HeldObjectOffset.SetLength(Hand->HoldHeight);
		rotation.TransformPoint(HeldObjectOffset);
		object3d->matrix.GetPos() = Hand->GetPos() + HeldObjectOffset;
		AnimationTime = (int)((anim->Duration * 0.5f) * (1.0f - fraction));
		break;
	}
	case HOLD_TYPE_MAGIC: {
		Hand->HoldHeight = Hand->HeldObject->GetHeight() * Hand->HeldObject->GetHoldLoweringMultiplier();
		HeldObjectOffset.SetNull();
		object3d->matrix.GetPos() = Hand->GetPos();
		anim = Hand->GetAnim(HAND_ANIM_NORMAL, 0);
		AnimationTime = anim->Duration >> 1;
		break;
	}
	case HOLD_TYPE_GRAIN: {
		float holdRadius = Hand->HeldObject->GetHoldRadius();
		float ratio = holdRadius / (standardSize * Hand->DistanceScale);
		float fraction = min(1.0f, ratio);
		Hand->HoldHeight = Hand->HeldObject->GetHeight() * Hand->HeldObject->GetHoldLoweringMultiplier();
		anim = Hand->GetAnim(HAND_ANIM_HOLD_GRAIN, 0);
		HeldObjectOffset.SetLength(Hand->HoldHeight);
		rotation.TransformPoint(HeldObjectOffset);
		object3d->matrix.GetPos() = Hand->GetPos() + HeldObjectOffset;
		AnimationTime = (int)((anim->Duration >> 1) * fraction);
		break;
	}
	case HOLD_TYPE_TREE:
	case HOLD_TYPE_SIDE:
	case HOLD_TYPE_VILLAGER: {
		float holdRadius = Hand->HeldObject->GetHoldRadius();
		float ratio = holdRadius / (standardSize * Hand->DistanceScale);
		float fraction = min(1.0f, ratio);
		Hand->HoldHeight = Hand->HeldObject->GetHeight() * Hand->HeldObject->GetHoldLoweringMultiplier();
		anim = Hand->GetAnim(HAND_ANIM_HOLD_SIDE, 0);
		HeldObjectOffset.SetLength(Hand->HoldHeight);
		rotation.TransformPoint(HeldObjectOffset);
		object3d->matrix.GetPos() = Hand->GetPos() + HeldObjectOffset;
		AnimationTime = (int)((anim->Duration >> 1) * fraction);
		break;
	}
	}

	Hand->ThrowPos = object3d->matrix.GetPos() + ThrowVelocity * 0.2f;
	object3d->matrix.GetYXZ(&Hand->ThrowAngles.y, &Hand->ThrowAngles.x, &Hand->ThrowAngles.z);

	LHPoint  rootPos = Hand->GetPos();
	LHMatrix root;
	Hand->FillStandardPositionMatrix(root, rootPos, handUp);
	anim->FillBuffer(Hand->TransformedMatrices, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices,
	                 AnimationTime, Hand->frame, NULL, true);
	LH3DAnim::FinishTransform(Hand->TransformedMatrices, Hand->GetMesh(), root);
	LHPoint unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7, unused8, unused9, unused10,
		unused11, unused12, unused13, unused14, unused15, unused16, unused17, unused18, unused19;
	Hand->DrawScreenPos = Hand->ScreenPos;
}

void HandStateHolding::DrawTheHeldObject()
{
	if (!PhysicsObject::PredictionActive || Hand->HeldObject != PhysicsObject::PredictionObject)
	{
		Hand->HeldObject->DrawOutOfMap(false);
	}
}

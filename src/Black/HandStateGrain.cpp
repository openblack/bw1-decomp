#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateGrain.h"

#include <math.h> /* For acos */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */

#include "ColourConstants.h"   /* For White */
#include "HalfLifeConstants.h" /* For OneOverLogHalf */
#include "ControlHand.h"       /* For CHand */
#include "Creature.h"          /* For Creature */
#include "Creature3D.h"        /* For LH3DCreature */
#include "Game.h"              /* For GGame */
#include "Interface.h"         /* For GInterface */

static int Unused = 0;

HandStateGrain::HandStateGrain(CHand* hand) : HandStateHolding(hand)
{
	UnusedClearedOnEnter = 0;
	Tilt = 0.0f;
	Raise = 0.0f;
	PreviousTilt = 0.0f;
	PreviousRaise = 0.0f;
	Ctr = NULL;
	ClampHand = false;
	Pouring = false;
	PourProgress = 0.0f;
	PourDuration = 1.0f;
	PourRaise = 0.0f;
	PourTilt = 0.0f;

	GJArray<float> envelope;
	envelope.SetSize(8);
	envelope.Entry(0) = 0.0f;
	envelope.Entry(1) = 0.0f;
	envelope.Entry(2) = 0.2f;
	envelope.Entry(3) = 1.0f;
	envelope.Entry(4) = 0.8f;
	envelope.Entry(5) = 1.0f;
	envelope.Entry(6) = 1.0f;
	envelope.Entry(7) = 0.0f;
	PourEnvelope.SetFromArray(envelope);
}

float HandStateGrain::GetRaiseForRender()
{
	return PreviousRaise + (Raise - PreviousRaise) * GGame::g_game->TurnFraction;
}

float HandStateGrain::GetTiltForRender()
{
	return PreviousTilt + (Tilt - PreviousTilt) * GGame::g_game->TurnFraction;
}

void HandStateGrain::Process(float dt)
{
	HandStateGrain* state = GGame::g_game->MyInterface()->GetRenderHand()->GetHandStateGrain();
	if (state != NULL)
	{
		state->PProcess(dt);
	}
}

void HandStateGrain::PProcess(float dt)
{
	PreviousTilt = Tilt;
	PreviousRaise = Raise;

	if (Ctr.Get() != NULL && Ctr.Get()->IsAvailable() != true)
	{
		Ctr = NULL;
	}

	if (Pouring)
	{
		PourProgress += dt / PourDuration;
		if (PourProgress > 1.0f)
		{
			if (PourType == POUR_TYPE_REPEAT)
			{
				PourProgress = 0.0f;
			}
			else
			{
				PEndTimedPour();
			}
		}
	}

	if (Pouring)
	{
		float envelope;
		PourEnvelope.EvalAtT(PourProgress, &envelope);
		Raise = envelope * PourRaise;
		Tilt = envelope * PourTilt;
	}
}

void HandStateGrain::EndTimedPour()
{
	HandStateGrain* state = GGame::g_game->MyInterface()->GetRenderHand()->GetHandStateGrain();
	if (state != NULL)
	{
		state->PEndTimedPour();
	}
}

void HandStateGrain::PEndTimedPour()
{
	Ctr = NULL;
	ClampHand = false;
	Raise = 0.0f;
	Tilt = 0.0f;
	Pouring = false;
}

void HandStateGrain::StartTimedPour(bool clamp_hand, float total_time, float height_to_raise, float angle_to_raise,
                                    POUR_TYPE type)
{
	HandStateGrain* state = GGame::g_game->MyInterface()->GetRenderHand()->GetHandStateGrain();
	if (state != NULL)
	{
		state->PStartTimedPour(clamp_hand, total_time, height_to_raise, angle_to_raise, type);
	}
}

void HandStateGrain::StartTimedPour(Creature* creature, float total_time, float height_to_raise, float angle_to_raise,
                                    POUR_TYPE type)
{
	HandStateGrain* state = GGame::g_game->MyInterface()->GetRenderHand()->GetHandStateGrain();
	if (state != NULL)
	{
		state->PSetCtr(creature);
		state->PStartTimedPour(true, total_time, height_to_raise, angle_to_raise, type);
	}
}

void HandStateGrain::PStartTimedPour(bool clamp_hand, float total_time, float height_to_raise, float angle_to_raise,
                                     POUR_TYPE type)
{
	PourType = type;
	PourDuration = total_time;
	PourRaise = height_to_raise;
	PourTilt = angle_to_raise;
	Pouring = true;
	PourProgress = 0.0f;
	ClampHand = clamp_hand;
	ClampedHandPos = Hand->GetPos();
}

void HandStateGrain::PSetCtr(Creature* creature)
{
	Ctr = creature;
}

void HandStateGrain::Enter()
{
	static float handVelocityResponse = 0.8f;
	static float turnResponse = 0.2f;

	HandStateHolding::Enter();

	HandMovement = LHPoint(0.0f, 0.0f, 0.0f);
	HandVelocity.Init(LHPoint(0.0f, 0.0f, 0.0f), handVelocityResponse);
	LateralAcceleration.Init(0.0f, turnResponse);
	TurnRate.Init(0.0f, turnResponse);

	GrainUpZoomer.x.SetPosition(0.0f);
	GrainUpZoomer.y.SetPosition(1.0f);
	GrainUpZoomer.z.SetPosition(0.0f);

	UnusedClearedOnEnter = 0;
	Pouring = false;
	ClampHand = false;
	Ctr = NULL;
	Tilt = 0.0f;
	Raise = 0.0f;
	PreviousTilt = 0.0f;
	PreviousRaise = 0.0f;
}

void HandStateGrain::Exit()
{
	Pouring = false;
	Ctr = NULL;
}

void HandStateGrain::OverrideHandPos(LHPoint* pos)
{
	Creature* creature = Ctr.Get();
	if (creature == NULL)
	{
		if (ClampHand)
		{
			*pos = ClampedHandPos;
		}
	}
	else
	{
		LH3DCreature* creature3d = creature->GetCreature3D();
		*pos = creature3d->GetMatrixBuffer()[creature3d->GetHeadBone()].GetPos();
	}
}

static LHPoint LastHandPos;

void HandStateGrain::Update(float dt, LHMatrix* buffer)
{
	LHPoint oldPos = Hand->GetPos();
	LHPoint oldMovement = HandMovement;

	if (Hand->HeldObject == NULL)
	{
		return;
	}

	HandStateHolding::Update(dt, buffer);

	Hand->ThrowPos = Hand->GetPos();
	LastHandPos = Hand->GetPos();
	HandMovement = Hand->GetPos() - oldPos;

	float   invDt = 1.0f / dt;
	LHPoint velocity = (Hand->GetPos() - oldPos) * invDt;
	HandVelocity.Update(dt, velocity);
	Hand->ThrowVelocity = HandVelocity.GetValue();

	LHPoint sideways(oldMovement.z, 0.0f, -oldMovement.x);
	float   lateral = 0.0f;
	if (sideways.Normalize() != 0.0f)
	{
		lateral = HandMovement * sideways;
	}
	LateralAcceleration.Update(dt, lateral * invDt * invDt);

	float   angle = 0.0f;
	LHPoint oldDirection(oldMovement.x, 0.0f, oldMovement.z);
	LHPoint direction(HandMovement.x, 0.0f, HandMovement.z);
	if (oldDirection.GetNormeSq() > 0.0001f && direction.GetNormeSq() > 0.0001f)
	{
		angle = acos(direction * oldDirection / (direction.GetNorme() * oldDirection.GetNorme()));
	}
	TurnRate.Update(dt, angle * invDt);

	float   speed = HandVelocity.GetValue().GetNorme();
	LHPoint spin = LHPoint(0.0f, 0.0f, 0.0f);
	spin.x = TurnRate.GetValue();

	static bool spinFromTurnRate = false;
	if (spinFromTurnRate)
	{
		spin.y = -TurnRate.GetValue();
	}
	else if (speed > 0.0001f)
	{
		spin.y = -LateralAcceleration.GetValue() / speed;
	}
	else
	{
		spin.y = 0.0f;
	}
	Hand->ThrowSpin = spin;
}

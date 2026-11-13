#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h"
#include "CellSize.h"
#include "LandscapeConstants.h"
#include "ZeroPointConstants.h"

#include "CreatureSubAction.h"
#include "CreatureSubStateTableEntry.h"

#include "Abode.h"
#include "Alignment.h"
#include "AnimatedGesture.h"
#include "Arena.h"
#include "BuildingSite.h"
#include "Camera.h"
#include "CameraModeNew3.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureActionInfo.h"
#include "CreatureAgenda.h"
#include "CreatureDesireTableEntry.h"
#include "CreatureExplorationMap.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"
#include "CreaturePlan.h"
#include "CreatureReceiveSpell.h"
#include "Dance.h"
#include "EffectNumbers.h"
#include "EffectValues.h"
#include "ParticleContainer.h"
#include "DanceGroup.h"
#include "DanceInfo.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameThingWithPos.h"
#include "HelpSystem.h"
#include "InterfaceStatus.h"
#include "LandFeature.h"
#include "Landscape.h"
#include "Living.h"
#include "MagicEffectInfo.h"
#include "MagicFood.h"
#include "MagicTeleport.h"
#include "MapCoords.h"
#include "MapCoordsMeters.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "OneOffSpellSeed.h"
#include "PSysProperties.h"
#include "Player.h"
#include "Pot.h"
#include "PotInfo.h"
#include "PuzzleGame.h"
#include "Rand.h"
#include "Reaction.h"
#include "Rock.h"
#include "RoutePlan.h"
#include "SoundGuidance.h"
#include "SoundTag.h"
#include "SpellSeedInfo.h"
#include "SubArgument.h"
#include "TimerConstants.h"
#include "TotemStatue.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerInfo.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DJustFootPrint.h>
#include <Lionhead/LH3DLib/development/LH3DLine.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */
#include <Lionhead/LHLib/ver5.0/RPFollow.h>
#include <chlasm/CreatureSpec.h> /* For C_FIGHT_EXTRA_CREATION, enum CREATURE_ANIMATIONS */
#include <math.h>
#include <windows.h> /* For max, min */

#pragma warning(disable : 4716)

#define CREATURE_THROW_TIME(distance) ((float)sqrt((distance) / OBJECT_GRAVITY))

#define CREATURE_FOLLOW_CAMERA_SECONDS         30.0f
#define CREATURE_PRACTICE_DANCE_ANIMATION_TIME 1000
#define CREATURE_DANCE_GAME_ANGLE_HALF_TURN    1024.0f
#define CREATURE_DANCE_GAME_ANGLE_FULL_TURN    2048.0f
#define CREATURE_DANCE_MILLISECONDS_PER_SECOND 1000.0f
#define CREATURE_DANCE_FACIAL_ACTION_TIME      2000
#define CREATURE_DANCE_POINT_DISTANCE          50.0f
#define CREATURE_DANCE_MIN_DISTANCE            0.2f
#define CREATURE_DANCE_MOVE_SPEED              0.1f
#define CREATURE_DANCE_LOOK_AT_RANGE           0.1f
#define CREATURE_COMMUNICATE_FEEDBACK_SECONDS  10.0f
#define CREATURE_COMMUNICATE_SUPPRESS_SECONDS  60.0f
// BW1W120 00da59d8
extern JustMapXZ MapXZDirections8[8];
const float      TransportSeconds = 2.0f;
#define CREATURE_TRANSPORT_HOME_FIZZ_SECONDS    2.0f
#define CREATURE_TRANSPORT_HOME_MAX_NEED        0.9f
#define CREATURE_TRANSPORT_HOME_MIN_ENERGY      0.1f
#define CREATURE_WATCH_PLAYER_MIN_HAND_MOVEMENT 30.0f
#define CREATURE_WATCH_PLAYER_MIN_DISTANCE      0.1f
#define CREATURE_EX_NIHILO_POT_SCALE            1.5f
#define CREATURE_DANCE_VILLAGER_LIMIT           11
#define CREATURE_SLEEP_DURATION_SCALE           5.0f
#define CREATURE_SLEEP_MIN_EXHAUSTION           0.1f
#define CREATURE_SLEEP_MIN_TURNS                50
#define CREATURE_FOOD_PILE_SEARCH_STEPS         25
#define CREATURE_GET_AWAY_RADIUS_SCALE          1.2f
#define CREATURE_GET_AWAY_MIN_DISTANCE          0.0001f

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

int Creature::SubStateInitiatePickUp()
{
	return SubStateInitiatePickUpParameter(mind->agenda.SubActionAgenda.GetObjectArgument());
}

uint32_t Creature::SubStateInitiatePickUpParameter(CreatureBelief* belief)
{
	if (belief == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	if (belief->Pointer->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	Object* object = dynamic_cast<Object*>(belief->Pointer);
	if (object == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	if (!object->CanBePickedUpByCreature(this))
	{
		belief->SetNavigationBlockedFlag();
		FinishActionUnsuccessfully("Stopping pickup because object not in map", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	if (!object->IsObjectInMap() && object->info->type != OBJECT_TYPE_BALL)
	{
		belief->SetNavigationBlockedFlag();
		FinishActionUnsuccessfully("Stopping pickup because object not in map", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	LH3DCreature* creature3d = physical->Creature3d;
	if (!CanSeeAnObject(object))
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, pos);
		switch (StartMovingToPoint(belief, pos, (object->Get2DRadius() + Get2DRadius()) * 2.0f, 0.0f))
		{
		case 0:
		case 2:
			belief->SetNavigationBlockedFlag();
			DebugPath.Add(NEW(140) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 3:
			break;
		default:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
	}
	LHPoint pos;
	switch (creature3d->GetBlendedActionStatus(object, &pos, LH3D_CREATURE_STATE_PICKING_UP))
	{
	case 0: {
		float height = fabs(object->Pos.altitude - Pos.altitude);
		if (object->Pos.GetDistance(Pos) < height && height > 5.0f)
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		if (creature3d->StartBlendedAction(object, LH3D_CREATURE_STATE_PICKING_UP))
		{
			object->Flags |= GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
			if (object->IsAvailable())
			{
				float objectWeight = object->GetWeight();
				float ownWeight = GetWeight();
				float weight = ownWeight != 0.0f ? objectWeight / ownWeight : 0.0f;
				if (weight < 0.0f)
					weight = 0.0f;
				else if (weight > 1.0f)
					weight = 1.0f;
				physical->ModifyStrength(CreatureActionInfo::GetInfo()[CREATURE_HURL].StrengthGain * weight);
			}
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	case 1: {
		int result = StartMovingToPoint(belief, pos,
		                                creature3d->CalculateMaximumActionRange(LH3D_CREATURE_STATE_PICKING_UP), 0.0f);
		if (result == 0 || result == 2)
		{
			belief->SetNavigationBlockedFlag();
			DebugPath.Add(NEW(190) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	case 2:
		belief->SetNavigationBlockedFlag();
		DebugPath.Add(NEW(198) LHPoint(pos));
		FinishActionUnsuccessfully("Stopping because 3d pickup failed", true, true);
		break;
	}

	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformPickUp()
{
	return SubStatePerformPickUpParameter(mind->agenda.SubActionAgenda.GetObjectArgument());
}

uint32_t Creature::SubStatePerformPickUpParameter(CreatureBelief* belief)
{
	if (belief == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	if (physical->Creature3d->IsPerformingBodyAction())
	{
		if (physical->Creature3d->GetObjectActionStatus() == 3)
		{
			Object* object = dynamic_cast<Object*>(belief->Pointer);
			physical->Creature3d->LookPoint.SetNull();
			if (object->IsObjectInMap())
			{
				Villager* villager = dynamic_cast<Villager*>(object);
				if (villager != NULL && (villager->Flags & VILLAGER_FLAG_AT_HOME))
					villager->LeaveHome();
			}
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	switch (physical->Creature3d->GetObjectActionStatus())
	{
	case 1:
	case 3:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	case 2:
		return CREATURE_SUB_STATE_RESULT_ABORT;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateCreatePickUpThenRemove()
{
	float     size = physical->Creature3d->Size1;
	MapCoords pos;
	CalculateCreationPos(mind->agenda.SubActionAgenda.GetObjectArgument()->Pos, &pos);
	GameThingWithPos* source = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	const GPotInfo*   info = &GPotInfo::GetInfo()[mind->agenda.SubActionAgenda.GetIntegerArgument()];
	unsigned long     amount = (unsigned long)(MillisecondsPerSecond * size);
	amount = min(amount, source->GetResource(info->ResourceType));
	Pot* pot = Pot::Create(pos, info, amount, NULL, pos.GetNearestTown(MaxFloat), 0, 0.0f, 1.0f, false);
	pot->SetScale(3.75f * physical->Creature3d->Size1);
	mind->agenda.CreatedObject = pot;
	mind->agenda.SubActionAgenda.PotResourcesTransferred = false;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformCreatePickUpThenRemove()
{
	if (physical->Creature3d->IsPerformingBodyAction())
	{
		if (physical->Creature3d->GetObjectActionStatus() == 3)
		{
			if (!mind->agenda.SubActionAgenda.PotResourcesTransferred)
			{
				Pot*              sourcePot = NULL;
				GameThingWithPos* source = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
				if (source != NULL)
					sourcePot = dynamic_cast<Pot*>(source);
				if (sourcePot != NULL)
				{
					Pot* createdPot = dynamic_cast<Pot*>(mind->agenda.CreatedObject);
					if (createdPot == NULL)
						return CREATURE_SUB_STATE_RESULT_FAILURE;
					RESOURCE_TYPE type = ((const GPotInfo*)createdPot->info)->ResourceType;
					sourcePot->RemoveResource(type, createdPot->GetResource(createdPot->GetResourceType()), NULL, NULL);
				}
				mind->agenda.SubActionAgenda.PotResourcesTransferred = true;
			}
			Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
			physical->Creature3d->LookPoint.SetNull();
			if (object->IsObjectInMap())
			{
				Villager* villager = dynamic_cast<Villager*>(object);
				if (villager != NULL && (villager->Flags & VILLAGER_FLAG_AT_HOME))
					villager->LeaveHome();
			}
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	switch (physical->Creature3d->GetObjectActionStatus())
	{
	case 1:
	case 3:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	case 2:
		return CREATURE_SUB_STATE_RESULT_ABORT;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateDiscard()
{
	if (physical->ObjectCarried == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	if (physical->Creature3d->StartObjectRemoveAction(mind->agenda.SubActionAgenda.GetIntegerArgument()))
	{
		LastDroppedObject = physical->ObjectCarried;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return !physical->Creature3d->IsPerformingBodyAction();
}

int Creature::SubStatePerformDiscard()
{
	if (physical->Creature3d->HeldObject == NULL)
	{
		physical->ObjectCarried = NULL;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishDiscard()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateEat()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	if (physical->Creature3d->HeldObject != NULL)
	{
		physical->Creature3d->StartObjectRemoveAction(C_OBJECT_REMOVE_EAT);
		float food = physical->ObjectCarried->GetFoodValue(FOOD_TYPE_RESOURCE);
		food /= min(0.8f, physical->Size) * GetInfo()->FoodSizeScale;
		float energy = food * GetInfo()->FoodEnergyGain + physical->Energy - 1.0f;
		if (energy > 0.0f)
		{
			CreaturePhysical* body = physical;
			body->Fatness += energy;
			CLAMP(body->Fatness, 0.0f, 1.0f);
		}
		CreaturePhysical* body = physical;
		body->Energy += food;
		CLAMP(body->Energy, 0.0f, body->GetMaxEnergy());
		CLAMP(food, 0.0f, 1.0f);
		body = physical;
		body->AmountOfPoo += food * GetInfo()->PooPerFood;
		CLAMP(body->AmountOfPoo, 0.0f, 1.0f);
		NumTimesPerformedAction[SCRIPT_PERFORMED_ACTION_EAT] += 1.0f;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	FinishActionUnsuccessfully("Stopping eating because no object in hand to eat", true, true);
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformEat()
{
	if (physical->Creature3d->HeldObject == NULL)
	{
		mind->agenda.BodyActionStarted = true;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishEatCreatedObject()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		if (mind->agenda.CreatedObject != NULL)
		{
			Object* object = dynamic_cast<Object*>(mind->agenda.CreatedObject);
			if (object != NULL)
				return ActuallyEatObject(object);
		}
		return CREATURE_SUB_STATE_RESULT_ABORT;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::ActuallyEatObject(Object* object)
{
	physical->ObjectCarried = NULL;
	if (!(object->Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) &&
	    (!(object->Flags & GAME_THING_WITH_POS_FLAG_IN_SCRIPT) || !GGame::g_game->help_system->WideScreen ||
	     !GGame::g_game->help_system->GetWideScreenControl()))
	{
		float    food = object->GetFoodValue(FOOD_TYPE_RESOURCE);
		bool32_t isMushroom = object->IsMushroom(this);
		if (isMushroom && mind->agenda.ForcedActionFunction == NULL)
			mind->agenda.ForcedActionFunction = &Creature::BecomeHigh;
		bool32_t poisoned = object->IsPoisoned();
		int      type = object->info->type;
		if (object->IsAvailable())
		{
			UpdateStatsWhenObjectKilled(object);
			UpdateStatsWhenObjectEaten(object);
			DestroyObjectInHand(object);
		}
		if (!isMushroom && !object->IsPileFood() && (food < 5.0 || poisoned))
		{
			mind->agenda.SubActionAgenda.NumSubActions = 0;
			mind->desires.SuppressDesire(CREATURE_DESIRE_HUNGER, CREATURE_EAT_SUPPRESS_SECONDS);
			if (!poisoned)
				mind->learning.ObjectEatenNoFoodCounts[type]++;
			CommandActivityAndAction(CREATURE_DESIRE_TO_PUKE, NULL, CREATURE_PUKE, mind->GetBeliefAboutObject(this),
			                         NULL);
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		mind->learning.ObjectEatenCounts[type]++;
		mind->desires.SetLevel(CREATURE_DESIRE_HUNGER,
		                       mind->desires.GetDesire(CREATURE_DESIRE_HUNGER) -
		                           food / (min(physical->Size, 0.8f) * GetInfo()->FoodSizeScale));
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	mind->agenda.SubActionAgenda.NumSubActions = 0;
	mind->desires.SuppressDesire(CREATURE_DESIRE_HUNGER, CREATURE_EAT_SUPPRESS_SECONDS);
	CommandActivityAndAction(CREATURE_DESIRE_TO_PUKE, NULL, CREATURE_PUKE, mind->GetBeliefAboutObject(this), NULL);
	LHPoint spin(0.0f, 0.0f, 0.0f);
	LHPoint velocity(0.0f, 0.0f, 0.0f);
	object->InitialisePhysics(velocity, spin, this, true, NULL);
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishEat()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
		if (belief != NULL)
		{
			Object* object = dynamic_cast<Object*>(belief->Pointer);
			if (object != NULL)
				return ActuallyEatObject(object);
		}
		return CREATURE_SUB_STATE_RESULT_ABORT;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateHeldObjectAction()
{
	if (physical->Creature3d->StartObjectKeepAction(mind->agenda.SubActionAgenda.GetIntegerArgument()))
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	return !physical->Creature3d->IsPerformingBodyAction();
}

int Creature::SubStatePerformHeldObjectAction()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateRestToGetBetter()
{
	if (physical->Creature3d->StartStaticAction(C_STATIC_SLEEP))
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRestToGetBetter()
{
	SetTemperature(Pos.GetTemperature(), NULL);
	float gain = GetInfo()->RestLifeGain;
	float life = GetLife() + gain;
	CLAMP(life, 0.0f, 1.0f);
	float exhaustion = physical->Exhaustion - GetInfo()->RestExhaustionLoss;
	CLAMP(exhaustion, 0.0f, 1.0f);
	SetLife(life);
	physical->Exhaustion = exhaustion;
	if (life == 1.0f && exhaustion == 0.0f && mind->agenda.SubActionAgenda.TurnsInPart > 30)
	{
		physical->Creature3d->EndStaticAction();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformStopBeingOnFire()
{
	SetTemperature(Pos.GetTemperature(), NULL);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateStaticAction()
{
	if (physical->Creature3d->StartStaticAction(mind->agenda.SubActionAgenda.GetIntegerArgument()))
	{
		TurnsUntilNextStateChange =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(mind->agenda.SubActionAgenda.GetFloatArgument());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformStaticAction()
{
	if (mind->agenda.SubActionAgenda.GetIntegerArgument() == C_STATIC_SIT)
	{
		float exhaustion = physical->GetExhaustion() - GetInfo()->RestExhaustionLoss / 5.0f;
		physical->Exhaustion = exhaustion < 0.0f ? 0.0f : exhaustion > 1.0f ? 1.0f : exhaustion;
	}
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange == 0)
	{
		physical->Creature3d->EndStaticAction();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishStaticAction()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateCastSpell()
{
	if (physical->Creature3d->StartStaticAction(mind->agenda.SubActionAgenda.GetIntegerArgument()))
	{
		TurnsUntilNextStateChange = 0;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCastSpellAtObject()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	if (physical->Creature3d->MoveState == LH3D_CREATURE_STATE_DO_STATIC)
	{
		if (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Spell != 0)
		{
			mind->agenda.BodyActionStarted = true;
			if (!CastSpellOnObject((MAGIC_TYPE)mind->agenda.SubActionAgenda.GetSpellArgument(), object, 10.0f, 0))
				return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		TurnsUntilNextStateChange =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(mind->agenda.SubActionAgenda.GetFloatArgument());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCastSpellAtPos()
{
	if (physical->Creature3d->MoveState == LH3D_CREATURE_STATE_DO_STATIC)
	{
		if (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Spell != 0)
		{
			mind->agenda.BodyActionStarted = true;
			MapCoords coords;
			GLandscape::ConvertLandscapePointToMapCoord(*mind->agenda.SubActionAgenda.GetPositionArgument(), coords);
			if (!CastSpellAtPos((MAGIC_TYPE)mind->agenda.SubActionAgenda.GetSpellArgument(), coords, 10.0f, 0))
				return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		TurnsUntilNextStateChange =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(mind->agenda.SubActionAgenda.GetFloatArgument());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishCastSpell()
{
	if (TurnsUntilNextStateChange == 0)
	{
		DestroySpell();
		physical->Creature3d->EndStaticAction();
		if (physical->Creature3d->IsPerformingBodyAction())
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	TurnsUntilNextStateChange--;
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateThrowAtPos()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	if (physical->ObjectCarried == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	LH3DCreature* creature3d = physical->Creature3d;
	LHPoint       pos = creature3d->GetPos();
	LHPoint       target = *mind->agenda.SubActionAgenda.GetPositionArgument();
	float         time = CREATURE_THROW_TIME(range_2d(target, pos));
	return creature3d->ThrowAtPointGivenTime(target, time) ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                       : CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateThrowInPile()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	if (physical->ObjectCarried != NULL)
	{
		Object*        object = dynamic_cast<Object*>(mind->agenda.CurrentPlan.ObjectToActOn->GetPointer());
		MultiMapFixed* pile = dynamic_cast<MultiMapFixed*>(object);
		if (pile != NULL)
		{
			LH3DCreature* creature3d = physical->Creature3d;
			LHPoint       pos = creature3d->GetPos();
			uint32_t      resourceType = mind->agenda.SubActionAgenda.GetIntegerArgument();
			MapCoords     resourcePos = pile->GetResourcePos((RESOURCE_TYPE)resourceType, 0);
			LHPoint       target;
			GLandscape::ConvertMapCoordToLandscapePoint(resourcePos, target);
			creature3d->GetApproximateThrowTime(12.0f);
			float    time = CREATURE_THROW_TIME(range_2d(target, pos));
			bool32_t thrown = creature3d->ThrowAtPointGivenTime(target, time);
			LHPoint  top = target;
			top.y += 50.0f;
			LH3DColor red(0xff, 0x00, 0x00);
			LH3DLine::AddLine(target, top, &red, NULL);
			if (thrown)
			{
				mind->agenda.ObjectToThrowInPile = physical->ObjectCarried;
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			}
		}
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateFinishThrowInPile()
{
	if (physical->Creature3d->IsPerformingBodyAction() ||
	    (mind->agenda.ObjectToThrowInPile != NULL &&
	     (mind->agenda.ObjectToThrowInPile->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)))
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateThrow()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	if (physical->ObjectCarried != NULL)
	{
		GameThingWithPos* thing = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
		LH3DCreature*     creature3d = physical->Creature3d;
		LHPoint           pos = creature3d->GetPos();
		LHPoint           target;
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, target);
		float approxTime = creature3d->GetApproximateThrowTime(40.0f);
		float time = CREATURE_THROW_TIME(range_2d(target, pos));
		thing->CalculateWhereIWillBeAfterNSeconds(time, &target);
		time = CREATURE_THROW_TIME(range_2d(target, pos));
		thing->CalculateWhereIWillBeAfterNSeconds(approxTime + time, &target);
		if (creature3d->ThrowAtPointGivenTime(target, time))
		{
			LastDroppedObject = physical->ObjectCarried;
			physical->ObjectCarried = NULL;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformThrow()
{
	return physical->Creature3d->HeldObject == NULL ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishThrow()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateTurnToFaceObject()
{
	LHPoint direction;
	direction.x = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
	                  .Belief->Pointer->Pos.MetersX() -
	              Pos.MetersX();
	direction.y = 0.0f;
	direction.z = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
	                  .Belief->Pointer->Pos.MetersZ() -
	              Pos.MetersZ();
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformTurnToFaceObject()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		LHPoint direction;
		direction.x = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
		                  .Belief->Pointer->Pos.MetersX() -
		              Pos.MetersX();
		direction.y = 0.0f;
		direction.z = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
		                  .Belief->Pointer->Pos.MetersZ() -
		              Pos.MetersZ();
		if (range_2d(direction) < 0.1f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > EIGHTH_PI_F)
		{
			physical->StartTurning(heading);
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		float seconds = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Float;
		mind->agenda.SubActionAgenda.PotResourcesTransferred =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishTurnToFaceObject()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		if (mind->agenda.SubActionAgenda.PotResourcesTransferred == 0)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
		agenda.PotResourcesTransferred--;
		LHPoint direction;
		direction.x = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
		                  .Belief->Pointer->Pos.MetersX() -
		              Pos.MetersX();
		direction.y = 0.0f;
		direction.z = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
		                  .Belief->Pointer->Pos.MetersZ() -
		              Pos.MetersZ();
		if (range_2d(direction) < 0.1f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > EIGHTH_PI_F)
			physical->StartTurning(heading);
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateTurnToFacePos()
{
	LH3DCreature* creature3d = physical->Creature3d;
	LHPoint       direction;
	direction.x = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Point.x -
	              creature3d->GetPos().x;
	direction.y = 0.0f;
	direction.z = mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Point.z -
	              creature3d->GetPos().z;
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	float diff = angle_correct(heading - creature3d->Heading);
	if ((float)fabs(diff) > EIGHTH_PI_F)
		return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED
		                                       : CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformTurnToFacePos()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	physical->Creature3d->StopPointing();
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateMoveToNearestWater()
{
	MapCoords coast;
	MapCoords water;
	bool32_t  foundCoast = mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, Pos, &coast,
	                                                        PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, true);
	bool32_t  foundWater = mind->ExplorationMap.FindNearest(REGION_TYPE_WATER, coast, &water,
	                                                        PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, true);
	if (foundCoast && foundWater)
	{
		LHPoint coastPoint = coast.GetLHPoint();
		LHPoint waterPoint = water.GetLHPoint();
		mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.GetSubActionIndex()].Point =
			coastPoint + (waterPoint - coastPoint) * 0.5f;
		return SubStateInitiateMoveToPos();
	}
	return CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStateInitiateRunAway()
{
	LHPoint pos;
	LHPoint runAwayPoint;
	GLandscape::ConvertMapCoordToLandscapePoint(mind->agenda.SubActionAgenda.GetObjectArgument()->Pos, pos);
	GetRunAwayPoint(pos, &runAwayPoint);
	if (physical->Creature3d->IsMovingOrStanding())
	{
		physical->Creature3d->SetRequiredSpeed(GetInfo()->RunSpeed);
		switch (StartMovingToPoint(NULL, runAwayPoint, GetHeight() * 5.0f, 0.0f))
		{
		case 0:
		case 1:
		case 2:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRunAway()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		float runAwayDistance = GetInfo()->RunAwayDistance;
		if (GUtils::GetDistanceInMetres(Pos, mind->agenda.SubActionAgenda.GetObjectArgument()->Pos) > runAwayDistance)
			mind->desires.ForceCompletion = true;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateMoveToPos()
{
	LHPoint pos = *mind->agenda.SubActionAgenda.GetPositionArgument();
	switch (StartMovingToPoint(NULL, pos, mind->agenda.SubActionAgenda.GetFloatArgument(), 0.0f))
	{
	case 0:
	case 2:
		FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	case 1:
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	case 3:
	case 4:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	default:
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
}

int Creature::SubStateFinishMoveToPos()
{
	return physical->Creature3d->IsMoving() ? CREATURE_SUB_STATE_RESULT_CONTINUE : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateRunAwayFromHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint hand;
	LHPoint runAwayPoint;
	hand = GetNearestHandInterfaceStatus()->GetHandPos();
	GetRunAwayPoint(hand, &runAwayPoint);
	if (physical->Creature3d->IsMovingOrStanding())
	{
		switch (StartMovingToPoint(NULL, runAwayPoint, GetHeight() * 5.0f, 0.0f))
		{
		case 0:
		case 2:
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 1:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRunAwayFromHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (physical->Creature3d->IsMovingOrStanding())
	{
		float     runAwayDistance = GetInfo()->RunAwayDistance;
		MapCoords handCoords;
		LHPoint&  handPos = GetNearestHandInterfaceStatus()->GetHandPos();
		GLandscape::ConvertLandscapePointToMapCoord(handPos, handCoords);
		if (GUtils::GetDistanceInMetres(Pos, handCoords) > runAwayDistance)
			mind->desires.ForceCompletion = true;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateIndividualAction()
{
	long          action = mind->agenda.SubActionAgenda.GetIntegerArgument();
	LH3DCreature* creature3d = physical->Creature3d;
	return creature3d->StartIndividualAction(action) ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                 : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformIndividualAction()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformChooseObjectToHurl()
{
	return mind->agenda.CurrentPlan.ObjectToUse != NULL ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                    : CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformAddVillagersToDance()
{
	Object*   object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	Villager* villager = dynamic_cast<Villager*>(object);
	if (villager != NULL)
	{
		Town* town = villager->GetTown();
		if (town != NULL)
		{
			LHLinkedList<Villager*> candidates;
			FOREACH_LH_LIST_HEAD(Abode, abode, town->AbodeList)
			{
				FOREACH_LH_LIST_HEAD(Villager, candidate, abode->villagers)
				{
					if (candidate->IsAvailableToBeSummonedByCreature())
						candidates.Add(candidate);
				}
			}
			uint32_t numCandidates = candidates.count;
			if (numCandidates >= mind->agenda.SubActionAgenda.GetIntegerArgument())
			{
				int numAdded = 0;
				for (LHLinkedNode<Villager*>* node = candidates.GetStart(); node != NULL; node = node->next.Get())
				{
					Villager* dancer = node->payload;
					if (dancer->StartWorshippingCreature(this) == true)
					{
						ControlledVillagers.Add(dancer);
						numAdded++;
						if (numAdded > CREATURE_DANCE_VILLAGER_LIMIT ||
						    ((numCandidates & 1) == 1 && numAdded >= numCandidates - 1) ||
						    numAdded > town->stats.NumAdults * 2 / 3)
						{
							if (numAdded % 2 == 0)
								break;
						}
					}
				}
				candidates.RemoveAll();
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			}
			candidates.RemoveAll();
			FinishActionUnsuccessfully("Stopping dancingwithvillagers cos no villagers to dance with", true, true);
		}
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformTellVillagersToGoNearPos()
{
	MapCoords target;
	GLandscape::ConvertLandscapePointToMapCoord(*mind->agenda.SubActionAgenda.GetPositionArgument(), target);
	Object*   object = mind->agenda.CurrentPlan.ObjectToActOn->GetObjectPointer();
	Villager* leader = dynamic_cast<Villager*>(object);
	if (leader != NULL)
	{
		uint32_t numTold = 0;
		for (LHLinkedNode<Villager*>* node = ControlledVillagers.GetStart(); node != NULL; node = node->next.Get())
		{
			Villager* villager = node->payload;
			target.SetMetersX(target.MetersX() + GAME_FLOAT_RAND(1481, 10.0f) - 5.0f);
			target.SetMetersZ(target.MetersZ() + GAME_FLOAT_RAND(1482, 10.0f) - 5.0f);
			villager->SetSpeed(villager->GetInfo()->FleeingSpeed * 2, true);
			villager->SetupMoveToPos(target, VILLAGER_STATE_CONTROLLED_BY_CREATURE);
			villager->SetSpeed(villager->GetInfo()->FleeingSpeed * 2, true);
			numTold++;
		}
		if (numTold > 0)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformTellVillagersToGoToDancePos()
{
	uint32_t numTold = 0;
	for (LHLinkedNode<Villager*>* node = ControlledVillagers.GetStart(); node != NULL; node = node->next.Get())
	{
		Villager* villager = node->payload;
		if (villager->dance_group.Get() != NULL)
		{
			MapCoords dancePos;
			villager->CalculateDancePosition(villager->dance_group.Get()->Dancer->Pos, &dancePos);
			GUtils::GetDistanceInMetres(dancePos, villager->dance_group.Get()->Dancer->Pos);
			villager->SetSpeed(villager->GetInfo()->FleeingSpeed * 2, true);
			if (dance == NULL)
				villager->SetupMoveToPos(dancePos, VILLAGER_STATE_CONTROLLED_BY_CREATURE);
			else
				villager->SetupMoveToOnFootpath(*dance, dancePos, VILLAGER_STATE_CONTROLLED_BY_CREATURE);
			villager->SetSpeed(villager->GetInfo()->FleeingSpeed * 2, true);
			numTold++;
		}
	}
	if (numTold > 0)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformTellVillagersToEnterState()
{
	uint32_t state = mind->agenda.SubActionAgenda.GetIntegerArgument();
	for (LHLinkedNode<Villager*>* node = ControlledVillagers.GetStart(); node != NULL; node = node->next.Get())
	{
		Villager* villager = node->payload;
		villager->status &= ~LIVING_STATUS_CONTROLLED_BY_CREATURE;
		if (villager->reaction.Get() != NULL)
			villager->StopReacting();
		villager->SetTopState(state);
		villager->status |= LIVING_STATUS_CONTROLLED_BY_CREATURE;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformTellVillagersToStartDancing()
{
	Object*   object = mind->agenda.CurrentPlan.ObjectToActOn->GetObjectPointer();
	Villager* leader = dynamic_cast<Villager*>(object);
	if (leader != NULL)
	{
		for (LHLinkedNode<Villager*>* node = ControlledVillagers.GetStart(); node != NULL; node = node->next.Get())
		{
			Villager* villager = node->payload;
			if (villager->dance_group.Get() != NULL)
				villager->SetTopState(VILLAGER_STATE_WORSHIPPING_CREATURE);
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformFacialAnimation()
{
	CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
	physical->Creature3d->StartFacialAction(agenda.SubActions[agenda.CurrentSubAction].Integer, 5000);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateFaint()
{
	Fainted = true;
	CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
	physical->Creature3d->StartDeathAction(agenda.SubActions[agenda.CurrentSubAction].Integer);
	Reaction::CreateReaction(this, REACTION_REACT_TO_DEATH, NULL, 0);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformFaint()
{
	return physical->Creature3d->IsActuallyDead() ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                              : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishPoo()
{
	CreaturePhysical* creaturePhysical = physical;
	creaturePhysical->AmountOfPoo -= physical->GetAmountOfPoo();
	CLAMP(creaturePhysical->AmountOfPoo, 0.0f, 1.0f);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateMoveToThrowPos()
{
	GameThingWithPos* target = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	float             dx = target->Pos.MetersX() - Pos.MetersX();
	float             dz = target->Pos.MetersZ() - Pos.MetersZ();
	float             distance = sqrt(dx * dx + dz * dz);
	Object*           object = dynamic_cast<Object*>(target);
	float             doubleHeight = GetHeight() * 2.0f;
	float             objectRadius = object == NULL ? 2.0f : object->Get2DRadius();
	float             minDistance = mind->agenda.SubActionAgenda.GetFloatArgument() + objectRadius + doubleHeight;
	float             maxDistance = GetHeight() * 3.5f;
	if (distance < minDistance)
	{
		LHPoint pos;
		pos.y = 0.0f;
		pos.x = target->Pos.MetersX() - dx * minDistance / distance;
		pos.z = target->Pos.MetersZ() - dz * minDistance / distance;
		if (!GetCreature3D()->IsDestinationValid(&pos))
		{
			LHPoint validPos;
			LH3DCreature::SpiralCheckForValidPoint(&pos, &validPos);
			if (GetCreature3D()->IsDestinationValid(&validPos) && pos.GetDistance(validPos) < 30.0f)
				pos = validPos;
			else
				return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		switch (StartMovingToPoint(NULL, pos, doubleHeight, 0.0f))
		{
		case 0:
		case 2:
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 1:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
	}
	if (distance > maxDistance)
	{
		LHPoint pos;
		pos.x = target->Pos.MetersX();
		pos.z = target->Pos.MetersZ();
		switch (StartMovingToPoint(NULL, pos, maxDistance, minDistance))
		{
		case 0:
		case 2:
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 1:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateMoveToThrowAtPos()
{
	LHPoint target = *mind->agenda.SubActionAgenda.GetPositionArgument();
	float   dx = target.x - Pos.MetersX();
	float   dz = target.z - Pos.MetersZ();
	float   distance = sqrt(dx * dx + dz * dz);
	float   minDistance = (mind->agenda.SubActionAgenda.GetFloatArgument());
	float   maxDistance = GetHeight() * 8.0f;
	if (distance < minDistance)
	{
		LHPoint pos;
		pos.x = target.x - dx * minDistance / distance;
		pos.z = target.z - dz * minDistance / distance;
		switch (StartMovingToPoint(NULL, pos, GetHeight() * 3.0f, minDistance))
		{
		case 0:
		case 2:
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 1:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
	}
	if (distance > maxDistance)
	{
		switch (StartMovingToPoint(NULL, target, GetHeight() * 3.0f, maxDistance))
		{
		case 0:
		case 2:
			FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		case 1:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		case 3:
		case 4:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		default:
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformMoveToThrowPos()
{
	return physical->Creature3d->IsMoving() ? CREATURE_SUB_STATE_RESULT_CONTINUE : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateStomp()
{
	CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
	Object*         object = dynamic_cast<Object*>(belief->Pointer);
	LH3DCreature*   creature3d = physical->Creature3d;
	if (!object->IsObjectInMap())
	{
		belief->SetNavigationBlockedFlag();
		FinishActionUnsuccessfully("Stopping stomping cos object isn't in the map", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	if (!CanSeeAnObject(object))
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, pos);
		int status = StartMovingToPoint(belief, pos, (object->Get2DRadius() + Get2DRadius()) * 2.0f, 0.0f);
		if (status == 0 || status == 2)
		{
			belief->SetNavigationBlockedFlag();
			DebugPath.Add(NEW(1877) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping stomping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	LHPoint pos;
	switch (creature3d->GetBlendedActionStatus(object, &pos, LH3D_CREATURE_STATE_DESTRUCTION))
	{
	case 0:
		mind->agenda.BodyActionStarted = true;
		return creature3d->StartBlendedAction(object, LH3D_CREATURE_STATE_DESTRUCTION)
		           ? CREATURE_SUB_STATE_RESULT_FINISHED
		           : CREATURE_SUB_STATE_RESULT_CONTINUE;
	case 1: {
		int moveStatus = StartMovingToPoint(
			belief, pos, creature3d->CalculateMaximumActionRange(LH3D_CREATURE_STATE_DESTRUCTION), 0.0f);
		if (moveStatus == 0 || moveStatus == 2)
		{
			belief->SetNavigationBlockedFlag();
			DebugPath.Add(NEW(1903) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping stomping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	case 2:
		belief->SetNavigationBlockedFlag();
		DebugPath.Add(NEW(1911) LHPoint(pos));
		FinishActionUnsuccessfully("Stopping cos 3dstomping failed", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	default:
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
}

int Creature::SubStatePerformStomp()
{
	if (physical->Creature3d->IsPerformingBodyAction())
	{
		if (physical->Creature3d->GetObjectActionStatus() == 3)
		{
			Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
			if (object->IsObjectInMap())
			{
				if (object->IsLiving())
					object->ApplySingleEffect(EFFECT_TYPE_CRUSH, 1.0f, this, Pos);
				if (IsActionInFinalStage())
				{
					if (dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer)->GetLife() <=
					    0.0f)
					{
						UpdateStatsWhenObjectKilled(
							dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer));
						mind->desires.ForceCompletion = true;
					}
				}
			}
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	switch (physical->Creature3d->GetObjectActionStatus())
	{
	case 3:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	case 2:
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformLookAtHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint pos = GetNearestHandInterfaceStatus()->GetHandPos();
	LookAtPoint(pos, 40.0f, GAME_RAND(1968, 30) + 10);
	if (!GetCreature3D()->IsMoving())
	{
		float turns = mind->agenda.SubActionAgenda.TurnsInPart / GGameInfo::Info.NumGameTicksPerSecond();
		float limit = min(TurnsUntilNextStateChange / GGameInfo::Info.NumGameTicksPerSecond(), 5.0f);
		if (turns > limit)
		{
			mind->agenda.SubActionAgenda.TurnsInPart = 0;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformLookAtCamera()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint                  pos = GetNearestCameraInterfaceStatus()->GetCameraPos();
	CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
	return LookAtPoint(pos, 100.0f,
	                   agenda.SubActions[agenda.CurrentSubAction].Integer / GGameInfo::Info.NumGameTicksPerSecond());
}

int Creature::SubStatePerformLookAtCameraInWideScreen()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint pos = GetNearestCameraInterfaceStatus()->GetCameraPos();
	LookAtPoint(pos, 100.0f, 5);
	return mind->agenda.SubActionAgenda.TurnsInPart > 20 ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                     : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::LookAtPoint(LHPoint& pos, float max_distance, unsigned long max_seconds)
{
	float   distance = GUtils::GetDistance(physical->Creature3d->GetPos(), pos);
	LHPoint offset = physical->Creature3d->GetPos() - pos;
	if (range_2d(offset) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(pos - physical->Creature3d->GetPos());
	if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > HALF_PI_F)
		physical->StartTurning(heading);
	if (mind->agenda.SubActionAgenda.TurnsInPart / GGameInfo::Info.NumGameTicksPerSecond() > max_seconds ||
	    distance > max_distance)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (GetPlayer() != NULL)
	{
		uint32_t cameraTurns = GetNearestCameraInterfaceStatus()->CameraTurns;
		if (cameraTurns > GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(max_seconds))
			return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishRenderObjectImmobile()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	Living* living = dynamic_cast<Living*>(object);
	if (living != NULL)
	{
		if (living->action.GetState(LIVING_ACTION_INDEX_TOP) == VILLAGER_STATE_FLYING)
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		living->SetTopState(VILLAGER_STATE_DYING);
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformMoveToDropPos()
{
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateFinishAddObjectToShape()
{
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateTurnToFaceAwayFromObject()
{
	LHPoint offset;
	offset.x = (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
	                .Belief->Pointer->Pos.WholeX() *
	            MetresPerMapCell) /
	               MAP_COORDS_UNITS_PER_CELL -
	           (Pos.WholeX() * MetresPerMapCell) / MAP_COORDS_UNITS_PER_CELL;
	offset.y = 0.0f;
	offset.z = (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction]
	                .Belief->Pointer->Pos.WholeZ() *
	            MetresPerMapCell) /
	               MAP_COORDS_UNITS_PER_CELL -
	           (Pos.WholeZ() * MetresPerMapCell) / MAP_COORDS_UNITS_PER_CELL;
	if (range_2d(offset) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(offset) + PI_F;
	return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformTurnToFaceAwayFromObject()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateFinishDance()
{
	if (dance != NULL)
		dance->SetState(DANCE_STATE_WAITING);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWait()
{
	if (!physical->Creature3d->IsPerformingBodyAction() || GetCreature3D()->IsActuallyDead())
	{
		CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
		agenda.SubActions[agenda.CurrentSubAction].Integer--;
		CreatureSubActionAgenda& waitAgenda = mind->agenda.SubActionAgenda;
		if ((int)waitAgenda.SubActions[waitAgenda.CurrentSubAction].Integer <= 0)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformWaitForDancersToStopMoving()
{
	if (dance != NULL)
	{
		uint32_t numMoving = 0;
		for (LHLinkedNode<DanceGroup*>* group = dance->DanceGroups.GetStart(); group != NULL; group = group->next.Get())
		{
			for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL;
			     dancer = dancer->next.Get())
			{
				if (dancer->payload->IsMoving())
					numMoving++;
			}
		}
		if (numMoving == 0)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformWaitForDancersToStartDancing()
{
	if (dance != NULL)
		return dance->HasDanceProperlyStarted() ? CREATURE_SUB_STATE_RESULT_FINISHED
		                                        : CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformHeal()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	object->ApplySingleEffect(EFFECT_TYPE_HEAL, 1.0f, this, Pos);
	Living* living = dynamic_cast<Living*>(object);
	if (living != NULL)
	{
		living->SetLife(1.0f);
		switch (object->info->type)
		{
		case OBJECT_TYPE_VILLAGER:
			living->SetTopState(VILLAGER_STATE_GO_HOME);
			break;
		case OBJECT_TYPE_ANIMAL:
			living->SetTopState(ANIMAL_STATE_START_WANDER);
			break;
		}
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformApproachObject()
{
	GameThingWithPos* target = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	Object*           object = dynamic_cast<Object*>(target);
	float             size = (object == NULL ? 2.0f : object->Get2DRadius()) + physical->Creature3d->BodyRadius;
	float             range = max(MetresPerMapCell, size * 1.8f);
	int               status;
	if (physical->Creature3d->IsMovingOrStanding())
	{
		if (GUtils::ConvertWholeDistanceToMeters(GUtils::GetDistance(Pos, target->Pos)) < range)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		if (object != NULL)
			status = StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object, range, 0.0f);
		else
			status = StartMovingToPoint(mind->agenda.SubActionAgenda.GetObjectArgument(), target->Pos.GetLHPoint(),
			                            range, 0.0f);
		switch (status)
		{
		case 0:
		case 2: {
			mind->agenda.SubActionAgenda.GetObjectArgument()->SetNavigationBlockedFlag();
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			DebugPath.Add(NEW(2178) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		case 3:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	else if (!IsHeadingTowardsPos(mind->agenda.SubActionAgenda.GetObjectArgument()->Pos, 6))
	{
		if (object != NULL)
			status = StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object, range, 0.0f);
		else
			status = StartMovingToPoint(mind->agenda.SubActionAgenda.GetObjectArgument(), target->Pos.GetLHPoint(),
			                            range, 0.0f);
		switch (status)
		{
		case 0:
		case 2: {
			mind->agenda.SubActionAgenda.GetObjectArgument()->SetNavigationBlockedFlag();
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			DebugPath.Add(NEW(2215) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateFight()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		Object*   object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
		Creature* opponent = dynamic_cast<Creature*>(object);
		mind->agenda.BodyActionStarted = true;
		GArena* fightArena = arena ? arena : opponent->arena;
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(fightArena->Pos, pos);
		float         radius = fightArena->GetRadius();
		LH3DCreature* creature3d = GetCreature3D();
		LH3DCreature* opponent3d = opponent->physical->Creature3d;
		if (creature3d->StartFighting(opponent3d, pos, radius))
		{
			Reaction::CreateReaction(this, REACTION_REACT_TO_FIGHT, GetPlayer(), true);
			NumBattlesFought++;
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode != NULL)
				mode->StartFight(fightArena);
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformFight()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		if (GetPlayer() == GGame::g_game->MyPlayer())
		{
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode != NULL)
				mode->EndFightSoon(1);
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	Object*   object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	Creature* opponent = dynamic_cast<Creature*>(object);
	if (opponent->GetLife() <= 0.0f && !IsControlledByScript())
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		GPlayer*          player = GetPlayer();
		if (player != NULL)
		{
			if (player->IsMemberOfThisPlayer(status))
				status->guidance->HelpSpritesGeneralGood(Pos);
			Reaction::CreateReaction(this, REACTION_REACT_TO_FIGHT_WON, player, true);
		}
		NumBattlesWon++;
		physical->Creature3d->EndFighting();
		if (GetPlayer() == GGame::g_game->MyPlayer())
		{
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode != NULL)
				mode->EndFightSoon(1);
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	if (physical->Creature3d->FightCreature == NULL)
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		GPlayer*          player = GetPlayer();
		if (player != NULL && player->IsMemberOfThisPlayer(status))
			status->guidance->HelpSpritesGeneralBad(Pos);
		physical->Creature3d->EndFighting();
		if (GetPlayer() == GGame::g_game->MyPlayer())
		{
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode != NULL)
				mode->EndFightSoon(1);
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	else
	{
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
}

int Creature::SubStateFinishFight()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		if (IsActionInFinalStage())
			mind->desires.ForceCompletion = true;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRequestPartner()
{
	Object*   object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	Creature* partner = dynamic_cast<Creature*>(object);
	int       response;
	switch (mind->agenda.SubActionAgenda.GetIntegerArgument())
	{
	case CREATURE_DESIRE_ANGER:
		response = partner->RespondToRequestToFight(this);
		break;
	case CREATURE_DESIRE_TO_PLAY:
		response = partner->RespondToRequestToPlay(this);
		break;
	case CREATURE_DESIRE_CURIOSITY:
		response = partner->RespondToRequestToLearnFromFriend(this);
		break;
	case CREATURE_DESIRE_TO_BE_FRIENDS:
		response = partner->RespondToRequestToBeFriends(this);
		break;
	}
	switch (response)
	{
	case 0:
		mind->agenda.SubActionAgenda.Partner = partner;
		partner->mind->agenda.SubActionAgenda.Partner = this;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	case 2:
		mind->agenda.SubActionAgenda.Partner = partner;
		partner->mind->agenda.SubActionAgenda.Partner = this;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	case 1:
		mind->PreviousActions.TurnsSinceLastDone[mind->agenda.CurrentPlan.creature_action] = 0;
		FinishActionUnsuccessfully("Stopping because partner refused to agree to request", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateStopMoving()
{
	physical->Creature3d->StopMoving();
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformStopMoving()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	physical->Creature3d->StopPointing();
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateFollowCamera()
{
	TurnsUntilNextStateChange =
		(int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_FOLLOW_CAMERA_SECONDS);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformFollowCamera()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (TurnsUntilNextStateChange == 0)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	TurnsUntilNextStateChange--;
	MapCoords focus(GetNearestCameraInterfaceStatus()->GetCameraFocus());
	if (focus.InBounds())
	{
		LHPoint pos;
		pos.y = LH3DIsland::GetAltitude(focus) + focus.Altitude();
		pos.x = focus.WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		pos.z = focus.WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		float distance = (GetHeight() + 1.0f) * 2.0f;
		if (!physical->Creature3d->IsPerformingBodyAction())
		{
			if (GUtils::ConvertWholeDistanceToMeters(GUtils::GetDistance(Pos, focus)) < distance)
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			if (focus.IsZero())
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			StartMovingToPoint(NULL, pos, distance - 2.0f, 0.0f);
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		if (!IsHeadingTowardsPos(focus, 6))
			StartMovingToPoint(NULL, pos, distance - 2.0f, 0.0f);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateTurnToFaceCamera()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint direction;
	float   x = Pos.MetersX();
	direction.x = GetNearestCameraInterfaceStatus()->GetCameraPos().x - x;
	direction.y = 0.0f;
	float z = Pos.MetersZ();
	direction.z = GetNearestCameraInterfaceStatus()->GetCameraPos().z - z;
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	if (physical->StartTurning(heading))
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	GetCreature3D()->StopPointing();
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformTurnToFaceCamera()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		LHPoint direction;
		float   x = Pos.MetersX();
		direction.x = GetNearestCameraInterfaceStatus()->GetCameraPos().x - x;
		direction.y = 0.0f;
		float z = Pos.MetersZ();
		direction.z = GetNearestCameraInterfaceStatus()->GetCameraPos().z - z;
		if (range_2d(direction) < 0.1f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if ((float)fabs(physical->Creature3d->GetHeading() - heading) < 0.2f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		physical->StartTurning(heading);
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateTurnToFaceOtherPlayersCamera()
{
	GInterfaceStatus* status = mind->agenda.SubActionAgenda.HandStatus;
	if (status == NULL)
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	LHPoint direction;
	direction.x = status->GetCameraPos().x - Pos.MetersX();
	direction.y = 0.0f;
	direction.z = status->GetCameraPos().z - Pos.MetersZ();
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformTurnToFaceOtherPlayersCamera()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		GInterfaceStatus* status = mind->agenda.SubActionAgenda.HandStatus;
		if (status == NULL)
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		LHPoint direction;
		direction.x = status->GetCameraPos().x - Pos.MetersX();
		direction.y = 0.0f;
		direction.z = status->GetCameraPos().z - Pos.MetersZ();
		if (range_2d(direction) < 0.1f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if ((float)fabs(physical->Creature3d->GetHeading() - heading) < 0.2f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		physical->StartTurning(heading);
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateFaceDownSlope()
{
	float     lowestAltitude = MaxFloat;
	MapCoords lowestPos;
	MapCoords testPos;
	for (uint32_t i = 0; i < 8; i++)
	{
		testPos = Pos;
		testPos.SetMetersX(testPos.MetersX() + MapXZDirections8[i].x * MAP_COORDS_METRES_PER_CELL);
		testPos.SetMetersZ(testPos.MetersZ() + MapXZDirections8[i].z * MAP_COORDS_METRES_PER_CELL);
		if (testPos.InBounds())
		{
			float altitude = testPos.GetLandscapeAltitude();
			if (altitude < lowestAltitude)
			{
				lowestAltitude = altitude;
				lowestPos = testPos;
			}
		}
	}
	LHPoint direction;
	direction.x = lowestPos.MetersX() - Pos.MetersX();
	direction.y = 0.0f;
	direction.z = lowestPos.MetersZ() - Pos.MetersZ();
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformFaceDownSlope()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateCommunicateToPlayer()
{
	int action = -1;
	if (GGame::g_game->data.GameTurn - mind->AttitudeToPlayer.GameTurnOfMostRecentPlayerFeedback <
	        GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_COMMUNICATE_FEEDBACK_SECONDS) &&
	    mind->desires.NumCompletions[CREATURE_DESIRE_TO_MANIFEST_STATE] == 0)
	{
		if (mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe >= 0.0f)
			action = C_INDIVIDUAL_HAPPY;
		else
			action = C_INDIVIDUAL_SAD;
	}
	else
	{
		CREATURE_DESIRES desire =
			mind->desires.FindDominantDesireWhichIsManifestable((CREATURE_DESIRES)NUM_CREATURE_DESIRES);
		if (desire != NUM_CREATURE_DESIRES && CreatureDesireTableEntry::Table[desire].Manifestable)
			action = CreatureDesireTableEntry::Table[desire].ManifestAnimation;
	}
	mind->desires.SuppressDesire(CREATURE_DESIRE_TO_MANIFEST_STATE, CREATURE_COMMUNICATE_SUPPRESS_SECONDS);
	if (action != -1)
		return physical->Creature3d->StartIndividualAction(action) ? CREATURE_SUB_STATE_RESULT_FINISHED
		                                                           : CREATURE_SUB_STATE_RESULT_CONTINUE;
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformCommunicateToPlayer()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateReduceDesire()
{
	mind->desires.MultiplyDesire(GetInfo(), mind->agenda.SubActionAgenda.GetIntegerArgument(), 0.66f);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateLoop()
{
	CreatureSubActionAgenda& agenda = mind->agenda.SubActionAgenda;
	agenda.IsNewSubAction = true;
	agenda.CurrentSubAction = 0;
	agenda.SubActionState = 0;
	agenda.TurnsInPart = 0;
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCheckValue()
{
	if (mind->agenda.SubActionAgenda.GetIntegerArgument() == 1)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	FinishActionUnsuccessfully(NULL, true, true);
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateRepair()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	object->IncreaseLife(0.2f);
	if (object->GetLife() >= 1.0f)
		mind->desires.ForceCompletion = true;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateDestroyObject()
{
	dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer)->ToBeDeleted(false);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformPutOutFire()
{
	Object*      object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	EffectValues effect(EFFECT_INFO_WATER_PAIL, this, NULL);
	effect.numbers *= CREATURE_PUT_OUT_FIRE_EFFECT_SCALE;
	object->ApplyEffect(effect, true);
	if (!object->IsOnFire())
	{
		mind->desires.ForceCompletion = true;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateDanceDuringEditing()
{
	LHPoint pos = *mind->agenda.SubActionAgenda.GetPositionArgument();
	switch (StartMovingToPoint(NULL, pos, GetHeight(), 0.0f))
	{
	case 0:
	case 2:
		FinishActionUnsuccessfully(NULL, true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	case 1:
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	case 3:
	case 4:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

#ifndef VERSION_BW1WCI
int Creature::SubStatePerformDance()
{
	MapCoords dancePos;
	LHPoint   pos;
	CalculateDancePosition(dance_group->behaviour->Pos, &dancePos);
	float distance = GUtils::GetDistanceInMetres(&Pos, &dancePos);
	switch (dance_group->Action.Kind)
	{
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_DANCE:
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACIAL:
		GetCreature3D()->StopPointing();
		physical->Creature3d->EndStaticAction();
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_GESTURE:
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_POINT:
		physical->Creature3d->EndDanceAction();
		physical->Creature3d->EndStaticAction();
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_STATIC:
		physical->Creature3d->EndDanceAction();
		GetCreature3D()->StopPointing();
		break;
	default:
		physical->Creature3d->EndStaticAction();
		physical->Creature3d->EndDanceAction();
		GetCreature3D()->StopPointing();
		break;
	}
	switch (dance_group->Action.Kind)
	{
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_IN: {
		float heading = GUtils::ConvertGameAngleToScawenAngle((uint16_t)dance_group->GetAngleFromPosToGroupCentre(Pos));
		physical->StartTurning(heading);
		break;
	}
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_OUT: {
		uint16_t angle =
			(uint16_t)(dance_group->GetAngleFromPosToGroupCentre(Pos) + CREATURE_DANCE_GAME_ANGLE_HALF_TURN);
		if (angle > CREATURE_DANCE_GAME_ANGLE_FULL_TURN)
			angle = (uint16_t)(angle - CREATURE_DANCE_GAME_ANGLE_FULL_TURN);
		float heading = GUtils::ConvertGameAngleToScawenAngle(angle);
		physical->StartTurning(heading);
		break;
	}
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_DIRECTION: {
		uint16_t angle = (uint16_t)(dance_group->behaviour->GetAngle() + dance_group->Action.Param2);
		if (angle > TWO_PI)
			angle = (uint16_t)(angle - TWO_PI);
		float heading = GUtils::ConvertGameAngleToScawenAngle(GUtils::ConvertAngle3DToGame(angle));
		physical->StartTurning(heading);
		break;
	}
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_DANCE:
		physical->Creature3d->StartDanceAction(
			(int)(dance_group->behaviour->Speed * CREATURE_DANCE_MILLISECONDS_PER_SECOND));
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_INDIVIDUAL:
		physical->Creature3d->StartIndividualAction(dance_group->Action.Param1.Integer);
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_TALK:
		GetCreature3D()->StartConcurrentAction(C_CONCURRENT_TALK);
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_LAUGH:
		physical->Creature3d->StartIndividualAction(C_MISC_LAUGH);
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_STATIC:
		physical->Creature3d->StartStaticAction(dance_group->Action.Param1.Integer);
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_LOOK_AT: {
		int     index = dance_group->Action.Param1.Integer;
		Living* target = dance_group->GetGroup(index)->Dancers.GetHead();
		LHPoint direction;
		direction.x = target->Pos.MetersX() - Pos.MetersX();
		direction.y = 0.0f;
		direction.z = target->Pos.MetersZ() - Pos.MetersZ();
		if (range_2d(direction) < CREATURE_DANCE_LOOK_AT_RANGE)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if (!physical->Creature3d->IsPerformingBodyAction())
			physical->StartTurning(heading);
		break;
	}
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACIAL:
		physical->Creature3d->StartFacialAction(dance_group->Action.Param1.Integer, CREATURE_DANCE_FACIAL_ACTION_TIME);
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_GESTURE:
		switch (mind->agenda.DanceStage)
		{
		case 0:
			mind->agenda.SubActionAgenda.CurrentSubAction = 0;
			mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Integer =
				dance_group->Action.Param1.Integer;
			if (SubStateInitiateGesture() == CREATURE_SUB_STATE_RESULT_FINISHED)
				mind->agenda.DanceStage = 1;
			break;
		case 1:
			if (SubStatePerformGesture() == CREATURE_SUB_STATE_RESULT_FINISHED)
				mind->agenda.DanceStage = 2;
			break;
		case 2:
			if (SubStateFinishGesture() == CREATURE_SUB_STATE_RESULT_FINISHED)
				mind->agenda.DanceStage = 3;
		case 3:
			dance_group->Action.Kind = DANCE_GROUP_MOVEMENT_KIND_CREATURE_DANCE;
			mind->agenda.DanceStage = 0;
			break;
		}
		break;
	case DANCE_GROUP_MOVEMENT_KIND_CREATURE_POINT:
		uint16_t  angle = (uint16_t)(int)dance_group->Action.Param2;
		MapCoords pointPos = Pos;
		float     x = GUtils::GetXByAngle(angle, CREATURE_DANCE_POINT_DISTANCE);
		pointPos.SetMetersX(x + pointPos.MetersX());
		float z = GUtils::GetZByAngle(angle, CREATURE_DANCE_POINT_DISTANCE);
		pointPos.SetMetersZ(z + pointPos.MetersZ());
		LHPoint point = pointPos.GetLHPoint();
		GetCreature3D()->PointAt(&point, false);
		break;
	}
	if (distance > CREATURE_DANCE_MIN_DISTANCE)
	{
		GLandscape::ConvertMapCoordToLandscapePoint(dancePos, pos);
		StartMovingToPoint(NULL, pos, CREATURE_DANCE_MOVE_SPEED, 0.0f);
	}
	if (dynamic_cast<Dance*>(dance_group->behaviour) != NULL)
	{
		TurnsUntilNextStateChange--;
		if (TurnsUntilNextStateChange == 0)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}
#endif

int Creature::SubStateInitiatePracticeDance()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	physical->Creature3d->StartDanceAction(CREATURE_PRACTICE_DANCE_ANIMATION_TIME);
	float seconds = mind->agenda.SubActionAgenda.GetFloatArgument();
	TurnsUntilNextStateChange = (int16_t)(seconds * GGameInfo::Info.NumGameTicksPerSecond());
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformPracticeDance()
{
	TurnsUntilNextStateChange--;
	return TurnsUntilNextStateChange == 0 ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiateCastSpotVisual()
{
	if (physical->Creature3d->StartStaticAction(C_STATIC_CAST_UP))
	{
		TurnsUntilNextStateChange = 0;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCastSpotVisual()
{
	if (physical->Creature3d->MoveState == LH3D_CREATURE_STATE_DO_STATIC)
	{
		LHPoint handPos;
		physical->Creature3d->FillAverageHandPos(handPos);
		MapCoords pos;
		GLandscape::ConvertLandscapePointToMapCoord(handPos, pos);
		TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
			mind->agenda.SubActionAgenda.GetFloatArgument());
		SpotVisual = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
			pos, (SPOT_VISUAL_TYPE)mind->agenda.SubActionAgenda.GetIntegerArgument(), 1.0f, TurnsUntilNextStateChange,
			this);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishCastSpotVisual()
{
	if (TurnsUntilNextStateChange == 0)
	{
		physical->Creature3d->EndStaticAction();
		return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
		                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	TurnsUntilNextStateChange--;
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformStartTheDance()
{
	if (dance != NULL)
	{
		dance->StartDance();
		dance->Time = 0.0f;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformStartLooking()
{
	mind->debug.IsLooking = true;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformStopLooking()
{
	mind->debug.IsLooking = false;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateDance()
{
	if (dance != NULL)
	{
		dance->FindDanceGroup(this);
		TurnsUntilNextStateChange = mind->agenda.SubActionAgenda.GetIntegerArgument();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateInteractWithTotem()
{
	InteractingObject = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformRaiseTotem()
{
	const double worshipStep = 0.02;
	Object*      object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	TotemStatue* statue = dynamic_cast<TotemStatue*>(object);
	if (statue != NULL)
	{
		if (1.0f - statue->GetWorshipPercentage() < (float)worshipStep)
		{
			statue->SetWorshipPercentage(1.0f);
			statue->WorshipSpeed2 = statue->GetWorshipSpeed();
			InteractingObject = NULL;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		statue->SetWorshipPercentage(statue->GetWorshipPercentage() + (float)worshipStep);
		statue->WorshipSpeed2 = statue->GetWorshipSpeed();
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	Object*      puzzleObject = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	PuzzleTotem* totem = dynamic_cast<PuzzleTotem*>(puzzleObject);
	if (totem != NULL)
	{
		if (1.0f - totem->GetWorshipPercentage() < (float)worshipStep)
		{
			totem->SetWorshipPercentage(1.0f);
			InteractingObject = NULL;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		totem->SetWorshipPercentage(totem->GetWorshipPercentage() + (float)worshipStep);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformLowerTotem()
{
	const double worshipStep = 0.02;
	Object*      object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	TotemStatue* statue = dynamic_cast<TotemStatue*>(object);
	if (statue != NULL)
	{
		if (statue->GetWorshipPercentage() < (float)worshipStep)
		{
			statue->SetWorshipPercentage(0.0f);
			statue->WorshipSpeed2 = statue->GetWorshipSpeed();
			InteractingObject = NULL;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		statue->SetWorshipPercentage(statue->GetWorshipPercentage() - (float)worshipStep);
		statue->WorshipSpeed2 = statue->GetWorshipSpeed();
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	Object*      puzzleObject = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	PuzzleTotem* totem = dynamic_cast<PuzzleTotem*>(puzzleObject);
	if (totem != NULL)
	{
		if (totem->GetWorshipPercentage() < (float)worshipStep)
		{
			totem->SetWorshipPercentage(0.0f);
			InteractingObject = NULL;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		totem->SetWorshipPercentage(totem->GetWorshipPercentage() - (float)worshipStep);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformDrink()
{
	physical->Dehydration = 0.0f;
	mind->desires.SuppressDesire(CREATURE_DESIRE_FOR_WATER, CREATURE_DRINK_SUPPRESS_SECONDS);
	SetTemperature(0.0f, NULL);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformHealHimself()
{
	SetLife(1.0f);
	GetCreature3D()->TimeWarpHeal(CREATURE_HEAL_HIMSELF_TIME_WARP);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitialiseInspectCreature()
{
	float seconds = (GAME_FLOAT_RAND(3347, CREATURE_INSPECT_RANDOM_SECONDS)) + CREATURE_INSPECT_MIN_SECONDS;
	TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformInspectCreature()
{
	CreatureBeliefAboutCreature* belief =
		dynamic_cast<CreatureBeliefAboutCreature*>(mind->agenda.SubActionAgenda.GetObjectArgument());
	if (DecideToRespondToCreature(belief))
	{
		belief->GameTurnLastReactedTo = GGame::g_game->data.GameTurn;
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	if (--TurnsUntilNextStateChange == 0)
	{
		belief->GameTurnLastReactedTo = GGame::g_game->data.GameTurn;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCreateHandObjectFromObject()
{
	float     size = physical->Creature3d->Size1;
	MapCoords pos;
	CalculateCreationPos(mind->agenda.SubActionAgenda.GetObjectArgument()->Pos, &pos);
	POT_INFO          type = (POT_INFO)mind->agenda.SubActionAgenda.GetIntegerArgument();
	GPotInfo*         info = &GPotInfo::GetInfo()[type];
	GameThingWithPos* source = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	uint32_t          amount = (uint32_t)(size * MillisecondsPerSecond);
	if (source != NULL)
		amount = min(amount, source->GetResource(info->ResourceType));
	mind->agenda.CreatedObject = CreateHandObject(source, pos, type, amount);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiatePickUpCreatedObject()
{
	return SubStateInitiatePickUpParameter(mind->AddBeliefAboutObject(this, mind->agenda.CreatedObject));
}

int Creature::SubStatePerformPickUpCreatedObject()
{
	return SubStatePerformPickUpParameter(mind->AddBeliefAboutObject(this, mind->agenda.CreatedObject));
}

int Creature::SubStateInitiatePickUpCreatedByCreature()
{
	if (mind->agenda.SubActionAgenda.GetObjectArgument() != NULL)
	{
		Creature* creator = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer->CastCreature();
		if (creator != NULL)
		{
			CreatureBelief* belief = mind->AddBeliefAboutObject(this, creator->mind->agenda.CreatedObject);
			mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Belief = belief;
			return SubStateInitiatePickUp();
		}
	}
	return CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStatePerformAddReactionToObject()
{
	GameThingWithPos* object = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	uint32_t          reaction = mind->agenda.SubActionAgenda.GetIntegerArgument();
	Reaction::CreateReaction(object, (uint8_t)reaction, GetPlayer(), false);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformRequestDoSomethingWithObject()
{
	GameThingWithPos* thing = mind->agenda.CurrentPlan.ObjectToActOn->Pointer;
	Creature*         creature = dynamic_cast<Creature*>(thing);
	GameThingWithPos* tool = mind->agenda.CurrentPlan.ObjectToUse->Pointer;
	Object*           object = dynamic_cast<Object*>(tool);
	creature->ApplyThisToObject(NULL, object, NULL);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformSetOnFire()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	object->ApplySingleEffect(EFFECT_TYPE_HIT, 1.0f, this, Pos);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateGoNearObject()
{
	CreatureBelief*   belief = mind->agenda.SubActionAgenda.GetObjectArgument();
	GameThingWithPos* thing = belief->Pointer;
	float             distance = mind->agenda.SubActionAgenda.GetFloatArgument();
	Object*           object = dynamic_cast<Object*>(thing);
	if (object != NULL && (object->IsFixed() || object->IsTree()))
		StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object, distance, 0.0f);
	GoNearStartPos = Pos;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformGoNearObject()
{
	float             radius;
	CreatureBelief*   belief = mind->agenda.SubActionAgenda.GetObjectArgument();
	GameThingWithPos* thing = belief->Pointer;
	float             distance = mind->agenda.SubActionAgenda.GetFloatArgument();
	Object*           object = dynamic_cast<Object*>(thing);
	if (object != NULL)
		radius = object->GetRoutePlanRadius(this);
	else
		radius = Get2DRadius();
	if (object != NULL && (object->IsFixed() || object->IsTree()) && object->IsObjectInMap() &&
	    !physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float range = radius + Get2DRadius() + distance;
	float distanceToThing = GUtils::GetDistanceInMetres(Pos, thing->Pos);
	if (distanceToThing < range * CREATURE_GO_NEAR_OBJECT_RANGE_SCALE)
	{
		physical->Creature3d->StopMoving();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	int result;
	if (physical->Creature3d->IsMovingOrStanding())
	{
		if (object != NULL)
			result = StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object, distance, 0.0f);
		else
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
			StartMovingToPoint(NULL, pos, range, 0.0f);
		}
		switch (result)
		{
		case 0:
		case 2: {
			mind->agenda.SubActionAgenda.GetObjectArgument()->SetNavigationBlockedFlag();
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
			DebugPath.Add(NEW(3538) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		case 3:
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	else if (!IsHeadingTowardsPos(mind->agenda.SubActionAgenda.GetObjectArgument()->Pos, 6))
	{
		if (object != NULL)
			result = StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object, distance, 0.0f);
		else
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
			StartMovingToPoint(NULL, pos, range, 0.0f);
		}
		switch (result)
		{
		case 0:
		case 2: {
			mind->agenda.SubActionAgenda.GetObjectArgument()->SetNavigationBlockedFlag();
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			DebugPath.Add(NEW(3574) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		}
	}
	if (mind->agenda.SubActionAgenda.TurnsInPart % 50 == 0)
		GoNearStartPos = Pos;
	float moved = GUtils::GetDistanceInMetres(Pos, GoNearStartPos);
	if (!IsControlledByScript() && mind->agenda.SubActionAgenda.TurnsInPart % 50 == 49 &&
	    moved < CREATURE_GO_NEAR_OBJECT_MIN_MOVEMENT)
	{
		if (mind->agenda.CurrentPlan.CreatureDesire < NUM_CREATURE_DESIRES)
			mind->desires.SuppressDesire(mind->agenda.CurrentPlan.CreatureDesire,
			                             CREATURE_GO_NEAR_OBJECT_SUPPRESS_SECONDS);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformObserveObject()
{
	mind->ObjectsInspected.Inspected[mind->agenda.SubActionAgenda.GetIntegerArgument()] = true;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformFollowInterestingObject()
{
	Object* object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	if (!object->IsDoingSomethingInteresting(this) ||
	    (float)(mind->agenda.SubActionAgenda.TurnsInPart / GGameInfo::Info.NumGameTicksPerSecond()) >
	        CREATURE_FOLLOW_INTERESTING_OBJECT_MAX_SECONDS)
	{
		TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
			(GAME_FLOAT_RAND(3615, CREATURE_FOLLOW_INTERESTING_OBJECT_RANDOM_SECONDS)) +
			CREATURE_FOLLOW_INTERESTING_OBJECT_MIN_SECONDS);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	if (GUtils::ConvertWholeDistanceToMeters(GUtils::GetDistance(Pos, object->Pos)) >
	    CREATURE_FOLLOW_INTERESTING_OBJECT_DISTANCE)
	{
		switch (StartMovingToObject(mind->agenda.SubActionAgenda.GetObjectArgument(), object,
		                            CREATURE_FOLLOW_INTERESTING_OBJECT_DISTANCE, 0.0f))
		{
		case 0:
		case 2: {
			mind->agenda.SubActionAgenda.GetObjectArgument()->SetNavigationBlockedFlag();
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			DebugPath.Add(NEW(3631) LHPoint(pos));
			FinishActionUnsuccessfully("Stopping cos navigation failed", true, true);
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		default:
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformInScript()
{
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishFollowInterestingObject()
{
	return --TurnsUntilNextStateChange == 0 ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformLookAtFlyingObject()
{
	float    seconds = (GAME_FLOAT_RAND(3666, CREATURE_LOOK_AT_FLYING_OBJECT_MIN_SECONDS)) +
	                   CREATURE_LOOK_AT_FLYING_OBJECT_MIN_SECONDS;
	Object*  object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	bool32_t inAir = object->IsActuallyInTheAir();
	if ((object->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) && inAir)
	{
		if ((float)(mind->agenda.SubActionAgenda.TurnsInPart / GGameInfo::Info.NumGameTicksPerSecond()) < seconds)
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateFollowHand()
{
	TurnsUntilNextStateChange = (int16_t)(GGameInfo::Info.NumGameTicksPerSecond() * CREATURE_FOLLOW_HAND_SECONDS);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformFollowHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (TurnsUntilNextStateChange == 0)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	TurnsUntilNextStateChange--;
	LHPoint   handPoint = GetNearestHandInterfaceStatus()->GetHandPos();
	MapCoords handCoords(handPoint);
	if (handCoords.InBounds())
	{
		float distance = physical->Creature3d->BodyRadius + CREATURE_FOLLOW_HAND_DISTANCE;
		if (!physical->Creature3d->IsPerformingBodyAction())
		{
			if (GUtils::ConvertWholeDistanceToMeters(GUtils::GetDistance(Pos, handCoords)) < distance)
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			if (handCoords.x == 0 && handCoords.z == 0 && handCoords.altitude == 0.0f)
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			StartMovingToPoint(NULL, handPoint, distance, 0.0f);
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		if (!IsHeadingTowardsPos(handCoords, 6))
			StartMovingToPoint(NULL, handPoint, distance, 0.0f);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformAddToHome()
{
	GameThingWithPos* object = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	if (object != NULL)
		HomeBuildingObjects.AddToEnd(object);
	mind->ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, 0);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWaitForObject()
{
	return mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer->IsMoving() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                                             : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateSeeWhoWinsGame()
{
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformSeeWhoWinsGame()
{
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateRespondAfterFight()
{
	if (physical->Creature3d->IsPerformingBodyAction())
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	GameThingWithPos* object = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	float             life = GetLife();
	bool32_t          happy = object->GetLife() < life;
	LH3DCreature*     creature3d = physical->Creature3d;
	return creature3d->StartIndividualAction(happy ? C_INDIVIDUAL_HAPPY : C_INDIVIDUAL_SAD)
	           ? CREATURE_SUB_STATE_RESULT_FINISHED
	           : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRespondAfterFight()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		GameThingWithPos* object = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
		float             life = GetLife();
		if (!(object->GetLife() < life))
		{
			ForceActivityAndDecideAction(CREATURE_DESIRE_FEAR, mind->AddBeliefAboutObject(this, object));
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCreateFootPrint()
{
	HomeFootPrint = LH3DJustFootPrint::Create(HomeObject);
	RequestChangeTexture(HomeObject);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformOrderCreature()
{
	Creature*       creature = (Creature*)mind->agenda.SubActionAgenda.GetCurrentSubAction()->OrderTarget;
	CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, this);
	creature->StopWhatIAmDoing(true, true);
	CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_CREATURE, CREATURE_OBEY_CREATURE, belief, belief, NULL, 1.0f);
	creature->mind->agenda.CurrentPlan = plan;
	creature->mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	creature->mind->agenda.SubActionAgenda.AddSubAction(
		(CREATURE_SUB_STATE_ACTIONS)mind->agenda.SubActionAgenda.GetCurrentSubAction()->OrderAction,
		NEW(3845) SubArgumentObjectIntegerPosFloatAndSpell(
			mind->agenda.SubActionAgenda.GetObjectArgument(), mind->agenda.SubActionAgenda.GetIntegerArgument(),
			*mind->agenda.SubActionAgenda.GetPositionArgument(), mind->agenda.SubActionAgenda.GetFloatArgument(),
			mind->agenda.SubActionAgenda.GetSpellArgument()),
		NULL, NULL);
	creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOREVER,
	                                                    NEW(3846) SubArgumentObject(belief),
	                                                    &Creature::LookAtObjectArgument, NULL);
	creature->CopyPlanToPreviousContext(true);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWaitForCreatureToPickUp()
{
	Creature* other = dynamic_cast<Creature*>(mind->agenda.SubActionAgenda.GetObjectArgument()->GetPointer());
	return other->physical->ObjectCarried != NULL ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                              : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformDemobiliseObject()
{
	Creature* other = dynamic_cast<Creature*>(mind->agenda.SubActionAgenda.GetObjectArgument()->GetPointer());
	other->mind->IsDemobilised = true;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformRemobiliseObject()
{
	Creature* other = dynamic_cast<Creature*>(mind->agenda.SubActionAgenda.GetObjectArgument()->GetPointer());
	other->mind->IsDemobilised = false;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWaitForever()
{
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformSingleKiss()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		physical->Creature3d->StartSolitaryKissing();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformKiss()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		Creature* other = dynamic_cast<Creature*>(mind->agenda.SubActionAgenda.GetObjectArgument()->GetPointer());
		physical->Creature3d->StartKissing(other->physical->Creature3d);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishKiss()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiatePointAtPoint()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		LHPoint pos = *mind->agenda.SubActionAgenda.GetPositionArgument();
		physical->Creature3d->PointAt(&pos, false);
		TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
			mind->agenda.SubActionAgenda.GetFloatArgument());
		TurnsUntilNextStateChange = max(10, TurnsUntilNextStateChange);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiatePointAtArena()
{
	if (arena != NULL)
	{
		if (!physical->Creature3d->IsPerformingBodyAction())
		{
			LHPoint pos = arena->Pos.GetLHPoint();
			physical->Creature3d->PointAt(&pos, false);
			TurnsUntilNextStateChange = 20;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformPointAtPoint()
{
	if (--TurnsUntilNextStateChange == 0)
	{
		physical->Creature3d->StopPointing();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateInitiatePointAtObject()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		GameThingWithPos* thing = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
		LHPoint           pos;
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
		physical->Creature3d->PointAt(&pos, false);
		TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
			mind->agenda.SubActionAgenda.GetFloatArgument());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformPointAtObject()
{
	if (--TurnsUntilNextStateChange == 0)
	{
		physical->Creature3d->StopPointing();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	GameThingWithPos* thing = mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer;
	LHPoint           pos;
	GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
	physical->Creature3d->UpdatePointPoint(&pos);
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishPoint()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformDoTeleport()
{
	Object*        object = dynamic_cast<Object*>(mind->agenda.SubActionAgenda.GetObjectArgument()->Pointer);
	MagicTeleport* teleport = dynamic_cast<MagicTeleport*>(object);
	return teleport->DoTeleport(this, false) == 1 ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                              : CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStatePerformStopReacting()
{
	StopReacting();
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformSetSpeed()
{
	physical->Creature3d->SetRequiredSpeed(mind->agenda.SubActionAgenda.GetFloatArgument());
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateTurnToFaceHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	LHPoint direction;
	float   x = (Pos.WholeX() * CellSize / MAP_COORDS_UNITS_PER_CELL);
	direction.x = GetNearestHandInterfaceStatus()->GetHandPos().x - x;
	direction.y = 0.0f;
	float z = (Pos.WholeZ() * CellSize / MAP_COORDS_UNITS_PER_CELL);
	direction.z = GetNearestHandInterfaceStatus()->GetHandPos().z - z;
	if (range_2d(direction) < 0.1f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	float heading = heading_from_direction_vector(direction);
	return physical->StartTurning(heading) ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformTurnToFaceHand()
{
	if (GetPlayer() == NULL)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		LHPoint direction;
		float   x = (Pos.WholeX() * CellSize / MAP_COORDS_UNITS_PER_CELL);
		direction.x = GetNearestHandInterfaceStatus()->GetHandPos().x - x;
		direction.y = 0.0f;
		float z = (Pos.WholeZ() * CellSize / MAP_COORDS_UNITS_PER_CELL);
		direction.z = GetNearestHandInterfaceStatus()->GetHandPos().z - z;
		if (range_2d(direction) < 0.1f)
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		float heading = heading_from_direction_vector(direction);
		if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > EIGHTH_PI_F)
		{
			physical->StartTurning(heading);
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	else
	{
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
}

int Creature::SubStateInitiatePickUpFromHand()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		if (mind->agenda.SubActionAgenda.HandStatus == NULL)
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		Object* object = mind->agenda.SubActionAgenda.HandStatus->GetFirstObjectInCurrentHand();
		if (object != NULL)
		{
			physical->Creature3d->StartPickUpFromHandAction(object);
			DevelopmentPhaseActionDone[DEVELOPMENT_PHASE_LEARN_TO_TAKE_FROM_PLAYER_AND_EAT] = true;
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformPickUpFromHand()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateGesture()
{
	if (!physical->Creature3d->IsPerformingBodyAction())
	{
		GESTURE_TYPE type = (GESTURE_TYPE)mind->agenda.SubActionAgenda.GetIntegerArgument();
		mind->agenda.SubActionAgenda.GestureFraction = 0.0f;
		LHPoint point;
		GetGesturePoint(type, mind->agenda.SubActionAgenda.GestureFraction, &point);
		physical->Creature3d->PointAt(&point, false);
		ReceiveSpell->CtrGestureStart(point, GetHeight());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformGesture()
{
	static float  gestureSpeed = 30.0f;
	LH3DCreature* creature3d = physical->Creature3d;
	GESTURE_TYPE  type = (GESTURE_TYPE)mind->agenda.SubActionAgenda.GetIntegerArgument();
	LHPoint       handPos;
	bool32_t      hasHand = creature3d->GetPointingHandPosition(handPos);
	if (mind->agenda.SubActionAgenda.GestureFraction == 0.0f)
	{
		LHPoint point;
		GetGesturePoint(type, mind->agenda.SubActionAgenda.GestureFraction, &point);
		if (!hasHand || mind->agenda.SubActionAgenda.TurnsInPart < 8)
			return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	if (type < GESTURE_TYPE_LAST)
	{
		float step = 1.0f / (AnimatedGestures::RelativeTotalDistance(type) * gestureSpeed);
		mind->agenda.SubActionAgenda.GestureFraction += step;
		mind->agenda.SubActionAgenda.GestureFraction = min(mind->agenda.SubActionAgenda.GestureFraction, 1.0f);
		if (mind->agenda.SubActionAgenda.GestureFraction < 1.0f)
			mind->agenda.SubActionAgenda.TurnsInPart = 0;
		LHPoint point;
		GetGesturePoint(type, mind->agenda.SubActionAgenda.GestureFraction, &point);
		creature3d->UpdatePointPoint(&point);
		if (mind->agenda.SubActionAgenda.GestureFraction >= 1.0f && mind->agenda.SubActionAgenda.TurnsInPart > 8)
		{
			creature3d->StopPointing();
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
		if (hasHand)
		{
			ReceiveSpell->GesturePos = handPos;
			ReceiveSpell->IsGestureAtHand = true;
		}
		else
		{
			ReceiveSpell->GesturePos = creature3d->position;
			ReceiveSpell->IsGestureAtHand = false;
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateFinishGesture()
{
	ReceiveSpell->CtrGestureCloseDown();
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateWaitForCreatureToBeFree()
{
	TurnsUntilNextStateChange = mind->agenda.SubActionAgenda.GetIntegerArgument();
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWaitForCreatureToBeFree()
{
	if (TurnsUntilNextStateChange > 0)
	{
		TurnsUntilNextStateChange--;
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	Creature* other = dynamic_cast<Creature*>(mind->agenda.SubActionAgenda.GetObjectArgument()->GetPointer());
	return other->physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                             : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformActOnObjectInHand()
{
	OneOffSpellSeed* seed = physical->ObjectCarried->CastOneOffSpellSeed();
	if (seed != NULL)
	{
		const GSpellSeedInfo* seedInfo = seed->GetSeedInfo();
		CREATURE_DESIRES      desire = GMagicEffectInfo::Infos[seedInfo->GetFirstMagicType()].PerceivedPlayerDesire;
		mind->SetCheatDominantDesire(desire, 30.0f, true);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	ForceMeToActOnObject(physical->ObjectCarried);
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformCreateFishFromSea()
{
	mind->agenda.CreatedObject = CreateHandObject(NULL, Pos, POT_INFO_WHEAT_IN_HAND,
	                                              (uint32_t)(physical->Creature3d->GetSize() * MillisecondsPerSecond));
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformCreateMagicFood()
{
	MapCoords pos(*mind->agenda.SubActionAgenda.GetPositionArgument());
	mind->agenda.CreatedObject =
		CreateHandObject(NULL, Pos, POT_INFO_WHEAT_IN_HAND,
	                     (uint32_t)(physical->Creature3d->GetSize() * MillisecondsPerSecond * 100.0f));
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateTransportedByTeleport()
{
	TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransportSeconds);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformTransportedByTeleport()
{
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange != 0)
	{
		SetFizz(1.0f - 1.0f / GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransportSeconds) *
		                   TurnsUntilNextStateChange,
		        0.0f, false);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	MapCoords destination(*mind->agenda.SubActionAgenda.GetPositionArgument());
	SoundTag::Create(destination, LH_SAMPLE_G_SPELLTELEPORTENERGISEARRIVE, false, 2, 0, 0, 1,
	                 AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	ForceMoveMapObjectWithoutWalking(destination);
	TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransportSeconds);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateFinishTransportedByTeleport()
{
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange != 0)
	{
		SetFizz(1.0f / GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransportSeconds) * TurnsUntilNextStateChange,
		        0.0f, false);
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	SetFizz(0.0f, 0.0f, false);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformLoopAction()
{
	CreaturePlan plan = mind->agenda.CurrentPlan;
	ForceActivityAndForceAction(plan, false, true);
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformConsiderActionCompleted()
{
	UpdateOnCompletion();
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformCreateArena()
{
	Creature* partner = mind->agenda.SubActionAgenda.Partner;
	if (partner != NULL && partner->arena == NULL)
	{
		LHPoint   centre = (GetCreature3D()->GetPos() + partner->GetCreature3D()->GetPos()) * 0.5f;
		MapCoords coords;
		GLandscape::ConvertLandscapePointToMapCoord(centre, coords);
		physical->Creature3d->SetRequiredSpeed(GetInfo()->RunSpeed);
		partner->physical->Creature3d->SetRequiredSpeed(GetInfo()->RunSpeed);
		float radius = MAP_COORDS_METRES_PER_CELL * physical->Creature3d->RpFollow->MaxSpeed;
		arena = GArena::FindNearestArenaOrCreateNew(coords, this, partner, radius);
		if (arena != NULL)
			arena->Activate(this, partner);
		else
			return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateMoveToArena()
{
	GArena* targetArena;
	float   direction;
	if (arena != NULL)
	{
		targetArena = arena;
		direction = 1.0f;
	}
	else
	{
		targetArena = mind->agenda.SubActionAgenda.Partner->arena;
		direction = -1.0f;
	}
	float   radius = CREATURE_ARENA_APPROACH_SCALE * GetCreature3D()->Size1;
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(targetArena->Pos, pos);
	pos += LHPoint(radius * direction, 0.0f, 0.0f);
	switch (StartMovingToPoint(NULL, pos, radius * 1.5f, 0.0f))
	{
	case 0:
	case 2:
		FinishActionUnsuccessfully("Stopping because navigation failed", true, true);
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	case 1:
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	case 3:
	case 4:
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformResurrect()
{
	GetCreature3D()->Resurrect();
	Fainted = false;
	SetLife(CREATURE_RESURRECT_LIFE);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateSwapMindWithOtherCreature()
{
	if (physical->Creature3d->StartIndividualAction(C_FIGHT_EXTRA_CREATION))
	{
		if (SwapMindEffect != NULL)
			SwapMindEffect->CloseDown();
		SwapMindEffect = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
			Pos, SPOT_VISUAL_MAGIC_BEAM_CREATURE_SWAP, 1.0f, 70, NULL);
		if (SwapMindEffect != NULL)
			SwapMindEffect->SetPlayer(GetPlayer() != NULL ? GetPlayer() : GGame::g_game->MyPlayer());
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformSwapMindWithOtherCreature()
{
	const double blendRate = 0.04;
	float        heightDifference = mind->agenda.SwapMindTargetHeight - physical->Size;
	float        alignmentDifference = mind->agenda.SwapMindTargetAlignment - alignment->GetValue();
	if (fabs(heightDifference) < 0.01f && fabs(alignmentDifference) < 0.01f)
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	physical->Size += heightDifference * (float)blendRate;
	alignment->CrudeSet(alignment->GetValue() + alignmentDifference * (float)blendRate);
	Update3DCreatureFromAttributes();
	physical->Creature3d->UpdateMorphing();
	Creature* other = dynamic_cast<Creature*>(mind->agenda.CurrentPlan.ObjectToActOn->GetPointer());
	if (other != NULL && SwapMindEffect != NULL && GGame::g_game->data.GameTurn % 3 == 0)
	{
		static float  plasmaWidth = 1.5f;
		static float  plasmaSpeed = 1.0f;
		static float  plasmaMinAlpha = 40.0f;
		static float  plasmaMaxAlpha = 75.0f;
		LH3DCreature* creature3d = physical->Creature3d;
		LH3DCreature* otherCreature3d = other->physical->Creature3d;
		LHPoint       start = *creature3d->GetBonePos(GAME_RAND(4569, creature3d->GetNumBones()));
		LHPoint       end = *otherCreature3d->GetBonePos(GAME_RAND(4571, otherCreature3d->GetNumBones()));
		LHPoint       direction = end - start;
		if (direction.GetNorm() < 0.0001f)
			direction = LHPoint(0.0f, 1.0f, 0.0f);
		float norm = direction.GetNorm();
		direction *= InverseSquareRoot(norm);
		LHPoint normal = direction;
		SwapMindEffect->AddTarget(NEW(4588) UR_PlasmaInf(
			start, end, direction, normal, plasmaWidth, plasmaSpeed,
			(uint8_t)(plasmaMinAlpha + GAME_RAND(4588, (uint32_t)(plasmaMaxAlpha - plasmaMinAlpha)))));
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishSwapMindWithOtherCreature()
{
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformFail()
{
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformWaitForObjectToBeInMap()
{
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object* object = dynamic_cast<Object*>(agenda->SubActions[agenda->CurrentSubAction].Belief->Pointer);
	if (object != NULL)
	{
		return object->IsObjectInMap() ? CREATURE_SUB_STATE_RESULT_FINISHED : CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformSetPos()
{
	MapCoords                coords;
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	GLandscape::ConvertLandscapePointToMapCoord(*agenda->GetPositionArgument(), coords);
	ForceMoveMapObjectWithoutWalking(coords);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformHideObjectInHand()
{
	if (physical->ObjectCarried != NULL && physical->ObjectCarried->IsAvailable())
	{
		physical->ObjectCarried->ToBeDeleted(false);
	}
	physical->ObjectCarried = NULL;
	physical->Creature3d->HeldObject = NULL;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformDestroyObjectToUse()
{
	CreatureBelief* belief = mind->agenda.CurrentPlan.ObjectToUse;
	if (belief != NULL && belief->Pointer != NULL)
	{
		belief->Pointer->ToBeDeleted(false);
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformClearObjectToActOn()
{
	mind->agenda.CurrentPlan.ObjectToActOn = mind->GetBeliefAboutObject(this);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformClearObjectToUse()
{
	mind->agenda.CurrentPlan.ObjectToUse = mind->GetBeliefAboutObject(this);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformCatch()
{
	if (GetCreature3D()->IsPerformingBodyAction())
	{
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object* object = dynamic_cast<Object*>(agenda->SubActions[agenda->CurrentSubAction].Belief->Pointer);
	if (object != NULL && GetCreature3D()->StartCatching(object))
	{
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStatePerformKick()
{
	if (GetCreature3D()->IsPerformingBodyAction())
	{
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object* object = dynamic_cast<Object*>(agenda->SubActions[agenda->CurrentSubAction].Belief->Pointer);
	if (object != physical->ObjectCarried && !(object->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) &&
	    object != NULL && GetCreature3D()->StartKickingAction(object))
	{
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateTransportHome()
{
	TurnsUntilNextStateChange =
		GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_TRANSPORT_HOME_FIZZ_SECONDS);
	SetFizz(1.0f, CREATURE_TRANSPORT_HOME_FIZZ_SECONDS, false);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformTransportHome()
{
	if (--TurnsUntilNextStateChange == 0)
	{
		ForceMoveMapObjectWithoutWalking(HomePos);
		TurnsUntilNextStateChange =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_TRANSPORT_HOME_FIZZ_SECONDS);
		SetFizz(0.0f, CREATURE_TRANSPORT_HOME_FIZZ_SECONDS, false);
		if (physical->Exhaustion >= CREATURE_TRANSPORT_HOME_MAX_NEED)
			physical->Exhaustion = CREATURE_TRANSPORT_HOME_MAX_NEED;
		if (physical->Dehydration >= CREATURE_TRANSPORT_HOME_MAX_NEED)
			physical->Dehydration = CREATURE_TRANSPORT_HOME_MAX_NEED;
		if (physical->Energy <= CREATURE_TRANSPORT_HOME_MIN_ENERGY)
			physical->Energy = CREATURE_TRANSPORT_HOME_MIN_ENERGY;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStateFinishTransportHome()
{
	if (--TurnsUntilNextStateChange == 0)
	{
		TurnsUntilNextStateChange =
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_TRANSPORT_HOME_FIZZ_SECONDS);
		SetFizz(0.0f, CREATURE_TRANSPORT_HOME_FIZZ_SECONDS, false);
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformRemoveAndCreateSpellFromTotem()
{
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object*                  object = agenda->GetObjectArgument()->GetObjectPointer();
	TotemStatue*             totem = dynamic_cast<TotemStatue*>(object);
	if (totem != NULL)
	{
		agenda = &mind->agenda.SubActionAgenda;
		SPELL_SEED_TYPE seedType = (SPELL_SEED_TYPE)agenda->GetIntegerArgument();
		Town*           town = totem->GetTown();
		if (town != NULL && town->StealSpellSeedType(seedType, &StolenPowerUps) == 1)
		{
			OneOffSpellSeed* seed = OneOffSpellSeed::Create(Pos, seedType, POWER_UP_TYPE_NONE, 1.0f);
			if (seed != NULL)
			{
				mind->agenda.CreatedObject = seed;
				mind->agenda.SpellSeedTown = town;
				mind->agenda.SpellSeedType = seedType;
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			}
		}
	}
	return CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStatePerformAddAndDestroySpellFromTotem()
{
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object*                  object = agenda->GetObjectArgument()->GetObjectPointer();
	TotemStatue*             totem = dynamic_cast<TotemStatue*>(object);
	Town*                    town = totem->GetTown();
	if (town != NULL)
	{
		town->GiveSpellSeedType(mind->agenda.SpellSeedType, StolenPowerUps);
		mind->agenda.CreatedObject->ToBeDeleted(false);
		mind->agenda.CreatedObject = NULL;
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStatePerformLightbulb()
{
	CreateLightbulb(1.0f);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformShatterRock()
{
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	Object*                  object = agenda->GetObjectArgument()->GetObjectPointer();
	Rock*                    rock = dynamic_cast<Rock*>(object);
	if (rock != NULL)
	{
		rock->SplitInTwo();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_ABORT;
}

int Creature::SubStatePerformDestroyCreatedObject()
{
	if (mind->agenda.CreatedObject != NULL)
	{
		mind->agenda.CreatedObject->ToBeDeleted(false);
		mind->agenda.CreatedObject = NULL;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformCreateHandObjectExNihilo()
{
	CreatureSubActionAgenda* agenda = &mind->agenda.SubActionAgenda;
	POT_INFO                 type = (POT_INFO)agenda->SubActions[agenda->CurrentSubAction].Integer;
	GPotInfo*                info = &GPotInfo::InfoList[type];
	float                    size = physical->Creature3d->Size1;
	Pot* pot = Pot::Create(Pos, info, (unsigned long)(MillisecondsPerSecond * size), NULL, Pos.GetNearestTown(MaxFloat),
	                       0, 0.0f, 1.0f, false);
	pot->SetScale(CREATURE_EX_NIHILO_POT_SCALE * physical->Creature3d->Size1);
	mind->agenda.CreatedObject = pot;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformApplyDesireToObject()
{
	ForceActivityAndDecideAction((CREATURE_DESIRES)mind->agenda.SubActionAgenda.GetIntegerArgument(),
	                             mind->agenda.SubActionAgenda.GetObjectArgument());
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformStopControlledByTeleport()
{
	mind->agenda.CommandState.ControlledByTeleport = false;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformWatchPlayer()
{
	if (TurnsBeforeConsideringDecision != 0 && GetPlayer() != NULL)
	{
		if (!physical->Creature3d->IsPerformingBodyAction())
		{
			if (mind->AttitudeToPlayer.HandMovement > CREATURE_WATCH_PLAYER_MIN_HAND_MOVEMENT)
			{
				LHPoint handPos = GetNearestHandInterfaceStatus()->GetHandPos();
				GUtils::GetDistance(physical->Creature3d->GetPos(), handPos);
				LHPoint direction = physical->Creature3d->GetPos() - handPos;
				if (range_2d(direction) > CREATURE_WATCH_PLAYER_MIN_DISTANCE)
				{
					float heading = heading_from_direction_vector(handPos - physical->Creature3d->GetPos());
					if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > HALF_PI_F)
					{
						physical->StartTurning(heading);
					}
				}
			}
			else
			{
				LHPoint cameraPos = GetNearestCameraInterfaceStatus()->GetCameraPos();
				GUtils::GetDistance(physical->Creature3d->GetPos(), cameraPos);
				LHPoint direction = physical->Creature3d->GetPos() - cameraPos;
				if (range_2d(direction) > CREATURE_WATCH_PLAYER_MIN_DISTANCE)
				{
					float heading = heading_from_direction_vector(cameraPos - physical->Creature3d->GetPos());
					if (fabs(angle_correct(heading - physical->Creature3d->GetHeading())) > HALF_PI_F)
					{
						physical->StartTurning(heading);
					}
				}
			}
		}
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformMakeDisciple()
{
	VILLAGER_DISCIPLE disciple = (VILLAGER_DISCIPLE)mind->agenda.SubActionAgenda.GetIntegerArgument();
	CreatureBelief*   belief = mind->agenda.SubActionAgenda.GetObjectArgument();
	if (belief != NULL && belief->Pointer != NULL)
	{
		Villager* villager = dynamic_cast<Villager*>(belief->Pointer);
		if (villager != NULL)
		{
			villager->SetVillagerDisciple(this, disciple, GetPlayer() == GGame::g_game->MyPlayer());
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

int Creature::SubStateInitiateSetDance()
{
	if (dance != NULL)
	{
		dance->ToBeDeleted(false);
	}
	dance = NULL;
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformSetDance()
{
	LHPoint   pos = *mind->agenda.SubActionAgenda.GetPositionArgument();
	MapCoords coords(pos);
	int       danceType = mind->agenda.SubActionAgenda.GetIntegerArgument();
	if (danceType >= DANCE_INFO_LAST)
	{
		return CREATURE_SUB_STATE_RESULT_FAILURE;
	}
	CreatureBelief* activityObject = mind->agenda.CurrentPlan.ActivityObject;
	Town*           town = activityObject != NULL ? dynamic_cast<Town*>(activityObject->GetPointer()) : NULL;
	dance = NEW(4970) Dance(coords, &GDanceInfo::Infos[danceType], this, 0, false, town);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateSleep()
{
	return physical->Creature3d->StartStaticAction(C_STATIC_SLEEP) ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                                               : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformSleep()
{
	float limit = physical->Size * GetInfo()->SleepTimeScale * GGameInfo::Info.VisualTimeCycleDuration *
	              CREATURE_SLEEP_DURATION_SCALE;
	float gain = GetInfo()->RestLifeGain;
	float life = gain + GetLife();
	CLAMP(life, 0.0f, 1.0f);
	float exhaustion = physical->Exhaustion;
	exhaustion -= GetInfo()->RestExhaustionLoss;
	CLAMP(exhaustion, 0.0f, 1.0f);
	SetLife(life);
	physical->Exhaustion = exhaustion;
	if ((exhaustion == 0.0f && !GGameInfo::Info.IsVisualNight() &&
	     mind->agenda.SubActionAgenda.TurnsInPart > CREATURE_SLEEP_MIN_TURNS) ||
	    (exhaustion < CREATURE_SLEEP_MIN_EXHAUSTION && (float)mind->agenda.SubActionAgenda.TurnsInPart >= limit &&
	     mind->agenda.SubActionAgenda.TurnsInPart > CREATURE_SLEEP_MIN_TURNS))
	{
		physical->Creature3d->EndStaticAction();
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformWaitUntilFree()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateInitiateGetAwayFromObject()
{
	if (GetCreature3D()->IsMovingOrStanding())
	{
		CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
		Object*         object = dynamic_cast<Object*>(belief->Pointer);
		float           distance = GUtils::GetDistanceInMetres(&belief->GetPos(), &Pos);
		float           safeDistance = mind->agenda.SubActionAgenda.GetFloatArgument() +
		                               (object != NULL ? object->Get2DRadius() * CREATURE_GET_AWAY_RADIUS_SCALE : 0.0f);
		if (distance < safeDistance)
		{
			LHPoint direction;
			if (distance <= CREATURE_GET_AWAY_MIN_DISTANCE)
			{
				direction.x = 1.0f;
				direction.z = 0.0f;
				direction.y = 0.0f;
			}
			else
			{
				direction = Pos.GetLHPoint() - belief->GetPos().GetLHPoint();
				direction.Normalise();
			}
			direction *= safeDistance;
			LHPoint   awayPos = Pos.GetLHPoint() + direction;
			MapCoords awayCoords;
			GLandscape::ConvertLandscapePointToMapCoord(awayPos, awayCoords);
			if (FindClearArea(&awayCoords, GetHeight(), false))
			{
				awayPos = awayCoords.GetLHPoint();
				switch (StartMovingToPoint(NULL, awayPos, 1.0f, 0.0f))
				{
				case 0:
				case 1:
				case 2:
					return CREATURE_SUB_STATE_RESULT_FAILURE;
				}
				return CREATURE_SUB_STATE_RESULT_FINISHED;
			}
			return CREATURE_SUB_STATE_RESULT_FAILURE;
		}
		return CREATURE_SUB_STATE_RESULT_FINISHED;
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformGetAwayFromObject()
{
	return physical->Creature3d->IsPerformingBodyAction() ? CREATURE_SUB_STATE_RESULT_CONTINUE
	                                                      : CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::AbortFizz()
{
	SetFizz(0.0f, 0.0f, false);
}

int Creature::AbortStaticAction()
{
	return GetCreature3D()->EndStaticAction();
}

int Creature::AbortEat()
{
	if (physical->Creature3d->HeldObject == NULL)
	{
		CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
		if (belief != NULL)
		{
			Object* object = dynamic_cast<Object*>(belief->Pointer);
			if (object != NULL)
			{
				return ActuallyEatObject(object);
			}
		}
	}
	else if (physical->Creature3d->MoveState == LH3D_CREATURE_STATE_OBJECT_REMOVE)
	{
		Object* object = physical->Creature3d->HeldObject;
		physical->Creature3d->HeldObject = NULL;
		physical->ObjectCarried = NULL;
		object->ToBeDeleted(false);
	}
}

int Creature::SubStateInitiateTalk()
{
	GetCreature3D()->StartConcurrentAction(C_CONCURRENT_TALK);
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStatePerformTalk()
{
	return GetCreature3D()->ConcurrentAction == 0 ? CREATURE_SUB_STATE_RESULT_FINISHED
	                                              : CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformWaitForSpellsToWearOff()
{
	if (ReceiveSpell->TryFinishAllSpells() && mind->agenda.CurrentPlan.ObjectToActOn != NULL)
	{
		Creature* creature = mind->agenda.CurrentPlan.ObjectToActOn->Pointer->CastCreature();
		if (creature != NULL && creature->ReceiveSpell->TryFinishAllSpells())
		{
			return CREATURE_SUB_STATE_RESULT_FINISHED;
		}
	}
	return CREATURE_SUB_STATE_RESULT_CONTINUE;
}

int Creature::SubStatePerformBuild()
{
	CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
	if (belief != NULL)
	{
		Object* object = dynamic_cast<Object*>(belief->Pointer);
		if (object != NULL)
		{
			Abode* abode = dynamic_cast<Abode*>(object);
			if (abode != NULL)
			{
				BuildingSite* site = abode->building_site;
				if (site != NULL)
				{
					uint32_t wood = site->GetResource(RESOURCE_TYPE_WOOD);
					float    amount = (float)wood / site->GetWoodValue();
					site->RemoveResource(RESOURCE_TYPE_WOOD, wood, NULL, NULL);
					site->BuildBy(amount);
				}
			}
		}
	}
	return CREATURE_SUB_STATE_RESULT_FINISHED;
}

int Creature::SubStateEatNearestFoodPile()
{
	MagicFood* food = NULL;
	MapCoords  coords = Pos;
	int        count = CREATURE_FOOD_PILE_SEARCH_STEPS;
	long       x = 1;
	long       z = 1;
	do
	{
		Object* object = coords.FindType(OBJECT_TYPE_ANY, NULL);
		while (object != NULL)
		{
			food = dynamic_cast<MagicFood*>(object);
			if (food != NULL)
				goto found;
			object = coords.FindType(OBJECT_TYPE_ANY, object);
		}
		count--;
		coords += *GUtils::Spiral(x, z);
	} while (count != 0);
found:
	if (food != NULL)
	{
		CreatureBelief* belief = mind->AddBeliefAboutObject(this, food);
		CreaturePlan    plan(CREATURE_DESIRE_HUNGER, CREATURE_EAT_FROM_MAGIC_FOOD_PILE, NULL, belief, NULL, 1.0f);
		ForceActivityAndForceAction(plan, true, true);
		mind->agenda.CommandState.Commanded = true;
		return CREATURE_SUB_STATE_RESULT_CONTINUE;
	}
	return CREATURE_SUB_STATE_RESULT_FAILURE;
}

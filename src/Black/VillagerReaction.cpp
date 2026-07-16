#include "Villager.h"

#include "Abode.h"
#include "Animal.h"
#include "DanceGroup.h"
#include "GroupBehaviour.h"
#include "MagicTeleport.h"
#include "MagicTree.h"
#include "Map.h"
#include "MapCoords.h"
#include "MobileWallHugInfo.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Town.h"
#include "Tree.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// Metres-per-cell scale used by ConfusedReaction's coord<->metre jitter maths (the target
// loads it from .rdata rather than folding the literal, so it must be a variable).
const float VillagerReactionFloat10p0 = 10.0f;

// BW1W120 00763390
bool32_t Villager::IsAvailableForReaction(REACTION reaction)
{
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	uint16_t        flags = this->Flags;
	if (!(flags & 2) && g_GVillagerStateTableInfos[state].field_0x34 != 0 && !(flags & 0x80) && !IsDeathState(state))
	{
		const GVillagerInfo* villagerInfo = (const GVillagerInfo*)this->info;
		if (GetLife() > villagerInfo->LifeWhenCrawlsWounded || reaction == REACTION_REACT_TO_FOOD)
		{
			return Living::IsAvailableForReaction(reaction);
		}
	}
	return 0;
}

// BW1W120 00763410
bool32_t Villager::IsAvailableForBeliefButNotReaction(REACTION param_1)
{
	return false;
}

// BW1W120 00763440
void Villager::AddReaction(Reaction* reaction, VILLAGER_STATES state)
{
	UpdateHowImpressed(reaction, 1);
	Living::AddReaction(reaction, state);
}

// BW1W120 00763470
void Villager::StorePreviousState()
{
	// TODO: 92.5% - semantically exact; only eax/ecx allocation swap between the state value
	// and the state*0x114 array-index expression (target copies state to ecx then indexes in eax).
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	VILLAGER_STATES stateToStore = state;
	if (g_GVillagerStateTableInfos[state].field_0x20 != 0 || g_GVillagerStateTableInfos[state].field_0xc8 != 0)
	{
		stateToStore = (VILLAGER_STATES)this->action.states[LIVING_ACTION_INDEX_PREVIOUS];
	}
	this->action.SetState(LIVING_ACTION_INDEX_PREVIOUS, stateToStore);
}

// BW1W120 007634c0
void Villager::UpdateHowImpressed(Reaction* param_1, int param_2) {}

// BW1W120 007637d0
void Villager::StopReacting()
{
	if ((uint8_t)Living::GetTopState() == VILLAGER_STATE_DANCE_WHILE_REACTING)
	{
		if (IsDancing())
		{
			RemoveFromDance(1);
		}
	}
	Living::StopReacting();
}

// BW1W120 00763800
bool32_t Villager::SetupMoveToPos(const MapCoords& coord, VILLAGER_STATES end_state)
{
	return Living::SetupMoveToPos(coord, end_state);
}

// BW1W120 00763820
void Villager::SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_INITIALISE_BEWILDERED_BY_MAGIC_TREE_REACTION);
	this->field_0xbc = thing;
}

// BW1W120 00763850
uint8_t Villager::FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00763980
uint8_t Villager::ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00763990
void Villager::SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction)
{
	if ((uint8_t)GetFinalState() == VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING)
	{
		this->field_0x10c = 0.0f;
		return;
	}
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_PREDATOR_REACTION);
	this->field_0xbc = thing;
}

// BW1W120 007639d0
void Villager::SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763aa0
void Villager::SetupLookAtObject(GameThingWithPos* thing, Reaction* reaction)
{
	Living::SetupLookAtObject(thing, reaction);
}

// BW1W120 00763ac0
void Villager::SetupLookAtSpell(GameThingWithPos* thing, Reaction* reaction)
{
	Living::SetupLookAtObject(thing, reaction);
}

// BW1W120 00763ae0
void Villager::SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction)
{
	SetupLookAtSpell(thing, reaction);
}

// BW1W120 00763b00
bool32_t Villager::FleeingFromObjectReaction()
{
	return 0;
}

// BW1W120 00763b40
bool32_t Villager::FleeingFromPredatorReaction()
{
	// TODO: needs the coming-towards-me helper at 0x5f1e60 named (its leg of the hide
	// condition is omitted below); the distance callee is the unnamed 2D twin at 0x74cd50
	// and GameRand __FILE__/__LINE__ cannot match in a split TU
	if (this->field_0xbc != NULL && this->field_0xbc->IsAvailable())
	{
		Animal* predator = dynamic_cast<Animal*>(this->field_0xbc);
		if (predator == NULL)
		{
			return 0;
		}
		float distance = GUtils::GetDistanceInMetres(Pos, this->field_0xbc->Pos);
		if (distance > GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
		{
			StopReactingAndSetState();
			return 1;
		}
		if ((uint8_t)GetFinalState() == VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
		{
			Abode* abode = GetAbodeToHideInAtPos(MapCoords((JustWholeMapXZ*)&this->field_0x110));
			if (abode != NULL)
			{
				SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
				return 1;
			}
		}
		if ((predator->GetSpeedInMetresPerSecond() > 5.0f /* && fn_005F1E60(predator) */) ||
		    GRand::GameRand(6, __FILE__, __LINE__) == 0)
		{
			if (SetupGoAndHideInNearbyBuilding(predator))
			{
				return 1;
			}
		}
		return FleeFromObjectIfComingTowardsMe(this->field_0xbc, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION,
		                                       VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00763cb0
bool32_t Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos* thing)
{
	// TODO: the distance callee is the unnamed GetDistanceInMetres copy at 0x74cd70;
	// CanBeHiddenIn dispatches through the wrong Abode vtable slot
	if (GetTown() == NULL)
	{
		return 0;
	}
	float              bestDistance = 100.0f;
	Abode*             bestAbode = NULL;
	LHListHead<Abode>& abodeList = GetTown()->AbodeList;
	Abode*             abode = abodeList.head;
	if (abode != NULL)
	{
		do
		{
			float distance = GUtils::GetDistanceInMetres(Pos, abode->GetArrivePos());
			if (abode->CanBeHiddenIn() && distance < bestDistance)
			{
				bestDistance = distance;
				bestAbode = abode;
			}
			abode = abode->next;
		} while (abode != NULL);
		if (bestAbode != NULL)
		{
			// TODO: 0x110 is really a JustWholeMapXZ (hide-area cell), not yet modelled in
			// Villager.h — hence the cast
			((JustWholeMapXZ*)&this->field_0x110)->Init(bestAbode->Pos);
			this->field_0x10c = 0.0f;
			SetupMoveToOnFootpath(*bestAbode, bestAbode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
			return 1;
		}
	}
	return 0;
}

// BW1W120 00763d90
bool32_t Villager::GoAndHideInNearbyBuilding()
{
	// TODO: the distance callee is the unnamed 2D twin of GetDistanceInMetres at 0x74cd50;
	// GameRand __FILE__/__LINE__ cannot match in a split TU; field_0x10c is an int
	// hide-turns counter here (header declares float), hence the casts
	MapCoords coords((JustWholeMapXZ*)&this->field_0x110);
	Abode*    abode = GetAbodeToHideInAtPos(coords);
	if (this->field_0xbc != NULL && this->field_0xbc->IsAvailable() != 1)
	{
		this->field_0xbc = NULL;
	}
	if (abode != NULL && abode->CanBeHiddenIn())
	{
		MapCoords arrivePos = abode->GetArrivePos();
		if (AreWeThere(&arrivePos, 0.0f))
		{
			if (this->field_0xbc != NULL)
			{
				float distance = GUtils::GetDistanceInMetres(Pos, this->field_0xbc->Pos);
				if (distance <= GetReaction()->GetInfo()->MinDistanceToRunAwayFromObject)
				{
					return 1;
				}
			}
			uint32_t hideTurns = *(uint32_t*)&this->field_0x10c + 1;
			*(uint32_t*)&this->field_0x10c = hideTurns;
			if (hideTurns > GRand::GameRand(150, __FILE__, __LINE__) + 150)
			{
				*(uint32_t*)&this->field_0x10c = 0;
				// TODO: FindPosOutsideAbode is declared void but really returns the pos via
				// hidden retbuf into the slot arrivePos occupies; passing arrivePos below
				// reuses that slot until its return type is fixed
				FindPosOutsideAbode(abode);
				SetupMoveToWithHug(arrivePos, VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE);
			}
			return 1;
		}
		SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00763f00
Abode* Villager::GetAbodeToHideInAtPos(const MapCoords& pos)
{
	// TODO: body is structurally exact. Remaining diffs are Abode vtable/return-type issues
	// outside this unit: CanBeHiddenIn dispatches at vtbl +0x928 but target uses +0x924 (one extra
	// virtual declared before it). Also Abode::CanBeHiddenIn header return type is `bool` but its
	// mangling is UAEIXZ (unsigned int) -> test al,al vs eax,eax.
	Abode* abode = (Abode*)pos.ToMap()->FindFixedOnMap(NULL);
	while (abode != NULL)
	{
		if (abode->IsAbode() && abode->Pos.x == pos.x && abode->Pos.z == pos.z && abode->IsAvailable() &&
		    abode->CanBeHiddenIn())
		{
			return abode;
		}
		abode = (Abode*)pos.ToMap()->FindFixedOnMap(abode);
	}
	return NULL;
}

// BW1W120 00763f80
bool32_t Villager::LookToSeeIfItIsSafe()
{
	// TODO: the distance callee is the unnamed 2D twin of GetDistanceInMetres at 0x74cd50;
	// GameRand __FILE__/__LINE__ cannot match in a split TU
	if (this->field_0xbc != NULL)
	{
		float distance = GUtils::GetDistanceInMetres(Pos, this->field_0xbc->Pos);
		if (distance <= GetReaction()->GetInfo()->MaxReactionDistance && this->field_0xbc->IsAnimal())
		{
			// The predator is only still a threat if it is awake and out of its lair.
			uint8_t predatorState = ((Living*)this->field_0xbc)->action.states[LIVING_ACTION_INDEX_TOP];
			if (predatorState != ANIMAL_STATE_SLEEPS && predatorState != ANIMAL_STATE_HIDE_IN_LAIR)
			{
				Abode* abode = GetAbodeToHideInAtPos(MapCoords((JustWholeMapXZ*)&this->field_0x110));
				if (abode != NULL)
				{
					*(uint32_t*)&this->field_0x10c = 0;
					SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
					return 1;
				}
				return FleeFromObjectIfComingTowardsMe(this->field_0xbc, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION,
				                                       VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
			}
		}
	}
	// TODO: register allocation of the counter differs around the GameRand call
	uint32_t safeTurns = *(uint32_t*)&this->field_0x10c + 1;
	*(uint32_t*)&this->field_0x10c = safeTurns;
	if (safeTurns > GRand::GameRand(25, __FILE__, __LINE__) + 25)
	{
		StopReactingAndSetState();
	}
	return 1;
}

// BW1W120 007640a0
uint32_t Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* thing, uint32_t param_2, float param_3)
{
	VILLAGER_STATES state = GetFinalState();
	if ((uint8_t)state != VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING &&
	    (uint8_t)state != VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
	{
		return Living::NumGameTurnsToReactToPredatorFunction(thing, param_2, param_3);
	}
	return 0x7fffffff;
}

// BW1W120 007640e0
uint32_t Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* thing, uint32_t param_2,
                                                                     float param_3)
{
	if ((uint8_t)GetFinalState() == VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
	{
		return 0;
	}
	return Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(thing, param_2, param_3);
}

// BW1W120 00764110
uint32_t Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* thing, uint32_t param_2, float param_3)
{
	return StandardNumGameTurnsToReactFunction(thing, param_2, param_3);
}

// BW1W120 00764130
uint32_t Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                          float param_3)
{
	return 0;
}

// BW1W120 007641a0
uint32_t Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
	return 0;
}

// BW1W120 00764230
uint32_t Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                   float param_3)
{
	return 0;
}

// BW1W120 007642c0
bool32_t Villager::LookingAtObjectReaction()
{
	return false;
}

// BW1W120 00764310
bool32_t Villager::FleeingAndLookingAtObjectReaction()
{
	return LookingAtObjectReaction();
}

// BW1W120 00764320
bool32_t Villager::FollowingObjectReaction()
{
	return false;
}

// BW1W120 00764350
bool32_t Villager::InspectObjectReaction()
{
	// TODO: needs the game-turns-per-second global at 0xd01a38 named (it drives the
	// inspection-turns maths)
	return false;
}

// BW1W120 00764410
bool32_t Villager::PerformInspectionReaction()
{
	if (!this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return 1;
	}
	if (this->field_0x10c < 1.0f)
	{
		StopReactingAndSetState();
		return 1;
	}
	if (--this->field_0x110 == 0)
	{
		SetTopState(VILLAGER_STATE_APPROACH_OBJECT_REACTION);
		return 1;
	}
	LookAtObject(this->field_0xbc, 1);
	return 1;
}

// BW1W120 00764490
bool32_t Villager::ApproachObjectReaction()
{
	// TODO: needs the helpers at 0x74d3e0/0x74d400 (X/Z offset from angle), 0x74e1d0/0x74e200
	// (cos/sin), the 2D distance twin at 0x74cd50 and the global at 0xd01a38 named
	return false;
}

// BW1W120 00764610
bool32_t Villager::InitialiseTellOthersAboutObject()
{
	if (!this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	this->TurnsUntilNextStateChange = 0;
	SetTopState(VILLAGER_STATE_TELL_OTHERS_ABOUT_INTERESTING_OBJECT);
	return true;
}

// BW1W120 00764650
bool32_t Villager::TellOthersAboutInterestingObject()
{
	return false;
}

// BW1W120 00764660
bool32_t Villager::InitialiseLookAroundForVillagerToTell()
{
	return false;
}

// BW1W120 00764670
bool32_t Villager::LookAroundForVillagerToTell()
{
	return false;
}

// BW1W120 00764680
bool32_t Villager::ApproachVillagerToTalkTo()
{
	return false;
}

// BW1W120 00764690
bool32_t Villager::TellParticularVillagerAboutObject()
{
	return false;
}

// BW1W120 007646a0
bool32_t Villager::GotoFoodReaction()
{
	return false;
}

// BW1W120 007646d0
bool32_t Villager::GotoWoodReaction()
{
	return false;
}

// BW1W120 00764720
bool32_t Villager::ArrivesAtWoodReaction()
{
	return false;
}

// BW1W120 007648d0
uint32_t Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* thing, uint32_t param_2,
                                                                         float param_3)
{
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	if (state >= VILLAGER_STATE_FORESTER_MOVE_TO_FOREST &&
	    (state <= VILLAGER_STATE_FORESTER_CHOPS_TREE || state == VILLAGER_STATE_FORESTER_FINISHED_FORESTERING))
	{
		return 0;
	}
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, param_2, param_3);
}

// BW1W120 00764920
bool32_t Villager::ArrivesAtFoodReaction()
{
	return false;
}

// BW1W120 00764aa0
bool32_t Villager::InitialiseBewilderedByMagicTreeReaction()
{
	// TODO: the tail needs Tree::GetForest fixed — it is declared void and non-virtual, but
	// the target dispatches it virtually and uses its result
	if (this->field_0xbc != NULL && this->field_0xbc->IsAvailable())
	{
		if (dynamic_cast<MagicTree*>(this->field_0xbc) == NULL)
		{
			StopReactingAndSetState();
			return 1;
		}
		// deferred tail — see TODO above
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00764b50
bool32_t Villager::PerformBewilderedByMagicTreeReaction()
{
	return false;
}

// BW1W120 00764d10
bool32_t Villager::TurnToFaceMagicTree()
{
	if (this->field_0xbc == NULL || !this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	if (LookAtObject(this->field_0xbc, 1) != 1)
	{
		return true;
	}
	SetTopState(VILLAGER_STATE_LOOK_AT_MAGIC_TREE);
	return true;
}

// BW1W120 00764d70
bool32_t Villager::LookAtMagicTree()
{
	if (this->field_0xbc != NULL && this->field_0xbc->IsAvailable())
	{
		// The original discards the cast result too (kept only as a call).
		dynamic_cast<Tree*>(this->field_0xbc);
		// TurnsUntilNextStateChange doubles as {uint8 remaining, uint8 total} in this state:
		// play the look-up anim at the halfway point.
		// TODO: SetAnim dispatches through the wrong vtable slot — the two same-name SetAnim
		// virtual declarations in Living.h are in reversed order vs the real vtable
		if (((uint8_t*)&this->TurnsUntilNextStateChange)[0] ==
		    (uint8_t)(((uint8_t*)&this->TurnsUntilNextStateChange)[1] >> 1))
		{
			SetAnim(1);
		}
		if (--*(uint8_t*)&this->TurnsUntilNextStateChange == 0)
		{
			SetTopState(VILLAGER_STATE_PERFORM_BEWILDERED_BY_MAGIC_TREE_REACTION);
		}
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00764df0
bool Villager::IsInterestedInFoodObject(Object* param_1)
{
	return false;
}

// BW1W120 00764f60
bool Villager::IsInterestedInWoodObject(Object* param_1)
{
	return false;
}

// BW1W120 00765140
bool32_t Villager::ApproachHandReaction()
{
	if (!this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	// TODO: fstp/LookAtObject-arg-setup scheduler reorder remains. Body is semantically exact.
	GUtils::GetDistanceInMetres(Pos, this->field_0xbc->Pos);
	LookAtObject(this->field_0xbc, 1);
	return true;
}

// BW1W120 007651a0
bool32_t Villager::FindNearbyVillagerWhoIsntReacting()
{
	return false;
}

// BW1W120 00765260
uint8_t Villager::ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765320
bool32_t Villager::ArrivesAtPickupBallReaction()
{
	return false;
}

// BW1W120 007653f0
bool32_t Villager::WatchFlyingObjectReaction()
{
	return false;
}

// BW1W120 00765450
bool32_t Villager::PointAtFlyingObjectReaction()
{
	return false;
}

// BW1W120 00765540
void Villager::SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00765610
uint8_t Villager::ReactToFirePriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765870
bool32_t Villager::ReactToFire()
{
	return false;
}

// BW1W120 00765b70
void Villager::SetupReactToWood(GameThingWithPos* thing, Reaction* reaction)
{
	Object* wood = dynamic_cast<Object*>(thing);
	AddReaction(reaction, VILLAGER_STATE_GOTO_WOOD_REACTION);
	this->field_0xbc = wood;
}

// BW1W120 00765bb0
uint8_t Villager::ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765c60
void Villager::SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00765e00
bool32_t Villager::AmazedByMagicShieldReaction()
{
	return false;
}

// BW1W120 00766010
void Villager::SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766130
bool32_t Villager::DanceWhileReacting()
{
	MapCoords dancePos;
	CalculateDancePosition(dance_group->Dancer->Pos, &dancePos);
	if (Pos != dancePos && Pos == dance_group->Dancer->GetArrivePos())
	{
		SetupMoveToPos(dancePos, VILLAGER_STATE_DANCE_WHILE_REACTING);
		return 1;
	}
	if (!IsDancing())
	{
		return DecideWhatToDo();
	}
	PerformDance(&dance_group->behaviour->Pos, VILLAGER_STATE_DANCE_WHILE_REACTING, dance_group->field_0x5c);
	return 1;
}

// BW1W120 00766200
uint8_t Villager::ReactToTeleportPriority(Reaction* reaction_1, Reaction* reaction_2)
{
	// TODO: tail deferred — MagicTeleport::ShouldLivingThingReact is declared void but the
	// target consumes its result, and the priority byte is an unnamed global at 0xd4fe90
	if (dynamic_cast<MagicTeleport*>(reaction_1->target) == NULL)
	{
		return 0;
	}
	return 0;
}

// BW1W120 00766250
void Villager::SetupReactToTeleport(GameThingWithPos* thing, Reaction* reaction)
{
	// TODO: after GetFinalDestPos the target calls the MagicTeleport helper at 0x5fc6a0 with
	// (this, &coords); omitted until that helper is named
	if (dynamic_cast<MagicTeleport*>(thing) != NULL)
	{
		MapCoords coords;
		coords = GetFinalDestPos();
		int speedNow = this->speed;
		this->field_0xbc = thing;
		AddReaction(reaction, speedNow > ((const GMobileWallHugInfo*)this->info)->field_0x10c
		                          ? VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION_QUICKLY
		                          : VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION);
	}
}

// BW1W120 007662f0
bool32_t Villager::GoToTeleportReaction()
{
	// TODO: target materialises &teleport->Pos mid-copy where ours folds it into
	// displacements; AreWeThere should return bool32_t (target tests full eax)
	GameThingWithPos* teleport = GetReaction()->target;
	MapCoords         coords;
	coords.x = teleport->Pos.x;
	coords.z = teleport->Pos.z;
	coords.altitude = teleport->Pos.Altitude();
	if (AreWeThere(&coords, 0.0f))
	{
		SetTopState(VILLAGER_STATE_TELEPORT_REACTION);
		return true;
	}
	SetupMoveToWithHug(coords, GetFinalState());
	return true;
}

// BW1W120 00766380
bool32_t Villager::GoToTeleportReactionQuickly()
{
	return GoToTeleportReaction();
}

// BW1W120 00766390
bool32_t Villager::ExitReactToTeleport(unsigned char state)
{
	// TODO: ExitReaction originally took unsigned char (the target pushes the raw byte and
	// the callee re-masks it), not VILLAGER_STATES
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (GetTown() != NULL)
		{
			GetTown()->RemoveVillagerOnWayToWorshipSite(this);
		}
		this->Flags &= ~0x10;
	}
	return ExitReaction((VILLAGER_STATES)state);
}

// BW1W120 007663f0
bool32_t Villager::TeleportReaction()
{
	Reaction* reaction = GetReaction();
	if (reaction == NULL)
	{
		return 0;
	}
	GameThingWithPos* target = reaction->target;
	if (dynamic_cast<MagicTeleport*>(target) == NULL)
	{
		return 0;
	}
	((MagicTeleport*)target)->DoTeleport(this, false);
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00766440
uint8_t Villager::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007664b0
uint8_t Villager::ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007665b0
void Villager::SetupReactToDeath(GameThingWithPos* thing, Reaction* reaction)
{
	if (reaction->target != NULL && reaction->target->IsCreature())
	{
		AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	}
	else if (GRand::GameRand(2, __FILE__, __LINE__) == 0)
	{
		this->TurnsUntilNextStateChange = 0;
		AddReaction(reaction, VILLAGER_STATE_POINT_AT_DEAD_PERSON);
	}
	else
	{
		AddReaction(reaction, VILLAGER_STATE_GO_TOWARDS_DEAD_PERSON);
	}
	this->field_0xbc = thing;
}

// BW1W120 00766620
void Villager::SetupReactToDroppedByHand(GameThingWithPos* thing, Reaction* reaction)
{
	GameThingWithPos* target = reaction->target;
	Villager*         dropped = dynamic_cast<Villager*>(target);
	if (dropped != NULL && dropped->IsAvailable() && !(this->Flags & 0x400))
	{
		SetDiscipleFollower((VILLAGER_DISCIPLE)dropped->DiscipleType);
	}
}

// BW1W120 00766680
bool32_t Villager::PointAtDeadPerson()
{
	return false;
}

// BW1W120 00766700
bool32_t Villager::GoTowardsDeadPerson()
{
	// TODO: needs the same unnamed helpers as ApproachObjectReaction (2D distance, cos/sin,
	// X/Z offsets) plus the float at 0x8c6c98 named
	return false;
}

// BW1W120 00766810
bool32_t Villager::LookAtDeadPerson()
{
	GameThingWithPos* target = this->field_0xbc;
	if (LookAtObject(target, 1) == 1)
	{
		this->TurnsUntilNextStateChange = 0;
		SetTopState(VILLAGER_STATE_MOURN_DEAD_PERSON);
	}
	return true;
}

// BW1W120 00766850
bool32_t Villager::MournDeadPerson()
{
	return false;
}

// BW1W120 007668c0
void Villager::SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction)
{
	this->field_0xbc = this;
	AddReaction(reaction, VILLAGER_STATE_FAINTING_REACTION);
}

// BW1W120 007668e0
bool32_t Villager::FaintingReaction()
{
	return true;
}

// BW1W120 007668f0
void Villager::SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction)
{
	this->field_0xbc = this;
	AddReaction(reaction, VILLAGER_STATE_START_CONFUSED_REACTION);
}

// BW1W120 00766910
bool32_t Villager::StartConfusedReaction()
{
	this->action.TurnsSinceStateChange = 0;
	SetTopState(VILLAGER_STATE_CONFUSED_REACTION);
	return true;
}

// BW1W120 00766930
bool32_t Villager::ConfusedReaction()
{
	action.TurnsSinceStateChange++;
	if (action.TurnsSinceStateChange > 100)
	{
		// Wander to a random point within +/-10 metres (coords are 16.16 fixed-point map
		// units; x * 10 / 65536 converts to metres and back).
		// TODO: target keeps an extra local dword for coords.z and schedules the final
		// z-store after the SetupMoveToWithHug arg pushes
		MapCoords coords = Pos;
		coords.x = (int)((coords.x * VillagerReactionFloat10p0 * (1.0f / 65536.0f) +
		                  GRand::GameFloatRand(20.0f, __FILE__, __LINE__) - 10.0f) *
		                 65536.0f / VillagerReactionFloat10p0);
		coords.z = (int)((coords.z * VillagerReactionFloat10p0 * (1.0f / 65536.0f) +
		                  GRand::GameFloatRand(20.0f, __FILE__, __LINE__) - 10.0f) *
		                 65536.0f / VillagerReactionFloat10p0);
		SetupMoveToWithHug(coords, VILLAGER_STATE_START_CONFUSED_REACTION);
	}
	return 1;
}

// BW1W120 00766a10
uint8_t Villager::ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766a20
void Villager::SetupReactToFallingTree(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
	this->field_0xbc = thing;
}

// BW1W120 00766a50
uint8_t Villager::ReactToCrowdPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766a60
void Villager::SetupReactToCrowd(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_CROWD_REACTION);
	this->field_0xbc = thing;
}

// BW1W120 00766a90
bool32_t Villager::CrowdReaction()
{
	return false;
}

// BW1W120 00766c60
bool32_t Villager::MoveTowardsObjectToLookAt()
{
	if (!this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	// TODO: 73.7% - MapCoords copy codegen + GetDestPos scheduling ceiling.
	// Target calls GetDestPos() BEFORE the zero-init and copies altitude via fld/fstp (float);
	// MSVC6 here does zero-init first and copies altitude via integer mov. Semantics exact.
	MapCoords destPos;
	destPos = *GetDestPos();
	if (GUtils::GetDistanceInMetres(this->field_0xbc->Pos, destPos) > 100.0f)
	{
		SetTopState(VILLAGER_STATE_CROWD_REACTION);
		return true;
	}
	return MoveToPos();
}

// BW1W120 00766d00
bool32_t Villager::InitialiseImpressedReaction()
{
	if (this->field_0xbc == NULL || !this->field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	if (LookAtObject(this->field_0xbc, 2) != 1)
	{
		return true;
	}
	this->TurnsUntilNextStateChange = 0;
	SetTopState(VILLAGER_STATE_PERFORM_IMPRESSED_REACTION);
	return true;
}

// BW1W120 00766d60
bool32_t Villager::PerformImpressedReaction()
{
	// TODO: needs the game-turns-per-second global at 0xd01a38 named
	return false;
}

// BW1W120 00766df0
uint8_t Villager::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766e30
void Villager::SetupReactToFight(GameThingWithPos* thing, Reaction* reaction)
{
	this->field_0xbc = thing;
	AddReaction(reaction, VILLAGER_STATE_INITIALISE_FIGHT_REACTION);
}

// BW1W120 00766e50
bool32_t Villager::InitialiseFightReaction()
{
	return false;
}

// BW1W120 00766fd0
void Villager::SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767180
uint8_t Villager::ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007671e0
void Villager::SetupReactToBreeder(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_REACT_TO_BREEDER);
	this->field_0xbc = thing;
}

// BW1W120 00767210
uint8_t Villager::ReactToBreederPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00767280
bool32_t Villager::ReactToBreeder()
{
	if (this->field_0xbc != NULL && this->field_0xbc->IsVillager(NULL))
	{
		GoAndHaveSexWith((Villager*)this->field_0xbc);
		return true;
	}
	return false;
}

// BW1W120 007672c0
bool32_t Villager::GoAndHaveSexWith(Villager* mate)
{
	// TODO: target returns MakeVillagesMeet's bool result raw (no widening); our
	// bool32_t->bool conversion emits a trailing `and eax,0xff`. ~92% otherwise exact.
	bool32_t result = MakeVillagesMeet(mate, VILLAGER_STATE_START_HAVING_SEX, 0.562f);
	this->TargetThing = mate;
	mate->TargetThing = this;
	return result;
}

// BW1W120 007672f0
void Villager::SetupReactToVillagerInHand(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_WAIT_FOR_MATE);
	this->field_0xbc = thing;
}

// BW1W120 00767320
uint8_t Villager::ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007673a0
bool32_t Villager::WaitForMate()
{
	// TODO: needs the mate-wait distance global at 0xd5035c named
	return false;
}

// BW1W120 00767410
bool32_t Villager::EnterDrowning(unsigned char param_1, unsigned char param_2)
{
	return true;
}

// BW1W120 00767420
bool32_t Villager::ExitDrowning(unsigned char param_1)
{
	return true;
}

// BW1W120 00767430
uint8_t Villager::ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00767490
void Villager::SetupReactToBurningObjectInHand(GameThingWithPos* thing, Reaction* reaction)
{
	this->field_0xbc = thing;
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
}

// BW1W120 007674b0
void Villager::SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767520
void Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos* thing, Reaction* reaction)
{
	SetupPanicReaction(reaction, thing->Pos);
}

// BW1W120 00767540
uint8_t Villager::ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007675a0
uint8_t Villager::ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

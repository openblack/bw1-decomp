#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "ReactionFunction.h"
#include "Reaction.h"
#include "ReactionInfo.h"

#include "Alignment.h"
#include "Balance.h"
#include "Citadel.h"
#include "Dance.h"
#include "Game.h"
#include "GameInfo.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Living.h"
#include "LivingInfo.h"
#include "Map.h"
#include "MapCoords.h"
#include "Player.h"
#include "Rand.h"
#include "Spell.h"
#include "Town.h"
#include "Utils.h"
#include "WorshipSite.h"

#include <windef.h> /* For min */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\Reaction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\Reaction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\Reaction.cpp"
#endif

#define REACTION_DEBUG_CATEGORY 4

#define REACTION_STEALTH_RANDOM_RANGE 1000

#define REACTION_NEAREST_WORSHIP_SITE_START_DISTANCE 9999999.0f

ReactionInfo GInfoArrays::ReactionInfos[NUM_REACTION_FUNCTIONS];

ReactionFunction ReactionFunction::Functions[NUM_REACTION_FUNCTIONS] = {
	{"FleeFromObject", false, false, false, &Living::SetupFleeFromObject, &Living::FleeFromObjectPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"LookAtStaticObject", true, false, false, &Living::SetupLookAtObject, &Living::LookAtObjectPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"FollowObject", false, false, false, &Living::SetupFollowObject, &Living::FollowObjectPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"FleeFromSpell", false, false, false, &Living::SetupFleeFromObject, &Living::FleeFromSpellPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"LookAtSpell", false, false, false, &Living::SetupLookAtSpell, &Living::LookAtSpellPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"FollowSpell", false, false, false, &Living::SetupFollowObject, &Living::FollowSpellPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToCreature", false, false, false, &Living::SetupReactToCreature, &Living::ReactToCreaturePriority,
     &Living::NumGameTurnsToReactToCreatureFunction, &Living::NumGameTurnsBeforeReactingAgainToCreatureFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFood", false, false, false, &Living::SetupReactToFood, &Living::ReactToFoodPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction,
     &Reaction::ImpressiveMultiplierForTownDesire, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToMagicTree", false, false, false, &Living::SetupReactToMagicTree, &Living::ReactToMagicTreePriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFlyingObject", false, false, false, &Living::SetupReactToFlyingObject,
     &Living::ReactToFlyingObjectPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFire", false, true, false, &Living::SetupReactToFire, &Living::ReactToFirePriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToBall", false, false, false, &Living::SetupReactToBall, &Living::ReactToBallPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToWood", false, false, false, &Living::SetupReactToWood, &Living::ReactToWoodPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction,
     &Reaction::ImpressiveMultiplierForTownDesire, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToShield", false, false, false, &Living::SetupReactToMagicShield, &Living::ReactToMagicShieldPriority,
     &Living::NumGameTurnsToReactToShieldFunction, &Living::NumGameTurnsBeforeReactingToShieldAgainFunction, NULL,
     &Reaction::ShieldGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToGift", false, false, false, &Living::SetupReactToCreatureGift, &Living::ReactToCreatureGiftPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToBuilding", true, false, false, &Living::SetupReactToNewBuilding, &Living::ReactToNewBuildingPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToHandPickUp", true, false, false, &Living::SetupReactToHandPickUp, &Living::ReactToHandPickUpPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToHandUsingTotem", true, false, false, &Living::SetupReactToHandUsingTotem,
     &Living::ReactToHandUsingTotemPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToObjectCrushed", true, false, false, &Living::SetupReactToObjectCrushed,
     &Living::ReactToObjectCrushedPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFight", true, false, false, &Living::SetupReactToFight, &Living::ReactToFightPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToTeleport", false, false, false, &Living::SetupReactToTeleport, &Living::ReactToTeleportPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"LookAtNiceSpell", true, false, false, &Living::SetupLookAtNiceSpell, &Living::LookAtNiceSpellPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToHandPuttingStuffInStoragePit", true, false, false, &Living::SetupReactToHandPuttingStuffInStoragePit,
     &Living::ReactToHandPuttingStuffInStoragePitPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToDeath", true, false, false, &Living::SetupReactToDeath, &Living::ReactToDeathPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToDisciple", true, false, false, &Living::SetupReactToDroppedByHand, &Living::ReactToDroppedByHandPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFainting", true, false, false, &Living::SetupReactToFainting, &Living::ReactToFaintingPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToConfused", true, false, false, &Living::SetupReactToConfused, &Living::ReactToConfusedPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFallingTree", true, false, false, &Living::SetupReactToFallingTree, &Living::ReactToFallingTreePriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"FleeFromPredator", false, true, false, &Living::SetupFleeFromPredator, &Living::FleeFromPredatorPriority,
     &Living::NumGameTurnsToReactToPredatorFunction, &Living::NumGameTurnsBeforeReactingAgainToPredatorFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToCrowd", true, false, false, &Living::SetupReactToCrowd, &Living::ReactToCrowdPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToBreeder", false, false, false, &Living::SetupReactToBreeder, &Living::ReactToBreederPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToTownCelebration", true, false, false, &Living::SetupReactToTownCelebration,
     &Living::ReactToTownCelebrationPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToVillagerInHand", true, false, false, &Living::SetupReactToVillagerInHand,
     &Living::ReactToVillagerInHandPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToBurningObjectInHand", false, false, false, &Living::SetupReactToBurningObjectInHand,
     &Living::ReactToBurningObjectInHandPriority, &Living::NumGameTurnsToReactToBurningObjectFunction,
     &Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToMagicWaterPuttingOutFire", true, false, true, NULL, NULL, NULL,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToMagicShieldStruck", true, true, false, &Living::SetupReactToMagicShieldStruck,
     &Living::ReactToMagicShieldStruckPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToMagicShieldDestroyed", false, false, false, &Living::SetupReactToMagicShieldDestroyed,
     &Living::ReactToMagicShieldDestroyedPriority, &Living::StandardNumGameTurnsToReactFunction,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToImpressiveSpell", false, false, false, &Living::SetupLookAtNiceSpell, &Living::LookAtNiceSpellPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToScaffold", true, false, false, &Living::SetupLookAtObject, &Living::ReactToScaffoldPriority,
     &Living::StandardNumGameTurnsToReactFunction, &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL,
     &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
	{"ReactToMissionary", false, false, true, NULL, NULL, NULL,
     &Living::StandardNumGameTurnsBeforeReactingAgainFunction, NULL, &Reaction::StandardGetPosFunction,
     &Reaction::StandardModifyAlignmentFunction},
	{"ReactToFightWon", true, false, true, NULL, NULL, NULL, &Living::StandardNumGameTurnsBeforeReactingAgainFunction,
     NULL, &Reaction::StandardGetPosFunction, &Reaction::StandardModifyAlignmentFunction},
};

static Reaction* CurrentReaction;

Reaction::Reaction(GameThingWithPos* initiating_object, uint8_t reaction, GPlayer* reaction_player)
{
	InitiatingObject = initiating_object;
	type = (REACTION)reaction;
	Stealth = false;
	ReactionDance = NULL;
	GGame::g_game->GameLists.reactions.AddToFirst(this);
	GameTurnStarted = 0;
	Active = true;
	ShuttingDown = false;
	player = reaction_player;
	if (GetInfo()->WhetherReactionGrows)
	{
		Radius = 1.0f;
	}
	else
	{
		Radius = GetInfo()->MaxReactionDistance;
	}
}

Reaction::~Reaction()
{
	if (CurrentReaction == this)
	{
		CurrentReaction = CurrentReaction->next;
	}
}

void Reaction::ToBeDeleted(bool32_t delete_now)
{
	Spell* spell = dynamic_cast<Spell*>(InitiatingObject);
	if (spell != NULL)
	{
		spell->SpellReaction.Clear();
	}
	if (CurrentReaction == this)
	{
		CurrentReaction = CurrentReaction->next;
	}
	if (ReactionDance.Get() != NULL)
	{
		ReactionDance->ToBeDeleted(0);
	}
	GGame::g_game->GameLists.reactions.Remove(this);
	GameThing::ToBeDeleted(delete_now);
}

void Reaction::ProcessReactions()
{
	GGlobal::Global.debug.SetMessage(REACTION_DEBUG_CATEGORY, "NumReactions: %d",
	                                 GGame::g_game->GameLists.reactions.count);
	GGlobal::Global.debug.SetMessage(REACTION_DEBUG_CATEGORY, GGameInfo::Info.IsVisualNight() ? "Night" : "Day");
	const MapCoords& pos = GGame::g_game->MyInterface()->status->Pos;
	Citadel*         citadel = pos.GetNearestCitadel(MaxFloat);
	WorshipSite*     nearestSite = NULL;
	float            nearestDistance = REACTION_NEAREST_WORSHIP_SITE_START_DISTANCE;
	if (citadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			if (citadel->WorshipSites[i] != NULL)
			{
				float distance = GUtils::GetDistanceInMetres(&pos, &citadel->WorshipSites[i]->Pos);
				if (distance < nearestDistance)
				{
					nearestSite = citadel->WorshipSites[i];
					nearestDistance = distance;
				}
			}
		}
		if (nearestSite != NULL)
		{
			GGlobal::Global.debug.SetMessage(REACTION_DEBUG_CATEGORY, "WorshipSiteAngle: %.2f",
			                                 nearestSite->GetAngleFromCitadel());
		}
	}
	if (GGlobal::Global.ReactionsEnabled)
	{
		Reaction* next;
		for (Reaction* reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = next)
		{
			next = reaction->next;
			if (reaction->InitiatingObject->IsAvailable() == false)
			{
				reaction->ToBeDeleted(0);
				if (CurrentReaction == reaction)
				{
					CurrentReaction = NULL;
				}
			}
		}
		if (CurrentReaction == NULL)
		{
			CurrentReaction = GGame::g_game->GameLists.reactions.head;
		}
		else
		{
			CurrentReaction = CurrentReaction->next;
			if (CurrentReaction == NULL)
			{
				CurrentReaction = GGame::g_game->GameLists.reactions.head;
			}
		}
		if (CurrentReaction != NULL)
		{
			CurrentReaction->Process();
		}
	}
}

void Reaction::Process()
{
	if (InitiatingObject->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE)
	{
		RemoveAllReactionsInitiatedByObject(InitiatingObject);
		return;
	}
	if (GetInfo()->WhetherReactionGrows)
	{
		Radius += GetInfo()->ReactionGrowthPerGameTurn;
	}
	if (ReactionFunction::Functions[type].TimeLimited && GameTurnStarted > 0 &&
	    GGame::g_game->data.GameTurn - GameTurnStarted >
	        GInfoArrays::ReactionInfos[type].NumGameTurnsForNormalThingsToReact)
	{
		ShutDown();
		return;
	}
	if (Active)
	{
		SpreadReaction(GetPos(), GUtils::GetMapCellSpiralSizeFromRadius(GetRadius()), type, InitiatingObject, this);
	}
}

Reaction* Reaction::CreateReaction(GameThingWithPos* initiating_object, uint8_t reaction, GPlayer* reaction_player,
                                   bool32_t start_now)
{
	Reaction* newReaction = NULL;
	if (reaction != REACTION_NONE)
	{
		newReaction = new (FILEPATH, 271) Reaction(initiating_object, reaction, reaction_player);
		SpreadReaction(newReaction->GetPos(), GUtils::GetMapCellSpiralSizeFromRadius(newReaction->GetRadius()),
		               reaction, initiating_object, newReaction);
		if (start_now)
		{
			newReaction->GameTurnStarted = GGame::g_game->data.GameTurn;
		}
	}
	return newReaction;
}

void Reaction::SpreadReaction(const MapCoords& pos, uint16_t spiral_size, uint8_t reaction,
                              GameThingWithPos* initiating_object, Reaction* spreading_reaction)
{
	MapCoords cell = pos;
	long      spiralX;
	long      spiralZ;
	int       count = (int)(initiating_object->GetReactionPower() * spiral_size);
	spiralX = 1;
	spiralZ = 1;
	for (; count != 0; count--, cell += *GUtils::Spiral(spiralX, spiralZ))
	{
		if (cell.InBounds())
		{
			float distance = GUtils::GetDistanceInMetres(&pos, &cell);
			if (distance <= spreading_reaction->GetRadius())
			{
				if (GGlobal::Global.debug.ShowReactions)
				{
					LH3DColor color(0xff, 0x00, 0x00, 0xff);
					cell.ShowMapCell(&color);
				}
				if (spreading_reaction->Stealth == true)
				{
					Object* object = cell.ToMap()->FirstObjectMobile;
					Living* living = dynamic_cast<Living*>(object);
					if (living != NULL && living != initiating_object)
					{
						if (GRand::GameRand(REACTION_STEALTH_RANDOM_RANGE, FILEPATH, 310) >
						    spreading_reaction->GetInfo()->StealthRandomChance)
						{
							continue;
						}
						spreading_reaction->Stealth = false;
					}
				}
				ApplyReactionToLivingObjectsAtSquare(cell.MapX(), cell.MapZ(), initiating_object, spreading_reaction,
				                                     reaction);
			}
		}
	}
}

void Living::StartReacting(REACTION reaction, GameThingWithPos* thing, Reaction* new_reaction)
{
	(this->*ReactionFunction::Functions[reaction].SetupFunction)(thing, new_reaction);
}

MapCoords Reaction::GetPos()
{
	MapCoords (Reaction::*getPos)() = ReactionFunction::Functions[type].GetPosFunction;
	return (this->*getPos)();
}

uint8_t Reaction::Priority(const Living* living, float distance, Reaction* current_reaction) const
{
	if (((const GLivingInfo*)living->info)->IsReacting[type] != false)
	{
		float maxDistance = GInfoArrays::ReactionInfos[type].MaxReactionDistance;
		if (distance <= maxDistance)
		{
			uint8_t (Living::*priorityFunction)(Reaction*, Reaction*) =
				ReactionFunction::Functions[type].PriorityFunction;
			float priority = (float)(((Living*)living)->*priorityFunction)((Reaction*)this, current_reaction);
			float result =
				(GetInfo()->HowImportantIsDistance * ((maxDistance - distance) / maxDistance) * 0.5f + 1.0f) * priority;
			return (uint8_t)min(result, REACTION_PRIORITY_MAX);
		}
	}
	return 0;
}

ReactionInfo* Reaction::GetInfo() const
{
	return &GInfoArrays::ReactionInfos[type];
}

void Reaction::ShutDown()
{
	ShuttingDown = true;
	while (ReactingLivings.GetSize() != 0)
	{
		ReactingLivings.head->value->StopReactingAndSetState();
	}
	ToBeDeleted(0);
}

void Reaction::RemoveAllReactionsInitiatedByObject(GameThingWithPos* initiating_object)
{
	Reaction* next;
	for (Reaction* reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = next)
	{
		next = reaction->next;
		if (reaction->InitiatingObject == initiating_object)
		{
			reaction->ShutDown();
		}
	}
}

void Reaction::RemoveAllReactionsOfTypeInitiatedByObject(GameThingWithPos* initiating_object, REACTION reaction)
{
	Reaction* next;
	for (Reaction* walker = GGame::g_game->GameLists.reactions.head; walker != NULL; walker = next)
	{
		next = walker->next;
		if (walker->InitiatingObject == initiating_object && reaction == walker->type)
		{
			walker->ShutDown();
		}
	}
}

void Reaction::SetActiveAllReactionsInitiatedByObject(GameThingWithPos* initiating_object, bool32_t active)
{
	Reaction* next;
	for (Reaction* reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = next)
	{
		next = reaction->next;
		if (reaction->InitiatingObject == initiating_object)
		{
			reaction->Active = active;
		}
	}
}

void Reaction::DisableReactionsWhenInitiatorInHand(GameThingWithPos* initiating_object)
{
	Reaction* next;
	for (Reaction* reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = next)
	{
		next = reaction->next;
		if (reaction->InitiatingObject == initiating_object &&
		    reaction->GetInfo()->WhetherReactionFinishesIfInitiatorInHand)
		{
			reaction->Active = false;
		}
	}
}

void Reaction::SetInitiatingObject(GameThingWithPos* initiating_object)
{
	InitiatingObject = initiating_object;
}

Reaction* Reaction::GetReactionInitiatedByObject(GameThingWithPos* initiating_object)
{
	for (Reaction* reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = reaction->next)
	{
		if (reaction->InitiatingObject == initiating_object)
		{
			return reaction;
		}
	}
	return NULL;
}

float Reaction::GetDefaultReactionMultiplier(Living* living)
{
	if (ReactionFunction::Functions[type].ImpressiveMultiplierFunction != NULL)
	{
		return (this->*ReactionFunction::Functions[type].ImpressiveMultiplierFunction)(living);
	}
	return GetInfo()->DefaultReactionImpressiveMultiplier;
}

float Reaction::ImpressiveMultiplierForTownDesire(Living* living)
{
	Town* town = living->GetTown();
	if (town != NULL)
	{
		TOWN_DESIRE_INFO desire = GetInfo()->CorrespondingTownDesire;
		if (desire != TOWN_DESIRE_INFO_NONE)
		{
			return town->desire.Desire[desire] + town->desire.DesireBoost[desire] + town->desire.DesireCheat[desire];
		}
	}
	return 1.0f;
}

MapCoords Reaction::StandardGetPosFunction()
{
	return InitiatingObject->Pos;
}

MapCoords Reaction::ShieldGetPosFunction()
{
	return InitiatingObject->GetSpellCastPos();
}

void Reaction::StandardModifyAlignmentFunction(Living* living)
{
	if (GetPlayer() != NULL && living != NULL)
	{
		float            change = GetInfo()->AlignmentModifier;
		Town*            town = living->GetTown();
		TOWN_DESIRE_INFO desire = GetInfo()->CorrespondingTownDesireForAlignment;
		if (town != NULL && desire != TOWN_DESIRE_INFO_NONE)
		{
			change *= town->GetRawDesire(desire);
		}
		GPlayer* reactionPlayer = GetPlayer();
		reactionPlayer->alignment->UpdateFromReaction(this, change);
	}
}

GBaseInfo* ReactionInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_REACTION_FUNCTIONS;
	return GInfoArrays::ReactionInfos;
}

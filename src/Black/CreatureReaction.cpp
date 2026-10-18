#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Creature.h"

#include "ColourConstants.h" /* For White */

#include "Balance.h"
#include "CreatureAgenda.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "Game.h"
#include "GameInfo.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "MagicTeleport.h"
#include "Map.h"
#include "MapCoords.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Spell.h"
#include "Utils.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureReaction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureReaction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureReaction.cpp"
#endif

#define CREATURE_IMPRESSIVENESS_SCALE             4.0f
#define CREATURE_IMPRESSIVENESS_OF_CREATURE_SCALE 3.0f
#define CREATURE_REACT_TO_OTHER_PLAYER_CHANCE     100
#define CREATURE_REACT_TO_OTHER_PLAYER_MAX_ROLL   2
#define CREATURE_GAME_TURNS_BEFORE_REACTING_AGAIN 900
#define CREATURE_FIRE_SIZE_RATIO_TO_REACT         0.2f
#define CREATURE_COMPASSION_TO_PUT_OUT_FIRE       0.05f
#define CREATURE_PLAY_WITH_BALL_DESIRE            1.3f
#define CREATURE_FEAR_OF_SCAREY_MAGIC             0.5f
#define CREATURE_SEARCH_HAND_OBJECT_CELLS         64
#define CREATURE_HAND_PICK_UP_PRIORITY_MULTIPLIER 3
#define CREATURE_LOOK_AT_HAND_MIN_SECONDS         60.0f
#define CREATURE_LOOK_AT_HAND_RANDOM_SECONDS      60.0f
#define CREATURE_SADNESS_FROM_DEATH               1.0f

void Creature::AddReaction(Reaction* reaction, VILLAGER_STATES state)
{
	this->reaction = reaction;
	reaction->ReactingLivings.Push(this);
	UpdateHowImpressed(reaction, 1);
}

void Creature::StartReacting(REACTION type, GameThingWithPos* thing, Reaction* reaction)
{
	mind->agenda.plans[1] = mind->agenda.plans[0];
	Living::StartReacting(type, thing, reaction);
}

void Creature::UpdateHowImpressed(Reaction* reaction, int)
{
	if (reaction->GetInitiatingObject() == this)
	{
		return;
	}
	float impressiveness = reaction->GetInitiatingObject()->GetImpressiveValue(this, reaction);
	if (reaction->GetPlayer() == GetPlayer())
	{
		mind->AttitudeToPlayer.ImpressedByPlayer += impressiveness * CREATURE_IMPRESSIVENESS_SCALE;
	}
	else
	{
		Creature* creature = dynamic_cast<Creature*>(reaction->GetInitiatingObject());
		if (creature != NULL)
		{
			mind->UpdateHowImpressiveIsCreature(creature, impressiveness * CREATURE_IMPRESSIVENESS_SCALE *
			                                                  CREATURE_IMPRESSIVENESS_OF_CREATURE_SCALE);
		}
	}
}

bool32_t Creature::IsAvailableForReaction(REACTION reaction)
{
	if (IsFunctional() != false && ReactionsEnabled != false && IsBeingUsedInTheDanceEditor() == false &&
	    !(Flags & GAME_THING_WITH_POS_FLAG_ON_STRUCTURE) && !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) &&
	    (mind->agenda.CommandState.Commanded == false || CommandedByLeash != false) && IsFighting() == false &&
	    mind->agenda.plans[0].creature_action != CREATURE_FIGHT &&
	    (mind->agenda.SubActionAgenda.Partner == NULL ||
	     mind->agenda.SubActionAgenda.Partner->mind->agenda.plans[0].creature_action != CREATURE_FIGHT) &&
	    Fainted == false && FightStarted == false && FightEnded == false &&
	    !(Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) &&
	    (mind->agenda.MimicState.Mimicking == false ||
	     GInfoArrays::ReactionInfos[reaction].priority > CREATURE_MIMICKING_MIN_REACTION_PRIORITY) &&
	    mind->agenda.CommandState.ControlledByTeleport == false && RespondingToEmergency == false)
	{
		return true;
	}
	return false;
}

bool32_t Creature::LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action)
{
	if (action != CREATURE_ACTION_KNOWN_ABOUT_NONE)
	{
		mind->ConsiderLearningAction(type, action);
	}
	return false;
}

uint32_t Creature::StandardNumGameTurnsToReactFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	float maxDistance = GInfoArrays::ReactionInfos[reaction].MaxReactionDistance;
	float importance = GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance;
	return (uint32_t)((1.0f - importance + importance * (maxDistance - distance) / maxDistance) *
	                  GInfoArrays::ReactionInfos[reaction].NumGameTurnsForCreatureToReact);
}

uint32_t Creature::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                   float distance)
{
	float maxDistance = GInfoArrays::ReactionInfos[reaction].MaxReactionDistance;
	float importance = GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance;
	return (uint32_t)((1.0f - importance + distance * importance / maxDistance) *
	                  GInfoArrays::ReactionInfos[reaction].NumGameTurnsForCreatureBeforeReactingAgain);
}

uint32_t Creature::NumGameTurnsToReactToCreatureFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	return Living::NumGameTurnsToReactToCreatureFunction(thing, reaction, distance);
}

uint32_t Creature::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                     float distance)
{
	return Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(thing, reaction, distance);
}

uint8_t Creature::FleeFromSpellPriority(Reaction* reaction, Reaction* current_reaction)
{
	Spell* spell = dynamic_cast<Spell*>(reaction->GetInitiatingObject());
	if (spell != NULL && spell->creator == this)
	{
		return 0;
	}
	return Living::FleeFromSpellPriority(reaction, NULL);
}

void Creature::SetupFleeFromObject(GameThingWithPos* thing, Reaction* reaction)
{
	Spell* spell = dynamic_cast<Spell*>(thing);
	SetupReactToNastyMagic(reaction, spell->magic_type, thing);
}

void Creature::SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction)
{
	Spell* spell = dynamic_cast<Spell*>(thing);
	SetupReactToNiceMagic(reaction, spell->magic_type, thing);
}

void Creature::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* thing, Reaction* reaction)
{
	mind->AddBeliefAboutObject(this, thing);
	LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, CREATURE_ACTION_KNOWN_ABOUT_USE_STORAGE_PIT);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToHandPuttingStuffInStoragePitPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_HAND_PUTTING_STUFF_IN_STORAGE_PIT].priority;
}

uint8_t Creature::ReactToCreaturePriority(Reaction* reaction, Reaction* current_reaction)
{
	if (reaction->GetInitiatingObject() == this || mind->agenda.CommandState.Commanded != false ||
	    mind->agenda.SubActionAgenda.Partner != NULL ||
	    (mind->agenda.plans[0].ObjectToActOn != NULL &&
	     mind->agenda.plans[0].ObjectToActOn->Pointer == reaction->GetInitiatingObject()) ||
	    (ConfinedToObject != false && ConfinementObject == reaction->GetInitiatingObject()))
	{
		return 0;
	}
	float                        delay = GetInfo()->SecondsBeforeReactingToSameCreatureAgain;
	CreatureBelief*              creatureBelief = mind->AddBeliefAboutObject(this, reaction->GetInitiatingObject());
	CreatureBeliefAboutCreature* belief = dynamic_cast<CreatureBeliefAboutCreature*>(creatureBelief);
	if (belief->GameTurnLastReactedTo != 0 && GGame::g_game->data.GameTurn - belief->GameTurnLastReactedTo <=
	                                              (uint32_t)(delay * GGameInfo::Info.NumGameTicksPerSecond()))
	{
		return 0;
	}
	belief->GameTurnLastReactedTo = GGame::g_game->data.GameTurn;
	return REACTION_PRIORITY_MAX;
}

void Creature::SetupReactToCreature(GameThingWithPos* thing, Reaction* reaction)
{
	Creature*                    creature = dynamic_cast<Creature*>(thing);
	CreatureBeliefAboutCreature* belief =
		dynamic_cast<CreatureBeliefAboutCreature*>(mind->GetBeliefAboutObject(creature));
	float usefulness = mind->GetObjectToActOnUsefulness(belief, CREATURE_DESIRE_CURIOSITY);
	ReactionObject = creature;
	if (mind->agenda.plans[0].ObjectToActOn != belief && usefulness > 0.0f)
	{
		ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_INSPECT_CREATURE, belief, NULL, 0, 1);
	}
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToFoodPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	if (CanSeePos(reaction->GetInitiatingObject()->Pos) == false)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FOOD].priority;
}

void Creature::SetupReactToFood(GameThingWithPos* thing, Reaction* reaction)
{
	mind->AddBeliefAboutObject(this, thing);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToMagicTreePriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_TREE].priority;
}

void Creature::SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction)
{
	SetupReactToNiceMagic(reaction, MAGIC_TYPE_WOOD, thing);
}

uint8_t Creature::ReactToBallPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_BALL].priority;
}

void Creature::SetupReactToBall(GameThingWithPos* thing, Reaction* reaction)
{
	mind->desires.MakeDesireMostDominant(CREATURE_DESIRE_TO_PLAY, GetInfo(), CREATURE_PLAY_WITH_BALL_DESIRE);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToFirePriority(Reaction* reaction, Reaction* current_reaction)
{
	GameThingWithPos* fire = reaction->GetInitiatingObject();
	if (fire != NULL && GUtils::GetDistanceInMetres(fire->Pos, Pos) < fire->Get2DRadius() + Get2DRadius() &&
	    GetHeight() / reaction->GetInitiatingObject()->GetHeight() > CREATURE_FIRE_SIZE_RATIO_TO_REACT)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FIRE].priority;
	}
	return 0;
}

void Creature::SetupReactToFire(GameThingWithPos* thing, Reaction* reaction)
{
	CreatureBelief* belief = mind->AddBeliefAboutObject(this, thing);
	CreatureBelief* associated = AddBeliefAboutAssociatedObject(belief);
	if (associated != NULL &&
	    mind->desires.GetDesire(CREATURE_DESIRE_COMPASSION) *
	            mind->GetActivityObjectUsefulness(associated, CREATURE_DESIRE_COMPASSION) >
	        CREATURE_COMPASSION_TO_PUT_OUT_FIRE &&
	    min(1.0f, mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_WATER] /
	                  NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_WATER)) == 1.0f)
	{
		ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, associated, CREATURE_PUT_OUT_FIRE_WITH_MAGIC_WATER,
		                            belief, NULL, 0, 1);
		ReactionObject = thing;
		AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	}
	else
	{
		ForceActivityAndForceAction(CREATURE_DESIRE_FEAR, NULL, CREATURE_RUN_AWAY_FROM_OBJECT, belief, NULL, 0, 1);
		ReactionObject = thing;
		AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	}
}

void Creature::SetupReactToMagicShield(GameThingWithPos* thing, Reaction* reaction)
{
	SetupReactToNiceMagic(reaction, MAGIC_TYPE_SHIELD, thing);
}

void Creature::SetupReactToNiceMagic(Reaction* reaction, MAGIC_TYPE magic_type, GameThingWithPos* thing)
{
	if (reaction->GetPlayer() != NULL && reaction->GetPlayer() != GetPlayer() &&
	    reaction->GetPlayer()->IsAllied(GetPlayer()) == false)
	{
		return;
	}
	Spell*   spell = dynamic_cast<Spell*>(reaction->GetInitiatingObject());
	bool32_t learn = true;
	if (spell != NULL)
	{
		if (spell->creator != NULL && spell->creator->CastSpellIcon() != NULL && spell->SpellSeedLink == NULL)
		{
			return;
		}
		if (spell->creator != NULL && spell->creator->IsCreature() == false && spell->GetPlayer() != NULL &&
		    spell->GetPlayer()->type == PLAYER_TYPE_COMPUTER)
		{
			learn = false;
		}
	}
	else if (magic_type == MAGIC_TYPE_WOOD)
	{
		return;
	}
	if (spell != NULL && spell->GetHasAlreadyBeenLearnedFrom())
	{
		learn = false;
	}
	if (learn != false)
	{
		CreatureBelief* belief = mind->GetBeliefAboutObject(this);
		mind->agenda.PosToRunAwayFrom = thing->Pos;
		ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_EXAMINE_POS, belief, NULL, 0, 1);
		LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic_type);
		if (spell != NULL)
		{
			spell->SetHasAlreadyBeenLearnedFrom(true);
		}
	}
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

void Creature::SetupReactToNastyMagic(Reaction* reaction, MAGIC_TYPE magic_type, GameThingWithPos* thing)
{
	mind->desires.ChangeSource(FEAR_FROM_SEEING_SCAREY_MAGIC, CREATURE_FEAR_OF_SCAREY_MAGIC);
	float fear = mind->desires.GetDesire(CREATURE_DESIRE_FEAR);
	if (GetInterfaceStatusLeashOn() != NULL && GetInterfaceStatusLeashOn()->LeashStatus->LeashType == LEASH_TYPE_ROPE)
	{
		fear = 0.0f;
	}
	CREATURE_DESIRES desire;
	CREATURE_ACTION  action;
	if (fear > 0.0f)
	{
		desire = CREATURE_DESIRE_FEAR;
		action = CREATURE_RUN_AWAY_FROM_POS;
	}
	else
	{
		desire = CREATURE_DESIRE_CURIOSITY;
		action = CREATURE_EXAMINE_POS;
	}
	mind->agenda.PosToRunAwayFrom = thing->Pos;
	CreatureBelief* belief = mind->GetBeliefAboutObject(this);
	ForceActivityAndForceAction(desire, NULL, action, belief, NULL, 0, 1);
	Spell*   spell = dynamic_cast<Spell*>(reaction->GetInitiatingObject());
	bool32_t learn = true;
	if (spell != NULL)
	{
		if (spell->creator != NULL && spell->creator->CastSpellIcon() != NULL && spell->SpellSeedLink == NULL)
		{
			return;
		}
		if (spell->creator != NULL && spell->creator->IsCreature() == false && spell->GetPlayer() != NULL &&
		    (spell->GetPlayer()->type == PLAYER_TYPE_COMPUTER || spell->GetPlayer()->type == PLAYER_TYPE_NEUTRAL))
		{
			learn = false;
		}
	}
	if (spell != NULL && spell->GetHasAlreadyBeenLearnedFrom())
	{
		learn = false;
	}
	if (learn != false)
	{
		LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic_type);
		if (spell != NULL)
		{
			spell->SetHasAlreadyBeenLearnedFrom(true);
		}
	}
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status != NULL && mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic_type))
	{
		MapCoords pos = status->GetHandCollide();
		Object*   object = NULL;
		long      x = 1;
		long      z = 1;
		int       count = CREATURE_SEARCH_HAND_OBJECT_CELLS;
		while (count != 0)
		{
			if (pos.InBounds() == true)
			{
				for (object = pos.ToMap()->FindTypeOnMap(OBJECT_TYPE_ANY, NULL); object != NULL;
				     object = pos.ToMap()->FindTypeOnMap(OBJECT_TYPE_ANY, object))
				{
					if (object != this)
					{
						goto found;
					}
				}
			}
			count--;
			pos += *GUtils::Spiral(x, z);
		}
	found:
		if (object != NULL)
		{
			ForceActionCastSpellOnObject(magic_type, object);
			CommandedByLeash = true;
		}
	}
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToFlyingObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	if (reaction->GetPlayer() != NULL && reaction->GetPlayer() != GetPlayer() &&
	    reaction->GetPlayer()->IsAllied(GetPlayer()) == false &&
	    GRand::GameRand(CREATURE_REACT_TO_OTHER_PLAYER_CHANCE, FILEPATH, 533) > CREATURE_REACT_TO_OTHER_PLAYER_MAX_ROLL)
	{
		return 0;
	}
	if (mind->GameTurnLastReactedToFlyingObject != 0 &&
	    (int)(GGame::g_game->data.GameTurn - mind->GameTurnLastReactedToFlyingObject) <
	        CREATURE_GAME_TURNS_BEFORE_REACTING_AGAIN)
	{
		return 0;
	}
	Object* object = dynamic_cast<Object*>(reaction->GetInitiatingObject());
	if (mind->agenda.plans[0].creature_action == CREATURE_CATCH)
	{
		return 0;
	}
	PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
	if (physics == NULL || (physics->Flags & PHYSICS_OBJECT_FLAG_FROM_HAND) == 0 ||
	    object->IsActuallyInTheAir() == false || CanSeePos(reaction->GetInitiatingObject()->Pos) == false)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FLYING_OBJECT].priority;
}

void Creature::SetupReactToFlyingObject(GameThingWithPos* thing, Reaction* reaction)
{
	mind->GameTurnLastReactedToFlyingObject = GGame::g_game->data.GameTurn;
	if (dynamic_cast<Object*>(thing)->IsActuallyInTheAir())
	{
		CreatureBelief* belief = mind->AddBeliefAboutObject(this, thing);
		ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_LOOK_AT_FLYING_OBJECT, belief, NULL, 0,
		                            1);
		ReactionObject = thing;
		AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	}
}

uint8_t Creature::ReactToHandPickUpPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	GInterfaceStatus* status = dynamic_cast<GInterfaceStatus*>(reaction->GetInitiatingObject());
	if (status != NULL && status->GetPlayer() == GetPlayer())
	{
		Object* object = status->GetFirstObjectInCurrentHand();
		if (CanSeePos(reaction->GetInitiatingObject()->Pos) && object != NULL)
		{
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_HAND_PICK_UP].priority *
			       CREATURE_HAND_PICK_UP_PRIORITY_MULTIPLIER;
		}
	}
	return 0;
}

void Creature::SetupReactToHandPickUp(GameThingWithPos* thing, Reaction* reaction)
{
	mind->agenda.plans[1] = mind->agenda.plans[0];
	ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_LOOK_AT_HAND,
	                            mind->GetBeliefAboutObject(this), NULL, 0, 1);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	TurnsUntilNextStateChange = (int16_t)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
		CREATURE_LOOK_AT_HAND_MIN_SECONDS + GRand::GameFloatRand(CREATURE_LOOK_AT_HAND_RANDOM_SECONDS, FILEPATH, 604));
}

uint8_t Creature::ReactToHandUsingTotemPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	if (CanSeePos(reaction->GetInitiatingObject()->Pos) == false)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_HAND_USING_TOTEM].priority;
}

void Creature::SetupReactToHandUsingTotem(GameThingWithPos* thing, Reaction* reaction)
{
	CreatureBelief* belief = mind->AddBeliefAboutObject(this, thing);
	ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_EXAMINE_BY_LOOKING, belief, NULL, 0, 1);
	LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, CREATURE_ACTION_KNOWN_ABOUT_USE_TOTEM);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToObjectCrushedPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (GetPlayer() == NULL || GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return 0;
	}
	if (reaction->GetPlayer() != NULL && reaction->GetPlayer() != GetPlayer() &&
	    GRand::GameRand(CREATURE_REACT_TO_OTHER_PLAYER_CHANCE, FILEPATH, 644) > CREATURE_REACT_TO_OTHER_PLAYER_MAX_ROLL)
	{
		return 0;
	}
	if (mind->GameTurnLastReactedToObjectCrushed != 0 &&
	    (int)(GGame::g_game->data.GameTurn - mind->GameTurnLastReactedToObjectCrushed) <
	        CREATURE_GAME_TURNS_BEFORE_REACTING_AGAIN)
	{
		return 0;
	}
	if (mind->agenda.plans[0].CreatureDesire == CREATURE_DESIRE_ANGER)
	{
		return 0;
	}
	if (reaction->GetInitiatingObject() != this && CanSeePos(reaction->GetInitiatingObject()->Pos))
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_OBJECT_CRUSHED].priority;
	}
	return 0;
}

void Creature::SetupReactToObjectCrushed(GameThingWithPos* thing, Reaction* reaction)
{
	mind->GameTurnLastReactedToObjectCrushed = GGame::g_game->data.GameTurn;
	CreatureBelief* belief = mind->AddBeliefAboutObject(this, thing);
	ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_EXAMINE_BY_LOOKING, belief, NULL, 0, 1);
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

uint8_t Creature::ReactToFightPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (reaction->GetInitiatingObject() == NULL || reaction->GetInitiatingObject() == this ||
	    mind->agenda.plans[0].creature_action == CREATURE_FIGHT ||
	    CanSeePos(reaction->GetInitiatingObject()->Pos) == false)
	{
		return 0;
	}
	Creature* fighter = reaction->GetInitiatingObject()->CastCreature();
	if (fighter == NULL)
	{
		return 0;
	}
	if (fighter->mind->agenda.SubActionAgenda.Partner == this)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FIGHT].priority;
}

void Creature::SetupReactToFight(GameThingWithPos* thing, Reaction* reaction) {}

uint8_t Creature::ReactToTeleportPriority(Reaction* reaction, Reaction* current_reaction)
{
	GameThingWithPos* initiator = reaction->GetInitiatingObject();
	if (dynamic_cast<MagicTeleport*>(initiator) == NULL)
	{
		return 0;
	}
	if (((MagicTeleport*)initiator)->ShouldLivingThingReact(this))
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_TELEPORT].priority;
	}
	return 0;
}

void Creature::SetupReactToTeleport(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = thing;
	if (dynamic_cast<MagicTeleport*>(thing) != NULL)
	{
		DestPosBeforeTeleport = *GetDestPos();
		((MagicTeleport*)thing)->AddLivingMapCoordsPair(this, *GetDestPos());
		CreatureBelief* belief = mind->AddBeliefAboutObject(this, thing);
		ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_GO_TO_TELEPORT, belief, NULL, 0, 1);
		mind->agenda.CommandState.Commanded = true;
		mind->agenda.CommandState.ControlledByTeleport = true;
		ReactionObject = thing;
		AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	}
}

uint8_t Creature::ReactToDeathPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (reaction->GetInitiatingObject() != NULL && reaction->GetInitiatingObject()->IsCreature())
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_DEATH].priority;
	}
	return 0;
}

void Creature::SetupReactToDeath(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
	mind->desires.ChangeSource(SADNESS, CREATURE_SADNESS_FROM_DEATH);
}

void Creature::SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TIREDNESS, NULL, CREATURE_SLEEP, mind->GetBeliefAboutObject(this), NULL,
	                            0, 1);
	ReactionObject = this;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

void Creature::SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TIREDNESS, NULL, CREATURE_EXAMINE_BY_LOOKING,
	                            mind->AddBeliefAboutObject(this, thing), NULL, 0, 1);
	ReactionObject = this;
	AddReaction(reaction, VILLAGER_STATE_INVALID_STATE);
}

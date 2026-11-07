#include <windows.h> /* For min, max */

#include "GameTimeConstants.h"
#include "PlayerComputer.h"

#include "ColourConstants.h" /* For White */
#include "CreatureAttitudeConstants.h"

#include "Abode.h"
#include "BuildingSite.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalLearnAction.h"
#include "CreaturePhysical.h"
#include "CreatureReceiveSpell.h"
#include "CreatureExplorationMap.h"
#include "Influence.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "MagicEffectInfo.h"
#include "Object.h"
#include "Player.h"
#include "Rand.h"
#include "Serialise.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownCentre.h"
#include "Utils.h"
#include "WorshipSpellIcon.h"

const float PlayfullyCastSpellAtCreatureDesire = 0.33f * 0.33f * 0.33f;
const float MaxDistanceToThrowObjectToImpressTown = 700.0f;

static uint32_t UnusedStatic = 0;

Creature* GComputerPlayer::GetMyCreature(CPDesireNode& node)
{
	return Player->GetCreature();
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToInteractWith(CPDesireNode& node)
{
	if (GetCreature())
	{
		if (GetCreature()->GetCreature3D()->IsPerformingBodyAction())
		{
			return 0.0f;
		}
		return GetDesireToUseCreature();
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowHungryIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_HUNGER];
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowThirstyIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_FOR_WATER];
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowTiredIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_TIREDNESS];
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowMuchCreatureNeedsToGoHome(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_TO_STAY_NEAR_HOME];
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowColdIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_TO_GET_WARMER] * 0.5f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowHotIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return creature->mind->desires.Levels[CREATURE_DESIRE_TO_GET_COLDER] * 0.1f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowImportantToTeachNormalAction(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature && creature->mind->GetNumNormalActionsLeftToLearnWhichCanBeTaughtByComputerPlayer() > 0)
	{
		node.RelevantObject = creature;
		return 0.3f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowImportantToTeachAggressiveMagic(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		float importance = AggressiveMagicNeed * 0.7f;
		CLAMP(importance, 0.0f, 1.0f);
		node.RelevantObject = creature;
		return importance;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowImportantToTeachCompassionateMagic(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		float importance = CompassionateMagicNeed * 0.7f;
		CLAMP(importance, 0.0f, 1.0f);
		node.RelevantObject = creature;
		return importance;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowImportantToTeachImpressiveMagic(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		float importance = ImpressiveMagicNeed * 0.7f;
		CLAMP(importance, 0.0f, 1.0f);
		node.RelevantObject = creature;
		return importance;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToPlayfullyThrowFoodAtCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return (GAME_FLOAT_RAND(197, 0.3f)) + 0.2f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToPlayfullySlapCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return (GAME_FLOAT_RAND(208, 0.1f));
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToPlayfullyStrokeCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		return (GAME_FLOAT_RAND(222, 0.1f)) + 0.1f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToPlayfullyLeashCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature && !creature->GetInterfaceStatusLeashOn())
	{
		node.RelevantObject = creature;
		return (GAME_FLOAT_RAND(236, 0.3f)) + 0.2f;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToPlayfullyCastSpellAtCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		node.RelevantObject = creature;
		if (creature->ReceiveSpell->IsAnySpellActive())
		{
			return 0.0f;
		}
		return PlayfullyCastSpellAtCreatureDesire;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowStarvingIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature && creature->physical->Energy <= creature->GetInfo()->StarvingEnergy)
	{
		node.RelevantObject = creature;
		float hunger = min(creature->mind->desires.Levels[CREATURE_DESIRE_HUNGER], 1.0f);
		node.Argument.IntValue = hunger * 1000.0f;
		return hunger;
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowDamagedIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature && creature->GetLife() <= 0.2f)
	{
		node.RelevantObject = creature;
		return 1.0f - creature->GetLife();
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowIllIsCreature(CPDesireNode& node)
{
	Creature* creature = GetCreature();
	if (creature && creature->physical->Illness >= 0.5f)
	{
		node.RelevantObject = creature;
		return creature->physical->Illness;
	}
	return 0.0f;
}

float GComputerPlayer::FindObjectLeashIsAttachedToAndReturnHowSensibleToLeashCreatureTo(CPDesireNode& node)
{
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToUseCreatureToHelpTown(CPDesireNode& node)
{
	return FindMyCreatureAndReturnHowSensibleToUseCreatureToImpressTown(node);
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToUseCreatureToImpressTown(CPDesireNode& node)
{
	Town*     town = dynamic_cast<Town*>(node.GetParentObject());
	Creature* creature = GetCreature();
	if (town && town->GetStoragePit() && creature)
	{
		GameThingWithPos* leashedTo = GetObjectCreatureLeashedTo();
		if (!leashedTo || leashedTo->GetTown() != town)
		{
			float desire = GetMyCreaturesDesireGotoObject(town->GetStoragePit(), true);
			node.RelevantObject = creature;
			return desire;
		}
	}
	return 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToUseCreatureToDestroyTown(CPDesireNode& node)
{
	return FindMyCreatureAndReturnHowSensibleToUseCreatureToImpressTown(node);
}

float GComputerPlayer::FindMyCreatureAndReturnHowSensibleToUseCreatureToAttackCreature(CPDesireNode& node)
{
	if (node.GetParentObject())
	{
		Creature* other = node.GetParentObject()->CastCreature();
		Creature* creature = GetCreature();
		if (creature && other && !IsCreatureAttachedToObject(other))
		{
			node.RelevantObject = creature;
			return 1.0f;
		}
	}
	return 0.0f;
}

float GComputerPlayer::FindSpellIconAndReturnHowMuchMannaForAggressiveCreatureSpell(CPDesireNode& node)
{
	Creature* other = dynamic_cast<Creature*>(node.GetParentObject());
	Creature* creature = GetPlayer()->GetCreature();
	if (creature && other)
	{
		float distance = other->Pos.GetDistance(creature->Pos);
		if (distance < max((GetHeightOfCreatureIgnoringShrinkingNearCitadel(*creature) +
		                    GetHeightOfCreatureIgnoringShrinkingNearCitadel(*other)) *
		                       2.0f,
		                   30.0f))
		{
			return 0.0f;
		}
	}
	WorshipSpellIcon* icon;
	float             desire =
		FindSpellIconAndReturnDesireToCast(&GComputerPlayer::BestAggressiveCreatureSpellToCast, other->Pos, &icon);
	if (icon)
	{
		node.RelevantObject = icon;
	}
	return desire;
}

float GComputerPlayer::BestAggressiveCreatureSpellToCast(MAGIC_TYPE type, const MapCoords& pos)
{
	if (GMagicEffectInfo::GetInfo()[type].PerceivedPlayerDesire == CREATURE_DESIRE_ANGER)
	{
		return 1.0f;
	}
	return 0.0f;
}

float GComputerPlayer::FindSpellIconAndReturnHowMuchMannaForImpressiveSpell(CPDesireNode& node)
{
	Town* town = dynamic_cast<Town*>(node.GetParentObject());
	float desire = 0.0f;
	if (town)
	{
		WorshipSpellIcon* icon;
		desire = FindSpellIconAndReturnDesireToCast(&GComputerPlayer::BestImpressiveSpellToCast, town->Pos, &icon);
		MapCoords pos;
		desire *= min(town->GetPosWhereVillagersAre(GetHandPos(), pos), 1.0f);
		if (icon)
		{
			node.RelevantObject = icon;
			node.Argument.PointValue = pos.GetLHPoint();
		}
	}
	return desire;
}

float GComputerPlayer::BestImpressiveSpellToCast(MAGIC_TYPE type, const MapCoords& pos)
{
	return GMagicEffectInfo::GetInfo()[type].Impressiveness;
}

float GComputerPlayer::FindSpellIconAndReturnHowMuchMannaForCompassionateSpell(CPDesireNode& node)
{
	WorshipSpellIcon* icon;
	float             desire =
		FindSpellIconAndReturnDesireToCast(&GComputerPlayer::BestCompassionateSpellToCast, *(MapCoords*)NULL, &icon);
	if (icon)
	{
		node.RelevantObject = icon;
	}
	return desire;
}

float GComputerPlayer::BestCompassionateSpellToCast(MAGIC_TYPE type, const MapCoords& pos)
{
	if (GMagicEffectInfo::GetInfo()[type].PerceivedPlayerDesire == CREATURE_DESIRE_COMPASSION)
	{
		return 1.0f;
	}
	return 0.0f;
}

float GComputerPlayer::FindSpellIconAndReturnHowMuchMannaForHealSpell(CPDesireNode& node)
{
	return FindSpellIconAndReturnDesireToCast(node, MAGIC_TYPE_HEAL, *(MapCoords*)NULL);
}

bool32_t GComputerPlayer::GiveObjectToCreature(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetChildObject());
	Creature*         creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(object != NULL, "No object to give");
	ValidateObject(creature != NULL, "No creature");
	if (object && creature && ActionPickupObject(object))
	{
		ActionState->AddSubAction(PLAYER_SUB_ACTION_GIVE_OBJECT_IN_HAND_TO_CREATURE,
		                          PlayerSubActionArgument::CreateList(NEW(482) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::CastFoodForMyCreature(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No spell icon");
	if (creature && icon)
	{
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(497) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
		                          PlayerSubActionArgument::CreateList(NEW(499) PlayerSubActionArgument(MAGIC_TYPE_FOOD),
		                                                              NEW(500) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(502) PlayerSubActionArgument(creature),
		                                                              NEW(502) PlayerSubActionArgument(MAGIC_TYPE_FOOD),
		                                                              NEW(502) PlayerSubActionArgument(icon)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::MakeCreatureDrink(CPDesireNode& node)
{
	Creature* creature = node.GetRelevantObject()->CastCreature();
	ValidateObject(creature != NULL, "No creature");
	if (creature)
	{
		MapCoords pos;
		if (creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &pos,
		                                               PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, true))
		{
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
				PlayerSubActionArgument::CreateList(NEW(521) PlayerSubActionArgument(creature),
			                                        NEW(521) PlayerSubActionArgument(pos.GetLHPoint())));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
				PlayerSubActionArgument::CreateList(NEW(522) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
				PlayerSubActionArgument::CreateList(NEW(523) PlayerSubActionArgument(creature),
			                                        NEW(523) PlayerSubActionArgument(CREATURE_DRINK_FROM_THE_SEA),
			                                        NEW(523) PlayerSubActionArgument(creature)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::RestoreMyCreatureHealth(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No icon");
	if (creature && icon)
	{
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(538) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
		                          PlayerSubActionArgument::CreateList(NEW(540) PlayerSubActionArgument(MAGIC_TYPE_HEAL),
		                                                              NEW(541) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(542) PlayerSubActionArgument(creature),
		                                                              NEW(542) PlayerSubActionArgument(MAGIC_TYPE_HEAL),
		                                                              NEW(542) PlayerSubActionArgument(icon)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::MakeCreatureSleep(CPDesireNode& node)
{
	Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	if (creature)
	{
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
			PlayerSubActionArgument::CreateList(NEW(554) PlayerSubActionArgument(creature),
		                                        NEW(554) PlayerSubActionArgument(creature->HomePos.GetLHPoint())));
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(555) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
		                          PlayerSubActionArgument::CreateList(NEW(556) PlayerSubActionArgument(creature),
		                                                              NEW(556) PlayerSubActionArgument(CREATURE_SLEEP),
		                                                              NEW(556) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::SendCreatureHome(CPDesireNode& node)
{
	Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	if (creature)
	{
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
			PlayerSubActionArgument::CreateList(NEW(571) PlayerSubActionArgument(creature),
		                                        NEW(571) PlayerSubActionArgument(creature->HomePos.GetLHPoint())));
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(572) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
		                          PlayerSubActionArgument::CreateList(NEW(573) PlayerSubActionArgument(creature),
		                                                              NEW(573)
		                                                                  PlayerSubActionArgument(CREATURE_GO_HOME),
		                                                              NEW(573) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::MoveCreatureToWarmerArea(CPDesireNode& node)
{
	Creature* creature = node.GetRelevantObject()->CastCreature();
	ActionState->AddSubAction(
		PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
		PlayerSubActionArgument::CreateList(NEW(586) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
	                          PlayerSubActionArgument::CreateList(NEW(587) PlayerSubActionArgument(creature),
	                                                              NEW(587) PlayerSubActionArgument(CREATURE_GO_HOME),
	                                                              NEW(587) PlayerSubActionArgument(creature)));
	return true;
}

bool32_t GComputerPlayer::MoveCreatureToCoolerArea(CPDesireNode& node)
{
	Creature* creature = node.GetRelevantObject()->CastCreature();
	ActionState->AddSubAction(
		PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
		PlayerSubActionArgument::CreateList(NEW(595) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
	                          PlayerSubActionArgument::CreateList(NEW(596) PlayerSubActionArgument(creature),
	                                                              NEW(596) PlayerSubActionArgument(CREATURE_GO_HOME),
	                                                              NEW(596) PlayerSubActionArgument(creature)));
	return true;
}

bool32_t GComputerPlayer::TeachCreatureNormalAction(CPDesireNode& node)
{
	Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	CREATURE_ACTION_LEARNING_TYPE type;
	unsigned long                 action;
	if (creature && creature->mind->FillInFirstNormalActionLeftToLearn(&type, &action))
	{
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(611) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
			PlayerSubActionArgument::CreateList(NEW(612) PlayerSubActionArgument(creature),
		                                        NEW(612) PlayerSubActionArgument(CREATURE_LOOK_AT_CAMERA),
		                                        NEW(612) PlayerSubActionArgument(creature)));
		return AddSubActionsToTeachCreature(creature, NULL, type, action);
	}
	return false;
}

bool32_t GComputerPlayer::TeachCreatureAggressiveMagic(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No icon");
	CREATURE_ACTION_LEARNING_TYPE type;
	unsigned long                 action;
	if (creature && icon && creature->mind->FillInFirstAggressiveMagicActionLeftToLearn(&type, &action))
	{
		AggressiveMagicNeed = 0;
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(633) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		return AddSubActionsToTeachCreature(creature, icon, type, action);
	}
	return false;
}

bool32_t GComputerPlayer::TeachCreatureCompassionateMagic(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No icon man");
	CREATURE_ACTION_LEARNING_TYPE type;
	unsigned long                 action;
	if (creature && creature->mind->FillInFirstCompassionateMagicActionLeftToLearn(&type, &action))
	{
		CompassionateMagicNeed = 0;
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(654) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		return AddSubActionsToTeachCreature(creature, icon, type, action);
	}
	return false;
}

bool32_t GComputerPlayer::TeachCreatureImpressiveMagic(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No icon");
	CREATURE_ACTION_LEARNING_TYPE type;
	unsigned long                 action;
	if (creature && icon && creature->mind->FillInFirstImpressiveMagicActionLeftToLearn(&type, &action))
	{
		ImpressiveMagicNeed = 0;
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
			PlayerSubActionArgument::CreateList(NEW(675) PlayerSubActionArgument(creature->Pos.GetLHPoint())));
		return AddSubActionsToTeachCreature(creature, icon, type, action);
	}
	return false;
}

bool32_t GComputerPlayer::ThrowFoodAtCreature(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetChildObject());
	Creature*         creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(object != NULL, "No object_to_throw");
	ValidateObject(creature != NULL, "No creature");
	if (object && creature && ActionPickupObject(object))
	{
		LHPoint creaturePos = creature->Pos.GetLHPoint();
		LHPoint handPos = ActionState->HandPoint;
		LHPoint direction = creaturePos - handPos;
		float   distance = direction.GetNorme();
		direction.FastNormalizeInline();
		LHPoint pos;
		if (distance < 20.0f)
		{
			pos = handPos - direction * 20.0f;
		}
		else
		{
			pos = handPos + direction * (distance - 20.0f);
		}
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
		                          PlayerSubActionArgument::CreateList(NEW(707) PlayerSubActionArgument(pos)));
		LHPoint target = creature->Pos.GetLHPoint();
		target.y = GetHeightOfCreatureIgnoringShrinkingNearCitadel(*creature);
		target.x += (GAME_FLOAT_RAND(711, 4.0f)) - 2.0f;
		target.z += (GAME_FLOAT_RAND(712, 4.0f)) - 2.0f;
		ActionState->AddSubAction(PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
		                          PlayerSubActionArgument::CreateList(NEW(713) PlayerSubActionArgument(target)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::SlapCreature(CPDesireNode& node)
{
	Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	if (creature)
	{
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_CREATURE_HEAD,
		                          PlayerSubActionArgument::CreateList(NEW(726) PlayerSubActionArgument(creature)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_SLAP_CREATURE,
		                          PlayerSubActionArgument::CreateList(NEW(727) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::StrokeCreature(CPDesireNode& node)
{
	Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	if (creature)
	{
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_CREATURE_HEAD,
		                          PlayerSubActionArgument::CreateList(NEW(742) PlayerSubActionArgument(creature)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_STROKE_CREATURE,
		                          PlayerSubActionArgument::CreateList(NEW(743) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::AttachLeashFromCreatureToObject(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetChildObject());
	Creature*         creature = dynamic_cast<Creature*>(node.GetRelevantObject());
	ValidateObject(object != NULL, "No object_to_attach");
	ValidateObject(creature != NULL, "No creature");
	if (object && creature)
	{
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
			PlayerSubActionArgument::CreateList(NEW(760) PlayerSubActionArgument(creature),
		                                        NEW(760) PlayerSubActionArgument(object->Pos.GetLHPoint())));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(761) PlayerSubActionArgument(object)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(762) PlayerSubActionArgument(creature),
		                                                              NEW(762) PlayerSubActionArgument(object)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::CastSpellOnMyCreatureForALaugh(CPDesireNode& node)
{
	Creature*         creature = dynamic_cast<Creature*>(node.GetParentObject());
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(creature != NULL, "No creature");
	ValidateObject(icon != NULL, "No icon man");
	if (creature && !creature->ReceiveSpell->IsAnySpellActive() && icon)
	{
		int spell = (GAME_RAND(779, MAGIC_TYPE_CREATURE_SPELL_FAT - MAGIC_TYPE_CREATURE_SPELL_FREEZE)) +
		            MAGIC_TYPE_CREATURE_SPELL_FREEZE;
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(781) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
		                          PlayerSubActionArgument::CreateList(NEW(783) PlayerSubActionArgument(spell),
		                                                              NEW(784) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
		                          PlayerSubActionArgument::CreateList(NEW(785) PlayerSubActionArgument(creature),
		                                                              NEW(785) PlayerSubActionArgument(spell),
		                                                              NEW(785) PlayerSubActionArgument(icon)));
		ActionState->AddSubAction(PLAYER_SUB_ACTION_WAIT_FOR_SPELL_TO_WEAR_OFF,
		                          PlayerSubActionArgument::CreateList(NEW(786) PlayerSubActionArgument(creature)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::RestoreMyCreatureFromIllness(CPDesireNode& node)
{
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToTeachCreature(Creature* creature, GameThingWithPos* object,
                                                       CREATURE_ACTION_LEARNING_TYPE type, unsigned long action)
{
	static bool32_t (GComputerPlayer::* AddSubActionsFunctions[CREATURE_ACTION_LEARNING_TYPE_LAST])(
		Creature* creature, GameThingWithPos* object, unsigned long action) = {
		&GComputerPlayer::AddSubActionsToTeachCreatureNormalAction, //
		&GComputerPlayer::AddSubActionsToTeachCreatureMagicAction,  //
	};
	ValidateObject(type < CREATURE_ACTION_LEARNING_TYPE_LAST, "Invalid learning type");
	if (type < CREATURE_ACTION_LEARNING_TYPE_LAST && AddSubActionsFunctions[type])
	{
		creature->mind->ActionsKnownAbout.AddActionLearnt(creature, type, action, true);
		return (this->*AddSubActionsFunctions[type])(creature, object, action);
	}
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToTeachCreatureNormalAction(Creature* creature, GameThingWithPos* object,
                                                                   unsigned long action)
{
	static bool32_t (GComputerPlayer::* AddSubActionsFunctions[CREATURE_ACTION_KNOWN_ABOUT_LAST])(
		Creature* creature) = {
		NULL,                                                     //
		NULL,                                                     //
		&GComputerPlayer::AddSubActionsToTeachCreatureToUseTotem, //
		NULL,                                                     //
		NULL,                                                     //
	};
	ValidateObject(action < CREATURE_ACTION_KNOWN_ABOUT_LAST, "invalid index");
	ValidateObject(AddSubActionsFunctions[action] != NULL, "trying to teach something invalid");
	if (action < CREATURE_ACTION_KNOWN_ABOUT_LAST && AddSubActionsFunctions[action])
	{
		return (this->*AddSubActionsFunctions[action])(creature);
	}
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToTeachCreatureMagicAction(Creature* creature, GameThingWithPos* object,
                                                                  unsigned long action)
{
	ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
	                          PlayerSubActionArgument::CreateList(NEW(842) PlayerSubActionArgument(object)));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
	                          PlayerSubActionArgument::CreateList(NEW(843) PlayerSubActionArgument(creature),
	                                                              NEW(843)
	                                                                  PlayerSubActionArgument(CREATURE_LOOK_AT_CAMERA),
	                                                              NEW(843) PlayerSubActionArgument(creature)));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
	                          PlayerSubActionArgument::CreateList(NEW(844) PlayerSubActionArgument(creature)));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
	                          PlayerSubActionArgument::CreateList(NEW(846) PlayerSubActionArgument((MAGIC_TYPE)action),
	                                                              NEW(847) PlayerSubActionArgument(object)));
	ActionState->AddSubAction(PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
	                          PlayerSubActionArgument::CreateList(NEW(848) PlayerSubActionArgument(creature),
	                                                              NEW(848) PlayerSubActionArgument((MAGIC_TYPE)action),
	                                                              NEW(848) PlayerSubActionArgument(object)));
	return true;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction1(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToThrowTreeNearCreature(Creature* creature)
{
	Object* tree = creature->Pos.FindNearType(OBJECT_TYPE_FOREST_TREE, 250.0f);
	if (tree && ActionPickupObject(tree))
	{
		LHPoint pos;
		pos = creature->Pos.ConvertToLHPoint();
		float radius = GetHeightOfCreatureIgnoringShrinkingNearCitadel(*creature) * 3.0f;
		pos.x += (GAME_FLOAT_RAND(866, radius * 2.0f)) - radius;
		pos.z += (GAME_FLOAT_RAND(867, radius * 2.0f)) - radius;
		ActionState->AddSubAction(PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
		                          PlayerSubActionArgument::CreateList(NEW(868) PlayerSubActionArgument(pos)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToThrowTreeAtCreature(Creature* creature)
{
	Object* tree = creature->Pos.FindNearType(OBJECT_TYPE_FOREST_TREE, 250.0f);
	if (tree && ActionPickupObject(tree))
	{
		LHPoint pos;
		pos = creature->Pos.ConvertToLHPoint();
		GetHeightOfCreatureIgnoringShrinkingNearCitadel(*creature);
		ActionState->AddSubAction(PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
		                          PlayerSubActionArgument::CreateList(NEW(884) PlayerSubActionArgument(pos)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction2(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction3(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction4(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction5(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction6(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::AddSubActionsToTeachCreatureToUseTotem(Creature* creature)
{
	Object* totem = creature->Pos.FindNearType(OBJECT_TYPE_TOTEM_STATUE, 250.0f);
	if (totem)
	{
		ActionState->AddSubAction(
			PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
			PlayerSubActionArgument::CreateList(NEW(921) PlayerSubActionArgument(creature),
		                                        NEW(921) PlayerSubActionArgument(CREATURE_EXAMINE_BY_LOOKING),
		                                        NEW(921) PlayerSubActionArgument(totem)));
		LHPoint pos = totem->Pos.ConvertToLHPoint();
		ActionState->AddSubAction(PLAYER_SUB_ACTION_RAISE_TOTEM,
		                          PlayerSubActionArgument::CreateList(NEW(926) PlayerSubActionArgument(totem),
		                                                              NEW(927) PlayerSubActionArgument(1.0f)));
		return true;
	}
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction7(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction8(Creature* creature)
{
	return false;
}

bool32_t GComputerPlayer::UnreferencedEmptyTeachFunction9(Creature* creature)
{
	return false;
}

void GComputerPlayer::CreateCreatureFromFile(CREATURE_TYPE type, const MapCoords& coords, char* file_name)
{
	char path[256];
	sprintf(path, ".\\Scripts\\CreatureMind\\%s", file_name);
	Archive archive(path, LH_FILE_MODE_READ_ONLY);
	if (archive.IsOpen())
	{
		Creature* creature = Creature::Create(coords, &CreatureInfo::GetInfo()[type], Player);
		Player->SetCreature(creature);
		strcpy(creature->MindFileName, file_name);
		creature->mind->LoadMindIntoPreexistingCreature(archive);
		for (int leash = LEASH_TYPE_FIRST; leash <= LEASH_TYPE_LAST; leash++)
		{
			creature->LeashEnabled[leash] = true;
		}
		creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, false);
	}
}

Creature* GComputerPlayer::GetCreature()
{
	if (Player && Player->GetCreature())
	{
		Creature* creature = Player->GetCreature();
		return (creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) ? NULL : creature;
	}
	return NULL;
}

void Creature::SetupComputerControlledCreature()
{
	uint32_t desire;
	for (desire = FIRST_CREATURE_DESIRE; desire < NUM_CREATURE_DESIRES; desire++)
	{
		mind->desires.SetActivated((CREATURE_DESIRES)desire, false);
	}
	uint32_t phase;
	for (phase = DEVELOPMENT_PHASE_FIRST; phase <= DEVELOPMENT_PHASE_FULLY_MATURE; phase++)
	{
		mind->creature.Get()->MoveToDevelopmentPhase((DEVELOPMENT_PHASE)phase, true);
	}
	mind->creature.Get()->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, false);
	mind->creature.Get()->DevelopmentPhase = DEVELOPMENT_PHASE_FULLY_MATURE;
	mind->creature.Get()->GameTurnsInDevelopmentPhase = 0;
	mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                        CREATURE_ACTION_KNOWN_ABOUT_BUILD, true);
	mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                        CREATURE_ACTION_KNOWN_ABOUT_USE_FIELD, true);
	mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                        CREATURE_ACTION_KNOWN_ABOUT_USE_STORAGE_PIT, true);
	mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                        CREATURE_ACTION_KNOWN_ABOUT_FISH, true);
	physical->SetEnergy(1.0f);
	physical->Exhaustion = 0.0f;
	physical->Dehydration = 0.0f;
}

float GComputerPlayer::FindMyCreatureAndReturnNearnessAndAvailabilityOfCreature(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetParentObject());
	if (GetCreature() && object)
	{
		float distance = GetCreature()->Pos.GetDistance(object->Pos);
		float modifier = GUtils::GetDistanceModifier(distance, MaxDistanceToAttackOtherCreature());
		node.RelevantObject = GetCreature();
		return GetDesireToUseCreature() * modifier;
	}
	return 0.0f;
}

bool32_t GComputerPlayer::ForceCreatureToHelpTown(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetParentObject());
	ValidateObject(object != NULL, "no relevant town");
	Town* town = dynamic_cast<Town*>(object->GetTown());
	if (town)
	{
		Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
		ValidateObject(creature != NULL, "No creature");
		GameThingWithPos* target = town->GetStoragePit();
		if (!target)
		{
			target = town->AbodeList.Get();
		}
		if (creature && target)
		{
			if (creature->mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_COMPASSION) < 1.0f)
			{
				CompassionateMagicNeed++;
			}
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
				PlayerSubActionArgument::CreateList(NEW(1058) PlayerSubActionArgument(creature),
			                                        NEW(1058) PlayerSubActionArgument(target->Pos.GetLHPoint())));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_LEASH,
				PlayerSubActionArgument::CreateList(NEW(1060) PlayerSubActionArgument(creature),
			                                        NEW(1060) PlayerSubActionArgument(LEASH_TYPE_GOOD)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
			                          PlayerSubActionArgument::CreateList(NEW(1061) PlayerSubActionArgument(creature),
			                                                              NEW(1061) PlayerSubActionArgument(target)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ForceCreatureToHelpTownBuild(CPDesireNode& node)
{
	BuildingSite* site = dynamic_cast<BuildingSite*>(node.GetParentObject());
	if (ValidateObject(site != NULL, "no relevant Building Site") &&
	    ValidateObject(site->GetBuilding() != NULL, "No building at site"))
	{
		Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
		if (ValidateObject(creature != NULL, "No creature"))
		{
			MultiMapFixed* building = site->GetBuilding();
			if (creature->mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_COMPASSION) < 1.0f)
			{
				CompassionateMagicNeed++;
			}
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
				PlayerSubActionArgument::CreateList(NEW(1084) PlayerSubActionArgument(creature),
			                                        NEW(1084) PlayerSubActionArgument(building->Pos.GetLHPoint())));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
				PlayerSubActionArgument::CreateList(NEW(1085) PlayerSubActionArgument(creature),
			                                        NEW(1085) PlayerSubActionArgument(CREATURE_HELP_BUILD_HOUSE),
			                                        NEW(1085) PlayerSubActionArgument(building)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_WAIT,
			                          PlayerSubActionArgument::CreateList(NEW(1088) PlayerSubActionArgument(0.5f)));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_FORCE_CREATURE_DOMINANT_DESIRE,
				PlayerSubActionArgument::CreateList(NEW(1089) PlayerSubActionArgument(creature),
			                                        NEW(1089) PlayerSubActionArgument(CREATURE_DESIRE_COMPASSION),
			                                        NEW(1089) PlayerSubActionArgument(120.0f)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ForceCreatureToImpressTown(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetParentObject());
	ValidateObject(object != NULL, "no relevant object");
	if (object)
	{
		Town*     town = object->IsTown() ? dynamic_cast<Town*>(object) : object->GetTown();
		Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
		ValidateObject(creature != NULL, "No creature");
		GameThingWithPos* target = town->GetStoragePit();
		if (!target)
		{
			target = town->AbodeList.Get();
		}
		if (creature && target)
		{
			creature->mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_TO_IMPRESS);
			AddLookAndLearn(&node, town, town->belief.BeliefInPlayer[Player->GetPlayerNumber()], 1, 500);
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_LEASH,
				PlayerSubActionArgument::CreateList(NEW(1116) PlayerSubActionArgument(creature),
			                                        NEW(1116) PlayerSubActionArgument(LEASH_TYPE_ROPE)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
			                          PlayerSubActionArgument::CreateList(NEW(1117) PlayerSubActionArgument(creature),
			                                                              NEW(1117) PlayerSubActionArgument(target)));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_FORCE_CREATURE_DOMINANT_DESIRE,
				PlayerSubActionArgument::CreateList(NEW(1119) PlayerSubActionArgument(creature),
			                                        NEW(1119) PlayerSubActionArgument(CREATURE_DESIRE_TO_IMPRESS),
			                                        NEW(1119) PlayerSubActionArgument(120.0f)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ForceCreatureToAttackTown(CPDesireNode& node)
{
	GameThingWithPos* object = dynamic_cast<GameThingWithPos*>(node.GetParentObject());
	ValidateObject(object != NULL, "no relevant object");
	if (object)
	{
		Town*     town = object->IsTown() ? dynamic_cast<Town*>(object) : object->GetTown();
		Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
		ValidateObject(creature != NULL, "No creature");
		GameThingWithPos* target = town->GetStoragePit();
		if (!target)
		{
			target = town->town_centre;
			if (!target)
			{
				target = town->AbodeList.Get();
			}
		}
		if (creature && target)
		{
			if (creature->mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_ANGER) < 1.0f)
			{
				AggressiveMagicNeed++;
			}
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_LEASH,
				PlayerSubActionArgument::CreateList(NEW(1154) PlayerSubActionArgument(creature),
			                                        NEW(1154) PlayerSubActionArgument(LEASH_TYPE_EVIL)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
			                          PlayerSubActionArgument::CreateList(NEW(1155) PlayerSubActionArgument(creature),
			                                                              NEW(1155) PlayerSubActionArgument(target)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::IsCreatureAttachedToObject(GameThingWithPos* object)
{
	if (GetCreature())
	{
		GLeashStatus* leash = GetCreature()->GetPlayer()->GetLeaderInterfaceStatus()->LeashStatus;
		if (leash)
		{
			return object == leash->ObjectAttachedTo;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ForceCreatureToAttackCreature(CPDesireNode& node)
{
	Creature* other = dynamic_cast<Creature*>(node.GetParentObject());
	ValidateObject(other != NULL, "No other creature");
	if (other)
	{
		Creature* creature = dynamic_cast<Creature*>(node.GetRelevantObject());
		ValidateObject(creature != NULL, "No creature");
		if (creature)
		{
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_SET_LEASH,
				PlayerSubActionArgument::CreateList(NEW(1195) PlayerSubActionArgument(creature),
			                                        NEW(1195) PlayerSubActionArgument(LEASH_TYPE_EVIL)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
			                          PlayerSubActionArgument::CreateList(NEW(1196) PlayerSubActionArgument(creature),
			                                                              NEW(1196) PlayerSubActionArgument(other)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ForceCreatureToDefendTown(CPDesireNode& node)
{
	Town*     town = dynamic_cast<Town*>(node.GetParentObject());
	Creature* creature = GetCreature();
	if (creature && town)
	{
		float highest = 0.0f;
		float magic = 0.0f;
		float physical = 0.0f;
		if (town->GetHighestTownEffectMagicAndPhysical(highest, magic, physical))
		{
			creature->mind->ActionsKnownAbout.KnowsAction(
				CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic > physical ? MAGIC_TYPE_SHIELD : MAGIC_TYPE_PHYSICAL_SHIELD);
		}
	}
	return ForceCreatureToHelpTown(node);
}

bool32_t GComputerPlayer::AttackCreatureWithSpells(CPDesireNode& node)
{
	GameThing* object = node.GetParentObject();
	ValidateObject(object != NULL, "No other creature");
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(icon != NULL, "No spell icon man");
	if (object && icon)
	{
		Creature* creature = object->CastCreature();
		ValidateObject(creature != NULL, "No other creature");
		if (creature)
		{
			MAGIC_TYPE type = icon->GetMagicType();
			for (uint32_t i = 0; i < (GAME_RAND(1252, 2)) + 2; i++)
			{
				ActionState->AddSubAction(
					PLAYER_SUB_ACTION_MOVE_HAND_NEAR_OBJECT,
					PlayerSubActionArgument::CreateList(NEW(1254) PlayerSubActionArgument(creature)));
				ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
				                          PlayerSubActionArgument::CreateList(NEW(1256) PlayerSubActionArgument(type),
				                                                              NEW(1257) PlayerSubActionArgument(icon)));
				ActionState->AddSubAction(PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
				                          PlayerSubActionArgument::CreateList(NEW(1258)
				                                                                  PlayerSubActionArgument(creature),
				                                                              NEW(1258) PlayerSubActionArgument(type),
				                                                              NEW(1258) PlayerSubActionArgument(icon)));
			}
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ThrowDestructiveObjectAtTown(CPDesireNode& node)
{
	GameThing* object = node.GetRelevantObject();
	GameThing* parent = node.GetParentObject();
	ValidateObject(object != NULL, "Nothing to throw");
	ValidateObject(parent != NULL, "No town");
	if (object && parent)
	{
		Town* town = dynamic_cast<Town*>(parent);
		ValidateObject(town != NULL, "No town");
		if (town)
		{
			LHPoint pos = town->Pos.GetLHPoint();
			Object* thing = dynamic_cast<Object*>(object);
			if (thing && ActionPickupObject(thing))
			{
				ActionState->AddSubAction(PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
				                          PlayerSubActionArgument::CreateList(NEW(1284) PlayerSubActionArgument(pos)));
				return true;
			}
		}
	}
	return false;
}

bool32_t GComputerPlayer::ImpressTownWithSpells(CPDesireNode& node)
{
	GameThing* object = node.GetParentObject();
	ValidateObject(object != NULL, "No town");
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(node.GetRelevantObject());
	ValidateObject(icon != NULL, "No spell icon man");
	if (object && icon)
	{
		Town* town = dynamic_cast<Town*>(object);
		ValidateObject(town != NULL, "No town");
		if (town)
		{
			MAGIC_TYPE type = icon->GetMagicType();
			ActionState->AddSubAction(PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
			                          PlayerSubActionArgument::CreateList(NEW(1306) PlayerSubActionArgument(icon)));
			ActionState->AddSubAction(PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
			                          PlayerSubActionArgument::CreateList(NEW(1308) PlayerSubActionArgument(type),
			                                                              NEW(1309) PlayerSubActionArgument(icon)));
			ActionState->AddSubAction(
				PLAYER_SUB_ACTION_CAST_SPELL_AT_POS,
				PlayerSubActionArgument::CreateList(NEW(1310) PlayerSubActionArgument(node.Argument.PointValue),
			                                        NEW(1310) PlayerSubActionArgument(type),
			                                        NEW(1310) PlayerSubActionArgument(icon)));
			return true;
		}
	}
	return false;
}

bool32_t GComputerPlayer::ThrowObjectToImpressTown(CPDesireNode& node)
{
	GameThing* object = node.GetRelevantObject();
	GameThing* parent = node.GetParentObject();
	ValidateObject(object != NULL, "Nothing to throw");
	ValidateObject(parent != NULL, "No town");
	if (object && parent)
	{
		Town* town = dynamic_cast<Town*>(parent);
		if (ValidateObject(town != NULL, "No town"))
		{
			LHPoint   pos = node.Argument.PointValue;
			MapCoords coords(pos);
			if (ValidateObject(coords.GetDistance(GetHandPos()) < MaxDistanceToThrowObjectToImpressTown, "Invalid Pos"))
			{
				Object* thing = dynamic_cast<Object*>(object);
				if (thing && ActionPickupObject(thing))
				{
					ActionState->AddSubAction(
						PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
						PlayerSubActionArgument::CreateList(NEW(1338) PlayerSubActionArgument(pos)));
					return true;
				}
			}
		}
	}
	return false;
}

float GComputerPlayer::FindOtherCreatureAndReturnHowSensibleToAttack(CPDesireNode& node)
{
	GPlayer* player = dynamic_cast<GPlayer*>(node.GetParentObject());
	if (player && player != GetPlayer())
	{
		Creature* creature = player->GetCreature();
		if (creature && !player->IsAllied(GetPlayer()))
		{
			float distance = GetHandPos().GetDistance(creature->Pos);
			float desire = GUtils::GetDistanceModifier(distance, 500.0f);
			if (distance < 100.0f)
			{
				desire = 1.0f;
			}
			if (Influence::CalculateMostInfluentialPlayer(creature->Pos, NULL) == GetPlayer())
			{
			}
			node.RelevantObject = creature;
			return desire;
		}
	}
	return 0.0f;
}

float GComputerPlayer::GetHeightOfCreatureIgnoringShrinkingNearCitadel(Creature& creature)
{
	return creature.physical->Size * 15.0f;
}

float GComputerPlayer::GetMyCreaturesDesireGotoObject(Object* object, bool same_town_counts)
{
	Creature* creature = GetCreature();
	if (creature)
	{
		GInterfaceStatus* status = creature->GetInterfaceStatusLeashOn();
		if (status)
		{
			GameThingWithPos* attached = status->LeashStatus->ObjectAttachedTo;
			if (attached)
			{
				if (attached == object)
				{
					return 0.0f;
				}
				if (same_town_counts && attached->GetTown() && attached->GetTown() == object->GetTown())
				{
					return 0.0f;
				}
			}
		}
		float distance = creature->Pos.GetDistance(object->Pos);
		float modifier = GUtils::GetDistanceModifier(
			distance, GetHeightOfCreatureIgnoringShrinkingNearCitadel(*creature) * 12.0f + 1000.0f);
		float exhaustion = creature->physical->Exhaustion;
		return GetDesireToUseCreature() * (1.0f - exhaustion) * modifier;
	}
	return 0.0f;
}

float GComputerPlayer::MaxDistanceToAttackOtherCreature()
{
	return GetHeightOfCreatureIgnoringShrinkingNearCitadel(*GetCreature()) * 2.0f + 200.0f;
}

GameThingWithPos* GComputerPlayer::GetObjectCreatureLeashedTo()
{
	GLeashStatus* leash = GetCreature()->GetPlayer()->GetLeaderInterfaceStatus()->LeashStatus;
	if (leash)
	{
		return leash->ObjectAttachedTo;
	}
	return NULL;
}

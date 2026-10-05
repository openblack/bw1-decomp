#include "GameTimeConstants.h"
#include "Alignment.h"
#include "AlignmentHistory.h"
#include "AlignmentInfo.h"

#include "ColourConstants.h"

#include <math.h>   /* For fabs */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "Abode.h"
#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "DesireFunctions.h"
#include "EditorIcon.h"
#include "EffectValues.h"
#include "FireEffect.h"
#include "Game.h"
#include "InterfaceStatus.h"
#include "Object.h"
#include "ObjectInfo.h"
#include "Player.h"
#include "Reaction.h"
#include "ReactionFunction.h"
#include "SoundGuidance.h"
#include "Town.h"
#include "TownDesire.h"
#include "TownInfo.h"
#include "Tree.h"
#include "Villager.h"

#define ALIGNMENT_HISTORY_SLIDER_WIDTH 12
#define ALIGNMENT_HISTORY_LINE_WIDTH   240
#define ALIGNMENT_HISTORY_LINE_HEIGHT  14

#if defined(VERSION_BW1W100)
#define ALIGNMENT_FILE "C:\\dev\\black\\Alignment.cpp"
#elif defined(VERSION_BW1W110)
#define ALIGNMENT_FILE "C:\\dev\\Black\\Alignment.cpp"
#else
#define ALIGNMENT_FILE "C:\\dev\\MP\\Black\\Alignment.cpp"
#endif

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

const float MinAlignment = -1.0f;
const float MaxAlignment = 1.0f;

GAlignmentInfo GAlignmentInfo::Infos[EFFECT_TYPE_LAST];

void GAlignment::Process(GameThing* thing)
{
	if (ChangeThisTurn < -1.0f)
	{
		ChangeThisTurn = -1.0f;
	}
	else if (ChangeThisTurn > 1.0f)
	{
		ChangeThisTurn = 1.0f;
	}
	float change = ChangeThisTurn * thing->GetMaxAlignmentChangePerGameTurn();
	CrudeUpdate(change);
	ChangeThisTurn = 0.0f;
}

void GAlignment::ProcessForPlayer(GPlayer* player)
{
	GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
	if (player != NULL && player->IsMemberOfThisPlayer(status))
	{
		GGuidance* guidance = status->guidance;
		guidance->HelpSpritesAlignmentProcess(player->GetMaxAlignmentChangePerGameTurn() * ChangeThisTurn);
	}
	Process(player);
}

void GAlignment::Update(Town& town)
{
	ChangeThisTurn += GetUpdatedChangeThisTurn(town.desire.GetAlignmentChange());
}

void GAlignment::Update(Creature& creature)
{
	float change = 0.0f;
	if (creature.mind->agenda.plans[0].IsValid())
	{
		CREATURE_DESIRES desire = creature.mind->agenda.plans[0].CreatureDesire;
		if (desire >= 0 && desire < NUM_CREATURE_DESIRES)
		{
			change =
				CreatureInitialDesireInfo::GetInfo()[desire].AlignmentChange * creature.GetInfo()->AlignmentChangeScale;
		}
		if (desire == CREATURE_DESIRE_HUNGER && creature.mind->agenda.plans[0].ObjectToActOn != NULL)
		{
			Object* object = creature.mind->agenda.plans[0].ObjectToActOn->GetObjectPointer();
			if (object != NULL && object->IsVillager(NULL))
			{
				ALIGNMENT_TYPE type = object->info->GetAlignmentType();
				if (type >= 0 && type < ALIGNMENT_TYPE_LAST)
				{
					change = GAlignmentInfo::GetInfo()->Modifiers[type] * creature.GetInfo()->AlignmentChangeScale;
				}
			}
		}
	}
	float updated = GetUpdatedChangeThisTurn(change);
	CAlignmentHistory::History.Add(&creature, updated);
	ChangeThisTurn += updated;
}

void GAlignment::UpdateFromReaction(Reaction* reaction, float change)
{
	change = GetUpdatedChangeThisTurn(change);
	CAlignmentHistory::History.Add(reaction, change);
	ChangeThisTurn += change;
}

void GAlignment::ScriptUpdate(float change, GPlayer* player, unsigned long script)
{
	float updated = GetUpdatedChangeThisTurn(change * player->info->ScriptAlignmentScale);
	CAlignmentHistory::History.Add(player, script, updated);
	CrudeUpdate(updated);
}

void GAlignment::Update(GPlayer* player, Object* object, DEATH_REASON reason)
{
	if (player != NULL)
	{
		float change = player->info->DeathAlignmentChange[reason];
		if (object->IsAChild())
		{
			change *= 2.0f;
		}
		if (object->IsAnimal())
		{
			change *= 0.5f;
		}
		ChangeThisTurn += change;
	}
}

void GAlignment::Update(Object* object, EffectValues& values, float life)
{
	float damage = life - object->GetLife();
	if (damage != 0.0f)
	{
		ALIGNMENT_TYPE type = object->info->GetAlignmentType();
		GPlayer*       player = GGame::g_game->GetPlayer(0);
		float          scale = fabs(damage) + player->info->EffectAlignmentBase;
		uint32_t       effect;
		for (effect = EFFECT_TYPE_CRUSH; effect <= EFFECT_TYPE_APPLY_FORCE; effect++)
		{
			float change = values.numbers.values[effect];
			change *= GAlignmentInfo::GetInfo()[effect].Modifiers[type];
			change *= scale;
			CAlignmentHistory::History.Add(object, &values, (EFFECT_TYPE)effect, change);
			ChangeThisTurn += GetUpdatedChangeThisTurn(change);
		}
		float temperature = values.numbers.values[EFFECT_TYPE_BURN];
		float burn = FireEffect::ConvertTemperatureToDamage(object, temperature) *
		             GAlignmentInfo::GetInfo()[EFFECT_TYPE_BURN].Modifiers[type] * scale;
		CAlignmentHistory::History.Add(object, &values, (EFFECT_TYPE)effect, burn);
		ChangeThisTurn += GetUpdatedChangeThisTurn(burn);
	}
}

void GAlignment::Update(Abode* abode, RESOURCE_TYPE type, long amount, float scale)
{
	float change;
	if (amount > 0)
	{
		change = scale * abode->GetTown()->GetInfo()->StoragePitGiveAlignment;
	}
	else
	{
		change = scale * abode->GetTown()->GetInfo()->StoragePitTakeAlignment;
	}
	change = GetUpdatedChangeThisTurn(change);
	CAlignmentHistory::History.Add(abode, type, amount, change);
	ChangeThisTurn += change;
}

void GAlignment::Update(GPlayer* player, Tree* tree, bool planted)
{
	float change;
	if (planted)
	{
		change = player->info->TreeAlignmentChange;
	}
	else
	{
		change = -player->info->TreeAlignmentChange;
	}
	change = GetUpdatedChangeThisTurn(change);
	CAlignmentHistory::History.Add(player, tree, change);
	ChangeThisTurn += change;
}

void GAlignment::UpdateFromDisciple(GPlayer* player, Villager* villager)
{
	if (villager->GetTown() != NULL)
	{
		float change = villager->GetTown()->GetAlignmentForMakingDisciple(villager);
		change = GetUpdatedChangeThisTurn(change);
		CAlignmentHistory::History.Add(player, villager, change);
		ChangeThisTurn += change;
	}
}

float GAlignment::GetUpdatedChangeThisTurn(float change)
{
	float value = Value;
	bool  sameDirection;
	if (value < 0.0f)
	{
		sameDirection = change < 0.0f;
	}
	else
	{
		sameDirection = change >= 0.0f;
	}
	if (sameDirection)
	{
		return (1.0 - fabs(value * 0.5f)) * change;
	}
	return (1.0 + fabs(value * 0.5f)) * change;
}

void GAlignment::CrudeUpdate(float change)
{
	Value += change;
	if (Value < -1.0f)
	{
		Value = -1.0f;
	}
	else if (Value > 1.0f)
	{
		Value = 1.0f;
	}
}

void GAlignment::CrudeSet(float value)
{
	Value = value;
	if (Value < -1.0f)
	{
		Value = -1.0f;
	}
	else if (Value > 1.0f)
	{
		Value = 1.0f;
	}
}

DISCRETE_ALIGNMENT_VALUES GAlignment::GetDiscreteAlignmentValue(float value)
{
	float discrete = (value - MinAlignment) / (MaxAlignment - MinAlignment) / (1.0f / NUM_DISCRETE_ALIGNMENTS);
	return (DISCRETE_ALIGNMENT_VALUES)(int)min(discrete, (float)ALIGNMENT_ANGELIC);
}

CAlignmentHistory CAlignmentHistory::History;

CAlignmentHistory::CAlignmentHistory()
{
	ScrollPosition = 0.0f;
	for (int i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		StartAlignment[0] = 0.0f;
	}
	for (int type = 0; type < CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_LAST; type++)
	{
		Totals[type] = 0.0f;
		Counts[type] = 0;
	}
	ShowTotals = false;
	Recording = false;
}

CAlignmentHistory::~CAlignmentHistory()
{
	if (Slider != NULL)
	{
		delete Slider;
	}
}

void CAlignmentHistory::DrawTotals()
{
	if (Slider == NULL)
	{
		Slider = new (ALIGNMENT_FILE, 270) EditorIconSlider<float>(
			LHRegion(0, 0, ALIGNMENT_HISTORY_SLIDER_WIDTH, LHSys::GetScreen().Height()), ScrollPosition, 0.0f, 1.0f,
			0.1f, NULL, 2, true, 1, &EditorIconBase::DefaultActiveColor, &EditorIconBase::DefaultActiveColor,
			&EditorIconBase::DefaultHiliteColor, &EditorIconBase::DefaultTextColor);
		for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
		{
			StartAlignment[i] = GGame::g_game->GetPlayer(i)->alignment->GetValue();
		}
	}
	if (ShowTotals)
	{
		const char* formats[CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_LAST] = {
			"Town    :%.08f[%d]", "Effect  :%.08f[%d]", "Reaction:%.08f[%d]", "Creature:%.08f[%d]",
			"Script  :%.08f[%d]", "Update  :%.08f[%d]", "Death   :%.08f[%d]", "Storage :%.08f[%d]",
			"Tree    :%.08f[%d]", "Villager:%.08f[%d]",
		};
		LHRegion  region(0, 0, LHSys::GetScreen().Width() / 2, ALIGNMENT_HISTORY_LINE_HEIGHT);
		LH3DColor positive(255, 255, 255, 255);
		LH3DColor negative(255, 125, 125, 255);
		char      text[512];

		float current = GGame::g_game->GetPlayer(0)->alignment->GetValue();
		sprintf(text, "Current :%.08f", current);
		EditorIconBase::DrawText(region, text, 0, current >= 0.0f ? &positive : &negative, NULL, EditorIconBase::Font);
		int height = region.Height();
		region.start.y += height;
		region.end.y += height;

		sprintf(text, "Change  :%.08f", current - StartAlignment[0]);
		EditorIconBase::DrawText(region, text, 0, current - StartAlignment[0] >= 0.0f ? &positive : &negative, NULL,
		                         EditorIconBase::Font);
		height = region.Height();
		region.start.y += height;
		region.end.y += height;

		for (int type = 0; type < CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_LAST; type++)
		{
			sprintf(text, formats[type], Totals[type], Counts[type]);
			EditorIconBase::DrawText(region, text, 0, Totals[type] >= 0.0f ? &positive : &negative, NULL,
			                         EditorIconBase::Font);
			height = region.Height();
			region.start.y += height;
			region.end.y += height;
		}
	}
}

void CAlignmentHistory::DrawHistory()
{
	if (ShowTotals && Recording)
	{
		CAlignmentHistoryNode* node = Nodes[0].head;
		int                    lines = LHSys::TheSystem.screen.height / ALIGNMENT_HISTORY_LINE_HEIGHT;
		int                    skipped = 0;
		if ((int)(Nodes[0].count - lines) > 0)
		{
			while (node != NULL && skipped < Nodes[0].count * ScrollPosition)
			{
				node = node->next;
				skipped++;
			}
		}
		int y = ALIGNMENT_HISTORY_LINE_HEIGHT;
		for (int drawn = 0; node != NULL && drawn < lines; drawn++)
		{
			node->Draw(ALIGNMENT_HISTORY_SLIDER_WIDTH, y);
			node = node->next;
			y += ALIGNMENT_HISTORY_LINE_HEIGHT;
		}
		Slider->Process();
		Slider->Draw(0);
	}
}

void CAlignmentHistory::Add(Town* town, TOWN_DESIRE_INFO info, float change)
{
	AddTotal(town->GetPlayer(), CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_TOWN, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node =
			new (ALIGNMENT_FILE, 356) CAlignmentHistoryNode(town->GetPlayer(), town, info, change);
		Nodes[town->GetPlayer()->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(Object* object, EffectValues* values, EFFECT_TYPE type, float change)
{
	AddTotal(values->GetPlayer(), CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_EFFECT, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node =
			new (ALIGNMENT_FILE, 367) CAlignmentHistoryNode(values->GetPlayer(), object, type, change);
		Nodes[values->GetPlayer()->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(Reaction* reaction, float change)
{
	AddTotal(reaction->GetPlayer(), CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_REACTION, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node =
			new (ALIGNMENT_FILE, 378) CAlignmentHistoryNode(reaction->GetPlayer(), reaction, change);
		Nodes[reaction->GetPlayer()->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(Creature* creature, float change)
{
	AddTotal(creature->GetPlayer(), CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_CREATURE, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node =
			new (ALIGNMENT_FILE, 389) CAlignmentHistoryNode(creature->GetPlayer(), creature, change);
		Nodes[creature->GetPlayer()->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(GPlayer* player, Object* object, DEATH_REASON reason, float change)
{
	AddTotal(player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_DEATH, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 400) CAlignmentHistoryNode(player, object, reason, change);
		Nodes[player->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(GPlayer* player, unsigned long script, float change)
{
	AddTotal(player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_SCRIPT, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 411) CAlignmentHistoryNode(player, script, change);
		Nodes[player->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(GPlayer* player, float change)
{
	AddTotal(player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_UPDATE, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 422) CAlignmentHistoryNode(player, change);
		Nodes[player->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(GPlayer* player, Tree* tree, float change)
{
	AddTotal(player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_TREE, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 433) CAlignmentHistoryNode(player, tree, change);
		Nodes[player->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(GPlayer* player, Villager* villager, float change)
{
	AddTotal(player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_VILLAGER, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 444) CAlignmentHistoryNode(player, villager, change);
		Nodes[player->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::Add(Abode* abode, RESOURCE_TYPE type, long amount, float change)
{
	AddTotal(abode->GetPlayer(), CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_STORAGE, change);
	if (change != 0.0f && Recording)
	{
		CAlignmentHistoryNode* node = new (ALIGNMENT_FILE, 455) CAlignmentHistoryNode(abode, type, amount, change);
		Nodes[abode->GetPlayer()->GetPlayerNumber()].AddToLast(node);
	}
}

void CAlignmentHistory::AddTotal(GPlayer* player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE type, float change)
{
	if (change != 0.0f && player == GGame::g_game->MyPlayer())
	{
		if (type != CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_SCRIPT)
		{
			change *= player->GetMaxAlignmentChangePerGameTurn();
		}
		Totals[type] += change;
		Counts[type]++;
	}
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Town* town, TOWN_DESIRE_INFO info, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_TOWN;
	Reason = info;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Object* object, EFFECT_TYPE type, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_EFFECT;
	Reason = type;
	Amount = object->info->GetAlignmentType();
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Reaction* reaction, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_REACTION;
	Reason = reaction->type;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Creature* creature, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_CREATURE;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, unsigned long script, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_SCRIPT;
	Reason = script;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change * change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_UPDATE;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Tree* tree, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_TREE;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Villager* villager, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_VILLAGER;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, Object* object, DEATH_REASON reason, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_DEATH;
	Reason = reason;
	Amount = object->info->GetAlignmentType();
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(GPlayer* player, ALIGNMENT_HISTORY_TYPE type, float change)
{
	Type = type;
	Change = player->GetMaxAlignmentChangePerGameTurn() * change;
	GameTurn = GGame::g_game->data.GameTurn;
	Alignment = Change + player->alignment->Value;
}

CAlignmentHistoryNode::CAlignmentHistoryNode(Abode* abode, RESOURCE_TYPE type, long amount, float change)
{
	Type = ALIGNMENT_HISTORY_TYPE_STORAGE;
	Change = abode->GetPlayer()->GetMaxAlignmentChangePerGameTurn() * change;
	Amount = amount;
	GameTurn = GGame::g_game->data.GameTurn;
	Reason = type;
	Alignment = abode->GetPlayer()->alignment->Value + Change;
}

void CAlignmentHistoryNode::Draw(int x, int y)
{
	const char* alignmentTypes[ALIGNMENT_TYPE_LAST + 1] = {
		"ANIMAL_NICE", "ANIMAL_NASTY", "CREATURE",      "PRIEST", "SKELETON", "VILLAGER",    "BUILDING", "PLANT",
		"FIELD",       "FEATURE",      "MOBILE_OBJECT", "LAND",   "SCRIPT",   "UNIMPORTANT", "LAST",
	};
	LH3DColor color(255, 255, 255, 255);
	char      text[200];

	sprintf(text, "GT:%d, Al:%.08f, Ch:%.08f :", GameTurn, Alignment, Change);
	if (Change < 0.0f)
	{
		color.Set(255, 55, 0, 0);
	}
	switch (Type)
	{
	case ALIGNMENT_HISTORY_TYPE_TOWN:
		sprintf(text + strlen(text), "%s", DesireFunctions::GetInfo()[Reason].Name);
		break;
	case ALIGNMENT_HISTORY_TYPE_EFFECT: {
		const char* effects[EFFECT_TYPE_LAST] = {
			"EffectBurn",
			"EffectCrush",
			"EffectHit",
			"EffectHeal",
			"EffectFlyAway",
			"EffectAlignmentModification",
			"EffectBeliefModification",
		};
		sprintf(text + strlen(text), "%s a %s", effects[Reason], alignmentTypes[Amount]);
		break;
	}
	case ALIGNMENT_HISTORY_TYPE_REACTION:
		sprintf(text + strlen(text), "%s", ReactionFunction::Functions[Reason].Name);
		break;
	case ALIGNMENT_HISTORY_TYPE_CREATURE:
		sprintf(text + strlen(text), "%s", "Creature");
		break;
	case ALIGNMENT_HISTORY_TYPE_SCRIPT: {
		const char* challenges[] = {
			"DID_YOU_KNOW=0",
			"FollowUs",
			"LAWBREAKERS",
			"FALSE_IDOL",
			"BUILD_CITADEL",
			"THROW_THROUGH_SHIELD",
			"HERMIT_HUT",
			"PLAGUE",
			"MARAUDER",
			"BAYWATCH",
			"IDOL_PYRE",
			"LOST_TREASURE",
			"SINGING_STONES_SONGS",
			"SPIRITUAL_HEALER",
			"GREEDY_FARMER",
			"THE_SLAVERS",
			"FIRE_ON_HIGH",
			"THE_BIG_FIGHT",
			"THE_MISSIONARIES",
			"LOST_BROTHER",
			"CREATURE_RETRIEVE",
			"SINGING_STONES_A",
			"THROWING_STONES",
			"PIED_PIPER",
			"LOST_FLOCK",
			"CREATURE_GUARDIAN",
			"LANDSLIDE",
			"BIG_FISH",
			"SACRIFICE",
			"SWAP_TO_APE",
			"SHAOLIN",
			"MISSIONARIES_RETURNED",
			"SWAP_TO_LION",
			"SINGING_STONES_C",
			"SWAP_TO_WOLF",
			"CREATURE_RUNS_AMOK",
			"CREATURE_SAVING_PEOPLE",
			"SWAP_TO_LEOPARD",
			"SWAP_TO_COW",
			"THE_WORKSHOP",
			"SWAP_TO_HORSE",
			"LAND_4_METEORITES",
			"LAND_4_NOMAD",
			"LAND_4_TOTEM_PUZZLE",
			"LAND_4_UNDEAD_VILLAGE",
			"LAND_4_OGRE",
			"BLIND_WOMAN",
			"SWAP_TO_TURTLE",
			"CUP_FINAL",
			"FOOD_FOR_THOUGHT",
			"RELEASE_THE_CREATURE",
			"FREE_THE_CREATURE",
			"ChallengeNotify",
			"SWAP_CREATURES,",
			"BIG_WHALE",
			"ChooseYourCreature",
			"LEAVE_THROUGH_VORTEX_LAND1",
			"CREATURE_BREEDER",
			"ALLY_SPEAKS",
			"LEAVE_THROUGH_VORTEX_LAND2",
			"LEAVE_THROUGH_VORTEX_LAND3",
			"LEAVE_THROUGH_VORTEX_LAND4",
			"SWAP_TO_BROWN_BEAR",
			"VILLAGER_CATCH",
			"CREATURE_DEVELOPMENT",
			"SEE_THE_CITADEL",
			"BEGIN_LAND2",
			"LION_PUZZLE",
			"FISH_PUZZLE",
			"LAND2_FIREBALL_CHALLENGE",
			"LAND2_SHIELD_CHALLENGE",
			"SLAVERS_WARNING",
			"SINGING_STONES_CIRCLE",
			"CITADEL_GUIDE",
			"WHACK_A_VILLAGER",
			"TEST_KEN",
			"CHIMP_POSSE",
			"MAGIC_MUSHROOM",
			"HANOI_FLOOD",
			"TREE_PUZZLE_ONE",
			"TREE_PUZZLE_TWO",
			"THESIUS_PUZZLE_LAND_FOUR",
			"PUZZLE_MASTER",
			"GUIDE",
			"LEARN_WORSHIPPING",
			"CRUSADERS",
			"LandControl3",
			"JAPANESE_TRAITOR",
			"LEARN_GESTURES",
			"LEARN_INFLUENCE",
			"TUTORIAL_LAND",
			"LAST",
		};
		sprintf(text + strlen(text), "%s", challenges[Reason]);
		break;
	}
	case ALIGNMENT_HISTORY_TYPE_UPDATE:
		sprintf(text + strlen(text), "%s", "UPDATE");
		color.Set(255, 255, 0, 0);
		break;
	case ALIGNMENT_HISTORY_TYPE_DEATH: {
		const char* deathReasons[] = {
			"NO DEATH REASON",          "STARVING",  "SPELL", "ANIMAL", "CHANT", "PLAYER_INTERACTION",
			"PLAYER_INTERACTION_DROWN", "SACRIFICE",
		};
		sprintf(text + strlen(text), "%s dies of %s", alignmentTypes[Amount], deathReasons[Reason]);
		break;
	}
	case ALIGNMENT_HISTORY_TYPE_STORAGE:
		sprintf(text + strlen(text), "%s %d %s to StoragePit", Amount > 0 ? "Give" : "Take", Amount,
		        Reason != RESOURCE_TYPE_FOOD ? "Wood" : "Food");
		break;
	case ALIGNMENT_HISTORY_TYPE_TREE:
		break;
	case ALIGNMENT_HISTORY_TYPE_VILLAGER:
		sprintf(text + strlen(text), "Disciples");
		break;
	}
	LHRegion region(x, y, ALIGNMENT_HISTORY_LINE_WIDTH, ALIGNMENT_HISTORY_LINE_HEIGHT);
	EditorIconBase::DrawText(region, text, 0, &color, NULL, EditorIconBase::Font);
}

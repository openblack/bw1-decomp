#include "MapCellConstants.h"   /* For MetresPerMapCell */
#include "GameTimeConstants.h"  /* For SecondsPerYear */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "VillagerStates.h"
#include "Villager.h"

#include <stdio.h>

#include <Lionhead/LH3DLib/development/GlowVillager.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHLog/ver4.0/LHDebugStack.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>

#include "Abode.h"
#include "Alignment.h"
#include "Audio.h"
#include "Balance.h"
#include "Belief.h"
#include "CarriedObject.h"
#include "Creature3D.h" /* For getint */
#include "chlasm/Enum.h"
#include "chlasm/GStates.h"
#include "DanceGroup.h"
#include "DeadTree.h"
#include "Field.h"
#include "FireEffect.h"
#include "Football.h"
#include "Footpath.h"
#include "FootpathNode.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GameThing.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "JobInfo.h"
#include "LandBalance.h"
#include "MagicTeleport.h"
#include "MapCoords.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "ParticleContainer.h"
#include "PFootball.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "PlaytimeDance.h"
#include "Pot.h"
#include "PotInfo.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Setup.h"
#include "SoundGuidance.h"
#include "SoundTag.h"
#include "SpecialVillager.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownCentre.h"
#include "TownCreatureInfo.h"
#include "TownInfo.h"
#include "TreeInfo.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "ValueSpinner.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "WorshipSite.h"
#include "WorshipTotem.h"

#if defined(VERSION_BW1W100)
#define FILEPATH            "C:\\dev\\black\\Villager.cpp"
#define VILLAGER_LINE(line) ((line) - ((line) < 231 ? 1 : (line) < 1899 ? 3 : (line) < 3293 ? 19 : 20))
#elif defined(VERSION_BW1W110)
#define FILEPATH            "C:\\dev\\Black\\Villager.cpp"
#define VILLAGER_LINE(line) ((line) - ((line) < 231 ? 1 : (line) < 1009 ? 2 : (line) < 1899 ? 10 : 15))
#else
#define FILEPATH            "C:\\dev\\MP\\Black\\Villager.cpp"
#define VILLAGER_LINE(line) (line)
#endif

// BW1W120 0099a1f0
const float VillagerUnknownThousand = 1000.0f;

inline float GetVillagerUnknownThousand()
{
	return VillagerUnknownThousand;
}

char* GVillagerInfo::JobTextArray[VILLAGER_JOB_LAST + 1] = {
	"None", "Fisherman", "Forester", "Farmer", "Shepherd", "Leader", "Housewife", "Trader", "Last",
};

char* GVillagerInfo::VillagerNumberTextArray[VILLAGER_NUMBER_LAST + 1] = {
	"HOUSEWIFE", "FORESTER", "FISHERMAN", "FARMER", "SHEPHERD", "LEADER", "TRADER", "LAST",
};

GVillagerInfo GVillagerInfo::InfoList[VILLAGER_INFO_LAST];

// clang-format off
const DiscipleInfo GVillagerInfo::DiscipleInfos[VILLAGER_DISCIPLE_LAST] = {
	/* [VILLAGER_DISCIPLE_NONE]         = */ {VILLAGER_STATE_INVALID_STATE,                 0, 0, 0, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_FARMER]       = */ {VILLAGER_STATE_INVALID_STATE,                 1, 1, 1, 0, TOWN_DESIRE_INFO_FOR_FOOD,     1},
	/* [VILLAGER_DISCIPLE_FORESTER]     = */ {VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST,    1, 1, 1, 1, TOWN_DESIRE_INFO_FOR_WOOD,     0},
	/* [VILLAGER_DISCIPLE_FISHERMAN]    = */ {VILLAGER_STATE_INVALID_STATE,                 1, 1, 1, 0, TOWN_DESIRE_INFO_FOR_FOOD,     0},
	/* [VILLAGER_DISCIPLE_BUILDER]      = */ {VILLAGER_STATE_INVALID_STATE,                 1, 1, 1, 1, TOWN_DESIRE_INFO_TO_BUILD,     1},
	/* [VILLAGER_DISCIPLE_BREEDER]      = */ {VILLAGER_STATE_BREEDER_JUST_LANDED,           0, 1, 1, 0, TOWN_DESIRE_INFO_FOR_CHILDREN, 1},
	/* [VILLAGER_DISCIPLE_PROTECTION]   = */ {VILLAGER_STATE_INVALID_STATE,                 1, 1, 1, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_MISSIONARY]   = */ {VILLAGER_STATE_MISSIONARY_DISCIPLE,           0, 1, 0, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_CRAFTSMAN]    = */ {VILLAGER_STATE_INVALID_STATE,                 1, 1, 1, 1, TOWN_DESIRE_INFO_NONE,         1},
	/* [VILLAGER_DISCIPLE_TRADER]       = */ {VILLAGER_STATE_DECIDE_WHAT_TO_DO,             0, 1, 1, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_CHANGE_HOUSE] = */ {VILLAGER_STATE_DECIDE_WHAT_TO_DO,             0, 1, 0, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_WORSHIP]      = */ {VILLAGER_STATE_GOTO_WORSHIP_SITE_FOR_WORSHIP, 0, 0, 0, 0, TOWN_DESIRE_INFO_NONE,         0},
	/* [VILLAGER_DISCIPLE_FROM_VORTEX]  = */ {VILLAGER_STATE_SCRIPT_IN_CROWD,               0, 0, 0, 0, TOWN_DESIRE_INFO_NONE,         0},
};
// clang-format on

Villager::Villager(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool32_t skeleton)
	: Living(coords, info)
{
	SetToZero();
	if (age < info->TeenAge)
	{
		mother = NULL;
	}
	SetAge(age);
	FoodSpeedUp = 0;
	if (GetInfo()->sex == SEX_FEMALE)
	{
		is_pregnant = 0;
	}
	food = min(GRand::GameFloatRand(0.6f, FILEPATH, VILLAGER_LINE(126)) + GetInfo()->HungryForFood, 1.0f);
	LastCheckTurn =
		GGame::g_game->data.GameTurn -
		min(GRand::GameRand(GetInfo()->ProcessChecksEvery, FILEPATH, VILLAGER_LINE(127)), GGame::g_game->data.GameTurn);
	TurnsUntilNextStateChange =
		GRand::GameRand(VILLAGER_MAX_CREATED_STATE_CHANGE_DELAY, FILEPATH, VILLAGER_LINE(128)) + 1;
	if (Pos.IsWater())
	{
		SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_DROWNING);
	}
	else
	{
		SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_CREATED);
	}
	GGame::g_game->data.WorldPopulation++;
	SetSkeleton(skeleton);
}

void Villager::SetToZero()
{
	Flags = 0;
	food = 0.0f;
	FoodSpeedUp = false;
	ResourceHeld[RESOURCE_TYPE_FOOD] = 0;
	ResourceHeld[RESOURCE_TYPE_WOOD] = 0;
	building_site = NULL;
	home = NULL;
	DiscipleType = 0;
	town = NULL;
	LastCheckTurn = 0;
	mother = NULL;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	LastPlayerToInteract = NULL;
#endif
#ifndef VERSION_BW1W100
	DrawYAngle = 0.0f;
#endif
}

void Villager::InitialiseScale(unsigned long age)
{
	if (age < ((const GVillagerInfo*)info)->TeenAge)
	{
		SetScale(((const GVillagerInfo*)info)->ageToScale.values[age]);
	}
	else
	{
		SetScale(0.9f);
	}
}

Villager::~Villager()
{
	if ((Flags & VILLAGER_FLAG_REMOVED_FROM_POPULATION) == 0)
	{
		GGame::g_game->data.WorldPopulation--;
	}
}

Villager* Villager::Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool32_t skeleton)
{
	Villager* villager = NULL;
	if (GRand::GameRand(10, FILEPATH, VILLAGER_LINE(231)) <= 1)
	{
		villager = SpecialVillager::Create(coords, info, age, skeleton, NULL);
		if (villager != NULL && (villager->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
		{
			villager = NULL;
		}
	}
	if (villager == NULL)
	{
		villager = new (FILEPATH, VILLAGER_LINE(243)) Villager(coords, info, age, skeleton);
		if (villager != NULL)
		{
			villager->CallVirtualFunctionsForCreation(coords);
		}
	}
	return villager;
}

void Villager::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	static LH3DMesh* skeletonMesh = LH3DMesh::GetPackedMesh(VILLAGER_SKELETON_MESH);

	Living::CallVirtualFunctionsForCreation(coords);
	if (IsSkeleton())
	{
		Game3dObject->SetMesh(skeletonMesh, skeletonMesh, skeletonMesh);
	}
	else if (GetAge() < GetInfo()->TeenAge)
	{
		Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh),
		                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh),
		                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh));
	}
	Game3dObject->SetHuman();
	Game3dObject->SetHumanShadowed(1);
}

void Villager::DeleteDependancys()
{
	Abode* abode = GetAbode();
	Town*  town = GetTown();
	if (action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_SET_DYING &&
	    action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_DYING &&
	    action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_DEAD)
	{
		SetTopState(VILLAGER_STATE_SET_DYING);
	}
	if ((uint8_t)GetTopState() != VILLAGER_STATE_MOVE_ON_PATH && footpath_node != NULL &&
	    footpath_node->followers.IsThisInList(this))
	{
		footpath_node->followers.Remove(this);
	}
	footpath_node = NULL;
	if (IsAMother() == true)
	{
		FindChildrenAndOrphanThem();
	}
	if (abode != NULL)
	{
		abode->RemoveDeletedVillagerFromAbode(this);
	}
	else if (town != NULL)
	{
		town->RemoveVillager(this);
	}
	else
	{
		Villager* villager;
		for (villager = GGame::g_game->GameLists.VillagersWithoutTown.Get(); villager != NULL && villager != this;
		     villager = villager->next)
		{
		}
		if (villager != NULL)
		{
			GGame::g_game->GameLists.VillagersWithoutTown.Remove(this);
		}
	}
}

bool32_t Villager::UnemployedJobs()
{
	if (GetTown() != NULL)
	{
		uint32_t desired = GetTown()->CalculateDesiredNumberOfBuildings();
		uint32_t actual = GetTown()->CalculateActualNumberOfBuildings();
		if ((float)(desired - actual) > 0.0f)
		{
			if (GGame::g_game->data.GameTurn - GetTown()->stats.LastAbodeAddedTurn >
			    GetTown()->GetInfo()->MinTurnsBetweenAbodes)
			{
				GetTown()->stats.LastAbodeAddedTurn = GGame::g_game->data.GameTurn;
			}
		}
	}
	return false;
}

bool32_t Villager::SetupJobLocation()
{
	return false;
}

typedef void (Villager::*VillagerValidateFn)();
static inline VillagerValidateFn GetValidateFn(uint8_t state)
{
	return VillagerStateTableEntry::StateTable[state].Validate;
}

typedef uint32_t (Villager::*VillagerAnimationFn)();
static inline VillagerAnimationFn GetAnimationFn(uint8_t state)
{
	return VillagerStateTableEntry::StateTable[state].Animation;
}

typedef uint32_t (Villager::*VillagerTransitionAnimationFn)(uint8_t, uint8_t);
static inline VillagerTransitionAnimationFn GetTransitionAnimationFn(uint8_t state)
{
	return VillagerStateTableEntry::StateTable[state].TransitionAnimation;
}

inline void Villager::CallValidate(LIVING_ACTION_INDEX index)
{
	if (GetValidateFn(action.states[index]) != NULL)
	{
		(this->*GetValidateFn(action.states[index]))();
	}
}

uint32_t Villager::ProcessState()
{
	action.TurnsSinceStateChange++;
	ProcessFoodSpeedup();
	CallValidate(LIVING_ACTION_INDEX_TOP);
	CallValidate(LIVING_ACTION_INDEX_FINAL);
	uint32_t result;
	bool32_t inOutAnimation = (Flags & VILLAGER_FLAG_IN_TRANSITION_ANIMATION) != 0;
	if (inOutAnimation)
	{
		if (IsReadyForNewAnimation(1))
		{
			FinishedIntoOutOfAnimation();
		}
		result = 1;
	}
	if (!inOutAnimation)
	{
		CheckEveryTime();
		result = CallState();
	}
	return result;
}

void Villager::FinishedIntoOutOfAnimation()
{
	int anim = -1;
	if ((Flags & VILLAGER_FLAG_INTO_ANIMATION_PENDING) == VILLAGER_FLAG_INTO_ANIMATION_PENDING)
	{
		if (GetTransitionAnimationFn(action.GetState(LIVING_ACTION_INDEX_TOP)) != NULL)
		{
			anim = CallIntoAnimationFunction(action.GetState(LIVING_ACTION_INDEX_TOP));
		}
	}
	if (anim != -1)
	{
		SetAnim(anim);
		Flags &= ~VILLAGER_FLAG_INTO_ANIMATION_PENDING;
	}
	else
	{
		SetStateAnim();
		Flags &= ~VILLAGER_FLAG_IN_TRANSITION_ANIMATION;
	}
	action.TurnsSinceStateChange = 0;
}

ANIM_LIST Villager::GetAnimId()
{
	bool invalidState = action.GetState(LIVING_ACTION_INDEX_TOP) >= VILLAGER_STATE_LAST_STATE ||
	                    action.GetState(LIVING_ACTION_INDEX_TOP) == VILLAGER_STATE_INVALID_STATE;
	if (invalidState)
	{
		return ANM_P_SCARED_STIFF;
	}
	SetStateCarriedObject();
	if (GetAnimationFn(action.GetState(LIVING_ACTION_INDEX_TOP)) != NULL)
	{
		return (ANIM_LIST)(this->*GetAnimationFn(action.GetState(LIVING_ACTION_INDEX_TOP)))();
	}
	return (ANIM_LIST)GVillagerStateTableInfo::Infos[action.GetState(LIVING_ACTION_INDEX_TOP)].Anim;
}

inline GVillagerStateTableInfo* Villager::GetStateInfo(uint32_t state)
{
	return &GVillagerStateTableInfo::Infos[state];
}

void Villager::SetStateCarriedObject()
{
	if (GetFinalState() == VILLAGER_STATE_IN_SCRIPT ||
	    action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_SCRIPT_PLAY_ANIM)
	{
		return;
	}
	CarriedObjectType = CARRIED_OBJECT_NONE;
	if (GetLife() > GetInfo()->LifeWhenCrawlsWounded)
	{
		if (ResourceHeld[RESOURCE_TYPE_WOOD] > GetInfo()->MinWoodToShowGraphic)
		{
			CarriedObjectType = GetWoodCarriedObject();
		}
		else if (ResourceHeld[RESOURCE_TYPE_FOOD] > GetInfo()->MinFoodToShowGraphic && !IsInBuildingState())
		{
			CarriedObjectType = CARRIED_OBJECT_BAG;
		}
	}
	int carried;
	if (GetStateInfo(GetFinalState())->CarriedObject != 0)
	{
		carried = GetStateInfo(GetFinalState())->CarriedObject;
		CarriedObjectType = carried;
	}
	carried = GetStateInfo(action.states[LIVING_ACTION_INDEX_TOP])->CarriedObject;
	if (carried != 0)
	{
		CarriedObjectType = carried;
	}
}

uint32_t Villager::GetWoodCarriedObject()
{
	switch (GetWoodGraphic())
	{
	case 1:
		return CARRIED_OBJECT_TREE_1;
	case 2:
		return CARRIED_OBJECT_TREE_2;
	case 3:
		return CARRIED_OBJECT_TREE_3;
	default:
		return CARRIED_OBJECT_WOOD;
	}
}

uint32_t Villager::DestroyedByEffect(GPlayer* player, float damage)
{
	VillagerDead(DEATH_REASON_SPELL, player, damage, true);
	return 1;
}

GPlayer* Villager::GetPlayer()
{
	if (GetTown() != NULL)
	{
		return GetTown()->owner.Get();
	}
	return NULL;
}

HOLD_TYPE Villager::GetHoldType()
{
	return HOLD_TYPE_VILLAGER;
}

float Villager::GetHoldLoweringMultiplier()
{
	return 0.65f;
}

Villager* Villager::GetSpouse()
{
	if (GetAbode() != NULL)
	{
		Villager* spouse = GetAbode()->GetSpouse(this);
		if (spouse != NULL && spouse->IsAvailable() == true)
		{
			return spouse;
		}
	}
	return NULL;
}

Villager* Villager::LookAroundForVillagerInState(VILLAGER_STATES state, uint32_t count)
{
	MapCoords pos = Pos;
	uint32_t  remaining = count;
	long      spiralX = 1;
	long      spiralZ = 1;
	while (remaining != 0)
	{
		Villager* villager = dynamic_cast<Villager*>(pos.GetFirstObjectMobile());
		if (villager != NULL && villager != this && villager->action.states[LIVING_ACTION_INDEX_TOP] == state)
		{
			return villager;
		}
		remaining--;
		pos += *GUtils::Spiral(spiralX, spiralZ);
	}
	return NULL;
}

bool32_t Villager::CheckEveryTime()
{
	GVillagerStateTableInfo* stateInfo = GetStateInfo(action.states[LIVING_ACTION_INDEX_TOP]);
	if (GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
	{
		return true;
	}
	if (stateInfo->isMovingForAnimation != false)
	{
		ReduceLife(stateInfo->LifeReductionPerTurn, NULL);
		stateInfo = GetStateInfo(action.states[LIVING_ACTION_INDEX_FINAL]);
	}
	else
	{
		ReduceLife(GetStateInfo(GetFinalState())->LifeReductionPerTurn, NULL);
	}
	if (stateInfo->PerformsLivingChecks != false)
	{
		if (GetLife() == 0.0f)
		{
			uint8_t      finalState = GetFinalState();
			DEATH_REASON reason;
			if (finalState == VILLAGER_STATE_GO_HOME_FROM_WORSHIP ||
			    finalState == VILLAGER_STATE_ARRIVES_HOME_FROM_WORSHIP ||
			    finalState == VILLAGER_STATE_SLEEP_IN_TENT_FROM_WORSHIP || (Flags & VILLAGER_FLAG_AT_WORSHIP_SITE))
			{
				reason = DEATH_REASON_CHANT;
			}
			else
			{
				reason = DEATH_REASON_EXHAUSTION;
			}
			VillagerDead(reason, GetPlayer(), 0.0f, true);
			return true;
		}
		uint32_t turns = GetGameTurnsSinceLastChecked();
		if (turns > GetInfo()->ProcessChecksEvery)
		{
			if ((GGame::g_game->data.GetGameTurn() + GetUniqueId()) % VILLAGER_OLD_AGE_CHECK_PERIOD < turns &&
			    CheckDeathFromOldAge())
			{
				return true;
			}
			if (GetLife() < GetInfo()->DamageThresholdToGoHome && !(Flags & VILLAGER_FLAG_AT_HOME) &&
			    stateInfo->CanGoHomeWhenHurt != false && !(status & 0x80) && stateInfo->IsWorshipState == false)
			{
				if ((stateInfo != GetStateInfo(VILLAGER_STATE_GOTO_FOOD_REACTION) &&
				     stateInfo != GetStateInfo(VILLAGER_STATE_ARRIVES_AT_FOOD_REACTION)) ||
				    food > GetInfo()->HungryForFood)
				{
					SetTopState(VILLAGER_STATE_GO_HOME);
				}
			}
			if (IsChild())
			{
				CheckChildGrownUp();
			}
			if (IsWoman() == true)
			{
				WomanSpecial();
			}
			return CheckHungry();
		}
	}
	if (IsDisciple() && GVillagerInfo::DiscipleInfos[DiscipleType].UsesNothingToDoState == true &&
	    action.states[LIVING_ACTION_INDEX_FINAL] == VILLAGER_STATE_DISCIPLE_NOTHING_TO_DO && GetTown() != NULL &&
	    GetTown()->DesireDirty)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	return true;
}

uint32_t Villager::GetGameTurnsSinceLastChecked()
{
	return GGame::g_game->data.GameTurn - LastCheckTurn;
}

int Villager::GetGameTurnLastChecked()
{
	return LastCheckTurn;
}

void Villager::SetGameTurnLastChecked()
{
	LastCheckTurn = GGame::g_game->data.GameTurn;
}

struct DeathGuidance
{
	bool32_t KillingPeople;
	bool32_t LosingVillagers;
	bool32_t DeathSFX;
};

// clang-format off
// BW1W120 0099a368 BW1M119 0169b73c
static const DeathGuidance DeathReasonGuidanceSFXArray[DEATH_REASON_LAST] = {
	/* [DEATH_REASON_NONE]                     = */ {false, false, false},
	/* [DEATH_REASON_STARVING]                 = */ {false, false, true},
	/* [DEATH_REASON_SPELL]                    = */ {true,  true,  true},
	/* [DEATH_REASON_ANIMAL]                   = */ {false, true,  true},
	/* [DEATH_REASON_CHANT]                    = */ {false, false, true},
	/* [DEATH_REASON_PLAYER_INTERACTION]       = */ {true,  true,  false},
	/* [DEATH_REASON_PLAYER_INTERACTION_DROWN] = */ {true,  false, false},
	/* [DEATH_REASON_SACRIFICE]                = */ {false, false, true},
	/* [DEATH_REASON_EXHAUSTION]               = */ {false, false, true},
	/* [DEATH_REASON_OLD_AGE]                  = */ {false, false, false},
};
// clang-format on

void Villager::VillagerDead(DEATH_REASON reason, GPlayer* player, float damage, bool32_t drop_resource)
{
	if (GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		return;
	}
	if (IsDead())
	{
		return;
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	GetTown();
	if (reason != DEATH_REASON_NONE && reason != DEATH_REASON_STARVING && reason != DEATH_REASON_ANIMAL &&
	    reason != DEATH_REASON_CHANT && reason != DEATH_REASON_EXHAUSTION && reason != DEATH_REASON_OLD_AGE)
	{
		player->AddToCondition(WC_KILL_NUM_VILLAGERS, 1);
	}
#endif
	GPlayer* owner = GetPlayer();
	if (owner == NULL)
	{
		owner = GGame::g_game->GetNeutralPlayer();
	}
	if (player == NULL)
	{
		player = GGame::g_game->GetNeutralPlayer();
	}
	GInterfaceStatus* myStatus = GGame::g_game->MyInterfaceStatus();
	if (player->IsMemberOfThisPlayer(myStatus))
	{
		if (DeathReasonGuidanceSFXArray[reason].KillingPeople)
		{
			myStatus->guidance->HelpSpritesKillingPeople(*this);
		}
	}
	else if (owner->IsMemberOfThisPlayer(myStatus))
	{
		if (DeathReasonGuidanceSFXArray[reason].DeathSFX)
		{
			GGuidance::VillagerDeathSFX(*GGame::g_game->MyInterfaceStatus());
		}
	}
	if (drop_resource)
	{
		CreateDroppedResource(NULL, NULL, NULL);
	}
	DropWood(0);
	DropFood(0);
	if (IsDisciple())
	{
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	}
	if (owner != NULL)
	{
		owner->GetAlignment()->Update(GetPlayer(), this, reason);
	}
	Town* town = GetTown();
	if (town != NULL)
	{
		town->UpdateDamageDoneToVillager(player, reason, damage);
		town->VillagerDead(this, reason, player, damage);
		if (owner != NULL)
		{
			if (reason == DEATH_REASON_CHANT)
			{
				myStatus = GGame::g_game->MyInterfaceStatus();
				if (owner->IsMemberOfThisPlayer(myStatus))
				{
					myStatus->guidance->HelpSpritesWorshippersDying();
				}
			}
			else if (town->stats.NumAdults > town->GetInfo()->MinAdultsForLosingVillagersHelp)
			{
				if (DeathReasonGuidanceSFXArray[reason].LosingVillagers)
				{
					myStatus = GGame::g_game->MyInterfaceStatus();
					if (player != owner && owner->IsMemberOfThisPlayer(myStatus))
					{
						myStatus->guidance->HelpSpritesLosingVillagers(this);
					}
				}
			}
			else
			{
				myStatus = GGame::g_game->MyInterfaceStatus();
				if (owner->IsMemberOfThisPlayer(myStatus))
				{
					myStatus->guidance->HelpSpritesLowOnPeople(*town);
				}
			}
		}
	}
	if ((status & LIVING_STATUS_DYING) != LIVING_STATUS_DYING)
	{
		SetDying();
		if (reason == DEATH_REASON_SACRIFICE)
		{
			player->game_stats->TotalNumSacrifices++;
			TurnsUntilNextStateChange = 0;
		}
	}
	DeathReason = reason;
}

void Villager::CreateDroppedResource(LHPoint* velocity, LHPoint* initial_angular_velocity, LHPoint* angular_velocity)
{
	int16_t        wood = ResourceHeld[RESOURCE_TYPE_WOOD];
	CARRIED_OBJECT carried = (CARRIED_OBJECT)CarriedObjectType;
	if (carried > CARRIED_OBJECT_NONE && carried < CARRIED_OBJECT_LAST &&
	    wood > (int)((const GVillagerInfo*)info)->MinWoodToShowGraphic)
	{
		MapCoords pos = Pos;
		DeadTree* deadTree = DeadTree::Create(pos, &GTreeInfo::Infos[TREE_INFO_PINE], NULL, 1.0f, 1.5707964f, 0.0f,
		                                      0.0f, CarriedObject::Objects[carried]->GetMesh());
		deadTree->WoodMultiplier = wood / deadTree->GetWoodValue();
		LHPoint        zero(0.0f, 0.0f, 0.0f);
		PhysicsObject* physicsObject;
		if (velocity != NULL)
		{
			physicsObject =
				deadTree
					->InitialisePhysics(*velocity, initial_angular_velocity != NULL ? *initial_angular_velocity : zero,
			                            NULL, true, NULL)
					.Physics;
		}
		else
		{
			physicsObject = deadTree->InitialisePhysics(zero, zero, NULL, true, NULL).Physics;
		}
		if (physicsObject != NULL)
		{
			if (angular_velocity != NULL)
			{
				physicsObject->Physics.AngularVelocity = *angular_velocity;
			}
			physicsObject->Flags |= 0x10;
			physicsObject->Physics.AdjustToGroundLevel(false, true);
			PhysicsObject::RaiseUntilNotIntersecting(&physicsObject);
		}
		DropWood(0);
	}
}

bool32_t Villager::HasSunk()
{
	if (!IsAvailable())
	{
		return false;
	}
	if (GetInterfaceStatusWhoLastDroppedMe() != NULL)
	{
		GPlayer* player = GetInterfaceStatusWhoLastDroppedMe()->GetPlayer();
		if (player != NULL)
		{
			player->ConsiderMakingCreatureMimicPlayer(GetInterfaceStatusWhoLastDroppedMe(),
			                                          DETECTED_PLAYER_ACTION_THROW_IN_THE_SEA, this, MAGIC_TYPE_NONE);
		}
	}
	TurnsUntilNextStateChange = ((const GVillagerInfo*)info)->DrowningTime;
	if ((status & LIVING_STATUS_DYING) == LIVING_STATUS_DYING)
	{
		SetTopState(VILLAGER_STATE_DYING);
		TurnsUntilNextStateChange = ((const GVillagerInfo*)info)->DyingTimeWithoutGraveyard;
		return true;
	}
	SetTopState(VILLAGER_STATE_DROWNING);
	return true;
}

void Villager::TownDeleted()
{
	Villager* walker;
	for (walker = GGame::g_game->GameLists.VillagersWithoutTown.Get(); walker != NULL && walker != this;
	     walker = walker->next)
	{
	}
	if (walker == NULL)
	{
		GGame::g_game->GameLists.VillagersWithoutTown.AddToFirst(this);
	}
	SetTopState(VILLAGER_STATE_VAGRANT_START);
	SetTown(NULL);
}

void Villager::DebugText(bool32_t drawing)
{
	if (GGlobal::Global.debug.ShowVillagerDebugText && drawing == false)
	{
		char    text[200];
		char    stateName[200];
		uint8_t state = GetFinalState();
		if (state < VILLAGER_STATE_LAST_STATE)
		{
			sprintf(stateName, "%s", GVillagerStateTableInfo::Infos[state].name);
			sprintf(text, "Life=%f, food=%f[%d],%s (%d) Age=%d, f%dw%dr%d, Ptr=%p ", GetLife(), food,
			        GetGameTurnLastChecked(), stateName, TurnsUntilNextStateChange, GetAge(),
			        (uint16_t)ResourceHeld[RESOURCE_TYPE_FOOD], (uint16_t)ResourceHeld[RESOURCE_TYPE_WOOD], this);
		}
		GGlobal::Global.debug.SetMessage(text);
		Town* town = GetTown();
		if (town != NULL && town->CreatureInfoList.count > 0)
		{
			char attitudeNames[5][64] = {"Novelty", "Ignore", "Curiosity", "Fear", "Respect"};
			char attitudeText[256];
			sprintf(attitudeText, "Attitude to creature: %s",
			        attitudeNames[town->CreatureInfoList.head.Get()->payload->Attitude]);
			GGlobal::Global.debug.SetMessage(attitudeText);
		}
	}
}

void Villager::SetAbode(Abode* abode)
{
	home = abode;
	SetTown(NULL);
	if (abode != NULL)
	{
		SetTown(abode->GetTown());
	}
}

bool Villager::GetRandomLookAhead(MapCoords* pos, float distance)
{
	if (distance == 0.0f)
	{
		distance = GRand::GameFloatRand(GetInfo()->LookAheadDistance, FILEPATH, VILLAGER_LINE(1009)) + 1.0f;
	}
	uint16_t angle = GameAngle;
	angle = (angle + GRand::GameRand(0x200, FILEPATH, VILLAGER_LINE(1012)) - 0x100) & 0x7ff;
	*pos = Pos;
	pos->x += GUtils::GetXByAngleMetersDistance(angle, distance);
	pos->z += GUtils::GetXByAngleMetersDistance(angle, distance);
	return pos->InBounds() != false;
}

void Villager::SetSpeed(int base_speed, bool32_t scale_speed)
{
	float factor = 1.0f;
	if (scale_speed != 0)
	{
		factor = ((int)(ObjectCreationIndex * 47) % 31 - 16) / 100.0f + 1.0f;
		if (GetAge() < GetInfo()->TeenAge)
		{
			float slowDown = ((GetInfo()->TeenAge - GetAge()) / 5.0f) / 10.0f;
			if (slowDown >= 0.4f)
			{
				slowDown = 0.4f;
			}
			factor = factor - slowDown;
		}
		else if (GetAge() > GetInfo()->MiddleAge)
		{
			float slowDown = ((GetAge() - GetInfo()->MiddleAge) / 5.0f) / 10.0f;
			if (slowDown >= 0.4f)
			{
				slowDown = 0.4f;
			}
			factor = factor - slowDown;
		}
		else
		{
			factor = factor - GetDesireForFood() / 10.0f;
			factor = factor - GetLife() / 10.0f;
			if (GetInfo()->sex == SEX_FEMALE)
			{
				factor -= 0.2f;
			}
		}
	}
	MobileWallHug::SetSpeed((int)(base_speed * factor));
}

void Villager::Birthday() {}

bool32_t Villager::CheckChildGrownUp()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	if (GetAge() >= villagerInfo->TeenAge)
	{
		Flags &= ~VILLAGER_FLAG_CHILD;
		SetAge(max(VILLAGER_MIN_ADULT_AGE, ((const GVillagerInfo*)info)->TeenAge));
		if (GetAbode() != NULL)
		{
			GetAbode()->ChildToAdult(this);
			return ChildBecomesAdult();
		}
		if (GetTown() != NULL)
		{
			GetTown()->ChildToAdult(this);
		}
		return ChildBecomesAdult();
	}
	if (GGame::g_game->data.GameTurn % ((uint32_t)GGameInfo::Info.TimeScale / 4) == 0)
	{
		SetScaleForAge(GetAge());
	}
}

bool32_t Villager::IsAMother()
{
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE;
}

uint32_t GVillagerInfo::GetMaxInfosPerTribe()
{
	uint16_t tribeCounts[TRIBE_TYPE_LAST];
	uint32_t maxCount = 0;
	memset(tribeCounts, 0, sizeof(tribeCounts));
	for (GVillagerInfo* villagerInfo = InfoList; villagerInfo < &InfoList[VILLAGER_INFO_LAST]; villagerInfo++)
	{
		tribeCounts[villagerInfo->TribeType]++;
	}
	for (int i = 0; i < TRIBE_TYPE_LAST; i++)
	{
		if (tribeCounts[i] > maxCount)
		{
			maxCount = tribeCounts[i];
		}
	}
	return maxCount;
}

bool32_t Villager::StartMoveToObject(Object* object, VILLAGER_STATES state)
{
	SetupMoveToObject(object, (uint8_t)state);
	return true;
}

uint16_t Villager::DropResource(RESOURCE_TYPE type, uint16_t amount)
{
	if (type == RESOURCE_TYPE_WOOD)
	{
		return DropWood(amount);
	}
	if (type == RESOURCE_TYPE_FOOD)
	{
		return DropFood(amount);
	}
	return 0;
}

uint16_t Villager::DropFood(uint16_t food_amount)
{
	if (food_amount == 0 || food_amount > (uint16_t)ResourceHeld[RESOURCE_TYPE_FOOD])
	{
		food_amount = ResourceHeld[RESOURCE_TYPE_FOOD];
	}
	ResourceHeld[RESOURCE_TYPE_FOOD] = ResourceHeld[RESOURCE_TYPE_FOOD] - food_amount;
	if (GetTown() != NULL)
	{
		GetTown()->stats.TotalFood -= (float)food_amount;
	}
	return food_amount;
}

uint16_t Villager::DropWood(uint16_t wood_amount)
{
	if (wood_amount == 0 || wood_amount > (uint16_t)ResourceHeld[RESOURCE_TYPE_WOOD])
	{
		wood_amount = ResourceHeld[RESOURCE_TYPE_WOOD];
	}
	ResourceHeld[RESOURCE_TYPE_WOOD] = ResourceHeld[RESOURCE_TYPE_WOOD] - wood_amount;
	if (GetTown() != NULL)
	{
		GetTown()->stats.TotalWood -= (float)wood_amount;
	}
	return wood_amount;
}

bool32_t Villager::IsEnoughFoodInStoragePitForDinner()
{
	if (GetStoragePit() != NULL)
	{
		uint32_t food = GetStoragePit()->GetResource(RESOURCE_TYPE_FOOD);
		if (GetAmountOfFoodRequiredForMeal() <= food)
		{
			return true;
		}
	}
	return false;
}

Pot* Villager::FindPotAroundToGoto(RESOURCE_TYPE type, uint32_t& best_dist, bool32_t not_full)
{
	MapCoords searchPos = Pos;
	Pot*      bestPot = NULL;
	best_dist = 0xffffffff;
	long spiralA = 1;
	long spiralB = 1;
	int  count = 9;
	do
	{
		for (Pot* pot = dynamic_cast<Pot*>(searchPos.FindType(OBJECT_TYPE_POT, NULL)); pot != NULL;
		     pot = dynamic_cast<Pot*>(searchPos.FindType(OBJECT_TYPE_POT, pot)))
		{
			const GPotInfo* potInfo = (const GPotInfo*)pot->info;
			if ((potInfo->ResourceType == type || type == RESOURCE_TYPE_ANY) &&
			    (!not_full || pot->ResourceAmount < potInfo->MaxResource))
			{
				uint32_t dist = GUtils::FastDistance(Pos, pot->Pos);
				if (dist < best_dist)
				{
					best_dist = dist;
					bestPot = pot;
				}
			}
		}
		searchPos += *GUtils::Spiral(spiralA, spiralB);
		--count;
	} while (count != 0);
	return bestPot;
}

int16_t Villager::PickupResource(RESOURCE_TYPE resource_type, short amount, uint8_t wood_graphic)
{
	if (resource_type == RESOURCE_TYPE_FOOD)
	{
		ResourceHeld[RESOURCE_TYPE_FOOD] += amount;
		if (GetTown() != NULL)
		{
			GetTown()->stats.TotalFood += amount;
		}
	}
	else
	{
		ResourceHeld[RESOURCE_TYPE_WOOD] += amount;
		if (GetTown() != NULL)
		{
			GetTown()->stats.TotalWood += amount;
		}
		SetWoodGraphic(wood_graphic & 3);
	}
	return amount;
}

void Villager::PickupFood(short amount)
{
	PickupResource(RESOURCE_TYPE_FOOD, amount, 0);
}

void Villager::PickupWood(short amount, uint8_t wood_graphic)
{
	PickupResource(RESOURCE_TYPE_WOOD, amount, wood_graphic);
}

int16_t Villager::GetFoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxFoodCarried - ResourceHeld[RESOURCE_TYPE_FOOD];
}

int16_t Villager::GetWoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxWoodCarried - ResourceHeld[RESOURCE_TYPE_WOOD];
}

void Villager::RemoveFromDance(bool32_t is_worshipping)
{
	Living::RemoveFromDance(is_worshipping);
}

bool32_t Villager::IsRandomlyLazy()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	if (GRand::GameRand(100, FILEPATH, VILLAGER_LINE(1382)) <= villagerInfo->PercentLazy * 100.0f)
	{
		return true;
	}
	return false;
}

uint32_t Villager::GetResourceHeld(RESOURCE_TYPE& type)
{
	type = RESOURCE_TYPE_NONE;
	if ((uint16_t)ResourceHeld[RESOURCE_TYPE_FOOD] > (uint16_t)ResourceHeld[RESOURCE_TYPE_WOOD])
	{
		type = RESOURCE_TYPE_FOOD;
		return (uint16_t)ResourceHeld[RESOURCE_TYPE_FOOD];
	}
	if (ResourceHeld[RESOURCE_TYPE_WOOD] != 0)
	{
		type = RESOURCE_TYPE_WOOD;
		return (uint16_t)ResourceHeld[RESOURCE_TYPE_WOOD];
	}
	return 0;
}

bool32_t Villager::DecideWhatToDo()
{
	if (GetTown() != NULL)
	{
		if (GetTown()->IsInStateOfEmergency())
		{
			SetTopState(VILLAGER_STATE_GOTO_CONGREGATE_IN_TOWN_AFTER_EMERGENCY);
			return true;
		}
	}

	if (IsDisciple() || Flags & VILLAGER_FLAG_DISCIPLE_FOLLOWER)
	{
		if (DiscipleDecideWhatToDo() == true)
		{
			if (Flags & VILLAGER_FLAG_DISCIPLE_FOLLOWER)
			{
				DiscipleType = VILLAGER_DISCIPLE_NONE;
				return true;
			}
			if (GVillagerInfo::GetDiscipleInfo()[DiscipleType].ReactToDroppedByHand == false)
			{
				return true;
			}
			Reaction::CreateReaction(this, REACTION_REACT_TO_DROPPED_BY_HAND, GetPlayer(), 1);
			return true;
		}
		uint32_t flags = Flags;
		if (flags & VILLAGER_FLAG_DISCIPLE_FOLLOWER)
		{
			DiscipleType = VILLAGER_DISCIPLE_NONE;
			Flags = flags & ~(VILLAGER_FLAG_DISCIPLE | VILLAGER_FLAG_DISCIPLE_FOLLOWER);
		}
	}

	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);

	if (IsChild())
	{
		return ChildDecideWhatToDo();
	}

	if (CheckNeededForSomething() != true && !CheckTakeResourcesToStoragePit() && SetupNothingToDo() == false)
	{
		SetTopState(VILLAGER_STATE_GO_HOME);
	}
	return true;
}

bool32_t Villager::CheckTakeResourcesToStoragePit()
{
	if (ResourceHeld[RESOURCE_TYPE_WOOD] > (int)((const GVillagerInfo*)info)->MinWoodToShowGraphic ||
	    ResourceHeld[RESOURCE_TYPE_FOOD] > (int)((const GVillagerInfo*)info)->MinFoodToShowGraphic)
	{
		SetTopState(VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_DROP_OFF);
		return true;
	}
	return false;
}

bool32_t Villager::DiscipleDecideWhatToDo()
{
	switch (DiscipleType)
	{
	case VILLAGER_DISCIPLE_FARMER:
		if (GetTown() != NULL)
		{
			float  score;
			Field* field = GetTown()->FindBestField(this, &score);
			if (field != NULL)
			{
				if (field->GetFieldActivity(0) == 2 &&
				    ResourceHeld[RESOURCE_TYPE_FOOD] > (int16_t)((const GVillagerInfo*)info)->MinFoodToShowGraphic)
				{
					SetTopState(VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_DROP_OFF);
					return true;
				}
				if (VillagerBecomesFarmer(field) == true)
				{
					return true;
				}
			}
		}
		break;
	case VILLAGER_DISCIPLE_FORESTER:
		if (CheckSatisfyWoodDesire() == true)
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_FISHERMAN:
		if (FishermanLookForWater() == true)
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_BUILDER:
		if (CheckNeededForBuilding() == true)
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_BREEDER:
		if (SetupBreederDisciple() == true)
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_PROTECTION:
		break;
	case VILLAGER_DISCIPLE_MISSIONARY:
		return false;
	case VILLAGER_DISCIPLE_CRAFTSMAN:
		if (CheckSatisfySupplyWorkshop())
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_TRADER:
		if (CheckTrader() == true)
		{
			return true;
		}
		break;
	case VILLAGER_DISCIPLE_CHANGE_HOUSE: {
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		GPlayer* player = GetPlayer();
#endif
		SetVillagerDisciple(this, VILLAGER_DISCIPLE_NONE, 0);
		if (CheckMoveHouse(GUtils::FindClosestAbode(Pos, TRIBE_TYPE_NONE, 0, 0, 0)) == true)
		{
			SetTopState(VILLAGER_STATE_GO_HOME_AND_CHANGE);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			if (player != GetPlayer())
			{
				GetPlayer()->AddToCondition(13, 1);
			}
#endif
			return true;
		}
		break;
	}
	case VILLAGER_DISCIPLE_WORSHIP:
		SetTopState(VILLAGER_STATE_GOTO_WORSHIP_SITE_FOR_WORSHIP);
		return true;
	case VILLAGER_DISCIPLE_FROM_VORTEX:
		SetTopState(GVillagerInfo::GetDiscipleInfo()[DiscipleType].begin_state);
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
		return true;
	}

	if (GetFinalState() != VILLAGER_STATE_DISCIPLE_NOTHING_TO_DO)
	{
#ifdef VERSION_BW1W100
		if (GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState == true && SetDiscipleNothingToDo())
		{
			return true;
		}
#else
		if (IsDisciple() && GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState == true &&
		    SetDiscipleNothingToDo())
		{
			return true;
		}
#endif
	}
	return false;
}

bool32_t Villager::GetPrayerSite()
{
	return false;
}

bool32_t Villager::RestartDance(VILLAGER_STATES state)
{
	MapCoords pos;
	pos.Clear();
	if (IsDancing())
	{
		CalculateDancePosition(dance_group->Dancer->Pos, &pos);
		SetupMoveToPos(pos, state);
		return true;
	}
	return false;
}

int GVillagerInfo::GetInfoFromText(char* text)
{
	for (uint32_t tribe = 0; tribe < TRIBE_TYPE_LAST; tribe++)
	{
		char*  tribeText = GTribeInfo::GetTribeTextArray()[GTribeInfo::Infos[tribe].type];
		size_t len = strlen(tribeText);
		if (_strnicmp(text, tribeText, len) == 0 && text[len] == '_')
		{
			char* numberText = &text[len + 1];
			for (uint32_t number = 0; number < VILLAGER_NUMBER_LAST; number++)
			{
				if (_stricmp(numberText, InfoList[tribe * VILLAGER_NUMBER_LAST + number].GetVillagerNumberText()) == 0)
				{
					return tribe * VILLAGER_NUMBER_LAST + number;
				}
			}
		}
	}
	return VILLAGER_INFO_LAST;
}

char* GVillagerInfo::GetVillagerNumberText() const
{
	return VillagerNumberTextArray[VillagerNumber];
}

char* Villager::GetVillagerText(char* buffer)
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	char*                tribeText = GTribeInfo::GetTribeTextArray()[GetTribe()->type];
	sprintf(buffer, "%s_%s", tribeText, villagerInfo->GetVillagerNumberText());
	return buffer;
}

uint32_t Villager::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	char text[200];
	char coordText[100];
	char villagerText[100];
	char posText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (origin != NULL) ? (Pos - *origin) : Pos;
		if (GetInfo()->TribeType == TRIBE_TYPE_NONE)
		{
			int townId = GetTown() != NULL ? GetTown()->ID : -1;
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_SPECIAL_TOWN_VILLAGER), townId,
			        relative.ConvertToText(coordText), GetInfo() - GVillagerInfo::GetInfo(), GetAge());
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		else if (GetAbode() != NULL && origin == NULL)
		{
			relative = GetAbode()->GetDoorPos();
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_VILLAGER_POS),
			        relative.ConvertToText(coordText), Pos.ConvertToText(posText), GetVillagerText(villagerText),
			        GetAge());
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		else
		{
			int townId = GetTown() != NULL ? GetTown()->ID : -1;
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_VILLAGER), townId,
			        relative.ConvertToText(coordText), GetVillagerText(villagerText), GetAge());
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
	}
	return saved;
}

bool32_t Villager::IsFunctional()
{
	if (IsAvailable() == true)
	{
		uint8_t topState = action.states[LIVING_ACTION_INDEX_TOP];
		if (topState < VILLAGER_STATE_SET_DYING || topState > VILLAGER_STATE_DYING)
		{
			return true;
		}
	}
	return false;
}

GJobInfo* Villager::GetJobInfo(uint8_t job) const
{
	return &GJobInfo::InfoList[job];
}

bool32_t Villager::SetAlternativeJob()
{
	return false;
}

bool32_t Villager::IsAvailable()
{
	if (!(GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) && GetFinalState() != VILLAGER_STATE_DYING)
	{
		return true;
	}
	return false;
}

bool32_t Villager::IsEffectReceiver(EffectValues* effect)
{
	if (effect != NULL && effect->numbers.values[EFFECT_TYPE_HEAL] > 0.0f)
	{
		return !IsDead();
	}
	return IsReachable();
}

Citadel* Villager::GetCitadel()
{
	Town* town = GetTown();
	if (town != NULL && town->owner.Get() != NULL)
	{
		return town->owner->citadel.Get();
	}
	return NULL;
}

uint8_t Villager::GetFinalState() const
{
	uint8_t state = action.states[LIVING_ACTION_INDEX_TOP];
	if (!GVillagerStateTableInfo::Infos[state].isFinalState)
	{
		state = action.states[LIVING_ACTION_INDEX_FINAL];
	}
	return state;
}

void Villager::ResetStateAfterReacting()
{
	PopFromPrevious();
	if (GVillagerStateTableInfo::Infos[GetFinalState() & VILLAGER_STATE_LAST_STATE].isReactiveState)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
}

void Villager::PopFromPrevious()
{
	int returnState = GVillagerStateTableInfo::GetInfo()[action.states[LIVING_ACTION_INDEX_PREVIOUS]].ReturnState;
	if (SetTopState(returnState) == LIVING_SET_STATE_EXIT_REFUSED)
	{
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	action.SetState(LIVING_ACTION_INDEX_PREVIOUS, VILLAGER_STATE_INVALID_STATE);
}

Football* Villager::GetFootball()
{
	return football.Get();
}

PFootball* Villager::GetPFootball()
{
	return dynamic_cast<PFootball*>(GetTown()->GetPlaytime(PLAYTIME_INFO_FOOTBALL)->GetStructure());
}

GTribeInfo* Villager::GetTribe()
{
	return GGame::g_game->GetTribe(GetInfo()->TribeType);
}

Town* Villager::GetTown()
{
	return town;
}

StoragePit* Villager::GetStoragePit()
{
	if (GetTown() != NULL)
	{
		StoragePit* storagePit = GetTown()->GetStoragePit();
		if (storagePit != NULL)
			return storagePit;
	}
	return (StoragePit*)GetAbode();
}

VILLAGER_STATES Villager::GetVillagerAvailableState()
{
	return (VILLAGER_STATES)GVillagerStateTableInfo::Infos[GetFinalState() & 0xff].AvailableState;
}

bool32_t Villager::IsCanBeCalledToDinner()
{
	return GVillagerStateTableInfo::Infos[GetFinalState()].CanBeCalledToDinner;
}

void Villager::ArriveHome()
{
	if (GetAbode() != NULL)
	{
		Flags |= GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE;
		GetAbode()->ArriveHome();
	}
}

void Villager::LeaveHome()
{
	if (Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)
	{
		Flags &=
			~(GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE | GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP);
		if (GetAbode() != NULL)
		{
			GetAbode()->LeaveHome();
		}
	}
}

int Villager::SetTopState(uint8_t state)
{
	if (CanPauseForASecond(state))
	{
		float life = GetLife();
		if (IsPoisoned())
		{
			life *= 0.5f;
		}
		if (GRand::GameFloatRand(1.0f, FILEPATH, VILLAGER_LINE(1899)) - POWER(1.0f - life, 3) * 0.5f <
		    ((const GVillagerInfo*)info)->PauseForASecondChance)
		{
			if (SetupPauseForASecond((VILLAGER_STATES)state))
			{
				return LIVING_SET_STATE_SUCCESS;
			}
		}
	}
	int result = Living::SetTopState(state);
	if (result == LIVING_SET_STATE_ENTRY_REFUSED)
	{
		CallEntryStateFunction(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	return result;
}

int Villager::SetCurrentAndDestinationState(uint8_t current, uint8_t destination)
{
	int result = Living::SetCurrentAndDestinationState(current, destination);
	if (result == LIVING_SET_STATE_ENTRY_REFUSED)
	{
		CallEntryStateFunction(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	return result;
}

uint32_t Villager::CanPauseForASecond(uint8_t state)
{
	if (action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_PAUSE_FOR_A_SECOND &&
	    GVillagerStateTableInfo::Infos[state].CanPauseForASecond != false &&
	    !(((GameThingWithPos*)this)->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		return 1;
	}
	return 0;
}

Abode* Villager::GetAbode()
{
	return home;
}

bool32_t Villager::IsInTown()
{
	Town* villagerTown = GetTown();
	if (Pos.MapX() >= villagerTown->AreaMin.MapX() && Pos.MapZ() >= villagerTown->AreaMin.MapZ() &&
	    Pos.MapX() <= villagerTown->AreaMax.MapX() && Pos.MapZ() <= villagerTown->AreaMax.MapZ())
	{
		return true;
	}
	return false;
}

void Villager::ToBeDeleted(int delete_now)
{
	DeleteDependancys();
	Living::ToBeDeleted(delete_now);
}

uint32_t Villager::CallState()
{
	bool32_t (Villager::*state)() = VillagerStateTableEntry::StateTable[action.states[LIVING_ACTION_INDEX_TOP]].State;
	return (this->*state)();
}

bool32_t Villager::IsPregnant()
{
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE && is_pregnant != 0;
}

uint32_t Villager::WomanSpecial()
{
	if (IsPregnant())
	{
		uint32_t flags = ((GameThingWithPos*)this)->Flags;
		uint8_t  notFlags = (uint16_t)~flags >> 10;
		if (notFlags & 1)
		{
			is_pregnant -= GetGameTurnsSinceLastChecked();
			if (is_pregnant <= 0)
			{
				return HousewifeStartsGivingBirth();
			}
		}
	}
	return 0;
}

bool32_t Villager::IsVillagerAvailable()
{
	if (!(((GameThingWithPos*)this)->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) &&
	    IsAvailableForStateChange())
	{
		return GetVillagerAvailableState() & 1;
	}
	return false;
}

bool32_t Villager::IsAvailableToBeSummonedByCreature()
{
	if (!IsDancing() && !IsChild())
	{
		if (!IsDisciple() && ((const GVillagerInfo*)info)->DamageThresholdToGoHome < GetLife())
		{
			return true;
		}
	}
	return false;
}

uint32_t Villager::CallExitStateFunction(uint8_t state)
{
	uint8_t  topState = action.states[LIVING_ACTION_INDEX_TOP];
	uint8_t  finalState = GetFinalState();
	bool32_t topResult = true;
	bool32_t finalResult = true;
	if (VillagerStateTableEntry::StateTable[topState].ExitState)
	{
		topResult = (this->*VillagerStateTableEntry::StateTable[topState].ExitState)(state);
	}
	if (topState != finalState && VillagerStateTableEntry::StateTable[finalState].ExitState)
	{
		finalResult = (this->*VillagerStateTableEntry::StateTable[finalState].ExitState)(state);
	}
	return topResult == true && finalResult == true;
}

uint32_t Villager::CallEntryStateFunction(uint8_t state)
{
	uint8_t  finalState = GetFinalState();
	bool32_t result = true;
	if (VillagerStateTableEntry::StateTable[state].EntryState)
	{
		result = (this->*VillagerStateTableEntry::StateTable[state].EntryState)(finalState, state);
	}
	if (result == true)
	{
		SetState(LIVING_ACTION_INDEX_TOP, state);
		return true;
	}
	return result == VILLAGER_STATE_RESULT_STATE_CHANGED;
}

uint32_t Villager::CallEntryStateFunction(uint8_t current, uint8_t destination)
{
	uint8_t finalState = GetFinalState();
	if (CallEntryStateFunction(current))
	{
		bool32_t result = true;
		if (VillagerStateTableEntry::StateTable[destination].EntryState)
		{
			result = (this->*VillagerStateTableEntry::StateTable[destination].EntryState)(finalState, destination);
		}
		if (result == true)
		{
			SetState(LIVING_ACTION_INDEX_FINAL, destination);
			return true;
		}
		if (result == VILLAGER_STATE_RESULT_STATE_CHANGED)
		{
			return true;
		}
	}
	return false;
}

bool Villager::IsStateEntryFunctionSameAs(unsigned long state_a, unsigned long state_b) const
{
	return VillagerStateTableEntry::StateTable[state_a].EntryState ==
	       VillagerStateTableEntry::StateTable[state_b].EntryState;
}

bool32_t Villager::IsStateExitFunctionSameAs(unsigned long state) const
{
	if (VillagerStateTableEntry::StateTable[GetFinalState()].ExitState !=
	        VillagerStateTableEntry::StateTable[state].ExitState &&
	    GVillagerStateTableInfo::Infos[state].isFinalState)
	{
		return false;
	}
	return true;
}

bool32_t Villager::IsReactiveState(unsigned long state)
{
	return GVillagerStateTableInfo::Infos[state].isReactiveState != 0;
}

char* Villager::GetStateText()
{
	return GVillagerStateTableInfo::Infos[GetFinalState()].name;
}

bool32_t Villager::IsHungry()
{
	return food <= ((const GVillagerInfo*)info)->HungryForFood;
}

bool32_t Villager::IsWoman()
{
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE && !IsChild();
}

GVillagerInfo* GVillagerInfo::Find(TRIBE_TYPE type, VILLAGER_NUMBER villager_number)
{
	for (GVillagerInfo* info = InfoList; info < &InfoList[VILLAGER_INFO_LAST]; info++)
	{
		if (info->TribeType == type && info->VillagerNumber == villager_number)
		{
			return info;
		}
	}
	return NULL;
}

bool32_t Villager::MakeVillagesMeet(Villager* villager, VILLAGER_STATES state, float distance)
{
	if (IsTouching(villager, distance))
	{
		MakeVillagerFaceObject(villager);
		villager->MakeVillagerFaceObject(this);
		SetTopState(state);
		return true;
	}
	MapCoords pos = GUtils::GetMidPoint(Pos, villager->Pos, distance);
	SetupMoveToPos(pos, state);
	pos = GUtils::GetMidPoint(villager->Pos, Pos, distance);
	villager->SetupMoveToPos(pos, state);
	villager->TargetThing = this;
	TargetThing = villager;
	return false;
}

bool32_t Villager::MakeVillagerFaceObject(Object* object)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	SetGameAngle(GUtils::ConvertAngle3DToGame(angle));
	return true;
}

bool32_t Villager::ExitReaction(uint8_t state)
{
	circle_hug_info.Reset(this);
	if (!GVillagerStateTableInfo::Infos[state].isReactiveState)
	{
		StopReacting();
	}
	return true;
}

bool32_t Villager::ExitDance(uint8_t state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state) && state != VILLAGER_STATE_IN_DANCE)
	{
		RemoveFromDance(true);
	}
	return true;
}

bool32_t Villager::IsAvailableForWorshipSite(bool32_t allow_disciple)
{
	if (IsVillagerAvailable() && (!IsDisciple() || allow_disciple) && !IsAtOrOnTheWayToWorshipSite())
	{
		return true;
	}
	return false;
}

bool32_t Villager::IsAtOrOnTheWayToWorshipSite()
{
	int state = GetFinalState() & 0xff;
	if (state == VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION || state == VILLAGER_STATE_TELEPORT_REACTION ||
	    state == VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION_QUICKLY)
	{
		state = action.states[LIVING_ACTION_INDEX_PREVIOUS];
	}
	if ((Flags & VILLAGER_FLAG_AT_WORSHIP_SITE) || state == VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP ||
	    state == VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_WITH_SUPPLIES)
	{
		return true;
	}
	return false;
}

void Villager::DebugShowTime(uint32_t time, uint8_t current, uint8_t destination)
{
	GetFinalState();
}

void Villager::SetAge(uint32_t age)
{
	static LH3DMesh* skeletonMesh = LH3DMesh::GetPackedMesh(VILLAGER_SKELETON_MESH);

	uint32_t teenAge = ((const GVillagerInfo*)info)->TeenAge;
	if (age >= teenAge && age < 18)
	{
		age = 18;
	}
	if (age < teenAge)
	{
		Flags |= 8;
		if (GetAge() >= teenAge && Game3dObject)
		{
			if (IsSkeleton())
			{
				Game3dObject->SetMesh(skeletonMesh, skeletonMesh, skeletonMesh);
			}
			else
			{
				Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(((const GVillagerInfo*)info)->ChildMeshHigh),
				                      LH3DMesh::GetPackedMesh(((const GVillagerInfo*)info)->ChildMeshMedium),
				                      LH3DMesh::GetPackedMesh(((const GVillagerInfo*)info)->ChildMeshLow));
			}
		}
	}
	else
	{
		Flags &= ~8;
		if (GetAge() < teenAge && Game3dObject)
		{
			if (IsSkeleton())
			{
				Game3dObject->SetMesh(skeletonMesh, skeletonMesh, skeletonMesh);
			}
			else
			{
				Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetDetailMesh(0)),
				                      LH3DMesh::GetPackedMesh(GetDetailMesh(1)),
				                      LH3DMesh::GetPackedMesh(GetDetailMesh(2)));
			}
		}
	}
	InitialiseScale(age);
	SetScaleForAge(age);
	Living::SetAge(age);
}

void Villager::SetScaleForAge(uint32_t age)
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	if (age < villagerInfo->TeenAge)
	{
		float scaleDiff = villagerInfo->ageToScale.values[age + 1] - GetScale();
		SetScale(GRand::GameFloatRand(scaleDiff * 0.75f, FILEPATH, VILLAGER_LINE(2351)) + GetScale());
	}
	else
	{
		SetScale(max(1.0f + (0.05f - GRand::GameFloatRand(0.1f, FILEPATH, VILLAGER_LINE(2355))), GetScale()));
	}
}

bool32_t Villager::SetStateWhenTappedOnAbode()
{
	if (IsAvailable() && (Flags & VILLAGER_FLAG_AT_HOME))
	{
		MapCoords pos = FindPosOutsideAbode(NULL);
		SetupAfterTapOnAbode(pos, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	return false;
}

uint32_t Villager::ValidToApplyThisToObject(GInterfaceStatus* status, Object* object)
{
	if (dynamic_cast<WorshipTotem*>(object))
	{
		return true;
	}
	MagicTeleport* teleport = dynamic_cast<MagicTeleport*>(object);
	if (teleport && teleport->ValidToApplyVillagerDirectlyToTeleport(status, this) == true)
	{
		return true;
	}
	return false;
}

uint32_t Villager::ApplyThisToObject(GInterfaceStatus* status, Object* object, GestureSystemPacketData* packet)
{
	WorshipTotem* totem = dynamic_cast<WorshipTotem*>(object);
	if (totem)
	{
		if (!totem->Site->IsBuilt() || !((uint8_t)((uint16_t)~((GameThingWithPos*)this)->Flags >> 14) & 1))
		{
			return 0x17;
		}
		float        value = GetSacrificeValue();
		WorshipSite* site = totem->Site.Get();
		status->GetPlayer();
		if (IsChild())
		{
			value *= 1.25;
		}
		site->ChantStore += value;
		site->TotalSacrificeValue += value;
		GPlayer* player = status->GetPlayer();
		if (player)
		{
			player->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_SACRIFICE, this, MAGIC_TYPE_NONE);
		}
		GPlayer* sacrificer = NULL;
		if (status)
		{
			sacrificer = status->GetPlayer();
		}
		VillagerDead(DEATH_REASON_SACRIFICE, sacrificer, GetLife(), true);

		MapCoords pos = totem->Pos;
		float     height = totem->GetHeight();
		pos.altitude += height;
		GParticleContainer* visual = GParticleContainer::CreateSpotVisual(pos, SPOT_VISUAL_OBJECT_APPEAR, 1.0f, NULL);
		if (visual)
		{
			visual->SetPlayer(site->GetPlayer());
		}

		if (status)
		{
			LHPoint              soundPos = status->ReportedHandPos;
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.SampleNumber = LH_SAMPLE_G_SACRIFICE_01;
			options.AttachedObject = this;
			options.Positional = 1;
			options.Pos = soundPos;
			options.Looping = 0;
			GGlobal::Global.audio->PlaySoundEffect(&options);
			if (IsChild())
			{
				options.Bank = GGlobal::Global.audio->AudioBanks[5];
				GGlobal::Global.audio->PlaySoundEffect(&options);
				options.SampleNumber = SoundTag::GetRandomSample((LH_SAMPLE)13, 10);
			}
			else
			{
				options.Bank = GGlobal::Global.audio->AudioBanks[2];
				if (((const GVillagerInfo*)info)->sex == SEX_FEMALE)
				{
					options.SampleNumber = SoundTag::GetRandomSample((LH_SAMPLE)0x218, 6);
				}
				else
				{
					options.SampleNumber = SoundTag::GetRandomSample((LH_SAMPLE)0xdd, 8);
				}
				GGlobal::Global.audio->PlaySoundEffect(&options);
			}
		}

		if (status == GGame::g_game->MyInterfaceStatus())
		{
			ValueSpinner* spinner = new (FILEPATH, VILLAGER_LINE(2470)) ValueSpinner;
			char          text[16];
			sprintf(text, "%3.0f", value);
			const MapCoords& spinnerPos = GGame::g_game->MyInterface()->interface_collide.pos;
			LHPoint          point;
			point.y = spinnerPos.Altitude() + LH3DIsland::GetAltitude(spinnerPos);
			point.x = spinnerPos.WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			point.z = spinnerPos.WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			spinner->Init(point, CHAR2WCHAR(text), LH3DColor(0xff, 0, 0));
		}
		ToBeDeleted(0);
		return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
	}

	MagicTeleport* teleport = dynamic_cast<MagicTeleport*>(object);
	if (teleport && teleport->ValidToApplyVillagerDirectlyToTeleport(status, this) == true)
	{
		return teleport->ApplyVillagerDirectlyToTeleport(status, this);
	}
	return 0;
}

SCRIPT_OBJECT_TYPE Villager::GetScriptObjectType()
{
	return IsAChild() ? SCRIPT_OBJECT_TYPE_VILLAGER_CHILD : SCRIPT_OBJECT_TYPE_VILLAGER;
}

bool32_t Villager::IsTouching(const MapCoords& coords)
{
	return GetDistanceFromObject(coords) < GetSpeedInMetres();
}

bool32_t Villager::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	Flags |= VILLAGER_FLAG_BEEN_PICKED_UP;
	if (action.GetState(LIVING_ACTION_INDEX_FINAL) == VILLAGER_STATE_HAVING_SEX && TargetThing)
	{
		((Villager*)TargetThing)->TargetThing = NULL;
		((Villager*)TargetThing)->DecideWhatToDo();
		TargetThing = NULL;
	}
	if (GetPlayer() == status->GetPlayer() && IsSexuallyActive())
	{
		Reaction::CreateReaction(this, 0x20, status->GetPlayer(), 0);
	}
	return Living::InterfaceSetInMagicHand(status);
}

void Villager::SetSpeedInMetres(float speed_in_metres, bool32_t scale_speed)
{
	SetSpeed(GUtils::ConvertMetersToWholeDistance(speed_in_metres), scale_speed);
}

bool Villager::IsInBuildingState()
{
	uint8_t state = GetFinalState();
	if (VillagerStateTableEntry::StateTable[state].ExitState == &Villager::ExitBuilding)
	{
		return true;
	}
	return false;
}

bool32_t Villager::IsVagrant()
{
	Villager* villager = GGame::g_game->GameLists.VillagersWithoutTown.Get();
	while (villager != NULL && villager != this)
	{
		villager = villager->next;
	}
	return villager != NULL;
}

void Villager::ReleaseFromScript()
{
	if (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP)
	{
		return;
	}
	if (flock.Get())
	{
		if (flock->Shepherd == this)
		{
			flock->Shepherd = NULL;
		}
		flock->RemoveLivingFromFlock(this, 0);
	}
	if (!(((GameThingWithPos*)this)->Flags &
	      (GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE | GAME_THING_WITH_POS_FLAG_IN_PHYSICS)))
	{
		if (GetLife() <= 0.0f)
		{
			GPlayer* dropper = GetPlayerWhoLastDroppedMe();
			VillagerDead(DEATH_REASON_NONE, dropper ? dropper->GetPlayer() : NULL, 0.0f, true);
			uint8_t state = action.states[LIVING_ACTION_INDEX_TOP];
			if (!IsDeathState((VILLAGER_STATES)state))
			{
				SetTopState(VILLAGER_STATE_DEAD);
			}
			return;
		}
		if (GetTown())
		{
			DecideWhatToDo();
			return;
		}
		Villager* villager;
		for (villager = GGame::g_game->GameLists.VillagersWithoutTown.Get(); villager != NULL && villager != this;
		     villager = villager->next)
		{
		}
		if (villager == NULL)
		{
			GGame::g_game->GameLists.VillagersWithoutTown.AddToFirst(this);
		}
		SetTopState(VILLAGER_STATE_VAGRANT_START);
		VagrantStart();
		return;
	}
	if (!GetTown())
	{
		Villager* villager;
		for (villager = GGame::g_game->GameLists.VillagersWithoutTown.Get(); villager != NULL && villager != this;
		     villager = villager->next)
		{
		}
		if (villager == NULL)
		{
			GGame::g_game->GameLists.VillagersWithoutTown.AddToFirst(this);
		}
	}
}

void Villager::TestSpecial()
{
	if (GetTown() != NULL)
	{
		GetTown()->RemoveVillager(this);
		SetTown(NULL);
	}
	else
	{
		ReleaseFromScript();
	}
	status &= ~0x400;
}

uint16_t Villager::GetResourceFrom(Object* object, RESOURCE_TYPE resource_type, short amount)
{
	uint16_t got = object->RemoveResource(resource_type, amount, NULL, NULL);
	if (got != 0)
	{
		PickupResource(resource_type, got, object->GetCarriedTreeType());
		if ((uint8_t)object->IsSpeedUp())
		{
			SetFoodSpeedup(true);
		}
		if ((uint8_t)object->IsPoisoned())
		{
			SetPoisoned(1);
		}
	}
	return got;
}

void Villager::SetFoodSpeedup(bool value)
{
	if (value)
	{
		FoodSpeedUp = VILLAGER_FOOD_SPEED_UP_START;
	}
	else
	{
		FoodSpeedUp = 0;
	}
}

void Villager::ProcessFoodSpeedup()
{
	if (IsFoodSpeedUp() && GGame::g_game->data.GameTurn % 10 == 0)
	{
		FoodSpeedUp--;
	}
}

float Villager::IncreaseLife(float value)
{
	return Object::IncreaseLife(value);
}

MapCoords Villager::FindPosOutsideAbode(Abode* abode)
{
	if (abode == NULL)
	{
		abode = GetAbode();
	}
	float angle = GUtils::Get3DAngleFromXZ(abode->Pos, abode->GetArrivePos());
	float distance = GRand::GameFloatRand(1.5f, FILEPATH, VILLAGER_LINE(2710)) + 1.5f;
	angle += 0.39269909f - GRand::GameFloatRand(0.7853982f, FILEPATH, VILLAGER_LINE(2711));
	MapCoords pos = abode->GetArrivePos() + GUtils::GetPosFromAngle(angle, distance);
	return pos;
}

void Villager::LogVillager()
{
	if (GGlobal::Global.debug.LogVillagers)
	{
		GetTown();
		GetAbode();
	}
}

void Villager::AdjustTownModifier(VILLAGER_STATES state, bool32_t add)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		int desire = GVillagerStateTableInfo::Infos[state].TownDesireType;
		if (desire != -1)
		{
			float amount = GVillagerStateTableInfo::Infos[state].TownDesireAmount;
			float sign = add ? 1.0f : -1.0f;
			town->desire.VillagerStateAmount[desire] += sign * amount;
			float count = town->desire.VillagerStateCount[desire] + sign;
			town->desire.VillagerStateCount[desire] = count;
			if (GGlobal::Global.debug.LogTownDesire)
			{
				fprintf(
					GGame::g_game->TownDesireLogFile,
					LHSPrintf("VSA:%x, VSC:%x\nSTACK ", getint(town->desire.VillagerStateAmount[desire]), getint(count))
						.Text);
				if (GGlobal::Global.debug.LogTownDesire)
				{
					fprintf(GGame::g_game->TownDesireLogFile, GetCurrentStackString());
					if (GGlobal::Global.debug.LogTownDesire)
					{
						fprintf(GGame::g_game->TownDesireLogFile, "\n");
					}
				}
			}
		}
	}
}

void Villager::SetState(uint32_t index, uint8_t state)
{
	if (index == LIVING_ACTION_INDEX_PREVIOUS &&
	    GVillagerStateTableInfo::Infos[(uint8_t)state].isTransientState != false)
	{
		return;
	}
	VILLAGER_STATES oldState = (VILLAGER_STATES)action.states[index];
	VILLAGER_STATES newState = (VILLAGER_STATES)(uint8_t)state;
	if (GVillagerStateTableInfo::Infos[oldState].isFinalState && oldState != VILLAGER_STATE_INVALID_STATE)
	{
		AdjustTownModifier(oldState, false);
	}
	if (GVillagerStateTableInfo::Infos[newState].isFinalState && newState != VILLAGER_STATE_INVALID_STATE)
	{
		AdjustTownModifier(newState, true);
	}
	if (index == LIVING_ACTION_INDEX_TOP)
	{
		SetState(LIVING_ACTION_INDEX_FINAL, VILLAGER_STATE_INVALID_STATE);
	}
	Living::SetState(index, state);
}

void Villager::SetStateSpeed()
{
	SetStateSpeed(GetFinalState());
}

void Villager::SetStateSpeed(uint8_t state)
{
	if (GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
	{
		return;
	}
	if (IsDancing())
	{
		return;
	}
	Town*    town = GetTown();
	GPlayer* player = GetPlayer();
	float    playerScale = player != NULL ? max(player->MaxTribalPower[4], 0.1f) : 1.0f;
	float    speedScale = GLandBalance::Values[GLandBalance::LAND_BALANCE_4] * playerScale;
	if (town != NULL && player != NULL && player != GGame::g_game->GetNeutralPlayer())
	{
		float belief = town->GetBeliefInPlayer(player);
		float difference = belief - town->GetBeliefInNeutralPlayer();
		if (difference > 0.0f)
		{
			belief = difference / 10.0f;
		}
		float modifier = GLandBalance::Values[GLandBalance::LAND_BALANCE_7];
		if (modifier == 1.0f)
		{
			if (!GGame::g_game->SkirmishGame && !GGame::g_game->IsMultiplayerGame())
			{
				if (GGame::g_game->LandNumber <= GAME_NUM_CAMPAIGN_LANDS - 1)
				{
					modifier = town->GetInfo()->LandBeliefSpeedModifier[GGame::g_game->LandNumber];
				}
			}
			else
			{
				modifier = town->GetInfo()->SkirmishBeliefSpeedModifier;
			}
		}
		speedScale *= modifier * belief + 1.0f;
	}
	float speed;
	if (GetLife() <= GetInfo()->LifeWhenCrawlsWounded)
	{
		speed = (GRand::GameFloatRand(0.2f, FILEPATH, VILLAGER_LINE(2840)) + 0.4f) *
		        (&GetInfo()->speed)[SPEED_ID_WANDER] * speedScale;
	}
	else if (GetLife() <= GetInfo()->LifeWhenWalksWounded)
	{
		speed = (GRand::GameFloatRand(0.25f, FILEPATH, VILLAGER_LINE(2844)) + 0.5f) *
		        (&GetInfo()->speed)[SPEED_ID_DEFAULT] * speedScale;
	}
	else
	{
		if (town != NULL && town->IsInStateOfEmergency())
		{
			speedScale = (GRand::GameFloatRand(0.5f, FILEPATH, VILLAGER_LINE(2848)) + 0.75f) *
			             (&GetInfo()->speed)[SPEED_ID_FLEEING] * speedScale;
		}
		else
		{
			float townNeeds = 1.0f;
			int   baseSpeed = (&GetInfo()->speed)[GVillagerStateTableInfo::Infos[state].SpeedId];
			if (town != NULL)
			{
				float base = GetInfo()->BaseForTownNeedsSpeedMod;
				townNeeds = town->desire.CalculateAverageTownNeeds() / GetInfo()->DivisorForTownNeedsSpeedMod;
				if (townNeeds < 0.0f)
				{
					townNeeds = 0.0f;
				}
				else if (townNeeds > 0.5f)
				{
					townNeeds = 0.5f;
				}
				townNeeds += base;
			}
			float maxWood = DiscipleType == VILLAGER_DISCIPLE_TRADER ? (float)GetInfo()->MaxTraderWoodCarried
			                                                         : (float)GetInfo()->MaxWoodCarried;
			float maxFood = DiscipleType == VILLAGER_DISCIPLE_TRADER ? (float)GetInfo()->MaxTraderFoodCarried
			                                                         : (float)GetInfo()->MaxFoodCarried;
			float woodLoad = GetInfo()->SpeedModWhenFullLoadOfWood + 1.0f - ResourceHeld[RESOURCE_TYPE_WOOD] / maxWood;
			float foodLoad = GetInfo()->SpeedModWhenFullLoadOfFood + 1.0f - ResourceHeld[RESOURCE_TYPE_FOOD] / maxFood;
			if (woodLoad < 0.75f)
			{
				woodLoad = 0.75f;
			}
			else if (woodLoad > 1.0f)
			{
				woodLoad = 1.0f;
			}
			if (foodLoad < 0.75f)
			{
				foodLoad = 0.75f;
			}
			else if (foodLoad > 1.0f)
			{
				foodLoad = 1.0f;
			}
			speedScale = baseSpeed * foodLoad * woodLoad * townNeeds * speedScale;
		}
		speed = IsFoodSpeedUp() ? speedScale * GetInfo()->FoodPowerupIncrease : speedScale;
	}
	SetSpeed(speed, true);
}

uint32_t Villager::SetupNothingToDo()
{
	Town*  town = GetTown();
	Abode* abode = GetAbode();
	switch (GRand::GameRand(9, FILEPATH, VILLAGER_LINE(2886)))
	{
	case 0:
		if ((abode != NULL && abode->IsFunctional()) || GRand::GameRand(100, FILEPATH, VILLAGER_LINE(2891)) < 10u)
		{
			SetTopState(VILLAGER_STATE_GO_HOME);
			return true;
		}
	case 1:
	case 2:
	case 3:
		if (abode != NULL)
		{
			SetTopState(VILLAGER_STATE_GO_AND_CHILLOUT_OUTSIDE_HOME);
			return true;
		}
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
		if (town != NULL)
		{
			MapCoords pos;
			if (GetChillOutPos(pos))
			{
				SetupMoveToWithHug(pos, VILLAGER_STATE_SIT_AND_CHILLOUT);
				return true;
			}
		}
	default:
		SetTopState(VILLAGER_STATE_GO_HOME);
		return true;
	}
}

uint32_t Villager::GetChillOutPos(MapCoords& coords)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		MapCoords congregationPos = town->GetCongregationPos();
		float     radius = ((const GTownInfo*)town->info.Get())->ChillOutRadius / 10.0f;
		float     angle = (GRand::GameFloatRand(0.7853982f, FILEPATH, VILLAGER_LINE(2940)) - 0.39269909f) +
		                  GUtils::Get3DAngleFromXZ(congregationPos, Pos);
		coords =
			congregationPos +
			GUtils::GetPosFromAngle(angle, GRand::GameFloatRand(radius * 9.0f, FILEPATH, VILLAGER_LINE(2941)) + radius);
		return 1;
	}
	return 0;
}

int Villager::GetPosOutsideMyHouse(MapCoords& coords)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		float  minDistance = town->GetInfo()->OutsideHouseDistance * 0.5f;
		float  randomDistance = minDistance;
		Abode* abode = GetAbode();
		if (abode != NULL)
		{
			coords = abode->GetPosOutside(3.0f, minDistance, randomDistance);
			return 1;
		}
	}
	return 0;
}

bool32_t Villager::VillagerCreated()
{
	if (TurnsUntilNextStateChange-- == 0)
	{
		TurnsUntilNextStateChange = 0;
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	return true;
}

uint32_t Villager::RemoveFromGame()
{
	DeleteDependancys();
	return Living::RemoveFromGame();
}

MapCoords Villager::GetResourceDropoffPos(RESOURCE_TYPE resource_type)
{
	Town*       town = GetTown();
	MapCoords   tempPos;
	StoragePit* pit = GetStoragePit();
	if (pit != NULL && pit->IsFunctional())
	{
		return pit->GetArrivePos();
	}
	if (town != NULL)
	{
		pit = town->GetStoragePit();
		if (pit == NULL || !pit->IsFunctional())
		{
			town->GetTemporaryResourceStorePotOrPos(Pos, tempPos, resource_type);
			return tempPos;
		}
		return pit->GetArrivePos();
	}
	return Pos;
}

bool32_t Villager::IsFinalState(uint8_t state)
{
	return GVillagerStateTableInfo::Infos[state].isFinalState;
}

HELP_TEXT Villager::GetQueryFirstEnumText()
{
	HELP_TEXT text = GVillagerStateTableInfo::Infos[GetFinalState()].QueryHelpText;
	if (text != HELP_TEXT_NONE)
	{
		return text;
	}
	if (IsDisciple())
	{
		int disciple = DiscipleType;
		if (disciple >= VILLAGER_DISCIPLE_NONE && disciple <= VILLAGER_DISCIPLE_MISSIONARY)
		{
			return (HELP_TEXT)(disciple + 3129);
		}
		if (disciple == VILLAGER_DISCIPLE_TRADER)
		{
			return (HELP_TEXT)2770;
		}
		if (disciple == VILLAGER_DISCIPLE_CRAFTSMAN)
		{
			return (HELP_TEXT)3129;
		}
	}
	return Object::GetQueryFirstEnumText();
}

HELP_TEXT Villager::GetQueryLastEnumText()
{
	HELP_TEXT text = GVillagerStateTableInfo::Infos[GetFinalState()].QueryHelpText;
	if (text == HELP_TEXT_NONE)
	{
		if (IsDisciple())
		{
			int disciple = DiscipleType;
			if (disciple >= VILLAGER_DISCIPLE_NONE && disciple <= VILLAGER_DISCIPLE_MISSIONARY)
			{
				return (HELP_TEXT)(disciple + 3129);
			}
			if (disciple == VILLAGER_DISCIPLE_TRADER)
			{
				return (HELP_TEXT)2770;
			}
			if (disciple == VILLAGER_DISCIPLE_CRAFTSMAN)
			{
				return (HELP_TEXT)3129;
			}
		}
		return Object::GetQueryLastEnumText();
	}
	if (GVillagerStateTableInfo::Infos[GetFinalState()].QueryHelpText > (uint32_t)text)
	{
		return GVillagerStateTableInfo::Infos[action.states[LIVING_ACTION_INDEX_TOP]].QueryHelpText;
	}
	return text;
}

uint32_t Villager::GetFOVHelpMessageSet()
{
	return Object::GetFOVHelpMessageSet();
}

uint32_t Villager::GetFOVHelpCondition()
{
	return Object::GetFOVHelpCondition();
}

bool32_t Villager::SetDiscipleNothingToDo()
{
	MapCoords prayerPos;
	if (FindDisciplePrayerPos(&prayerPos))
	{
		TurnsUntilNextStateChange = 0;
		SetupMoveToWithHug(prayerPos, VILLAGER_STATE_DISCIPLE_NOTHING_TO_DO);
		return true;
	}
	return false;
}

bool32_t Villager::DiscipleNothingToDo()
{
	if (GetTown()->DesireDirty)
	{
		TurnsUntilNextStateChange = GRand::GameRand(10, FILEPATH, VILLAGER_LINE(3125));
	}
	if (--TurnsUntilNextStateChange <= 0)
	{
		if (IsReadyForNewAnimation(1))
		{
			if (!DiscipleDecideWhatToDo())
			{
				TurnsUntilNextStateChange = 300;
				return true;
			}
		}
		else
		{
			TurnsUntilNextStateChange = 1;
		}
	}
	return true;
}

bool32_t Villager::EnterDiscipleNothingToDo(uint8_t current, uint8_t destination)
{
	if (GetTown() != NULL && GetTown()->GetTownCentre() != NULL)
	{
		LookAtObject(GetTown()->GetTownCentre(), LIVING_LOOK_AT_SPEED_FAST);
	}
	return true;
}

bool32_t Villager::FindDisciplePrayerPos(MapCoords* pos)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		TownCentre* centre = town->GetTownCentre();
		if (centre != NULL)
		{
			float angle = (GRand::GameFloatRand(1.5707964f, FILEPATH, VILLAGER_LINE(3163)) - 0.7853982f) +
			              GUtils::Get3DAngleFromXZ(centre->Pos, Pos);
			float distance = GRand::GameFloatRand(4.0f, FILEPATH, VILLAGER_LINE(3164)) + centre->Get2DRadius();
			*pos = centre->Pos + GUtils::GetPosFromAngle(angle, distance);
			return true;
		}
		*pos = town->Pos;
		return true;
	}
	return false;
}

bool32_t Villager::Save(GameOSFile& file)
{
	if (Living::Save(file))
	{
		file.WriteIt(Flags);
		file.WriteIt(food);
		file.WriteIt(LastCheckTurn);
		file.WriteIt(FoodSpeedUp);
		file.WriteIt(CarriedObjectType);
		file.WriteIt(DiscipleType);
		file.WriteIt(ResourceHeld[RESOURCE_TYPE_FOOD]);
		file.WriteIt(ResourceHeld[RESOURCE_TYPE_WOOD]);
		file.WriteIt(is_pregnant);
		file.WritePtr(home);
		file.WritePtr(town);
		file.WritePtr(mother);
		uint32_t reserved = 0;
		file.WriteIt(reserved);
		file.WriteIt(reserved);
		SaveStateFunction(file);
		return true;
	}
	return false;
}

bool32_t Villager::Load(GameOSFile& file)
{
	if (Living::Load(file))
	{
		file.ReadIt(Flags);
		file.ReadIt(food);
		file.ReadIt(LastCheckTurn);
		file.ReadIt(FoodSpeedUp);
		file.ReadIt(CarriedObjectType);
		file.ReadIt(DiscipleType);
		file.ReadIt(ResourceHeld[RESOURCE_TYPE_FOOD]);
		file.ReadIt(ResourceHeld[RESOURCE_TYPE_WOOD]);
		file.ReadIt(is_pregnant);
		file.ReadPtr((GameThing**)&home);
		file.ReadPtr((GameThing**)&town);
		file.ReadPtr((GameThing**)&mother);
		uint32_t reserved = 0;
		file.ReadIt(reserved);
		file.ReadIt(reserved);
		LoadStateFunction(file);
#ifndef VERSION_BW1W100
		DrawYAngle = GetYAngle();
#endif
		return true;
	}
	return false;
}

void Villager::ResolveLoad()
{
	Living::ResolveLoad();
	Game3dObject->SetIsGlowing(GVillagerInfo::GetDiscipleInfo()[DiscipleType].IsGlowing);
}

bool32_t Villager::CallSaveStateFunction(GameOSFile& file, STATE_TYPE state_type)
{
	bool32_t (Villager::*saveState)(GameOSFile&) =
		VillagerStateTableEntry::StateTable[action.states[state_type]].SaveState;
	if (saveState != NULL)
	{
		saveState = VillagerStateTableEntry::StateTable[action.states[state_type]].SaveState;
		return (this->*saveState)(file);
	}
	return false;
}

bool32_t Villager::CallLoadStateFunction(GameOSFile& file, STATE_TYPE state_type)
{
	bool32_t (Villager::*loadState)(GameOSFile&) =
		VillagerStateTableEntry::StateTable[action.states[state_type]].LoadState;
	if (loadState != NULL)
	{
		loadState = VillagerStateTableEntry::StateTable[action.states[state_type]].LoadState;
		return (this->*loadState)(file);
	}
	return false;
}

bool32_t Villager::SaveStateFunction(GameOSFile& file)
{
	bool32_t topSaved = CallSaveStateFunction(file, STATE_TYPE_TOP);
	bool32_t finalSaved = CallSaveStateFunction(file, STATE_TYPE_FINAL);
	return (topSaved | finalSaved) != 0;
}

bool32_t Villager::LoadStateFunction(GameOSFile& file)
{
	uint32_t topLoaded = CallLoadStateFunction(file, STATE_TYPE_TOP);
	uint32_t finalLoaded = CallLoadStateFunction(file, STATE_TYPE_FINAL);
	if ((topLoaded | finalLoaded) > 0)
	{
		return true;
	}
	TurnsUntilNextStateChange =
		GRand::GameRand(VILLAGER_MAX_LOAD_STATE_CHANGE_DELAY, FILEPATH, VILLAGER_LINE(3293)) + 1;
	return false;
}

bool32_t Villager::SaveBuilding(GameOSFile& file)
{
	file.WritePtr(building_site);
	file.WriteIt(BuildPosIndex);
	return true;
}

bool32_t Villager::LoadBuilding(GameOSFile& file)
{
	file.ReadPtr((GameThing**)&building_site);
	file.ReadIt(BuildPosIndex);
	return true;
}

bool32_t Villager::SaveDance(GameOSFile& file)
{
	file.WriteIt(field_0x118);
	file.WriteIt(field_0x11c);
	return true;
}

bool32_t Villager::LoadDance(GameOSFile& file)
{
	file.ReadIt(field_0x118);
	file.ReadIt(field_0x11c);
	return true;
}

bool32_t Villager::SaveWorship(GameOSFile& file)
{
	file.WriteIt(RequestingToGoHome);
	return true;
}

bool32_t Villager::LoadWorship(GameOSFile& file)
{
	file.ReadIt(RequestingToGoHome);
	return true;
}

bool32_t Villager::SaveDead(GameOSFile& file)
{
	file.WriteIt(DeathReason);
	return true;
}

bool32_t Villager::LoadDead(GameOSFile& file)
{
	file.ReadIt(DeathReason);
	return true;
}

bool32_t Villager::SaveInHand(GameOSFile& file)
{
	file.WriteIt(DiscipleOnPickUp);
	return true;
}

bool32_t Villager::LoadInHand(GameOSFile& file)
{
	file.ReadIt(DiscipleOnPickUp);
	return true;
}

bool32_t Villager::SaveFishing(GameOSFile& file)
{
	file.WritePtr(TargetThing);
	return true;
}

bool32_t Villager::LoadFishing(GameOSFile& file)
{
	file.ReadPtr(&TargetThing);
	return true;
}

bool32_t Villager::SaveFarming(GameOSFile& file)
{
	file.WriteIt(FarmPos);
	file.WritePtr(InteractObject.Get());
	return true;
}

bool32_t Villager::LoadFarming(GameOSFile& file)
{
	file.ReadIt(FarmPos);
	file.ReadPtr((GameThing**)&InteractObject);
	return true;
}

bool32_t Villager::SaveFootball(GameOSFile& file)
{
	file.WriteIt(FootballSubStateDone);
	file.WriteIt(FootballSubStateTurns);
	file.WriteIt(field_0x11a);
	file.WritePtr(football.Get());
	return true;
}

bool32_t Villager::LoadFootball(GameOSFile& file)
{
	file.ReadIt(FootballSubStateDone);
	file.ReadIt(FootballSubStateTurns);
	file.ReadIt(field_0x11a);
	file.ReadPtr((GameThing**)&football);
	return true;
}

bool32_t Villager::SaveShepherd(GameOSFile& file)
{
	file.WriteIt(ShepherdWaitTurns);
	file.WriteIt(ShepherdNextState);
	return true;
}

bool32_t Villager::LoadShepherd(GameOSFile& file)
{
	file.ReadIt(ShepherdWaitTurns);
	file.ReadIt(ShepherdNextState);
	return true;
}

bool32_t Villager::SaveInScript(GameOSFile& file)
{
	file.WriteIt(ScriptWanderCentre);
	file.WriteIt(ScriptWanderRadius);
	file.WriteIt(WanderArea.x);
	file.WriteIt(WanderArea.z);
	return true;
}

bool32_t Villager::LoadInScript(GameOSFile& file)
{
	file.ReadIt(ScriptWanderCentre);
	file.ReadIt(ScriptWanderRadius);
	file.ReadIt(WanderArea.x);
	file.ReadIt(WanderArea.z);
	return true;
}

bool32_t Villager::SaveScriptPos(GameOSFile& file)
{
	file.WriteIt(ScriptWanderCentre);
	file.WriteIt(ScriptWanderRadius);
	file.WriteIt(WanderArea.x);
	file.WriteIt(WanderArea.z);
	return true;
}

bool32_t Villager::LoadScriptPos(GameOSFile& file)
{
	file.ReadIt(ScriptWanderCentre);
	file.ReadIt(ScriptWanderRadius);
	file.ReadIt(WanderArea.x);
	file.ReadIt(WanderArea.z);
	return true;
}

bool32_t Villager::SaveFire(GameOSFile& file)
{
	file.WriteIt(FirePos);
	file.WritePtr(fire_effect);
	return true;
}

bool32_t Villager::LoadFire(GameOSFile& file)
{
	file.ReadIt(FirePos);
	file.ReadPtr((GameThing**)&fire_effect);
	return true;
}

bool32_t Villager::SaveDiscipleNothingToDo(GameOSFile& file)
{
	if (DiscipleType == VILLAGER_DISCIPLE_TRADER)
	{
		SaveTrader(file);
	}
	return true;
}

bool32_t Villager::LoadDiscipleNothingToDo(GameOSFile& file)
{
	if (DiscipleType == VILLAGER_DISCIPLE_TRADER)
	{
		LoadTrader(file);
	}
	return true;
}

bool32_t Villager::SaveTrader(GameOSFile& file)
{
	file.WriteIt(TradeResource);
	file.WritePtr(TradeTown);
	return true;
}

bool32_t Villager::LoadTrader(GameOSFile& file)
{
	file.ReadIt(TradeResource);
	file.ReadPtr((GameThing**)&TradeTown);
	return true;
}

bool32_t Villager::SaveInspectObject(GameOSFile& file)
{
	file.WritePtr(TargetThing);
	return true;
}

bool32_t Villager::LoadInspectObject(GameOSFile& file)
{
	file.ReadPtr(&TargetThing);
	return true;
}

bool32_t Villager::SaveReaction(GameOSFile& file)
{
	return true;
}

bool32_t Villager::LoadReaction(GameOSFile& file)
{
	return true;
}

bool32_t Villager::SaveClearArea(GameOSFile& file)
{
	file.WriteIt(ClearAreaPos);
	file.WriteIt(ClearAreaRadius);
	return true;
}

bool32_t Villager::LoadClearArea(GameOSFile& file)
{
	file.ReadIt(ClearAreaPos);
	file.ReadIt(ClearAreaRadius);
	return true;
}

bool32_t Villager::SaveBreeder(GameOSFile& file)
{
	file.WritePtr(Partner.Get());
	file.WriteIt(WanderArea);
	return true;
}

bool32_t Villager::LoadBreeder(GameOSFile& file)
{
	file.ReadPtr((GameThing**)&Partner);
	file.ReadIt(WanderArea);
	return true;
}

bool32_t Villager::SaveForesting(GameOSFile& file)
{
	file.WritePtr(TargetThing);
	return true;
}

bool32_t Villager::LoadForesting(GameOSFile& file)
{
	file.ReadPtr(&TargetThing);
	return true;
}

bool32_t Villager::SaveFootPath(GameOSFile& file)
{
	file.WritePtr(footpath);
	file.WritePtr(footpath_node);
	return true;
}

bool32_t Villager::LoadFootPath(GameOSFile& file)
{
	file.ReadPtr((GameThing**)&footpath);
	file.ReadPtr((GameThing**)&footpath_node);
	return true;
}

bool32_t Villager::SaveInspectionReaction(GameOSFile& file)
{
	file.WriteIt(InspectDistance);
	file.WriteIt(InspectTurnsUntilApproach);
	return true;
}

bool32_t Villager::LoadInspectionReaction(GameOSFile& file)
{
	file.ReadIt(InspectDistance);
	file.ReadIt(InspectTurnsUntilApproach);
	return true;
}

bool32_t Villager::SaveMagicTreeReaction(GameOSFile& file)
{
	file.WriteIt(BewilderedTreeIndex);
	file.WriteIt(BewilderedTreesSeen);
	return true;
}

bool32_t Villager::LoadMagicTreeReaction(GameOSFile& file)
{
	file.ReadIt(BewilderedTreeIndex);
	file.ReadIt(BewilderedTreesSeen);
	return true;
}

bool32_t Villager::SaveHideInBuilding(GameOSFile& file)
{
	file.WriteIt(HideTurns);
	file.WriteIt(HidePos);
	return true;
}

bool32_t Villager::LoadHideInBuilding(GameOSFile& file)
{
	file.ReadIt(HideTurns);
	file.ReadIt(HidePos);
	return true;
}

bool32_t Villager::SaveShieldReaction(GameOSFile& file)
{
	file.WriteIt(ReactionPos);
	return true;
}

bool32_t Villager::LoadShieldReaction(GameOSFile& file)
{
	file.ReadIt(ReactionPos);
	return true;
}

uint32_t Villager::SetVillagerDisciple(GameThing* interacted_thing, VILLAGER_DISCIPLE disciple, int unused)
{
	bool invalidDisciple = disciple < 0 || disciple >= VILLAGER_DISCIPLE_LAST;
	if (invalidDisciple)
	{
		return false;
	}
	if (GetTown() != NULL)
	{
		VILLAGER_DISCIPLE oldDisciple = (VILLAGER_DISCIPLE)DiscipleType;
		if (oldDisciple != disciple)
		{
			GetTown()->stats.DecrementNumOfDisciples(oldDisciple);
			GetTown()->stats.IncrementNumOfDisciples(disciple);
		}
	}
	if (disciple != VILLAGER_DISCIPLE_NONE)
	{
		Flags = Flags & ~VILLAGER_FLAG_DISCIPLE_FOLLOWER | VILLAGER_FLAG_DISCIPLE;
		Game3dObject->SetIsGlowing(GVillagerInfo::GetDiscipleInfo()[disciple].IsGlowing);
		GetPlayer();
	}
	else
	{
		Flags &= ~(VILLAGER_FLAG_DISCIPLE | VILLAGER_FLAG_DISCIPLE_FOLLOWER);
		Game3dObject->SetIsGlowing(false);
	}
	DiscipleType = (uint8_t)disciple;
	return true;
}

uint32_t Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	if (villager == this)
	{
		return DiscipleType;
	}
	if (IsFunctional() && status->GetPlayer() == GetPlayer() && villager->GetPlayer() == GetPlayer() &&
	    IsSexuallyActive() && villager->IsSexuallyActive() && GetInfo()->sex != villager->GetInfo()->sex)
	{
		return VILLAGER_DISCIPLE_BREEDER;
	}
	return VILLAGER_DISCIPLE_NONE;
}

void Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE disciple)
{
	GlowVillager::g_the_one = Game3dObject;
	switch (disciple)
	{
	case VILLAGER_DISCIPLE_MISSIONARY:
		GlowVillager::g_index = 0;
		break;
	case VILLAGER_DISCIPLE_FARMER:
		GlowVillager::g_index = 1;
		break;
	case VILLAGER_DISCIPLE_BREEDER:
		GlowVillager::g_index = 2;
		break;
	case VILLAGER_DISCIPLE_FORESTER:
		GlowVillager::g_index = 3;
		break;
	case VILLAGER_DISCIPLE_BUILDER:
		GlowVillager::g_index = 4;
		break;
	case VILLAGER_DISCIPLE_PROTECTION:
		GlowVillager::g_index = 5;
		break;
	case VILLAGER_DISCIPLE_FISHERMAN:
		GlowVillager::g_index = 6;
		break;
	case VILLAGER_DISCIPLE_CRAFTSMAN:
		GlowVillager::g_index = 7;
		break;
	case VILLAGER_DISCIPLE_TRADER:
		GlowVillager::g_index = 5;
		break;
	case VILLAGER_DISCIPLE_CHANGE_HOUSE:
		GlowVillager::g_index = 8;
		break;
	}
}

void Villager::DebugValidateState() {}

void Villager::ForceMoveVillagerToAbode(Abode* abode)
{
	Town* oldTown = GetTown();
	Town* newTown = abode->GetTown();
	if (oldTown != newTown)
	{
		if (oldTown != NULL)
		{
			oldTown->RemoveVillager(this);
		}
		float percentFull;
		if (IsChild())
		{
			percentFull = abode->GetPercentAbodeFullWithChildren();
		}
		else
		{
			percentFull = abode->GetPercentAbodeFullWithAdults();
		}
		if (percentFull >= 1.0f)
		{
			newTown->AddVillagerToTown(this);
			return;
		}
	}
	abode->AddVillagerToAbode(this);
}

void Villager::SetSkeleton(bool32_t skeleton)
{
	static LH3DMesh* skeletonMesh = LH3DMesh::GetPackedMesh(VILLAGER_SKELETON_MESH);

	status = (status & ~LIVING_STATUS_SKELETON) | ((skeleton & 1) << 6);
	if (IsSkeleton())
	{
		if (Game3dObject != NULL)
		{
			Game3dObject->SetMesh(skeletonMesh, skeletonMesh, skeletonMesh);
		}
	}
	else
	{
		uint32_t teenAge = GetInfo()->TeenAge;
		if (GetAge() < teenAge)
		{
			if (Game3dObject != NULL)
			{
				Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh),
				                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshMedium),
				                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshLow));
			}
		}
		else if (Game3dObject != NULL)
		{
			Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetDetailMesh(0)), LH3DMesh::GetPackedMesh(GetDetailMesh(1)),
			                      LH3DMesh::GetPackedMesh(GetDetailMesh(2)));
		}
	}
	SetScaleForAge(GetAge());
}

void Villager::InsertMapObject()
{
	Object::InsertMapObject();
}

bool32_t Villager::IsReachable()
{
	if (!IsAvailable())
	{
		return false;
	}
	if ((Flags & VILLAGER_FLAG_AT_HOME) == VILLAGER_FLAG_AT_HOME)
	{
		return false;
	}
	if ((GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) ==
	    GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)
	{
		return false;
	}
	return action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING;
}

bool32_t Villager::ValidForPlaceInHand(GInterfaceStatus* status)
{
	return IsReachable() != false;
}

bool32_t Villager::CanBecomeAPhysicsObject()
{
	return IsReachable();
}

uint32_t Villager::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                               const MapCoords* coords, int from_other_player)
{
	if (type == RESOURCE_TYPE_FOOD)
	{
		PickupFood(amount);
		if (poisoned)
		{
			SetPoisoned(1);
		}
	}
	else if (type == RESOURCE_TYPE_WOOD)
	{
		PickupWood(amount, 0);
	}
	return 0;
}

uint32_t Villager::LookAtPreviousStateReactToTownEmergency()
{
	return action.states[LIVING_ACTION_INDEX_PREVIOUS];
}

void Villager::SetTown(Town* town)
{
	this->town = town;
}

bool32_t Villager::ScriptInCrowd()
{
	if (IsReadyForNewAnimation(1))
	{
		SetStateAnim();
		action.TurnsSinceStateChange = 0;
	}
	return true;
}

bool32_t Villager::SaveLanded(GameOSFile& file)
{
	return true;
}

bool32_t Villager::LoadLanded(GameOSFile& file)
{
	return true;
}

int Villager::CallIntoAnimationFunction(uint8_t state)
{
	uint32_t (Villager::*transition)(uint8_t, uint8_t) =
		VillagerStateTableEntry::StateTable[action.states[LIVING_ACTION_INDEX_TOP]].TransitionAnimation;
	if (transition)
	{
		uint32_t (Villager::*function)(uint8_t, uint8_t) =
			VillagerStateTableEntry::StateTable[action.states[LIVING_ACTION_INDEX_TOP]].TransitionAnimation;
		int result = (this->*function)(1, state);
		if (result != -1)
		{
			Flags = Flags & ~VILLAGER_FLAG_INTO_ANIMATION_PENDING | VILLAGER_FLAG_IN_TRANSITION_ANIMATION;
		}
		return result;
	}
	return -1;
}

int Villager::CallOutofAnimationFunction(uint8_t state)
{
	if (GVillagerStateTableInfo::Infos[state].SkipOutofAnimation == false)
	{
		uint32_t (Villager::*transition)(uint8_t, uint8_t) =
			VillagerStateTableEntry::StateTable[action.states[LIVING_ACTION_INDEX_TOP]].TransitionAnimation;
		if (transition)
		{
			uint32_t (Villager::*function)(uint8_t, uint8_t) =
				VillagerStateTableEntry::StateTable[action.states[LIVING_ACTION_INDEX_TOP]].TransitionAnimation;
			int result = (this->*function)(0, state);
			if (result != -1)
			{
				Flags |= VILLAGER_FLAG_IN_TRANSITION_ANIMATION | VILLAGER_FLAG_INTO_ANIMATION_PENDING;
			}
			return result;
		}
	}
	return -1;
}

MissionaryControl::MissionaryControl() {}

MissionaryControl::MissionaryControl(Villager* missionary, GPlayer* player)
{
	Missionary = missionary;
	reaction = Reaction::CreateReaction(this, REACTION_REACT_TO_MISSIONARY, player, 0);
}

MissionaryControl::~MissionaryControl() {}

float MissionaryControl::GetImpressiveValue()
{
	if (Missionary != NULL)
	{
		return GLandBalance::GetValue(GLandBalance::LAND_BALANCE_3) * Missionary->GetInfo()->MissionaryImpressiveValue;
	}
	return 0.0f;
}

void MissionaryControl::Process()
{
	bool orphaned = Missionary == NULL || reaction == NULL;
	if (orphaned)
	{
		ToBeDeleted(0);
		return;
	}
	if (Missionary->IsAvailable() != true || Missionary->DiscipleType != VILLAGER_DISCIPLE_MISSIONARY)
	{
		ToBeDeleted(0);
		Missionary = NULL;
		if (reaction->IsAvailable())
		{
			reaction->ToBeDeleted(0);
		}
		reaction = NULL;
		return;
	}
	if (reaction->IsAvailable() != true)
	{
		ToBeDeleted(0);
		Missionary = NULL;
		reaction = NULL;
		return;
	}
	SetPos(Missionary->Pos);
}

void MissionaryControl::ToBeDeleted(int delete_now)
{
	if (Missionary != NULL && Missionary->DiscipleType == VILLAGER_DISCIPLE_MISSIONARY)
	{
		Missionary->SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	}
	GameThingWithPos::ToBeDeleted(delete_now);
}

bool32_t MissionaryControl::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadPtr((GameThing**)&Missionary);
		file.ReadPtr((GameThing**)&reaction);
		return true;
	}
	return false;
}

bool32_t MissionaryControl::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WritePtr(Missionary);
		file.WritePtr(reaction);
		return true;
	}
	return false;
}

float MissionaryControl::GetImpressiveValue(Living* living, Reaction* reaction)
{
	float multiplier = reaction->GetDefaultReactionMultiplier(living);
	float value = GetImpressiveValue() * multiplier;
	float distance = GUtils::GetDistanceInMetres(living->Pos, Pos);
	float belief = GBelief::DistanceChangeToBelief(distance, reaction->GetInfo()->MaxReactionDistance);
	return living->GetBoredomMultiplier(reaction) * belief * value;
}

void Villager::WallhugValidate() {}

void Villager::MoveToObjectValidate()
{
	WallhugValidate();
	if (target.Get() != NULL && target->IsAvailable() != true)
	{
		target = NULL;
	}
}

void Villager::MoveOnStructureValidate()
{
	WallhugValidate();
	if (StructureMovingOn != NULL && StructureMovingOn->IsAvailable())
	{
		StructureMovingOn = NULL;
	}
}

void Villager::ReactionValidate()
{
	if (ReactionObject.Get() == NULL || ReactionObject->IsAvailable() != true ||
	    (GInfoArrays::ReactionInfos[reaction->GetFunctionIndex()].WhetherReactionFinishesIfInitiatorInHand &&
	     ReactionObject->IsInMagicHand()))
	{
		PopFromPrevious();
	}
}

void Villager::SexValidate()
{
	if (TargetThing != NULL && TargetThing->IsAvailable() != true)
	{
		TargetThing = NULL;
	}
}

void Villager::WallhugAndReactionValidate()
{
	WallhugValidate();
	ReactionValidate();
}

void Villager::ClosestObjectValidate()
{
	if (TargetThing != NULL && TargetThing->IsAvailable() != true)
	{
		TargetThing = NULL;
	}
}

void Villager::GetFinalDestPos(MapCoords* out)
{
	Living::GetFinalDestPos(out);
}

uint32_t Villager::ThrowObjectFromHand(GInterfaceStatus* status, bool32_t dont_replant)
{
	GetPlayer();
	if (dont_replant && (GetPlayer() == NULL || GetPlayer()->IsMemberOfThisPlayer(status)))
	{
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	}
	return Object::ThrowObjectFromHand(status, dont_replant);
}

bool32_t Villager::IsDrowning()
{
	return action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_DROWNING;
}

void Villager::SetLife(float life)
{
	if (GetLife() > 0.7f && life < 0.7f)
	{
		IncreaseNumWoundedInTown();
	}
	else if (GetLife() < 0.7f && life > 0.7f)
	{
		DecreaseNumWoundedInTown();
	}
	Object::SetLife(life);
}

void Villager::IncreaseNumWoundedInTown()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		town->stats.NumWounded++;
	}
}

void Villager::DecreaseNumWoundedInTown()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		town->stats.NumWounded--;
	}
}

void Villager::FindChildrenAndOrphanThem()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		for (Abode* abode = town->AbodeList.head; abode != NULL; abode = abode->next)
		{
			for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
			{
				if (villager->mother == this)
				{
					villager->MakeChildOrphaned(this);
				}
			}
		}
		for (Villager* villager = town->HomelessList.head; villager != NULL; villager = villager->next)
		{
			if (villager->mother == this)
			{
				villager->MakeChildOrphaned(this);
			}
		}
	}
}

#ifndef VERSION_BW1W100
bool32_t Villager::IsMovingForAnimation()
{
	return GVillagerStateTableInfo::Infos[action.states[LIVING_ACTION_INDEX_TOP]].isMovingForAnimation;
}
#endif

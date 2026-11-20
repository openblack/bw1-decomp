#include "CellSize.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "Villager.h"

#include <windows.h> /* For min */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */

#include "Arena.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "Dance.h"
#include "DanceAnimEntry.h"
#include "DanceGroup.h"
#include "Field.h"
#include "Football.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "MagicVortex.h"
#include "Rand.h"
#include "SpeedThreshold.h"
#include "Town.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"

#define VILLAGER_LOOK_AT_FLYING_OBJECT_MIN_HEIGHT 3.0f
#define VILLAGER_INSPECT_CREATURE_LOOK_DISTANCE   8.0f
#define VILLAGER_WATCH_FIGHT_BORED_SECONDS        15.0f
#define VILLAGER_LEADER_DESIRE_SCALE              10.0f
#define VILLAGER_LEADER_DESIRE_PER_ANIM           3
#define VILLAGER_LEADER_ANIM_COUNT                3
#define VILLAGER_ANIM_ROLL_RANGE                  100
#define VILLAGER_ANIM_ROLL_STEP                   25.0

static int Unused = 0;

uint32_t Villager::MoveToPosAnimation()
{
	bool32_t carrying = false;
	switch (CarriedObjectType)
	{
	case CARRIED_OBJECT_AXE:
	case CARRIED_OBJECT_FISHING_ROD:
	case CARRIED_OBJECT_CROOK:
	case CARRIED_OBJECT_BAG:
	case CARRIED_OBJECT_MALLET_HEAVY:
	case CARRIED_OBJECT_SCYTHE:
	case CARRIED_OBJECT_SPADE:
	case CARRIED_OBJECT_WOOD:
	case CARRIED_OBJECT_TREE_1:
	case CARRIED_OBJECT_TREE_2:
	case CARRIED_OBJECT_TREE_3:
		carrying = true;
		break;
	}
	if (!(GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		if (GetLife() <= GetInfo()->LifeWhenCrawlsWounded)
		{
			return ANM_P_CRAWL_INJURED;
		}
		if (GetLife() <= GetInfo()->LifeWhenWalksWounded)
		{
			return ANM_P_WALK_INJURED;
		}
	}
#ifdef VERSION_BW1WCI
	if (GetInfo()->sex == SEX_MALE)
	{
		if (GetSpeed() <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_MAN].WalkThreshold)
		{
			return carrying ? ANM_P_CARRY_AXE : ANM_P_WALK_MAN;
		}
		if (GetSpeed() <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_MAN].RunThreshold)
		{
			return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_RUN_MAN;
		}
		return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_SPRINT_RUN_MAN;
	}
	if (GetSpeed() <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_NORMAL].WalkThreshold)
	{
		return carrying ? ANM_P_CARRY_AXE : ANM_P_WALK_WOMAN;
	}
	if (GetSpeed() <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_NORMAL].RunThreshold)
	{
		return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_RUN_WOMAN;
	}
	return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_SPRINT_RUN_WOMAN;
#else
	if (GetInfo()->sex == SEX_MALE)
	{
		if (speed <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_MAN].WalkThreshold)
		{
			return carrying ? ANM_P_CARRY_AXE : ANM_P_WALK_MAN;
		}
		if (speed <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_MAN].RunThreshold)
		{
			return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_RUN_MAN;
		}
		return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_SPRINT_RUN_MAN;
	}
	if (speed <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_NORMAL].WalkThreshold)
	{
		return carrying ? ANM_P_CARRY_AXE : ANM_P_WALK_WOMAN;
	}
	if (speed <= GSpeedThreshold::InfoList[SPEED_THRESHOLD_VILLAGER_NORMAL].RunThreshold)
	{
		return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_RUN_WOMAN;
	}
	return carrying ? ANM_P_CARRY_OBJECT_RUN : ANM_P_SPRINT_RUN_WOMAN;
#endif
}

uint32_t Villager::WatchFightAnimation()
{
	GetReaction();
	GArena* arena = dynamic_cast<GArena*>(ReactionObject.Get());
	if (arena == NULL || !arena->IsAvailable())
	{
		return ANM_P_STAND;
	}
	Creature* firstCreature = arena->Creatures[0];
	Creature* secondCreature = arena->Creatures[1];
	if (firstCreature == NULL || secondCreature == NULL)
	{
		return ANM_P_STAND;
	}
	Creature* winner;
	if (GetTown() != NULL)
	{
		uint32_t firstAttitude = GetTown()->GetTownAttitudeToCreature(firstCreature);
		uint32_t secondAttitude = GetTown()->GetTownAttitudeToCreature(secondCreature);
		if (firstAttitude == TOWN_ATTITUDE_TO_CREATURE_FEAR)
		{
			if (secondAttitude == TOWN_ATTITUDE_TO_CREATURE_FEAR)
			{
				winner = GAME_RAND(105, 2) == 0 ? firstCreature : secondCreature;
			}
			else
			{
				winner = secondCreature;
			}
		}
		else if (secondAttitude == TOWN_ATTITUDE_TO_CREATURE_FEAR)
		{
			winner = firstCreature;
		}
		else
		{
			winner = GAME_RAND(117, 2) == 0 ? firstCreature : secondCreature;
		}
	}
	else
	{
		winner = GAME_RAND(122, 2) == 0 ? firstCreature : secondCreature;
	}
	Creature* loser = winner == firstCreature ? secondCreature : firstCreature;
	float     winnerSeconds = (float)((GGame::g_game->data.GameTurn - winner->GameTurnOfLastFightImpact) /
	                                  (1000 / GGameInfo::Info.MillisecondsPerGameTurn));
	float     loserSeconds = (float)((GGame::g_game->data.GameTurn - loser->GameTurnOfLastFightImpact) /
	                                 (1000 / GGameInfo::Info.MillisecondsPerGameTurn));
	if (winnerSeconds > VILLAGER_WATCH_FIGHT_BORED_SECONDS && loserSeconds > VILLAGER_WATCH_FIGHT_BORED_SECONDS)
	{
		switch (GAME_RAND(129, 3))
		{
		case 0:
			return ANM_P_TALKING_AND_POINTING;
		case 1:
			return ANM_P_TALK_TO_NEIGHBOUR;
		}
		return ANM_P_GOSSIP_MAN;
	}
	if (loserSeconds < winnerSeconds)
	{
		return ANM_P_CROWD_WON + GAME_RAND(142, 2);
	}
	return ANM_P_CROWD_LOST + GAME_RAND(146, 2);
}

uint32_t Villager::LandedAnimation()
{
	uint16_t side = StatusFallSide;
	if (side == 0)
	{
		return CarriedObjectType != CARRIED_OBJECT_NONE ? ANM_P_LANDED_FROM_FEET_CARRY_OBJECT : ANM_P_LANDED_FROM_FEET;
	}
	return side != 1 ? ANM_P_LANDED_FROM_BACK : ANM_P_LANDED;
}

uint32_t Villager::DyingAnimation()
{
	if (Pos.IsWater())
	{
		return ANM_P_INTO_DEAD_DROWNED;
	}
	return StatusFallSide == 2 ? ANM_P_DEAD2 : ANM_P_DYING;
}

uint32_t Villager::DeadAnimation()
{
	if (Pos.IsWater())
	{
		return ANM_P_DEAD_DROWNED;
	}
	return StatusFallSide == 2 ? ANM_P_DEAD2 : ANM_P_DEAD1;
}

uint32_t Villager::KissingAnimation()
{
	return GetInfo()->sex == SEX_MALE ? ANM_P_COUPLE_KISS_MAN : ANM_P_COUPLE_KISS_WOMAN;
}

uint32_t Villager::ThrownAnimation()
{
	if (GetLife() <= 0.0)
	{
		return ANM_P_THROWN_DEAD;
	}
	return LandscapeVortex::IsVillagerBeingThrownByAVortex(this) ? ANM_P_THROWN_VORTEX : ANM_P_THROWN;
}

uint32_t Villager::ConsiderDanceAnimation()
{
	if (dance_group.Get() != NULL)
	{
		return DanceAnimation();
	}
	return ANM_P_STAND;
}

uint32_t Villager::DanceAnimation()
{
	if (dance_group.Get() == NULL)
	{
		return ANM_P_STAND;
	}
	if (dance_group->Dancer != NULL && dance_group->Dancer->State == DANCE_STATE_WAITING)
	{
		return ANM_P_SITTING_DOWN1_SITTING;
	}
	switch (dance_group->Action.Kind)
	{
	case DANCE_GROUP_MOVEMENT_KIND_ROTATE_DANCERS:
		if (dance_group->Dancer != NULL)
		{
			if (dance_group->Dancer->Speed != 0.0f)
			{
				return MoveToPosAnimation();
			}
			return ANM_P_STAND;
		}
		if (dance_group->behaviour->Speed != 0.0f)
		{
			return MoveToPosAnimation();
		}
		return ANM_P_STAND;
	case DANCE_GROUP_MOVEMENT_KIND_CHANGE_SIZE:
	case DANCE_GROUP_MOVEMENT_KIND_MOVE_TO_POS:
		return GetInfo()->sex == SEX_MALE ? MoveToPosAnimation() : MoveToPosAnimation();
	case DANCE_GROUP_MOVEMENT_KIND_RANDOM_DANCE:
		if (GetInfo()->sex == SEX_MALE)
		{
			return ANM_P_M_DANCE_A + GAME_RAND(290, 3);
		}
		return ANM_P_F_DANCE_A + GAME_RAND(294, 3);
	case DANCE_GROUP_MOVEMENT_KIND_PRAY:
	case DANCE_GROUP_MOVEMENT_KIND_SEX:
	case DANCE_GROUP_MOVEMENT_KIND_WORSHIP_CREATURE:
		return ANM_P_PRAY;
	case DANCE_GROUP_MOVEMENT_KIND_FUNKY:
		return GetInfo()->sex == SEX_MALE ? ANM_P_DANCE_X : ANM_P_DANCE_X_PARTNER;
	case DANCE_GROUP_MOVEMENT_KIND_ROTATE_SHAPE:
		if (IsMoving())
		{
			return GetInfo()->sex == SEX_MALE ? ANM_P_DANCE_X : ANM_P_DANCE_X_PARTNER;
		}
		return ANM_P_STAND;
	case DANCE_GROUP_MOVEMENT_KIND_SAD:
		return ANM_P_CROWD_LOST;
	case DANCE_GROUP_MOVEMENT_KIND_HAPPY:
		return ANM_P_CROWD_WON;
	case DANCE_GROUP_MOVEMENT_KIND_LOOKING_FOR_SOMETHING:
		return ANM_P_LOOKING_FOR_SOMETHING;
	case DANCE_GROUP_MOVEMENT_KIND_MOURNING:
		return ANM_P_MOURNING;
	case DANCE_GROUP_MOVEMENT_KIND_TALK:
		return ANM_P_TALK_TO_NEIGHBOUR;
	case DANCE_GROUP_MOVEMENT_KIND_TALK_AND_POINT:
		return ANM_P_TALKING_AND_POINTING;
	case DANCE_GROUP_MOVEMENT_KIND_DANCE_X:
		return ANM_P_DANCE_X;
	case DANCE_GROUP_MOVEMENT_KIND_DANCE_X_PARTNER:
		return ANM_P_DANCE_X_PARTNER;
	case DANCE_GROUP_MOVEMENT_KIND_FEMALE_A:
		return ANM_P_F_DANCE_A;
	case DANCE_GROUP_MOVEMENT_KIND_FEMALE_B:
		return ANM_P_F_DANCE_B;
	case DANCE_GROUP_MOVEMENT_KIND_FEMALE_C:
		return ANM_P_F_DANCE_C;
	case DANCE_GROUP_MOVEMENT_KIND_MALE_A:
		return ANM_P_M_DANCE_A;
	case DANCE_GROUP_MOVEMENT_KIND_MALE_B:
		return ANM_P_M_DANCE_B;
	case DANCE_GROUP_MOVEMENT_KIND_MALE_C:
		return ANM_P_M_DANCE_C;
	case DANCE_GROUP_MOVEMENT_KIND_PLAY_ANIM:
#ifdef VERSION_BW1WCI
		if (IsMaleVillager())
		{
			return DanceAnimEntry::GetDanceAnimTable()[dance_group->Action.Param1.Direction].MaleAnim;
		}
		return DanceAnimEntry::GetDanceAnimTable()[dance_group->Action.Param1.Direction].FemaleAnim;
#else
		if (IsMaleVillager())
		{
			return DanceAnimEntry::GetDanceAnimTable()[dance_group->Action.Param1.Integer].MaleAnim;
		}
		return DanceAnimEntry::GetDanceAnimTable()[dance_group->Action.Param1.Integer].FemaleAnim;
#endif
	case DANCE_GROUP_MOVEMENT_KIND_STAND_STILL:
		if (dance_group->Parent != NULL && dance_group->Parent->Action.Kind == DANCE_GROUP_MOVEMENT_KIND_ROTATE_DANCERS)
		{
			return MoveToPosAnimation();
		}
		return ANM_P_STAND;
	}
	return ANM_P_STAND;
}

uint32_t Villager::LookAtLargeObjectAnimation()
{
	return StateTurnsTotal / 2 < StateTurnsLeft ? ANM_P_LOOK_AT_HAND : ANM_P_LOOKING_FOR_SOMETHING;
}

uint32_t Villager::FarmingAnimation()
{
	return ((Field*)TargetThing)->GetFieldActivity(0) != 1 ? ANM_P_FARMER : ANM_P_FARMER_TURNING_SOIL;
}

uint32_t Villager::ForesteringAnimation()
{
	return ANM_P_CHOPPING_TREE;
}

uint32_t Villager::LookAtFlyingObjectAnimation()
{
	if (GVillagerStateTableInfo::Infos[action.states[LIVING_ACTION_INDEX_PREVIOUS]].Anim == ANM_DONT_DRAW)
	{
		return ANM_DONT_DRAW;
	}
	if (ReactionObject.Get() != NULL)
	{
		float altitude = ReactionObject->Pos.altitude;
		if (altitude - LH3DIsland::GetAltitude(ReactionObject->Pos) > VILLAGER_LOOK_AT_FLYING_OBJECT_MIN_HEIGHT)
		{
			return ANM_P_LOOK_AT_HAND;
		}
	}
	return ANM_P_STAND;
}

uint32_t Villager::LeaderAttractAttentionAnimation()
{
	if (GetTown() != NULL)
	{
		uint32_t desire = (uint32_t)(GetDesireForFood() * VILLAGER_LEADER_DESIRE_SCALE);
		return GetInfo()->LAttractAnim[min(desire / VILLAGER_LEADER_DESIRE_PER_ANIM, VILLAGER_LEADER_ANIM_COUNT - 1)];
	}
	return ANM_P_STAND;
}

uint32_t Villager::LeaderShowNeedAnimation()
{
	if (GetTown() != NULL)
	{
		uint32_t desire = (uint32_t)(GetDesireForFood() * VILLAGER_LEADER_DESIRE_SCALE);
		return GetInfo()->LNeedAnim[min(desire / VILLAGER_LEADER_DESIRE_PER_ANIM, VILLAGER_LEADER_ANIM_COUNT - 1)];
	}
	return ANM_P_STAND;
}

uint32_t Villager::FootballWaitForKickOffAnimation()
{
	double roll = GAME_RAND(493, VILLAGER_ANIM_ROLL_RANGE);
	if (roll < VILLAGER_ANIM_ROLL_STEP)
	{
		return ANM_P_WAITING_FOR_KICK_OFF;
	}
	if (roll < VILLAGER_ANIM_ROLL_STEP * 2)
	{
		return ANM_P_WAITING_FOR_KICK_OFF_2;
	}
	return roll < VILLAGER_ANIM_ROLL_STEP * 3 ? ANM_P_WAITING_FOR_KICK_OFF_3 : ANM_P_WAITING_FOR_KICK_OFF_4;
}

uint32_t Villager::FootballGoalKeeperAnimation()
{
	return ANM_P_GOALKEEPER;
}

uint32_t Villager::FootballAttackerAnimation()
{
	return ANM_P_STAND;
}

uint32_t Villager::FootballDefenderAnimation()
{
	return ANM_P_STAND;
}

uint32_t Villager::FootballWatchMatchAnimation()
{
	if (GetTown() != NULL && GetFootball() != NULL)
	{
		switch (GetFootball()->PlayState)
		{
		case Football::FOOTBALL_STATES_3:
			switch (GAME_RAND(539, 3))
			{
			case 0:
				return ANM_P_STAND_DESPAIR_1;
			case 1:
				return ANM_P_CROWD_WON;
			case 2:
				return ANM_P_CROWD_WON_2;
			}
		case Football::FOOTBALL_STATES_2:
			return ANM_P_CROWD_UNIMPRESSED_1;
		default:
			switch (GAME_RAND(552, 3))
			{
			case 0:
				return ANM_P_TALKING_AND_POINTING;
			case 1:
				return ANM_P_TALK_TO_NEIGHBOUR;
			case 2:
				return ANM_P_GOSSIP_MAN;
			}
		}
	}
	return ANM_P_GOSSIP_MAN;
}

uint32_t Villager::FootballMatchPausedAnimation()
{
	double roll = GAME_RAND(572, VILLAGER_ANIM_ROLL_RANGE);
	if (roll < VILLAGER_ANIM_ROLL_STEP)
	{
		return ANM_P_LOOKING_FOR_SOMETHING;
	}
	if (roll < VILLAGER_ANIM_ROLL_STEP * 2)
	{
		return ANM_P_STAND;
	}
	return roll < VILLAGER_ANIM_ROLL_STEP * 3 ? ANM_P_WAITING_FOR_BALL : ANM_P_WAITING_FOR_BALL_2;
}

uint32_t Villager::FootballCrowdGoalScored()
{
	double roll = GAME_RAND(595, VILLAGER_ANIM_ROLL_RANGE);
	if (roll < VILLAGER_ANIM_ROLL_STEP)
	{
		return ANM_P_CROWD_IMPRESSED_1;
	}
	if (roll < VILLAGER_ANIM_ROLL_STEP * 2)
	{
		return ANM_P_CROWD_WON;
	}
	return roll < VILLAGER_ANIM_ROLL_STEP * 3 ? ANM_P_CROWD_WON_2 : ANM_P_CROWD_UNIMPRESSED_1;
}

uint32_t Villager::BuildingAnimation()
{
	if ((Flags & VILLAGER_FLAG_IN_TRANSITION_ANIMATION) && Game3dObject->GetCurrentAnim() != NULL)
	{
		switch (Game3dObject->GetCurrentAnim()->GetIndexInCache())
		{
		case ANM_P_INTO_HAMMERING:
			CarriedObjectType = CARRIED_OBJECT_HAMMER;
			return ANM_P_HAMMERING;
		case ANM_P_INTO_SAW_WOOD:
			CarriedObjectType = CARRIED_OBJECT_SAW;
			return ANM_P_SAW_WOOD;
		case ANM_P_INTO_SLEDGEHAMMER:
			CarriedObjectType = CARRIED_OBJECT_MALLET_HEAVY;
			return ANM_P_SLEDGEHAMMER;
		}
	}
	switch (GAME_RAND(635, 3))
	{
	case 0:
		CarriedObjectType = CARRIED_OBJECT_HAMMER;
		return ANM_P_HAMMERING;
	case 1:
		CarriedObjectType = CARRIED_OBJECT_SAW;
		return ANM_P_SAW_WOOD;
	}
	CarriedObjectType = CARRIED_OBJECT_MALLET_HEAVY;
	return ANM_P_SLEDGEHAMMER;
}

uint32_t Villager::InspectCreatureAnimation()
{
	if ((IsWoman() || IsChild()) && GAME_RAND(657, 3) == 0)
	{
		return ANM_P_SCARED_STIFF;
	}
	if (ReactionObject.Get() != NULL &&
	    GUtils::GetDistanceInMetres(Pos, ReactionObject->Pos) < VILLAGER_INSPECT_CREATURE_LOOK_DISTANCE &&
	    GAME_RAND(667, 3) == 0)
	{
		return ANM_P_LOOK_AT_HAND;
	}
	return GAME_RAND(673, 8) > 2 ? ANM_P_TALKING_AND_POINTING : ANM_P_STAND;
}

uint32_t Villager::RespectCreatureAnimation()
{
	switch (GAME_RAND(692, 5))
	{
	case 0:
		return ANM_P_CROWD_IMPRESSED_1;
	case 1:
	case 2:
		return ANM_P_STAND;
	}
	return ANM_P_PRAY;
}

uint32_t Villager::ControlledByCreatureAnimation()
{
	return GAME_RAND(707, 3) > 1 ? ANM_P_WAITING_IMPATEINTLY : ANM_P_STAND;
}

uint32_t Villager::PointAtFlyingObjectAnimation()
{
	if ((IsWoman() || IsChild()) && GAME_RAND(723, 3) == 0)
	{
		return ANM_P_SCARED_STIFF;
	}
	switch (GAME_RAND(728, 3))
	{
	case 0:
		return ANM_P_LOOKING_FOR_SOMETHING;
	case 1:
		return ANM_P_STAND;
	}
	return ANM_P_TALKING_AND_POINTING;
}

uint32_t Villager::WaitForMateAnimation()
{
	return ANM_P_LOOK_AT_HAND;
}

uint32_t Villager::YawnAnimation()
{
	switch (GAME_RAND(749, 2))
	{
	case 1:
		return ANM_P_YAWN2;
	}
	return ANM_P_YAWN;
}

uint32_t Villager::PauseForASecondAnimation()
{
	if (IsPoisoned())
	{
		return ANM_P_POISONED;
	}
	switch (GAME_RAND(766, 2))
	{
	case 1:
		return ANM_P_OVERWORKED2;
	}
	return ANM_P_OVERWORKED1;
}

uint32_t Villager::AmazedByShieldAnimation()
{
	switch (GAME_RAND(779, 5))
	{
	case 0:
		return ANM_P_INTO_POINTING;
	case 1:
	case 2:
		return ANM_P_LOOK_AT_HAND;
	}
	return ANM_P_STAND;
}

uint32_t Villager::TownEmergencyAnimation()
{
	switch (GAME_RAND(796, 10))
	{
	case 1:
		return ANM_P_BECKON;
	case 2:
		return ANM_P_CONDUCT_MEETING;
	case 3:
		return GetInfo()->sex == SEX_MALE ? ANM_P_PANIC_MAN : ANM_P_PANIC_WOMAN;
	case 4:
		return ANM_P_SCARED_STIFF;
	case 5:
		return ANM_P_SCARED_STIFF_2;
	case 6:
		return ANM_P_STAND_DESPAIR_1;
	case 7:
		return ANM_P_STAND_DESPAIR_2;
	case 8:
		return ANM_P_STAND_DESPAIR_3;
	case 9:
		return ANM_P_TALKING_AND_POINTING;
	}
	return ANM_P_ATTRACT_YOUR_ATTENTION;
}

uint32_t Villager::RandomCrowdAnimation()
{
	switch (GAME_RAND(826, 25))
	{
	case 0:
		return ANM_P_AMBIENT2;
	case 1:
		return ANM_P_AMBIENT1;
	case 2:
		return ANM_P_WAITING_IMPATEINTLY;
	case 3:
		return ANM_P_CROWD_IMPRESSED_1;
	case 4:
	case 5:
		return ANM_P_CROWD_WON;
	}
	return ANM_P_STAND;
}

uint32_t Villager::SitDownAnimation()
{
	if ((Flags & VILLAGER_FLAG_IN_TRANSITION_ANIMATION) && Game3dObject->GetCurrentAnim() != NULL)
	{
		switch (Game3dObject->GetCurrentAnim()->GetIndexInCache())
		{
		case ANM_P_SITTING_DOWN1_INTO:
			return ANM_P_SITTING_DOWN1_SITTING;
		case ANM_P_SITTING_DOWN2_INTO:
			return ANM_P_SITTING_DOWN2_SITTING;
		}
	}
	return GAME_RAND(858, 2) ? ANM_P_SITTING_DOWN2_SITTING : ANM_P_SITTING_DOWN1_SITTING;
}

uint32_t Villager::ArrivesAtBuildingSiteAnimation()
{
	return ANM_P_PUT_DOWN_STICKS;
}

uint32_t Villager::SleepInTentIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	return is_into ? ANM_P_INTO_SLEEP : ANM_P_OUT_OF_SLEEP;
}

uint32_t Villager::MoveToPosIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	if (!IsDeathState(state) && Game3dObject->GetCurrentAnim()->GetIndexInCache() == ANM_P_CRAWL_INJURED)
	{
		return is_into ? ANM_P_CRAWL_INJURED_INTO : ANM_P_OUT_OF_SLEEP;
	}
	return ANM_INVALID;
}

uint32_t Villager::MournIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	return is_into ? ANM_P_INTO_MOURNING : ANM_P_OUT_OF_MOURNING;
}

uint32_t Villager::DeadIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	if (is_into && Pos.IsWater())
	{
		return ANM_P_INTO_DEAD_DROWNED;
	}
	return ANM_INVALID;
}

uint32_t Villager::PrayIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	return is_into ? ANM_P_INTO_PRAY : ANM_P_OUT_OF_PRAY;
}

uint32_t Villager::ArrivesAtResourceIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	if (!is_into && state != action.states[LIVING_ACTION_INDEX_TOP])
	{
		return ANM_P_PICK_UP_STICKS;
	}
	return ANM_INVALID;
}

uint32_t Villager::SitDownIntoOutOfAnimation(bool32_t is_into, uint8_t state)
{
	if (Game3dObject->GetCurrentAnim()->GetIndexInCache() == ANM_P_SITTING_DOWN1_SITTING)
	{
		return is_into ? ANM_P_SITTING_DOWN1_INTO : ANM_P_SITTING_DOWN1_OUT_OF;
	}
	return is_into ? ANM_P_SITTING_DOWN2_INTO : ANM_P_SITTING_DOWN2_OUT_OF;
}

uint32_t Villager::BuildingIntoOutofAnimation(bool32_t is_into, uint8_t state)
{
	switch (Game3dObject->GetCurrentAnim()->GetIndexInCache())
	{
	case ANM_P_HAMMERING:
		return is_into ? ANM_P_INTO_HAMMERING : ANM_P_OUT_OF_HAMMERING;
	case ANM_P_SAW_WOOD:
		return is_into ? ANM_P_INTO_SAW_WOOD : ANM_P_OUT_OF_SAW_WOOD;
	case ANM_P_SLEDGEHAMMER:
		return is_into ? ANM_P_INTO_SLEDGEHAMMER : ANM_P_OUT_OF_SLEDGEHAMMER;
	}
	return ANM_INVALID;
}

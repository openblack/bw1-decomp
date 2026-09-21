#include "Villager.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

#include "chlasm/Enum.h"
#include "chlasm/GStates.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameThing.h"
#include "InterfaceStatus.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "JobInfo.h"
#include "MapCoords.h"
#include "Object.h"
#include "Pot.h"
#include "Reaction.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownInfo.h"
#include "Utils.h"
#include "Rand.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// 84 entries (12 tribe slots x VILLAGER_NUMBER_LAST), filled by GVillagerInfo::GetInfoFromText.
GVillagerInfo GVillagerInfo_ARRAY_00da6be8[84];

// clang-format off
static const DiscipleInfo g_DiscipleInfos[VILLAGER_DISCIPLE_LAST] = {
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

// TODO: GVillagerInfo::GetMesh (0x74f880, returns StdDetail) not yet defined.

// BW1W120 0074f890 BW1M119 0157a1d0
GBaseInfo* GVillagerInfo::GetBaseInfo(uint32_t& count)
{
	count = 84;
	return GVillagerInfo_ARRAY_00da6be8;
}

// BW1W120 0074fb20 BW1M119 01579d80
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
	LastPlayerToInteract = NULL;
	field_0x108 = 0.0f;
}

// BW1W120 0074fb80 BW1M119 01579cb0
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

// BW1W120 0074fbe0 BW1M119 01579ab0
Villager* Villager::Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton)
{
	return NULL;
}

// BW1W120 0074fc70 BW1M119 01579890
void Villager::CallVirtualFunctionsForCreation(const MapCoords& coords) {}

// BW1W120 0074fd60 BW1M119 01579570
void Villager::DeleteDependancys() {}

// BW1W120 0074fec0 BW1M119 01579420
bool Villager::UnemployedJobs()
{
	return false;
}

// BW1W120 0074ff60 BW1M119 015793e0
bool Villager::SetupJobLocation()
{
	return false;
}

// BW1W120 0074ff70 BW1M119 0104dd70
uint32_t Villager::ProcessState()
{
	return 0;
}

// BW1W120 00750060 BW1M119 0109c740
void Villager::FinishedIntoOutOfAnimation() {}

// BW1W120 00750110 BW1M119 01068c50
ANIM_LIST Villager::GetAnimId()
{
	return ANIM_LIST(0);
}

// BW1W120 007501a0 BW1M119 01062720
void Villager::SetStateCarriedObject() {}

// BW1W120 007502a0 BW1M119 01578ff0
uint32_t Villager::GetWoodCarriedObject()
{
	// TODO: return values 0xc-0xf are an unnamed carried-object/graphic enum
	uint32_t flags = Flags;
	switch (flags >> 14)
	{
	case 1:
		return 0xd;
	case 2:
		return 0xe;
	case 3:
		return 0xf;
	default:
		return 0xc;
	}
}

// BW1W120 007502d0 BW1M119 01578f80
uint32_t Villager::DestroyedByEffect(GPlayer* player, float damage)
{
	VillagerDead(DEATH_REASON_SPELL, player, damage, 1);
	return 1;
}

// BW1W120 007502f0 BW1M119 01066b50
GPlayer* Villager::GetPlayer()
{
	if (GetTown() != NULL)
	{
		return GetTown()->owner;
	}
	return NULL;
}

// BW1W120 00750310 BW1M119 01099580
HOLD_TYPE Villager::GetHoldType()
{
	return HOLD_TYPE_VILLAGER;
}

// BW1W120 00750320 BW1M119 0109c130
float Villager::GetHoldLoweringMultiplier()
{
	// TODO: the 0.65f lives as a shared named .rdata float in another unit's range; a
	// literal's own constant cannot match that operand (see SetSpeed)
	return 0.65f;
}

// BW1W120 00750330 BW1M119 01578d20
Villager* Villager::GetSpouse()
{
	if (GetAbode() != NULL)
	{
		Villager* spouse = GetAbode()->GetSpouse(this);
		if (spouse != NULL && spouse->IsAvailable() == 1)
		{
			return spouse;
		}
	}
	return NULL;
}

// BW1W120 00750370 BW1M119 01578bc0
Villager* Villager::LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2)
{
	return NULL;
}

// BW1W120 00750410 BW1M119 0104dec0
int Villager::CheckEveryTime()
{
	return 0;
}

// BW1W120 00750670 BW1M119 01071370
uint32_t Villager::GetGameTurnsSinceLastChecked()
{
	// TODO: 57% -- correct semantics. Only diff: target folds LastCheckTurn into
	// the sub as a memory operand (`sub eax,[ecx+0xec]`); MSVC6 here pre-loads it
	// into edx between the two GameTurn loads. Toy-confirmed unreachable from natural
	// source (scheduler tie-break, save-across-call-spill family).
	return GGame::g_game->data.GameTurn - LastCheckTurn;
}

// BW1W120 00750690 BW1M119 015789d0
int Villager::GetGameTurnLastChecked()
{
	return LastCheckTurn;
}

// BW1W120 007506a0 BW1M119 01071410
void Villager::SetGameTurnLastChecked()
{
	LastCheckTurn = GGame::g_game->data.GameTurn;
}

// BW1W120 007506c0 BW1M119 01578500
void Villager::VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4) {}

// BW1W120 00750940 BW1M119 01578230
void Villager::CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3) {}

// BW1W120 00750ab0 BW1M119 015780f0
bool32_t Villager::HasSunk()
{
	return false;
}

// BW1W120 00750b50 BW1M119 01578000
void Villager::TownDeleted() {}

// BW1W120 00750bb0 BW1M119 01577e20
void Villager::DebugText(int param_1) {}

// BW1W120 00750de0 BW1M119 01577d90
void Villager::SetAbode(Abode* abode)
{
	home = abode;
	SetTown(NULL);
	if (abode != NULL)
	{
		SetTown(abode->GetTown());
	}
}

// BW1W120 00750e10 BW1M119 01577c40
bool Villager::GetRandomLookAhead(MapCoords* param_1, float param_2)
{
	return false;
}

// BW1W120 00750ed0 BW1M119 0106af80
void Villager::SetSpeed(int base_speed, int scale_speed)
{
	// TODO: the 0.01f/0.2f/0.1f/0.4f constants live as shared named .rdata floats in other
	// units' ranges; literals emit their own constants, so those operands cannot match
	// until the shared floats are named
	float factor = 1.0f;
	if (scale_speed != 0)
	{
		factor = ((int)(ObjectCreationIndex * 47) % 31 - 16) * 0.01f + 1.0f;
		if (GetAge() < ((const GVillagerInfo*)info)->TeenAge)
		{
			float slowDown = (((const GVillagerInfo*)info)->TeenAge - GetAge()) * 0.2f * 0.1f;
			if (slowDown >= 0.4f)
			{
				slowDown = 0.4f;
			}
			factor = factor - slowDown;
		}
		else if (GetAge() > ((const GVillagerInfo*)info)->MiddleAge)
		{
			float slowDown = (GetAge() - ((const GVillagerInfo*)info)->MiddleAge) * 0.2f * 0.1f;
			if (slowDown >= 0.4f)
			{
				slowDown = 0.4f;
			}
			factor = factor - slowDown;
		}
		else
		{
			factor = factor - GetDesireForFood() * 0.1f;
			factor = factor - GetLife() * 0.1f;
			if (((const GVillagerInfo*)info)->sex == SEX_FEMALE)
			{
				factor -= 0.2f;
			}
		}
	}
	MobileWallHug::SetSpeed((int)(base_speed * factor));
}

// BW1W120 00751040 BW1M119 016e8c0c
void Villager::Birthday() {}

// BW1W120 00751050 BW1M119 01024570
int Villager::CheckChildGrownUp()
{
	return 0;
}

// BW1W120 00751110 BW1M119 01577ad0
bool32_t Villager::IsAMother()
{
	// TODO: 77% -- correct semantics. Only diff: target loads sex into edx first
	// (`mov edx,[eax+0x1f8]; cmp edx,1`); MSVC6 here compares the memory operand
	// directly. Toy-confirmed unreachable from natural source (scheduler tie-break).
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE;
}

// BW1W120 00751190 BW1M119 01577a50
bool32_t Villager::StartMoveToObject(Object* object, VILLAGER_STATES state)
{
	SetupMoveToObject(object, (unsigned char)state);
	return true;
}

// BW1W120 007511b0 BW1M119 0109ea90
unsigned short Villager::DropResource(RESOURCE_TYPE param_1, unsigned short param_2)
{
	return 0;
}

// BW1W120 007511e0 BW1M119 01577910
unsigned short Villager::DropFood(unsigned short food_amount)
{
	if (food_amount == 0 || food_amount > (unsigned short)ResourceHeld[RESOURCE_TYPE_FOOD])
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

// BW1W120 00751240 BW1M119 01577820
unsigned short Villager::DropWood(unsigned short wood_amount)
{
	if (wood_amount == 0 || wood_amount > (unsigned short)ResourceHeld[RESOURCE_TYPE_WOOD])
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

// BW1W120 007512a0 BW1M119 01577760
bool Villager::IsEnoughFoodInStoragePitForDinner()
{
	return false;
}

// BW1W120 007512e0 BW1M119 015775c0
Pot* Villager::FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long& param_2, int param_3)
{
	return NULL;
}

// BW1W120 007513f0 BW1M119 01577450
int16_t Villager::PickupResource(RESOURCE_TYPE resource_type, short amount, unsigned char wood_graphic)
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
		unsigned short graphic = wood_graphic & 3;
		Flags = (graphic << 14) | (Flags & 0x3fff);
	}
	return amount;
}

// BW1W120 00751490 BW1M119 0109ed20
void Villager::PickupFood(short amount)
{
	PickupResource(RESOURCE_TYPE_FOOD, amount, 0);
}

// BW1W120 007514b0 BW1M119 01577320
void Villager::PickupWood(short amount, unsigned char wood_graphic)
{
	PickupResource(RESOURCE_TYPE_WOOD, amount, wood_graphic);
}

// BW1W120 007514d0 BW1M119 01004c20
int16_t Villager::GetFoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxFoodCarried - ResourceHeld[RESOURCE_TYPE_FOOD];
}

// BW1W120 007514f0 BW1M119 01577270
int16_t Villager::GetWoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxWoodCarried - ResourceHeld[RESOURCE_TYPE_WOOD];
}

// BW1W120 00751510 BW1M119 01577220
void Villager::RemoveFromDance(int is_worshipping)
{
	Living::RemoveFromDance(is_worshipping);
}

// BW1W120 00751520 BW1M119 01577170
bool Villager::IsRandomlyLazy()
{
	return false;
}

// BW1W120 00751570 BW1M119 010007e0
uint16_t Villager::GetResourceHeld(RESOURCE_TYPE& type)
{
	type = RESOURCE_TYPE_NONE;
	if ((unsigned short)ResourceHeld[RESOURCE_TYPE_FOOD] > (unsigned short)ResourceHeld[RESOURCE_TYPE_WOOD])
	{
		type = RESOURCE_TYPE_FOOD;
		return ResourceHeld[RESOURCE_TYPE_FOOD];
	}
	if (ResourceHeld[RESOURCE_TYPE_WOOD] != 0)
	{
		type = RESOURCE_TYPE_WOOD;
		return ResourceHeld[RESOURCE_TYPE_WOOD];
	}
	return false;
}

// BW1W120 007515c0 BW1M119 0109af00
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

	uint32_t flags = Flags;
	uint8_t  disciple_flags = flags >> 9;
	if (disciple_flags & 1 || flags & 0x400)
	{
		if (DiscipleDecideWhatToDo() == true)
		{
			if (Flags & 0x400)
			{
				DiscipleType = VILLAGER_DISCIPLE_NONE;
				return true;
			}
			if (g_DiscipleInfos[DiscipleType].field_0x4 == 0)
			{
				return true;
			}
			Reaction::CreateReaction(this, REACTION_REACT_TO_DROPPED_BY_HAND, GetPlayer(), 1);
			return true;
		}
		flags = Flags;
		if (flags & 0x400)
		{
			DiscipleType = VILLAGER_DISCIPLE_NONE;
			Flags = flags & ~(0x200 | 0x400);
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

// BW1W120 007516e0 BW1M119 01003ba0
bool32_t Villager::CheckTakeResourcesToStoragePit()
{
	if (ResourceHeld[RESOURCE_TYPE_WOOD] > (int)((const GVillagerInfo*)info)->MinWoodToShowGraphic ||
	    ResourceHeld[RESOURCE_TYPE_FOOD] > (int)((const GVillagerInfo*)info)->MinFoodToShowGraphic)
	{
		SetTopState(VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_DROP_OFF);
		return 1;
	}
	return 0;
}

// BW1W120 00751720 BW1M119 01576d30
bool32_t Villager::DiscipleDecideWhatToDo()
{
	return false;
}

// BW1W120 00751970 BW1M119 01576cf0
bool Villager::GetPrayerSite()
{
	return false;
}

// BW1W120 00751980 BW1M119 01576c20
bool Villager::RestartDance(VILLAGER_STATES state)
{
	return false;
}

// BW1W120 00751ab0 BW1M119 015769c0
char* Villager::GetVillagerText(char* param_1)
{
	return NULL;
}

// BW1W120 00751af0 BW1M119 01576600
uint32_t Villager::SaveObject(LHOSFile& param_1, const MapCoords& param_2)
{
	return 0;
}

// BW1W120 00751cf0 BW1M119 0101c5a0
bool32_t Villager::IsFunctional()
{
	if (IsAvailable() == 1)
	{
		uint8_t topState = action.states[LIVING_ACTION_INDEX_TOP];
		if (topState < VILLAGER_STATE_SET_DYING || topState > VILLAGER_STATE_DYING)
		{
			return 1;
		}
	}
	return 0;
}

// BW1W120 00751d20 BW1M119 01576320
GJobInfo* Villager::GetJobInfo(unsigned char job) const
{
	// TODO: target body is `return &<GJobInfo array at 0xd19cc8>[job];` — needs that
	// array named and declared
	return NULL;
}

// BW1W120 00751d40
bool Villager::FUN00751d40()
{
	return false;
}

// BW1W120 00751d50 BW1M119 01057200
bool32_t Villager::IsAvailable()
{
	if (!(GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) && (uint8_t)GetFinalState() != VILLAGER_STATE_DYING)
	{
		return 1;
	}
	return 0;
}

// BW1W120 00751d70 BW1M119 0100ca10
uint32_t Villager::IsEffectReceiver(EffectValues* effect)
{
	if (effect != NULL && effect->numbers.values[EFFECT_TYPE_HEAL] > 0.0f)
	{
		return !IsDead();
	}
	return IsReachable();
}

// BW1W120 00751db0 BW1M119 01576080
Citadel* Villager::GetCitadel()
{
	Town* town = GetTown();
	if (town != NULL && town->owner != NULL)
	{
		return town->owner->citadel;
	}
	return NULL;
}

// BW1W120 00751dd0 BW1M119 01051580
VILLAGER_STATES Villager::GetFinalState() const
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00751e10 BW1M119 01575df0
void Villager::ResetStateAfterReacting() {}

// BW1W120 00751e50 BW1M119 01575d30
void Villager::PopFromPrevious()
{
	// TODO: target pushes the state-table field as a raw dword (natural if SetTopState's
	// param were the 4-byte enum rather than unsigned char); vtable-load scheduling also
	// differs
	if (SetTopState(g_GVillagerStateTableInfos[action.states[LIVING_ACTION_INDEX_PREVIOUS]].field_0x30) ==
	    VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_WITH_SUPPLIES)
	{
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	action.SetState(LIVING_ACTION_INDEX_PREVIOUS, VILLAGER_STATE_INVALID_STATE);
}

// BW1W120 00751ea0 BW1M119 01575cf0
Football* Villager::GetFootball()
{
	return football;
}

// BW1W120 00751ee0 BW1M119 01575c10
GTribeInfo* Villager::GetTribe()
{
	// TODO: target evaluates info->TribeType through ecx before loading g_game; ours keeps
	// info in eax and loads g_game earlier
	TRIBE_TYPE tribeType = ((const GVillagerInfo*)info)->TribeType;
	return GGame::g_game->GetTribe(tribeType);
}

// BW1W120 00751f00 BW1M119 01066b20
Town* Villager::GetTown()
{
	return NULL;
}

// BW1W120 00751f10 BW1M119 0108c910
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

// BW1W120 00751f40 BW1M119 01575af0
VILLAGER_STATES Villager::GetVillagerAvailableState()
{
	// TODO: 86% -- correct semantics/reloc (g_GVillagerStateTableInfos[GetFinalState()&0xff]
	// .field_0xb8). Only diff: target parks the masked index in ecx (`mov ecx,eax`) and
	// runs the *276 multiply through eax; MSVC6 here keeps it in eax. Regalloc tie-break.
	return (VILLAGER_STATES)g_GVillagerStateTableInfos[GetFinalState() & 0xff].field_0xb8;
}

// BW1W120 00751f70
VILLAGER_STATES Villager::FUN_00751f70()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00751fa0 BW1M119 010039e0
void Villager::ArriveHome() {}

// BW1W120 00751fd0 BW1M119 010a1b50
void Villager::LeaveHome() {}

// BW1W120 00752010 BW1M119 0107e140
int Villager::SetTopState(uint8_t state)
{
	return 0;
}

// BW1W120 007520e0 BW1M119 01089e90
int Villager::SetCurrentAndDestinationState(uint8_t current, uint8_t destination)
{
	return 0;
}

// BW1W120 00752120 BW1M119 0107e950
uint32_t Villager::CanPauseForASecond(VILLAGER_STATES state)
{
	if (action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_PAUSE_FOR_A_SECOND &&
	    g_GVillagerStateTableInfos[state & 0xff].field_0xd4 != 0 && !(((GameThingWithPos*)this)->Flags & 0x400))
	{
		return 1;
	}
	return 0;
}

// BW1W120 00752160 BW1M119 0100c480
Abode* Villager::GetAbode()
{
	return home;
}

// BW1W120 007521b0 BW1M119 015755c0
void Villager::ToBeDeleted(int param_1) {}

// BW1W120 007521d0 BW1M119 0104dce0
uint32_t Villager::CallState()
{
	return 0;
}

// BW1W120 00752210 BW1M119 01022dd0
bool32_t Villager::IsPregnant()
{
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE && is_pregnant != 0;
}

// BW1W120 00752240 BW1M119 01022d20
uint32_t Villager::WomanSpecial()
{
	return 0;
}

// BW1W120 00752290 BW1M119 015753b0
bool32_t Villager::IsVillagerAvailable()
{
	if (!(((GameThingWithPos*)this)->Flags & 0x400) && IsAvailableForStateChange())
	{
		return GetVillagerAvailableState() & 1;
	}
	return false;
}

// BW1W120 007522c0 BW1M119 015752a0
bool32_t Villager::IsAvailableToBeSummonedByCreature()
{
	return false;
}

// BW1W120 00752320 BW1M119 inlined
uint32_t Villager::CallExitStateFunction(uint8_t state)
{
	return 0;
}

// BW1W120 007523d0
bool32_t Villager::CallEntryStateFunction(uint8_t state)
{
	return false;
}

// BW1W120 00752440
bool32_t Villager::CallEntryStateFunction(uint8_t current, uint8_t destination)
{
	return false;
}

// BW1W120 007524d0 BW1M119 0109f200
bool Villager::IsStateEntryFunctionSameAs(unsigned long state_a, unsigned long state_b) const
{
	// TODO: needs the villager state-function table at 0xd09198 named — the target indexes
	// it directly, so the relocs cannot match. The comparison below spells out MSVC6
	// 16-byte pointer-to-member equality over the modelled fields.
	Living::StateTableEntry& entryA = GetStateTable((VILLAGER_STATES)state_a);
	Living::StateTableEntry& entryB = GetStateTable((VILLAGER_STATES)state_b);
	if (entryA.EntryState.function == entryB.EntryState.function &&
	    (entryA.EntryState.function == NULL || (entryA.EntryState.field_0x4 == entryB.EntryState.field_0x4 &&
	                                            entryA.EntryState.field_0x8 == entryB.EntryState.field_0x8 &&
	                                            entryA.EntryState.field_0xc == entryB.EntryState.field_0xc)))
	{
		return true;
	}
	return false;
}

// BW1W120 00752530 BW1M119 inlined
bool32_t Villager::IsStateExitFunctionSameAs(VILLAGER_STATES state) const
{
	return false;
}

// BW1W120 007525b0 BW1M119 01574fa0
bool Villager::IsReactiveState(unsigned long state)
{
	// TODO: 57% -- index/field semantics correct (g_GVillagerStateTableInfos[state]
	// .field_0xc8 != 0). BLOCKED: symbols.txt names this thiscall (?...@@QAE_NK@Z) but the
	// target body is __cdecl -- ends `c3` (ret, NO arg cleanup), reads state from [esp+4],
	// never touches ecx(this), returns full eax. Not ICF (ret != ret4 => bytes differ). A
	// faithful thiscall member compiles to `ret 4`+al. Calling-convention/symbol anomaly for
	// the dispatcher (symbol may need to be static/cdecl).
	return g_GVillagerStateTableInfos[state].field_0xc8 != 0;
}

// BW1W120 00752600 BW1M119 01022ae0
bool32_t Villager::IsHungry()
{
	return food <= ((const GVillagerInfo*)info)->HungryForFood;
}

// BW1W120 00752620 BW1M119 0106cf00
bool Villager::IsWoman()
{
	return ((const GVillagerInfo*)info)->sex == SEX_FEMALE && !IsChild();
}

// BW1W120 00752650 BW1M119 01574bc0
GVillagerInfo* GVillagerInfo::Find(TRIBE_TYPE type, VILLAGER_NUMBER villager_number)
{
	// TODO: needs the info-array data symbol carved at 0xda6be8 (currently inside a pad)
	// so the relocs can pair
	for (GVillagerInfo* info = GVillagerInfo_ARRAY_00da6be8; info < &GVillagerInfo_ARRAY_00da6be8[84]; info++)
	{
		if (info->TribeType == type && info->VillagerNumber == villager_number)
		{
			return info;
		}
	}
	return NULL;
}

// BW1W120 00752690 BW1M119 015749f0
bool Villager::MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3)
{
	return false;
}

// BW1W120 00752760 BW1M119 01574960
// TODO: 89% -- semantics correct. Remaining: bool-return-full-eax-epilogue (mov eax,1 vs
// al) + SetGameAngle argeval order (target push eax then mov ecx,esi; ours reversed). Both
// open scheduler blockers.
bool Villager::MakeVillagerFaceObject(Object* object)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	SetGameAngle(GUtils::ConvertAngle3DToGame(angle));
	return true;
}

// BW1W120 007527a0 BW1M119 inlined
uint32_t Villager::ExitReaction(uint8_t state)
{
	return 0;
}

// BW1W120 007527e0 BW1M119 01574800
uint32_t Villager::ExitDance(unsigned char param_1)
{
	return false;
}

// BW1W120 00752820 BW1M119 01574750
bool32_t Villager::IsAvailableForWorshipSite(int param_1)
{
	return false;
}

// BW1W120 00752860 BW1M119 01574690
// TODO: 84% -- semantics/states all correct. Remaining diffs are open blockers: (1)
// bool-return-full-eax-epilogue (target `mov eax,1`/`xor eax,eax`, ours al); (2) target
// tests Flags directly (`test byte[esi+0xe0],2`) then pops esi, ours pre-loads it to cl to
// pop esi earlier -- epilogue/scheduler tie-break.
bool Villager::IsAtOrOnTheWayToWorshipSite()
{
	int state = GetFinalState() & 0xff;
	if (state == VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION || state == VILLAGER_STATE_TELEPORT_REACTION ||
	    state == VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION_QUICKLY)
	{
		state = action.states[LIVING_ACTION_INDEX_PREVIOUS];
	}
	if ((Flags & 2) || state == VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP ||
	    state == VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_WITH_SUPPLIES)
	{
		return true;
	}
	return false;
}

// BW1W120 007528b0 BW1M119 015745c0
uint32_t Villager::DebugShowTime(uint32_t param_1, unsigned char param_2, unsigned char param_3)
{
	return 0;
}

// BW1W120 007528c0 BW1M119 01574250
void Villager::SetAge(uint32_t age) {}

// BW1W120 00752a90 BW1M119 015740d0
void Villager::SetScaleForAge(unsigned long param_1) {}

// BW1W120 00752b80 BW1M119 01573fd0
bool32_t Villager::SetStateWhenTappedOnAbode()
{
	return false;
}

// BW1W120 00752bd0 BW1M119 010a26b0
uint32_t Villager::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
	return 0;
}

// BW1W120 00752c40 BW1M119 01573a80
uint32_t Villager::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
	return 0;
}

// BW1W120 00753020 BW1M119 01005910
SCRIPT_OBJECT_TYPE Villager::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_NONE;
}

// BW1W120 00753040
bool32_t Villager::IsTouching(const MapCoords& coords)
{
	return false;
}

// BW1W120 00753080 BW1M119 01573730
uint32_t Villager::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
	return 0;
}

// BW1W120 00753110 BW1M119 015736b0
void Villager::SetSpeedInMetres(float param_1, int param_2) {}

// BW1W120 00753140
uint32_t Villager::FUN_00753140()
{
	return 0;
}

// BW1W120 007531a0 BW1M119 01573570
bool Villager::IsVagrant()
{
	return false;
}

// BW1W120 007531d0 BW1M119 01573270
void Villager::ReleaseFromScript() {}

// BW1W120 00753340 BW1M119 015731c0
void Villager::TestSpecial() {}

// BW1W120 00753390 BW1M119 01572f90
uint16_t Villager::GetResourceFrom(Object* object, RESOURCE_TYPE resource_type, short amount)
{
	// The (uint8_t) casts on IsSpeedUp/IsPoisoned reproduce the target's byte tests.
	unsigned short got = object->RemoveResource(resource_type, amount, NULL, NULL);
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

// BW1W120 00753410 BW1M119 01572f40
void Villager::SetFoodSpeedup(bool param_1) {}

// BW1W120 00753430 BW1M119 01053cf0
// TODO: deferred -- body is
//   if (IsFoodSpeedUp() && GGame::g_game->data.GameTurn % 10 == 0) FoodSpeedUp--;
// but the target emits `dec byte ptr [esi+0xf0]`, i.e. FoodSpeedUp is a uint8_t
// COUNTDOWN, not a bool. `bool--` is rejected by MSVC6 (C2428). Needs the header
// member `bool FoodSpeedUp` (0xf0) retyped to uint8_t (dispatcher/header call --
// IsFoodSpeedUp@0x55c980 in another unit also reads it).
void Villager::ProcessFoodSpeedup() {}

// BW1W120 00753460 BW1M119 01572e30
float Villager::IncreaseLife(float value)
{
	return Object::IncreaseLife(value);
}

// BW1W120 00753470 BW1M119 01572c90
void Villager::FindPosOutsideAbode(Abode* param_1) {}

// BW1W120 00753540
Abode* Villager::FUN_00753540()
{
	return NULL;
}

// BW1W120 00753560 BW1M119 0106cd50
void Villager::AdjustTownModifier(VILLAGER_STATES state, int param_2) {}

// BW1W120 00753690 BW1M119 0106cc30
void Villager::SetStateSpeed() {}

// BW1W120 00753740 BW1M119 010782d0
void Villager::SetStateSpeed(unsigned char param_1) {}

// BW1W120 00753b50 BW1M119 0109bb10
uint32_t Villager::SetupNothingToDo()
{
	Town*  town = GetTown();
	Abode* abode = GetAbode();
	switch (GRand::GameRand(9, __FILE__, __LINE__))
	{
	case 0:
		if ((abode != NULL && abode->IsFunctional()) || GRand::GameRand(100, __FILE__, __LINE__) < 10u)
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

// BW1W120 00753c70 BW1M119 01011020
uint32_t Villager::GetChillOutPos(MapCoords& coords)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		MapCoords congregationPos = town->GetCongregationPos();
		float     radius = ((const GTownInfo*)town->info)->field_0x140 * 0.1f;
		float     angle = GUtils::Get3DAngleFromXZ(congregationPos, Pos);
		float     jitter = GRand::GameFloatRand(0.7853982f, __FILE__, __LINE__) - 0.39269909f;
		MapCoords offset =
			GUtils::GetPosFromAngle(jitter + angle, GRand::GameFloatRand(radius * 9.0f, __FILE__, __LINE__));
		coords = congregationPos + offset;
		return 1;
	}
	return 0;
}

// BW1W120 00753dd0 BW1M119 01572850
uint32_t Villager::VillagerCreated()
{
	return 0;
}

// BW1W120 00753e00 BW1M119 015727e0
uint32_t Villager::RemoveFromGame()
{
	return 0;
}

// BW1W120 00753e20 BW1M119 01572620
MapCoords Villager::GetResourceDropoffPos(RESOURCE_TYPE resource_type)
{
	// TODO: block ordering differs — target keeps the merged `return pit->GetArrivePos()`
	// tail at its first occurrence and jumps backward to it; ours sinks it after the
	// town-pit check
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

// BW1W120 00753f00 BW1M119 inlined
bool Villager::IsFinalState(VILLAGER_STATES state)
{
	return false;
}

// BW1W120 00753f20 BW1M119 015724c0
HELP_TEXT Villager::GetQueryFirstEnumText()
{
	return HELP_TEXT(0);
}

// BW1W120 00753f90 BW1M119 01572370
HELP_TEXT Villager::GetQueryLastEnumText()
{
	return HELP_TEXT(0);
}

// BW1W120 00754050 BW1M119 010357e0
uint32_t Villager::GetFOVHelpMessageSet()
{
	return 0;
}

// BW1W120 00754060 BW1M119 015722c0
uint32_t Villager::GetFOVHelpCondition()
{
	return 0;
}

// BW1W120 00754070 BW1M119 01572220
bool32_t Villager::SetDiscipleNothingToDo()
{
	MapCoords prayerPos;
	if (FindDisciplePrayerPos(&prayerPos))
	{
		TurnsUntilNextStateChange = 0;
		SetupMoveToWithHug(prayerPos, VILLAGER_STATE_DISCIPLE_NOTHING_TO_DO);
		return 1;
	}
	return 0;
}

// BW1W120 007540d0 BW1M119 01572140
bool32_t Villager::DiscipleNothingToDo()
{
	return false;
}

// BW1W120 00754140 BW1M119 01572070
bool32_t Villager::EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2)
{
	return false;
}

// BW1W120 00754180 BW1M119 01571f30
bool32_t Villager::FindDisciplePrayerPos(MapCoords* param_1)
{
	return false;
}

// BW1W120 00754280 BW1M119 01571b20
uint32_t Villager::Save(GameOSFile& file)
{
	return 0;
}

// BW1W120 00754580 BW1M119 01571730
uint32_t Villager::Load(GameOSFile& file)
{
	return 0;
}

// BW1W120 00754870 BW1M119 015716b0
void Villager::ResolveLoad() {}

// BW1W120 007548a0 BW1M119 015715c0
bool32_t Villager::CallSaveStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
	return false;
}

// BW1W120 00754910 BW1M119 015714d0
bool32_t Villager::CallLoadStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
	return false;
}

// BW1W120 00754980 BW1M119 01571420
bool32_t Villager::SaveStateFunction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007549b0 BW1M119 01571360
bool32_t Villager::LoadStateFunction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754a00 BW1M119 01571280
bool32_t Villager::SaveBuilding(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754a60 BW1M119 015711b0
bool32_t Villager::LoadBuilding(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754ac0 BW1M119 01571090
bool32_t Villager::SaveDance(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754b60 BW1M119 01570f80
bool32_t Villager::LoadDance(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754c00 BW1M119 01570eb0
bool32_t Villager::SaveWorship(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754c60 BW1M119 01570de0
bool32_t Villager::LoadWorship(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754cc0 BW1M119 01570d20
bool32_t Villager::SaveDead(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754d20 BW1M119 01570c60
bool32_t Villager::LoadDead(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754d80 BW1M119 01570b90
bool32_t Villager::SaveInHand(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754de0 BW1M119 01570ac0
bool32_t Villager::LoadInHand(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e40 BW1M119 01570a50
bool32_t Villager::SaveFishing(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e60 BW1M119 015709e0
bool32_t Villager::LoadFishing(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e80 BW1M119 01570900
bool32_t Villager::SaveFarming(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754ef0 BW1M119 01570830
bool32_t Villager::LoadFarming(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754f60 BW1M119 015706b0
bool32_t Villager::SaveFootball(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755040 BW1M119 01570550
bool32_t Villager::LoadFootball(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755120 BW1M119 01570430
bool32_t Villager::SaveShepherd(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007551c0 BW1M119 01570320
bool32_t Villager::LoadShepherd(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755260 BW1M119 01570160
bool32_t Villager::SaveInScript(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755370 BW1M119 0156ffc0
bool32_t Villager::LoadInScript(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755470 BW1M119 0156fe00
bool32_t Villager::SaveScriptPos(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755580 BW1M119 0156fc60
bool32_t Villager::LoadScriptPos(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755680 BW1M119 0156fb80
bool32_t Villager::SaveFire(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007556f0 BW1M119 0156fab0
bool32_t Villager::LoadFire(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755760 BW1M119 0156fa30
bool32_t Villager::SaveDiscipleNothingToDo(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755780 BW1M119 0156f9b0
bool32_t Villager::LoadDiscipleNothingToDo(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007557a0 BW1M119 0156f8d0
bool32_t Villager::SaveTrader(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755810 BW1M119 0156f800
bool32_t Villager::LoadTrader(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755880 BW1M119 0156f790
bool32_t Villager::SaveInspectObject(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558a0 BW1M119 0156f720
bool32_t Villager::LoadInspectObject(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558c0 BW1M119 0156f6e0
bool32_t Villager::SaveReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558d0 BW1M119 0156f6a0
bool32_t Villager::LoadReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558e0 BW1M119 0156f580
bool32_t Villager::SaveClearArea(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755980 BW1M119 0156f470
bool32_t Villager::LoadClearArea(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755a20 BW1M119 0156f390
bool32_t Villager::SaveBreeder(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755a80 BW1M119 0156f2c0
bool32_t Villager::LoadBreeder(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755ae0 BW1M119 0156f250
bool32_t Villager::SaveForesting(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b00 BW1M119 0156f1e0
bool32_t Villager::LoadForesting(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b20 BW1M119 0156f150
bool32_t Villager::SaveFootPath(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b50 BW1M119 0156f0c0
bool32_t Villager::LoadFootPath(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b80 BW1M119 0156ef90
bool32_t Villager::SaveInspectionReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755c20 BW1M119 0156ee70
bool32_t Villager::LoadInspectionReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755cc0 BW1M119 0156ed40
bool32_t Villager::SaveMagicTreeReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755d60 BW1M119 0156ec20
bool32_t Villager::LoadMagicTreeReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755e00 BW1M119 0156eaf0
uint32_t Villager::SaveHideInBuilding(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755ea0 BW1M119 0156e9d0
uint32_t Villager::LoadHideInBuilding(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755f40 BW1M119 0156e900
uint32_t Villager::SaveShieldReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755fa0 BW1M119 0156e830
uint32_t Villager::LoadShieldReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00756000 BW1M119 0100c4b0
uint32_t Villager::SetVillagerDisciple(GameThing* interacted_thing, VILLAGER_DISCIPLE disciple, int unused)
{
	// TODO: block ordering (early-out sunk to the end) and Flags RMW width differ from
	// the target; SetIsGlowing is __fastcall in the binary but declared thiscall in the
	// shared LH3D header
	if (disciple < 0 || disciple >= VILLAGER_DISCIPLE_LAST)
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
		Flags = Flags & 0xfbff | 0x200;
		Game3dObject->SetIsGlowing(g_DiscipleInfos[disciple].field_0x8);
		GetPlayer();
		DiscipleType = (uint8_t)disciple;
		return true;
	}
	Flags &= 0xf9ff;
	Game3dObject->SetIsGlowing(0);
	DiscipleType = (uint8_t)disciple;
	return true;
}

// BW1W120 007560e0 BW1M119 0156e660
uint32_t Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
	return 0;
}

// BW1W120 00756170 BW1M119 0156e570
void Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE param_1) {}

// BW1W120 00756230 BW1M119 016e914c
void Villager::DebugValidateState() {}

// BW1W120 00756240 BW1M119 0156e3e0
void Villager::ForceMoveVillagerToAbode(Abode* abode)
{
	// TODO: GetPercentAbodeFullWithChildren/Adults dispatch through the wrong Abode vtable
	// slots (the Abode hierarchy headers declare 10 extra virtuals before them)
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

// BW1W120 007562c0 BW1M119 0156e0e0
void Villager::SetSkeleton(int index) {}

// BW1W120 00756450 BW1M119 01061d60
void Villager::InsertMapObject() {}

// BW1W120 00756460 BW1M119 010962e0
bool32_t Villager::IsReachable()
{
	return false;
}

// BW1W120 007564a0 BW1M119 0156dfa0
uint32_t Villager::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return 0;
}

// BW1W120 007564c0 BW1M119 0156df30
bool32_t Villager::CanBecomeAPhysicsObject()
{
	return false;
}

// BW1W120 007564d0 BW1M119 0156de50
uint32_t Villager::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
                               const MapCoords* param_5, int param_6)
{
	return 0;
}

// BW1W120 00756520 BW1M119 0156de00
uint32_t Villager::LookAtPreviousStateReactToTownEmergency()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00756530 BW1M119 0156ddc0
void Villager::SetTown(Town* town)
{
	this->town = town;
}

// BW1W120 00756540 BW1M119 0156dd40
bool32_t Villager::ScriptInCrowd()
{
	return false;
}

// BW1W120 00756570 BW1M119 0156dd00
bool32_t Villager::SaveLanded(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00756580 BW1M119 0156dcc0
bool32_t Villager::LoadLanded(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00756590 BW1M119 inlined
int Villager::CallIntoAnimationFunction(uint8_t state)
{
	return 0;
}

// BW1W120 00756620 BW1M119 inlined
int Villager::CallOutofAnimationFunction(uint8_t state)
{
	return 0;
}

// BW1W120 007569a0 BW1M119 0156d3c0
void Villager::MoveToObjectValidate() {}

// BW1W120 007569d0 BW1M119 0156d330
void Villager::MoveOnStructureValidate() {}

// BW1W120 00756a00 BW1M119 0156d200
void Villager::ReactionValidate() {}

// BW1W120 00756a50 BW1M119 0156d120
void Villager::SexValidate() {}

// BW1W120 00756a80 BW1M119 0156d0c0
void Villager::WallhugAndReactionValidate() {}

// BW1W120 00756aa0 BW1M119 0156cfe0
void Villager::ClosestObjectValidate() {}

// BW1W120 00756ad0 BW1M119 0156cf80
MapCoords Villager::GetFinalDestPos()
{
	return MapCoords();
}

// BW1W120 00756ae0 BW1M119 0156ce70
uint32_t Villager::ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2)
{
	return 0;
}

// BW1W120 00756b30 BW1M119 0156ce00
bool32_t Villager::IsDrowning()
{
	return false;
}

// BW1W120 00756b40 BW1M119 0104dbc0
void Villager::SetLife(float param_1) {}

// BW1W120 00756be0 BW1M119 0156cb60
void Villager::FindChildrenAndOrphanThem() {}

// BW1W120 00756c60 BW1M119 0104feb0
bool32_t Villager::IsMovingForAnimation()
{
	return false;
}

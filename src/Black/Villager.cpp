#include "Villager.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

#include "chlasm/Enum.h"
#include "chlasm/GStates.h"
#include "GameOSFile.h"
#include "GameThing.h"
#include "InterfaceStatus.h"
#include "VillagerInfo.h"
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

// BW1W120 0074fb20
void Villager::SetToZero() {}

// BW1W120 0074fb80
void Villager::InitialiseScale(unsigned long param_1) {}

// BW1W120 0074fbe0
Villager* Villager::Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton)
{
	return NULL;
}

// BW1W120 0074fc70
void Villager::CallVirtualFunctionsForCreation(const MapCoords& coords) {}

// BW1W120 0074fd60
void Villager::DeleteDependancys() {}

// BW1W120 0074fec0
bool Villager::UnemployedJobs()
{
	return false;
}

// BW1W120 0074ff60
bool Villager::SetupJobLocation()
{
	return false;
}

// BW1W120 0074ff70
uint32_t Villager::ProcessState()
{
	return 0;
}

// BW1W120 00750060
void Villager::FinishedIntoOutOfAnimation() {}

// BW1W120 00750110
ANIM_LIST Villager::GetAnimId()
{
	return ANIM_LIST(0);
}

// BW1W120 007501a0
void Villager::SetStateCarriedObject() {}

// BW1W120 007502a0
uint32_t Villager::GetWoodCarriedObject()
{
	return 0;
}

// BW1W120 007502d0
uint32_t Villager::DestroyedByEffect(GPlayer* param_1, float param_2)
{
	return 0;
}

// BW1W120 007502f0
GPlayer* Villager::GetPlayer()
{
	return NULL;
}

// BW1W120 00750310
HOLD_TYPE Villager::GetHoldType()
{
	return HOLD_TYPE(0);
}

// BW1W120 00750320
float Villager::GetHoldLoweringMultiplier()
{
	return 0.0f;
}

// BW1W120 00750330
Villager* Villager::GetSpouse()
{
	return NULL;
}

// BW1W120 00750370
Villager* Villager::LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2)
{
	return NULL;
}

// BW1W120 00750410
int Villager::CheckEveryTime()
{
	return 0;
}

// BW1W120 00750670
uint32_t Villager::GetGameTurnsSinceLastChecked()
{
	return 0;
}

// BW1W120 00750690
int Villager::GetGameTurnLastChecked()
{
	return 0;
}

// BW1W120 007506a0
void Villager::SetGameTurnLastChecked() {}

// BW1W120 007506c0
void Villager::VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4) {}

// BW1W120 00750940
void Villager::CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3) {}

// BW1W120 00750ab0
bool32_t Villager::HasSunk()
{
	return false;
}

// BW1W120 00750b50
void Villager::TownDeleted() {}

// BW1W120 00750bb0
void Villager::DebugText(int param_1) {}

// BW1W120 00750de0
void Villager::SetAbode(Abode* abode) {}

// BW1W120 00750e10
bool Villager::GetRandomLookAhead(MapCoords* param_1, float param_2)
{
	return false;
}

// BW1W120 00750ed0
void Villager::SetSpeed(int base_speed, int scale_speed) {}

// BW1W120 00751040
void Villager::Birthday() {}

// BW1W120 00751050
int Villager::CheckChildGrownUp()
{
	return 0;
}

// BW1W120 00751110
bool32_t Villager::IsAMother()
{
	return false;
}

// BW1W120 00751190
bool Villager::StartMoveToObject(Object* object, VILLAGER_STATES state)
{
	SetupMoveToObject(object, (unsigned char)state);
	return true;
}

// BW1W120 007511b0
unsigned short Villager::DropResource(RESOURCE_TYPE param_1, unsigned short param_2)
{
	return 0;
}

// BW1W120 007511e0
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

// BW1W120 00751240
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

// BW1W120 007512a0
bool Villager::IsEnoughFoodInStoragePitForDinner()
{
	return false;
}

// BW1W120 007512e0
Pot* Villager::FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long& param_2, int param_3)
{
	return NULL;
}

// BW1W120 007513f0
void Villager::PickupResource(RESOURCE_TYPE param_1, short param_2, unsigned char param_3) {}

// BW1W120 00751490
void Villager::PickupFood(short param_1) {}

// BW1W120 007514b0
void Villager::PickupWood(short param_1, unsigned char param_2) {}

// BW1W120 007514d0
// TODO: target emits `mov cx,[ecx+0xf4]` (bare 16-bit partial load) not `movsx`; that
// codegen is byte-exact only when the return type is `short` (mangled F), but symbols.txt
// has H (int). Return type is likely wrong in symbols.txt/header — dispatcher call. 88% now.
int Villager::GetFoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxFoodCarried - ResourceHeld[RESOURCE_TYPE_FOOD];
}

// BW1W120 007514f0
// TODO: same as GetFoodCapacity — byte-exact requires `short` return (mangled F) but
// symbols.txt has H (int). 88% with movsx; dispatcher should verify the true return type.
int Villager::GetWoodCapacity()
{
	return ((const GVillagerInfo*)info)->MaxWoodCarried - ResourceHeld[RESOURCE_TYPE_WOOD];
}

// BW1W120 00751510
void Villager::RemoveFromDance(int param_1) {}

// BW1W120 00751520
bool Villager::IsRandomlyLazy()
{
	return false;
}

// BW1W120 00751570
bool Villager::GetResourceHeld(RESOURCE_TYPE& param_1)
{
	return false;
}

// BW1W120 007515c0
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

// BW1W120 007516e0
bool32_t Villager::CheckTakeResourcesToStoragePit()
{
	return false;
}

// BW1W120 00751720
bool32_t Villager::DiscipleDecideWhatToDo()
{
	return false;
}

// BW1W120 00751970
bool Villager::GetPrayerSite()
{
	return false;
}

// BW1W120 00751980
bool Villager::RestartDance(VILLAGER_STATES state)
{
	return false;
}

// BW1W120 00751ab0
char* Villager::GetVillagerText(char* param_1)
{
	return NULL;
}

// BW1W120 00751af0
uint32_t Villager::SaveObject(LHOSFile& param_1, const MapCoords& param_2)
{
	return 0;
}

// BW1W120 00751cf0
bool32_t Villager::IsFunctional()
{
	return false;
}

// BW1W120 00751d20
GJobInfo* Villager::GetJobInfo(unsigned char param_1) const
{
	return NULL;
}

// BW1W120 00751d40
bool Villager::FUN00751d40()
{
	return false;
}

// BW1W120 00751d50
bool32_t Villager::IsAvailable()
{
	return false;
}

// BW1W120 00751d70
uint32_t Villager::IsEffectReceiver(EffectValues* param_1)
{
	return 0;
}

// BW1W120 00751db0
Citadel* Villager::GetCitadel()
{
	return NULL;
}

// BW1W120 00751dd0
VILLAGER_STATES Villager::GetFinalState()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00751e10
void Villager::ResetStateAfterReacting() {}

// BW1W120 00751e50
void Villager::PopFromPrevious() {}

// BW1W120 00751ea0
Football* Villager::GetFootball()
{
	return football;
}

// BW1W120 00751ee0
GTribeInfo* Villager::GetTribe()
{
	return NULL;
}

// BW1W120 00751f00
Town* Villager::GetTown()
{
	return NULL;
}

// BW1W120 00751f10
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

// BW1W120 00751f40
VILLAGER_STATES Villager::GetVillagerAvailableState()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00751f70
VILLAGER_STATES Villager::FUN_00751f70()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00751fa0
void Villager::ArriveHome() {}

// BW1W120 00751fd0
void Villager::LeaveHome() {}

// BW1W120 00752010
int Villager::SetTopState(uint8_t state)
{
	return 0;
}

// BW1W120 007520e0
int Villager::SetCurrentAndDestinationState(uint8_t current, uint8_t destination)
{
	return 0;
}

// BW1W120 00752120
uint32_t Villager::CanPauseForASecond(VILLAGER_STATES state)
{
	return 0;
}

// BW1W120 00752160
Abode* Villager::GetAbode()
{
	return home;
}

// BW1W120 007521b0
void Villager::ToBeDeleted(int param_1) {}

// BW1W120 007521d0
uint32_t Villager::CallState()
{
	return 0;
}

// BW1W120 00752210
bool32_t Villager::IsPregnant()
{
	return false;
}

// BW1W120 00752240
uint32_t Villager::WomanSpecial()
{
	return 0;
}

// BW1W120 00752290
bool Villager::IsVillagerAvailable()
{
	return false;
}

// BW1W120 007522c0
bool32_t Villager::IsAvailableToBeSummonedByCreature()
{
	return false;
}

// BW1W120 00752320
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

// BW1W120 007524d0
bool Villager::IsStateEntryFunctionSameAs(unsigned long param_1, unsigned long param_2) const
{
	return false;
}

// BW1W120 00752530
bool Villager::IsStateExitFunctionSameAs(VILLAGER_STATES state) const
{
	return false;
}

// BW1W120 007525b0
bool Villager::IsReactiveState(unsigned long param_1)
{
	return false;
}

// BW1W120 00752600
bool32_t Villager::IsHungry()
{
	return food <= ((const GVillagerInfo*)info)->HungryForFood;
}

// BW1W120 00752620
bool Villager::IsWoman()
{
	return false;
}

// BW1W120 00752690
bool Villager::MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3)
{
	return false;
}

// BW1W120 00752760
bool Villager::MakeVillagerFaceObject(Object* param_1)
{
	return false;
}

// BW1W120 007527a0
int Villager::ExitReaction(VILLAGER_STATES state)
{
	return 0;
}

// BW1W120 007527e0
bool Villager::ExitDance(unsigned char param_1)
{
	return false;
}

// BW1W120 00752820
bool32_t Villager::IsAvailableForWorshipSite(int param_1)
{
	return false;
}

// BW1W120 00752860
bool Villager::IsAtOrOnTheWayToWorshipSite()
{
	return false;
}

// BW1W120 007528b0
uint32_t Villager::DebugShowTime(uint32_t param_1, unsigned char param_2, unsigned char param_3)
{
	return 0;
}

// BW1W120 007528c0
void Villager::SetAge(uint32_t age) {}

// BW1W120 00752a90
void Villager::SetScaleForAge(unsigned long param_1) {}

// BW1W120 00752b80
bool32_t Villager::SetStateWhenTappedOnAbode()
{
	return false;
}

// BW1W120 00752bd0
uint32_t Villager::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
	return 0;
}

// BW1W120 00752c40
uint32_t Villager::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
	return 0;
}

// BW1W120 00753020
uint32_t Villager::GetScriptObjectType()
{
	return 0;
}

// BW1W120 00753040
bool Villager::IsTouching(MapCoords* coords)
{
	return false;
}

// BW1W120 00753080
uint32_t Villager::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
	return 0;
}

// BW1W120 00753110
void Villager::SetSpeedInMetres(float param_1, int param_2) {}

// BW1W120 00753140
uint32_t Villager::FUN_00753140()
{
	return 0;
}

// BW1W120 007531a0
bool Villager::IsVagrant()
{
	return false;
}

// BW1W120 007531d0
void Villager::ReleaseFromScript() {}

// BW1W120 00753340
void Villager::TestSpecial() {}

// BW1W120 00753390
uint32_t Villager::GetResourceFrom(Object* param_1, RESOURCE_TYPE param_2, short param_3)
{
	return 0;
}

// BW1W120 00753410
void Villager::SetFoodSpeedup(bool param_1) {}

// BW1W120 00753430
void Villager::ProcessFoodSpeedup() {}

// BW1W120 00753460
void Villager::IncreaseLife(float param_1) {}

// BW1W120 00753470
void Villager::FindPosOutsideAbode(Abode* param_1) {}

// BW1W120 00753540
Abode* Villager::FUN_00753540()
{
	return NULL;
}

// BW1W120 00753560
void Villager::AdjustTownModifier(VILLAGER_STATES state, int param_2) {}

// BW1W120 00753690
void Villager::SetStateSpeed() {}

// BW1W120 00753740
void Villager::SetStateSpeed(unsigned char param_1) {}

// BW1W120 00753b50
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

// BW1W120 00753c70
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

// BW1W120 00753dd0
uint32_t Villager::VillagerCreated()
{
	return 0;
}

// BW1W120 00753e00
uint32_t Villager::RemoveFromGame()
{
	return 0;
}

// BW1W120 00753e20
MapCoords Villager::GetResourceDropoffPos(RESOURCE_TYPE resource_type)
{
	return MapCoords();
}

// BW1W120 00753f00
bool Villager::IsFinalState(VILLAGER_STATES state)
{
	return false;
}

// BW1W120 00753f20
HELP_TEXT Villager::GetQueryFirstEnumText()
{
	return HELP_TEXT(0);
}

// BW1W120 00753f90
HELP_TEXT Villager::GetQueryLastEnumText()
{
	return HELP_TEXT(0);
}

// BW1W120 00754050
uint32_t Villager::GetFOVHelpMessageSet()
{
	return 0;
}

// BW1W120 00754060
uint32_t Villager::GetFOVHelpCondition()
{
	return 0;
}

// BW1W120 00754070
bool32_t Villager::SetDiscipleNothingToDo()
{
	return false;
}

// BW1W120 007540d0
bool32_t Villager::DiscipleNothingToDo()
{
	return false;
}

// BW1W120 00754140
bool32_t Villager::EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2)
{
	return false;
}

// BW1W120 00754180
bool32_t Villager::FindDisciplePrayerPos(MapCoords* param_1)
{
	return false;
}

// BW1W120 00754280
uint32_t Villager::Save(GameOSFile& file)
{
	return 0;
}

// BW1W120 00754580
uint32_t Villager::Load(GameOSFile& file)
{
	return 0;
}

// BW1W120 00754870
void Villager::ResolveLoad() {}

// BW1W120 007548a0
bool32_t Villager::CallSaveStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
	return false;
}

// BW1W120 00754910
bool32_t Villager::CallLoadStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
	return false;
}

// BW1W120 00754980
bool32_t Villager::SaveStateFunction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007549b0
bool32_t Villager::LoadStateFunction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754a00
bool32_t Villager::SaveBuilding(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754a60
bool32_t Villager::LoadBuilding(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754ac0
bool32_t Villager::SaveDance(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754b60
bool32_t Villager::LoadDance(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754c00
bool32_t Villager::SaveWorship(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754c60
bool32_t Villager::LoadWorship(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754cc0
bool32_t Villager::SaveDead(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754d20
bool32_t Villager::LoadDead(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754d80
bool32_t Villager::SaveInHand(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754de0
bool32_t Villager::LoadInHand(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e40
bool32_t Villager::SaveFishing(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e60
bool32_t Villager::LoadFishing(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754e80
bool32_t Villager::SaveFarming(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754ef0
bool32_t Villager::LoadFarming(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00754f60
bool32_t Villager::SaveFootball(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755040
bool32_t Villager::LoadFootball(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755120
bool32_t Villager::SaveShepherd(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007551c0
bool32_t Villager::LoadShepherd(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755260
bool32_t Villager::SaveInScript(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755370
bool32_t Villager::LoadInScript(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755470
bool32_t Villager::SaveScriptPos(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755580
bool32_t Villager::LoadScriptPos(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755680
bool32_t Villager::SaveFire(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007556f0
bool32_t Villager::LoadFire(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755760
bool32_t Villager::SaveDiscipleNothingToDo(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755780
bool32_t Villager::LoadDiscipleNothingToDo(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007557a0
bool32_t Villager::SaveTrader(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755810
bool32_t Villager::LoadTrader(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755880
bool32_t Villager::SaveInspectObject(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558a0
bool32_t Villager::LoadInspectObject(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558c0
bool32_t Villager::SaveReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558d0
bool32_t Villager::LoadReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 007558e0
bool32_t Villager::SaveClearArea(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755980
bool32_t Villager::LoadClearArea(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755a20
bool32_t Villager::SaveBreeder(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755a80
bool32_t Villager::LoadBreeder(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755ae0
bool32_t Villager::SaveForesting(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b00
bool32_t Villager::LoadForesting(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b20
bool32_t Villager::SaveFootPath(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b50
bool32_t Villager::LoadFootPath(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755b80
bool32_t Villager::SaveInspectionReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755c20
bool32_t Villager::LoadInspectionReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755cc0
bool32_t Villager::SaveMagicTreeReaction(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00755d60
bool32_t Villager::LoadMagicTreeReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755e00
uint32_t Villager::SaveHideInBuilding(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755ea0
uint32_t Villager::LoadHideInBuilding(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755f40
uint32_t Villager::SaveShieldReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00755fa0
uint32_t Villager::LoadShieldReaction(GameOSFile& param_1)
{
	return 0;
}

// BW1W120 00756000
uint32_t Villager::SetVillagerDisciple(GameThing* param_1, VILLAGER_DISCIPLE param_2, int param_3)
{
	return 0;
}

// BW1W120 007560e0
uint32_t Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
	return 0;
}

// BW1W120 00756170
void Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE param_1) {}

// BW1W120 00756230
void Villager::DebugValidateState() {}

// BW1W120 00756240
void Villager::ForceMoveVillagerToAbode(Abode* abode) {}

// BW1W120 007562c0
void Villager::SetSkeleton(int index) {}

// BW1W120 00756450
void Villager::InsertMapObject() {}

// BW1W120 00756460
bool32_t Villager::IsReachable()
{
	return false;
}

// BW1W120 007564a0
uint32_t Villager::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return 0;
}

// BW1W120 007564c0
bool32_t Villager::CanBecomeAPhysicsObject()
{
	return false;
}

// BW1W120 007564d0
uint32_t Villager::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
                               const MapCoords* param_5, int param_6)
{
	return 0;
}

// BW1W120 00756520
VILLAGER_STATES Villager::LookAtPreviousStateReactToTownEmergency()
{
	return VILLAGER_STATE_INVALID_STATE;
}

// BW1W120 00756530
void Villager::SetTown(Town* town)
{
	this->town = town;
}

// BW1W120 00756540
bool32_t Villager::ScriptInCrowd()
{
	return false;
}

// BW1W120 00756570
bool32_t Villager::SaveLanded(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00756580
bool32_t Villager::LoadLanded(GameOSFile& param_1)
{
	return false;
}

// BW1W120 00756590
int Villager::CallIntoAnimationFunction(uint8_t state)
{
	return 0;
}

// BW1W120 00756620
int Villager::CallOutofAnimationFunction(uint8_t state)
{
	return 0;
}

// BW1W120 007569a0
void Villager::MoveToObjectValidate() {}

// BW1W120 007569d0
void Villager::MoveOnStructureValidate() {}

// BW1W120 00756a00
void Villager::ReactionValidate() {}

// BW1W120 00756a50
void Villager::SexValidate() {}

// BW1W120 00756a80
void Villager::WallhugAndReactionValidate() {}

// BW1W120 00756aa0
void Villager::ClosestObjectValidate() {}

// BW1W120 00756ad0
MapCoords Villager::GetFinalDestPos()
{
	return MapCoords();
}

// BW1W120 00756ae0
uint32_t Villager::ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2)
{
	return 0;
}

// BW1W120 00756b30
bool32_t Villager::IsDrowning()
{
	return false;
}

// BW1W120 00756b40
void Villager::SetLife(float param_1) {}

// BW1W120 00756be0
void Villager::FindChildrenAndOrphanThem() {}

// BW1W120 00756c60
bool32_t Villager::IsMovingForAnimation()
{
	return false;
}

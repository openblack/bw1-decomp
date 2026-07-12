#include "VillagerStateTableInfo.h"

#include "chlasm/Enum.h"

#include "Abode.h"
#include "Game.h"
#include "GameThing.h"
#include "MapCoords.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "Reaction.h"
#include "StoragePit.h"
#include "Town.h"
#include "Villager.h"

// BW1W120 00db9e68
GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// BW1W120 00769580
GBaseInfo* GVillagerStateTableInfo::GetBaseInfo(uint32_t& count)
{
	count = sizeof(g_GVillagerStateTableInfos) / sizeof(g_GVillagerStateTableInfos[0]);
	return (GBaseInfo*)g_GVillagerStateTableInfos;
}

// BW1W120 007695f0 ~GVillagerStateTableInfo()
GVillagerStateTableInfo::~GVillagerStateTableInfo() {}

// BW1W120 00769620
bool32_t Villager::GotoStoragePitForDropOff()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		SetupMoveToOnFootpath(*GetStoragePit(), GetStoragePit()->GetArrivePos(),
		                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_DROP_OFF);
		return true;
	}
	RESOURCE_TYPE resourceType;
	GetResourceHeld(resourceType);
	if (resourceType != RESOURCE_TYPE_FOOD && resourceType != RESOURCE_TYPE_WOOD)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return false;
	}
	SetupMoveToWithHug(GetResourceDropoffPos(resourceType), VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_DROP_OFF);
	return true;
}

// BW1W120 007696d0
bool32_t Villager::ArrivesAtStoragePitForDropOff()
{
	RESOURCE_TYPE resourceHeld;
	int           held = GetResourceHeld(resourceHeld);
	if (held)
	{
		StoragePit* storagePit = GetStoragePit();
		if (storagePit != NULL && storagePit->IsFunctional())
		{
			unsigned long amount;
			if (AtStructureAddResource(storagePit, resourceHeld, amount, false) == VILLAGER_STATE_GO_HOME)
			{
				return true;
			}
			SetupMoveToOnFootpath(*storagePit, storagePit->GetArrivePos(), VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			return true;
		}
		if (GetTown() != NULL)
		{
			MapCoords  storePos;
			GameThing* pot = (GameThing*)GetTown()->GetTemporaryResourceStorePotOrPos(coords, storePos, resourceHeld);
			if (pot != NULL)
			{
				if (!AreWeThere(&storePos, 0.0f))
				{
					SetupMoveToWithHug(storePos, GetFinalState());
					return true;
				}
				pot->AddResource(resourceHeld, held, NULL, false, NULL, 0);
				if (resourceHeld == RESOURCE_TYPE_FOOD)
				{
					DropFood(held);
				}
				else
				{
					DropWood(held);
				}
			}
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00769830
bool32_t Villager::GotoStoragePitForFood()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		SetupMoveToOnFootpath(*GetStoragePit(), GetStoragePit()->GetArrivePos(), 0);
		return true;
	}
	SetupMoveToWithHug(GetResourceDropoffPos(RESOURCE_TYPE_FOOD), VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_FOOD);
	return true;
}

// BW1W120 007698b0
bool32_t Villager::ArrivesAtStoragePitForFood()
{
	return ArrivesAtStoragePitForResource(RESOURCE_TYPE_FOOD, GetAmountOfFoodRequiredForMeal(),
	                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
}

// BW1W120 007698d0
bool32_t Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE resourceType, unsigned long amount,
                                                  VILLAGER_STATES arriveState, VILLAGER_STATES failState)
{
	if (amount != 0)
	{
		if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
		{
			unsigned long take = amount;
			if (amount >= GetStoragePit()->GetResource(resourceType))
			{
				take = GetStoragePit()->GetResource(resourceType);
			}
			if (take != 0)
			{
				uint32_t result = AtStructureRemoveResource(GetStoragePit(), resourceType, take, NULL);
				if (result == VILLAGER_STATE_GO_HOME)
				{
					return VILLAGER_STATE_GO_HOME;
				}
				if (result == 1 && arriveState != VILLAGER_STATE_INVALID_STATE)
				{
					SetupMoveToOnFootpath(*GetStoragePit(), GetStoragePit()->GetArrivePos(), arriveState);
					return true;
				}
			}
			SetTopState(failState);
			return false;
		}
		if (GetTown() != NULL)
		{
			MapCoords storePos;
			Object*   pot = (Object*)GetTown()->GetTemporaryResourceStorePotOrPos(coords, storePos, resourceType);
			if (pot != NULL)
			{
				// TODO: float block — pot->GetNearestEdgeOfObject(this) returns a position by value
				// (Rule 2; header currently void), converted to fixed-point LH3DMapCoords via *6553.6
				// and *65536*0.1, then storePos.altitude -= LH3DIsland::GetAltitude(mapCoords).
				if (!AreWeThere(&storePos, 0.0f))
				{
					SetupMoveToWithHug(storePos, GetFinalState());
					return VILLAGER_STATE_GO_HOME;
				}
				// TODO: pot->RemoveResource(resourceType, amount, NULL, NULL) — vtable slot 0xa0, not on Object; needs concrete pot type
				short carried = (short)pot->GetCarriedTreeType();
				PickupResource(resourceType, carried, amount);
				if (arriveState != VILLAGER_STATE_INVALID_STATE)
				{
					SetTopState(failState);
					return true;
				}
				SetTopState(failState);
				return false;
			}
		}
	}
	SetTopState(failState);
	return true;
}

// BW1W120 00769b30
// TODO: 86% — semantics verified, but the 8966 scheduler places `mov esi,eax` (save Abode*) and
// `mov ebx,[esi]` (vtable load) later among the constant arg pushes than our source produces.
// Pure scheduler tie-break, not a semantic bug (see CHEATSHEET save-across-call-spill).
bool32_t Villager::ArrivesAtHomeWithFood()
{
	if (GetAbode())
	{
		GetAbode()->AddResource(RESOURCE_TYPE_FOOD, (int16_t)DropFood(0), NULL, false, NULL, 0);
	}
	return ArrivesHome();
}

// BW1W120 00769b80
bool32_t Villager::CheckTrader()
{
	if (football)
	{
		return false;
	}
	return SetTraderNothingToDo();
}

// BW1W120 00769c10
bool32_t Villager::CheckMissionary()
{
	return false;
}

// BW1W120 00769c20
bool32_t Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE param_1)
{
	return false;
}

// BW1W120 00769d20
bool32_t Villager::ArrivesAtStoragePitForTraderPickUp()
{
	return false;
}

// BW1W120 00769dc0
bool32_t Villager::ArrivesAtStoragePitForTraderDropOff()
{
	return false;
}

// BW1W120 00769ea0
bool32_t Villager::SetTraderNothingToDo()
{
	Town* town = GetTown();

	// TODO: 84% — prologue scheduling differs: target emits `push edi` after the vtbl load and sinks the
	// town spill (`mov edi,eax`) below `mov ecx,esi`; toy variants (inline getter, decl order, ==0) all
	// produce our shape. Semantics verified against 0x769ea0.
	SetTown(TradeTown);
	if (!SetDiscipleNothingToDo())
	{
		SetTown(town);
		return false;
	}
	SetTown(town);
	return true;
}

// BW1W120 00769ee0
bool32_t Villager::SetupBreederDisciple()
{
	return false;
}

// BW1W120 0076a1b0
bool32_t Villager::BreederDisciple()
{
	if (!IsPregnant())
	{
		if (GetTown()->desire.GetSortedDesire(0)->field_0x8 != TOWN_DESIRE_INFO_FOR_SLEEP)
		{
			if (TurnsUntilNextStateChange-- > 0)
			{
				return true;
			}
			SetupWander(WanderArea, VILLAGER_STATE_BREEDER_DISCIPLE);
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_GO_HOME);
	return true;
}

// BW1W120 0076a220
bool32_t Villager::MissionaryDisciple()
{
	return false;
}

// BW1W120 0076a2a0
bool32_t Villager::EnterBreeder(unsigned char param_1, unsigned char param_2)
{
	if ((GGame::g_game->field_0x14 & 0x8000) == 0)
	{
		Reaction::CreateReaction(this, REACTION_REACT_TO_BREEDER, GetPlayer(), 1);
	}
	return true;
}

// BW1W120 0076a2d0
bool32_t Villager::ExitBreeder(unsigned char param_1)
{
	Reaction::RemoveAllReactionsOfTypeInitiatedByObject(this, REACTION_REACT_TO_BREEDER);
	return true;
}

// BW1W120 0076a2f0
uint32_t Villager::AtStructureRemoveResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long param_3,
                                             bool* param_4)
{
	return 0;
}

// BW1W120 0076a3b0
uint32_t Villager::AtStructureAddResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long& param_3,
                                          bool param_4)
{
	return 0;
}

// BW1W120 0076a4c0
bool32_t Villager::SetDying()
{
	return false;
}

// BW1W120 0076a570
bool32_t Villager::Dying()
{
	return false;
}

// BW1W120 0076a5e0
bool32_t Villager::Dead()
{
	return false;
}

// BW1W120 0076a780
bool32_t Villager::Drowning()
{
	return false;
}

// BW1W120 0076a7e0
bool32_t Villager::MakeScaredStiff()
{
	return false;
}

// BW1W120 0076a8b0
bool32_t Villager::ScaredStiff()
{
	return false;
}

// BW1W120 0076a8d0
bool32_t Villager::VagrantStart()
{
	return false;
}

// BW1W120 0076aa60
bool32_t Villager::MornDeath()
{
	return false;
}

// BW1W120 0076aa70
bool32_t Villager::EatOutside()
{
	return false;
}

// BW1W120 0076aa80
float Villager::GetImportance()
{
	return 0.0f;
}

// BW1W120 0076aab0
bool32_t Villager::SetupInspectObject(Object* param_1)
{
	return false;
}

// BW1W120 0076ac40
bool32_t Villager::InspectObject()
{
	return false;
}

// BW1W120 0076acb0
int Villager::ExitInFlying(VILLAGER_STATES state)
{
	return 0;
}

// BW1W120 0076ace0
bool32_t Villager::EnterSex(unsigned char param_1, unsigned char param_2)
{
	return false;
}

// BW1W120 0076acf0
bool32_t Villager::SetupWander(JustWholeMapXZ& param_1, VILLAGER_STATES param_2)
{
	return false;
}

// BW1W120 0076ad80
bool32_t Villager::ExitSex(unsigned char param_1)
{
	return false;
}

// BW1W120 0076ade0
bool32_t Villager::InHand()
{
	return false;
}

// BW1W120 0076afe0
uint32_t Villager::EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
	return 0;
}

// BW1W120 0076b000
int Villager::ExitInHand(VILLAGER_STATES state)
{
	return 0;
}

// BW1W120 0076b030
bool32_t Villager::IsInACreaturesHand()
{
	return false;
}

// BW1W120 0076b060
bool32_t Villager::SetupWaitForCounter(unsigned short param_1, VILLAGER_STATES param_2)
{
	return false;
}

// BW1W120 0076b090
uint32_t Villager::SetupPauseForASecond(VILLAGER_STATES state)
{
	return 0;
}

// BW1W120 0076b0b0
bool32_t Villager::PauseForASecond()
{
	return false;
}

// BW1W120 0076b0d0
bool32_t Villager::SetupPanicReaction(Reaction* param_1, MapCoords& param_2)
{
	return false;
}

// BW1W120 0076b1c0
bool32_t Villager::PanicReaction()
{
	return false;
}

// BW1W120 0076b200
bool32_t Villager::GotoCongregateInTownAfterEmergency()
{
	return false;
}

// BW1W120 0076b300
bool32_t Villager::CongregateInTownAfterEmergency()
{
	return false;
}

// BW1W120 0076b380
bool32_t Villager::BeingEaten()
{
	return false;
}

// BW1W120 0076b3f0
bool32_t Villager::GoAndChilloutOutsideHome()
{
	return false;
}

// BW1W120 0076b4e0
bool32_t Villager::SitAndChillout()
{
	return false;
}

// BW1W120 0076b570
bool32_t Villager::EnterSitAndChillOut(unsigned char param_1, unsigned char param_2)
{
	return false;
}

// BW1W120 0076b590
bool32_t Villager::GoAndChilloutInTown()
{
	return false;
}

// BW1W120 0076b610
void Villager::GetMeToMyChillOutPos(int (Villager::*callback)(MapCoords&), MapCoords& param_5, float param_6,
                                    const MapCoords& param_7)
{
}

// BW1W120 0076b7e0
bool32_t Villager::ArrivesHomeFromWorship()
{
	return false;
}

// BW1W120 0076b7f0
bool32_t Villager::SleepInTentFromWorship()
{
	return false;
}

// BW1W120 0076b800
bool32_t Villager::BreederJustLanded()
{
	return false;
}

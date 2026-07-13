#include "VillagerStateTableInfo.h"

#include "chlasm/Enum.h"

#include "Abode.h"
#include "Game.h"
#include "GameThing.h"
#include "VillagerInfo.h"
#include "MapCoords.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "Rand.h"
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
// TODO: 86.6% — semantics verified. Both branches pass a by-value MapCoords temp
// (GetArrivePos / GetResourceDropoffPos) as a const-ref arg alongside a constant state arg.
// Target pushes the constant state first, then materialises the retbuf; ours hoists the
// retbuf call ahead of the constant push. An isolated toy of this exact shape (POD *and*
// copy-ctor MapCoords) matches the target, so the hoist is a whole-function register-pressure
// interaction, not a local shape bug — revisit once a neighbour with the same retbuf-arg
// pattern matches. See CHEATSHEET retbuf-arg-order.
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
// TODO: 86.4% — state arg corrected to ARRIVES_AT_STORAGE_PIT_FOR_FOOD (was wrongly 0).
// Residual is retbuf-arg-order (same as sibling GotoStoragePitForDropOff): target
// materialises the GetArrivePos/GetResourceDropoffPos retbuf temp before pushing the
// constant state arg; ours pushes the state first. Whole-function register-pressure
// scheduler interaction — see CHEATSHEET retbuf-arg-order. Defer.
bool32_t Villager::GotoStoragePitForFood()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		SetupMoveToOnFootpath(*GetStoragePit(), GetStoragePit()->GetArrivePos(),
		                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_FOOD);
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
bool32_t Villager::ExitBreeder(unsigned char state)
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
	if (GetDeathReason() != DEATH_REASON_SACRIFICE)
	{
		PlayAnimThenSetState(VILLAGER_STATE_DEAD, 1);
	}
	else
	{
		SetTopState(VILLAGER_STATE_DEAD);
	}
	if ((Flags & 4) == 0)
	{
		if (GetTown() != NULL && GetTown()->field_0x748 != 0)
		{
			return true;
		}
		Reaction::CreateReaction(this, REACTION_REACT_TO_DEATH, NULL, 0);
	}
	return true;
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
	if (--TurnsUntilNextStateChange == 0)
	{
		GoHome();
	}
	return true;
}

// BW1W120 0076a8d0
bool32_t Villager::VagrantStart()
{
	return false;
}

// BW1W120 0076aa60
bool32_t Villager::MornDeath()
{
	return GoHome();
}

// BW1W120 0076aa70
bool32_t Villager::EatOutside()
{
	return true;
}

// BW1W120 0076aa80
float Villager::GetImportance()
{
	return (float)GetAge() * 0.001f;
}

// BW1W120 0076aab0
bool32_t Villager::SetupInspectObject(Object* param_1)
{
	return false;
}

// BW1W120 0076ac40
// TODO: IsReadyForNewAnimation is mangled void (QAEXI) but Living.h declares it bool;
// caller does `test eax,eax` on a void call (void-call-eax-probed-by-caller idiom). Costs the
// al-vs-eax test until the shared header return type is fixed (dispatcher). Rest matches.
bool32_t Villager::InspectObject()
{
	GameThingWithPos* target = (GameThingWithPos*)TargetThing;
	if (target != NULL && LookAtObject(target, 1) == 0)
	{
		return true;
	}
	if (IsReadyForNewAnimation(1))
	{
		if (DiscipleType == VILLAGER_DISCIPLE_BUILDER && target != NULL && (target->Flags & 2))
		{
			if (TargetThing == NULL)
			{
				return false;
			}
			if (SetupBuildingObject((MultiMapFixed*)TargetThing) == 1)
			{
				return true;
			}
		}
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	return true;
}

// BW1W120 0076acb0
int Villager::ExitInFlying(VILLAGER_STATES state)
{
	return (uint8_t)state == VILLAGER_STATE_IN_HAND || (uint8_t)state == VILLAGER_STATE_LANDED ||
	       (uint8_t)state == VILLAGER_STATE_DYING || (uint8_t)state == VILLAGER_STATE_DEAD ||
	       (uint8_t)state == VILLAGER_STATE_DROWNING;
}

// BW1W120 0076ace0
bool32_t Villager::EnterSex(unsigned char param_1, unsigned char param_2)
{
	return true;
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
	// field_0x10c is a float slot elsewhere; this state stashes the (remapped) disciple
	// type into its raw bits, hence the reinterpret store rather than a float conversion.
	uint32_t discipleType = DiscipleType;
	if (discipleType == VILLAGER_DISCIPLE_MISSIONARY)
	{
		discipleType = VILLAGER_DISCIPLE_NONE;
	}
	*(uint32_t*)&field_0x10c = discipleType;
	return 1;
}

// BW1W120 0076b000
// TODO: 88.9% — semantics verified. Only diff is the epilogue: target sandwiches
// `mov eax,esi` between `pop edi` and `pop esi`; ours emits it before both pops.
// Toy-tested (named-result, !=0 test, early-return) — the result/if/return-result form
// is confirmed correct (early-return diverges into 1-reg + immediate return), leaving a
// whole-TU epilogue scheduler tie (bool-return-full-eax-epilogue family). Defer.
int Villager::ExitInHand(VILLAGER_STATES state)
{
	int result = Living::ExitInHand(state);
	if (result == 1)
	{
		Abode* abode = GetAbode();
		if (abode != NULL)
		{
			abode->field_0x7c &= ~0x10;
		}
	}
	return result;
}

// BW1W120 0076b030
bool32_t Villager::IsInACreaturesHand()
{
	return false;
}

// BW1W120 0076b060
bool32_t Villager::SetupWaitForCounter(unsigned short counter, VILLAGER_STATES state)
{
	if (SetCurrentAndDestinationState(VILLAGER_STATE_WAIT_FOR_COUNTER, state) == 1)
	{
		TurnsUntilNextStateChange = counter;
		return true;
	}
	return false;
}

// BW1W120 0076b090
uint32_t Villager::SetupPauseForASecond(VILLAGER_STATES state)
{
	return SetCurrentAndDestinationState(VILLAGER_STATE_PAUSE_FOR_A_SECOND, state) == 1;
}

// BW1W120 0076b0b0
// TODO: 98.6% — semantics verified. Residual: target calls Living::IsReadyForNewAnimation
// as the void-mangled symbol (?...@QAEXI@Z) and does `test eax,eax`; ours calls the
// bool-mangled symbol (Living.h declares it `bool`) and does `test al,al`. Target's 32-bit
// eax test implies a 32-bit return, but the real symbol is `void` (QAEXI) — the
// void-call-eax-probed-by-caller idiom. Fixing needs Living.h's return type (shared header,
// affects Living.cpp + symbols.txt) — dispatcher territory. Defer.
bool32_t Villager::PauseForASecond()
{
	if (IsReadyForNewAnimation(1))
	{
		SetTopStateToFinal();
	}
	return true;
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
// TODO: GameRand's __FILE__/__LINE__ default args can't match the original line numbers
// in a split TU (costs the file-string + line-number arg pushes per call). Rest matches.
bool32_t Villager::CongregateInTownAfterEmergency()
{
	if (GetTown() != NULL && GetTown()->IsInStateOfEmergency())
	{
		int state = GRand::GameRand(12, __FILE__, __LINE__) ? VILLAGER_STATE_GOTO_CONGREGATE_IN_TOWN_AFTER_EMERGENCY
		                                                    : VILLAGER_STATE_GO_HOME;
		PlayAnimThenSetState(state, 1);
		return true;
	}
	int state = GRand::GameRand(5, __FILE__, __LINE__) ? VILLAGER_STATE_GOTO_CONGREGATE_IN_TOWN_AFTER_EMERGENCY
	                                                   : VILLAGER_STATE_DECIDE_WHAT_TO_DO;
	PlayAnimThenSetState(state, 1);
	return true;
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
// TODO: 76% — semantics verified (2 loads + store + `mov eax,1`). Target schedules the
// `mov [ecx+0x58],dx` store BEFORE `mov eax,1`; ours emits `mov eax,1` first. Toy-tested
// (return 1/true, value-local, ptr-local, this-> forms) all reproduce our order under the
// exact build flags — a whole-TU scheduler tie-break, not a local source shape. Defer.
bool32_t Villager::EnterSitAndChillOut(unsigned char param_1, unsigned char param_2)
{
	TurnsUntilNextStateChange = ((const GVillagerInfo*)info)->InitialChillOutTime;
	return true;
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
	return ArrivesHome();
}

// BW1W120 0076b7f0
bool32_t Villager::SleepInTentFromWorship()
{
	return SleepInTent();
}

// BW1W120 0076b800
bool32_t Villager::BreederJustLanded()
{
	return false;
}

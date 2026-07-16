#include "VillagerStateTableInfo.h"

#include <stdlib.h> /* For max */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LHPoint.h>       /* For struct LHPoint */

#include "chlasm/Enum.h"

#include "Abode.h"
#include "ContainerInfo.h"
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
#include "Utils.h"
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
		MapCoords arrivePos = GetStoragePit()->GetArrivePos();
		SetupMoveToOnFootpath(*GetStoragePit(), arrivePos, VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_DROP_OFF);
		return true;
	}
	RESOURCE_TYPE resourceType;
	GetResourceHeld(resourceType);
	if (resourceType == RESOURCE_TYPE_FOOD || resourceType == RESOURCE_TYPE_WOOD)
	{
		MapCoords dropoffPos = GetResourceDropoffPos(resourceType);
		SetupMoveToWithHug(dropoffPos, VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_DROP_OFF);
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return false;
}

// BW1W120 007696d0
// TODO: GetResourceHeld should return a 32-bit type (target stores raw eax with no
// widening); AreWeThere should return bool32_t (target tests full eax); push/lea
// scheduling also differs
bool32_t Villager::ArrivesAtStoragePitForDropOff()
{
	RESOURCE_TYPE resourceHeld;
	unsigned long held = GetResourceHeld(resourceHeld);
	if (held)
	{
		StoragePit* storagePit = GetStoragePit();
		if (storagePit != NULL && storagePit->IsFunctional())
		{
			if (AtStructureAddResource(storagePit, resourceHeld, held, false) == VILLAGER_STATE_GO_HOME)
			{
				return true;
			}
			SetupMoveToOnFootpath(*storagePit, storagePit->GetArrivePos(), VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			return true;
		}
		if (GetTown() != NULL)
		{
			MapCoords storePos;
			Object*   pot = (Object*)GetTown()->GetTemporaryResourceStorePotOrPos(Pos, storePos, resourceHeld);
			if (pot != NULL)
			{
				if (AreWeThere(&storePos, 0.0f))
				{
					pot->AddResource(resourceHeld, held, NULL, false, NULL, 0);
					if (resourceHeld == RESOURCE_TYPE_FOOD)
					{
						DropFood((unsigned short)held);
					}
					else
					{
						DropWood((unsigned short)held);
					}
				}
				else
				{
					SetupMoveToWithHug(storePos, GetFinalState());
					return true;
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
		MapCoords arrivePos = GetStoragePit()->GetArrivePos();
		SetupMoveToOnFootpath(*GetStoragePit(), arrivePos, VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_FOOD);
		return true;
	}
	else
	{
		MapCoords dropoffPos = GetResourceDropoffPos(RESOURCE_TYPE_FOOD);
		SetupMoveToWithHug(dropoffPos, VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_FOOD);
		return true;
	}
}

// BW1W120 007698b0
bool32_t Villager::ArrivesAtStoragePitForFood()
{
	return ArrivesAtStoragePitForResource(RESOURCE_TYPE_FOOD, GetAmountOfFoodRequiredForMeal(),
	                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
}

// BW1W120 007698d0
// TODO: the shared 0.001f constant is pooled in another unit's .rdata (byte-identical after
// link); AreWeThere should return bool32_t (target tests full eax); push/lea scheduling
// also differs
bool32_t Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE resourceType, unsigned long amount,
                                                  VILLAGER_STATES arriveState, VILLAGER_STATES failState)
{
	if (amount > 0)
	{
		if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
		{
			if (amount >= GetStoragePit()->GetResource(resourceType))
			{
				amount = GetStoragePit()->GetResource(resourceType);
			}
			if (amount > 0)
			{
				uint32_t result = AtStructureRemoveResource(GetStoragePit(), resourceType, amount, NULL);
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
			Object*   pot = (Object*)GetTown()->GetTemporaryResourceStorePotOrPos(Pos, storePos, resourceType);
			if (pot != NULL)
			{
				LHPoint       edgePos = pot->GetNearestEdgeOfObject(this);
				LH3DMapCoords lh3dCoords;
				storePos.x = (int)(edgePos.x * 6553.6f);
				storePos.z = (int)(edgePos.z * 6553.6f);
				float fixedX = edgePos.x * 65536.0f;
				float fixedZ = edgePos.z * 65536.0f;
				lh3dCoords.x = (int)(fixedX * 0.001f);
				lh3dCoords.z = (int)(fixedZ * 0.001f);
				lh3dCoords.altitude = 0.0f;
				storePos.altitude = edgePos.y - LH3DIsland::GetAltitude(lh3dCoords);
				if (AreWeThere(&storePos, 0.0f))
				{
					pot->RemoveResource(resourceType, amount, NULL, NULL);
					PickupResource(resourceType, (short)amount, (unsigned char)pot->GetCarriedTreeType());
					if (arriveState != VILLAGER_STATE_INVALID_STATE)
					{
						SetTopState(arriveState);
						return true;
					}
					SetTopState(failState);
					return false;
				}
				SetupMoveToWithHug(storePos, GetFinalState());
				return VILLAGER_STATE_GO_HOME;
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
	if (TradeTown == NULL)
	{
		return false;
	}
	float woodDesire = TradeTown->desire.field_0x168[TOWN_DESIRE_INFO_FOR_WOOD] +
	                   TradeTown->desire.field_0xd4[TOWN_DESIRE_INFO_FOR_WOOD] +
	                   TradeTown->desire.field_0x90[TOWN_DESIRE_INFO_FOR_WOOD];
	float foodDesire = TradeTown->desire.field_0x168[TOWN_DESIRE_INFO_FOR_FOOD] +
	                   TradeTown->desire.field_0xd4[TOWN_DESIRE_INFO_FOR_FOOD] +
	                   TradeTown->desire.field_0x90[TOWN_DESIRE_INFO_FOR_FOOD];
	if (foodDesire > woodDesire)
	{
		TargetThing = NULL;
		VILLAGER_STATES state = (VILLAGER_STATES)CheckTraderPickUpOrDropOff(RESOURCE_TYPE_FOOD);
		SetTopState(state);
		return true;
	}
	if (woodDesire != 0.0f)
	{
		TargetThing = (GameThing*)1; // fabricated cast: the binary stores literal 1 into the pointer
		VILLAGER_STATES state = (VILLAGER_STATES)CheckTraderPickUpOrDropOff(RESOURCE_TYPE_WOOD);
		SetTopState(state);
		return true;
	}
	return SetTraderNothingToDo();
}

// BW1W120 00769c10
bool32_t Villager::CheckMissionary()
{
	return false;
}

// BW1W120 00769c20
// TODO: our build computes `remainder` after the distance calls (target stores it first);
// the target's distance calls land on the unnamed GetDistanceInMetres copy at 0x74cd70;
// GetResourceHeld should return a 32-bit type
bool32_t Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE resourceType)
{
	MapCoords dropoffPos = GetResourceDropoffPos(resourceType);
	Town*     town = GetTown();
	SetTown(TradeTown);
	MapCoords tradeDropoffPos = GetResourceDropoffPos(resourceType);
	SetTown(town);
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	unsigned long        held = GetResourceHeld(resourceType);
	float                fraction = (float)held / villagerInfo->MaxTraderFoodCarried;
	float                remainder = 1.0f - fraction;
	float                dropScore =
		GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(Pos, tradeDropoffPos), 5000.0f) * fraction;
	float pickScore = GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(Pos, dropoffPos), 5000.0f) * remainder;
	return pickScore <= dropScore ? VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_TRADER_DROP_OFF
	                              : VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_TRADER_PICK_UP;
}

// BW1W120 00769d20
// TODO: GetResourceHeld should return a 32-bit type (the widening it forces perturbs the
// float-conversion tails)
bool32_t Villager::ArrivesAtStoragePitForTraderPickUp()
{
	RESOURCE_TYPE resourceType = (RESOURCE_TYPE)(int)TargetThing; // trader stashes the resource type in TargetThing
	if (resourceType != RESOURCE_TYPE_FOOD && resourceType != RESOURCE_TYPE_WOOD)
	{
		return false;
	}
	float maxCarried;
	if (resourceType == RESOURCE_TYPE_FOOD)
	{
		maxCarried = (float)((const GVillagerInfo*)info)->MaxTraderFoodCarried;
	}
	else
	{
		maxCarried = (float)((const GVillagerInfo*)info)->MaxTraderWoodCarried;
	}
	unsigned long held = GetResourceHeld(resourceType);
	uint32_t      result =
		ArrivesAtStoragePitForResource(resourceType, (unsigned long)(maxCarried - (float)held),
	                                   VILLAGER_STATE_DECIDE_WHAT_TO_DO, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	if (result == 0)
	{
		return SetTraderNothingToDo();
	}
	return result;
}

// BW1W120 00769dc0
// TODO: register allocation differs — target keeps the held counts in memory slots, ours
// registerizes them
bool32_t Villager::ArrivesAtStoragePitForTraderDropOff()
{
	Town* tradeTown = TradeTown;
	Town* town = GetTown();
	SetTown(tradeTown);
	uint32_t woodHeld = (uint16_t)ResourceHeld[RESOURCE_TYPE_WOOD];
	uint32_t foodHeld = (uint16_t)ResourceHeld[RESOURCE_TYPE_FOOD];
	uint32_t result = ArrivesAtStoragePitForDropOff();
	short    woodDropped = (short)(woodHeld - ResourceHeld[RESOURCE_TYPE_WOOD]);
	short    foodDropped = (short)(foodHeld - ResourceHeld[RESOURCE_TYPE_FOOD]);
	SetTown(town);
	if (town != NULL)
	{
		town->stats.TotalWood -= woodDropped;
		town->stats.TotalFood -= foodDropped;
	}
	if (tradeTown != NULL)
	{
		tradeTown->stats.TotalWood += woodDropped;
		tradeTown->stats.TotalFood += foodDropped;
	}
	return result;
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
// TODO: needs GUtils::FindClosestAbode's declaration fixed (declared thiscall/void; really
// cdecl returning Abode*) and Town::AddMissionary declared
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
// TODO: GetResourceNearestEdge dispatches through the wrong vtable slot (the Object.h
// virtual list ends short of the real vtable); push/lea scheduling also differs
uint32_t Villager::AtStructureRemoveResource(MultiMapFixed* structure, RESOURCE_TYPE resourceType, unsigned long amount,
                                             bool* unused)
{
	MapCoords workingPos;
	workingPos = structure->GetResourceNearestEdge(resourceType, this, 1);
	if (Pos.IsCloseToEqual(workingPos, GetRadius()) == 1)
	{
		int taken = (short)GetResourceFrom(structure, resourceType, (short)amount);
		if (taken == 0)
		{
			return 0;
		}
		return taken < amount ? VILLAGER_STATE_GO_HOME : 1;
	}
	SetupMoveToWithHug(workingPos, GetFinalState());
	return VILLAGER_STATE_GO_HOME;
}

// BW1W120 0076a3b0
// TODO: needs the GPlayer helper at 0x64a9c0 (returns a GInterfaceStatus*) named and a
// GPlayer class header — without it the player branch below is dead and collapses; same
// GetResourceNearestEdge vtable-slot issue as AtStructureRemoveResource
uint32_t Villager::AtStructureAddResource(MultiMapFixed* structure, RESOURCE_TYPE resourceType, unsigned long& amount,
                                          bool unused)
{
	MapCoords workingPos;
	GPlayer*  player = GetPlayer();
	if (player == structure->GetPlayer())
	{
		player = NULL;
	}
	GInterfaceStatus* status = NULL;
	if (player != NULL)
	{
		// fabricated: should call the unnamed GPlayer helper at 0x64a9c0
		status = NULL;
	}
	workingPos = structure->GetResourceNearestEdge(resourceType, this, 0);
	if (Pos.IsCloseToEqual(workingPos, GetSpeedInMetres()) == 1)
	{
		uint32_t added = structure->AddResource(resourceType, amount, status, false, NULL, status != NULL);
		if (added != 0)
		{
			DropResource(resourceType, (unsigned short)added);
			amount = added;
			return 1;
		}
		return 0;
	}
	SetupMoveToWithHug(workingPos, GetFinalState());
	amount = 0;
	return VILLAGER_STATE_GO_HOME;
}

// BW1W120 0076a4c0
bool32_t Villager::SetDying()
{
	Town* town = GetTown();
	if ((status & 1) != 1)
	{
		SetLife(0.0f);
		SetTopState(VILLAGER_STATE_DYING);
		status |= 1;
		DeleteDependancys();
		status |= 0x30;
	}
	if (town != NULL && town->field_0x748 != 0 && ((MultiMapFixed*)town->field_0x748)->IsFunctional())
	{
		TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->DyingTimeWithGraveyard;
	}
	else
	{
		TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->DyingTimeWithoutGraveyard;
	}
	if (!(Flags & 0x40))
	{
		GGame::g_game->data.field_0x24--;
		Flags |= 0x40;
	}
	return true;
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
// TODO: the max() macro double-evaluates both arms, baking GameRand __FILE__/__LINE__ into
// several calls — cannot match in a split TU
bool32_t Villager::MakeScaredStiff()
{
	TurnsUntilNextStateChange = (int16_t)max(
		(float)(uint32_t)GRand::GameRand(((const GVillagerInfo*)info)->ScaredStiffTime, __FILE__, __LINE__),
		GRand::GameFloatRand(5.0f, __FILE__, __LINE__) + 10.0f);
	SetTopState(VILLAGER_STATE_SCARED_STIFF);
	ScaredStiff();
	return true;
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
// TODO: needs GUtils::AddDistanceFromAngle declared (its target symbol is thiscall but the
// body is cdecl) and the JustWholeMapXZ class/struct keyword reconciled with the MapCoords
// ctor; GameRand __FILE__/__LINE__ cannot match in a split TU (same blockers as
// SetupNewScriptWander in VillagerScript.cpp)
bool32_t Villager::SetupWander(JustWholeMapXZ& wander_area, VILLAGER_STATES state)
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
	uint32_t turns = (uint16_t)TurnsUntilNextStateChange;
	TurnsUntilNextStateChange = turns - 1;
	if ((int16_t)turns > 0)
	{
		return true;
	}
	TurnsUntilNextStateChange = 0;
	Town* town = GetTown();
	if (town != NULL && town->IsInStateOfEmergency())
	{
		SetTopState(VILLAGER_STATE_GOTO_CONGREGATE_IN_TOWN_AFTER_EMERGENCY);
		return true;
	}
	if (CheckNeededForSomething())
	{
		return true;
	}
	if (GRand::GameRand(10, __FILE__, __LINE__) == 0)
	{
		SetupNothingToDo();
		return true;
	}
	TurnsUntilNextStateChange = ((const GVillagerInfo*)info)->SubsequentChillOutTime;
	return true;
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
// TODO: the target passes the member-function pointer in the 16-byte general representation
// (/vmg); our build uses the 4-byte single-inheritance one. The cast bridges
// GetChillOutPos's int/uint return mismatch.
bool32_t Villager::GoAndChilloutInTown()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		MapCoords congregationPos = town->GetCongregationPos();
		GetMeToMyChillOutPos((int (Villager::*)(MapCoords&))&Villager::GetChillOutPos, congregationPos,
		                     town->info->field_0x140, congregationPos);
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
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

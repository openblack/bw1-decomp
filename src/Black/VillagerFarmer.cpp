#include "Villager.h"

#include "Field.h"
#include "Game.h"

// TODO: crt static-init cluster (dispatcher-owned, mirrors VillagerTrader.cpp/VillagerScript.cpp):
// atexitCleanupReg (44B boilerplate) + secsPerYear (5B jmp-stub) + FUN_00759bd0 (the product
// below). Values confirmed from raw .rdata: 365.25f @0x99a958, 86400.0f @0x99a95c, stored to a
// private .bss float @0xdb9dfc. Real init symbol is `?FUN_00759bd0@Villager@@QAEXXZ`, a genuine
// Villager:: member mangling -- implies these are static DATA MEMBERS of Villager, a cross-TU
// Villager.h change; left as file-scope approximations for the dispatcher.
const float  VillagerFarmerNumDaysInYear = 365.25f;
const float  VillagerFarmerSecondsInDay = 86400.0f;
static float VillagerFarmerSecondsPerYear = VillagerFarmerNumDaysInYear * VillagerFarmerSecondsInDay;

// BW1W120 00759bf0 BW1M100 105783f0 Villager::FarmerLookForField(void)
bool32_t Villager::FarmerLookForField()
{
	return false;
}

// BW1W120 00759c00 BW1M100 10578330 Villager::VillagerBecomesFarmer(Field *)
// TODO: deferred -- when field==NULL, target calls GetTown() then Town::FindBestField(this,
// &outDist) to find one. FindBestField is mangled void (?FindBestField@Town@@QAEXPAVVillager@@PAM@Z)
// but the caller tests its Field* return in eax (mangled-void-returns-value); needs a dispatcher
// re-mangle before that branch can be written.
bool32_t Villager::VillagerBecomesFarmer(Field* field)
{
	if (field != NULL)
		return SetFarmerGotoField(field, 0);
	return false;
}

// BW1W120 00759c40 BW1M100 10578150 Villager::SetFarmerGotoField(Field *, int)
// TODO: deferred (tail) -- after picking the state, target calls the UNNAMED fn_00528970 (a Field
// member, thiscall, returns MapCoords by value) and stores it into the football/field_0x120/
// field_0x124 union (same union-as-MapCoords idiom as WanderArea in VillagerScript.cpp). Needs
// dispatcher naming before the tail can be written for real.
bool32_t Villager::SetFarmerGotoField(Field* field, int activity)
{
	MapCoords arrivePos = field->GetArrivePos();
	switch (field->GetFieldActivity(activity))
	{
	case 1:
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		TargetThing = field;
		SetupMoveToOnFootpath(*field, arrivePos, VILLAGER_STATE_FARMER_ARRIVES_AT_FARM);
		break;
	case 2:
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		TargetThing = field;
		SetupMoveToOnFootpath(*field, arrivePos, VILLAGER_STATE_FARMER_ARRIVES_AT_FARM);
		break;
	default:
		return false;
	}
	*(MapCoords*)&football = arrivePos; // fabricated -- real value comes from unnamed fn_00528970
	return true;
}

// BW1W120 00759d20 BW1M100 10004ad0 Villager::FarmerArrivesAtFarm(void)
// TODO: deferred (activity==2, and the "arrived" sub-branch of activity==1) -- target calls two
// UNNAMED Field members: fn_00529240 (capacity check + position-generate; gates activity==2) and
// fn_00528970 (position generator, same one SetFarmerGotoField needs) to refill football before
// PlayAnimThenSetState. Neither has a C++ name in symbols.txt. Collapsed activity==2 to the
// shared "keep moving" fallback.
bool32_t Villager::FarmerArrivesAtFarm()
{
	Field* field = (Field*)TargetThing;
	switch (field->GetFieldActivity(0))
	{
	case 1:
		field_0xf1 = 1;
		if (AreWeThere((MapCoords*)&football, 0.0f))
		{
			*(MapCoords*)&football = field->GetArrivePos(); // fabricated -- real value from unnamed fn_00528970
			PlayAnimThenSetState(VILLAGER_STATE_FARMER_PLANTS_CROP, 1);
			return true;
		}
		break;
	case 2:
		break;
	default:
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	SetupMoveToPos(*(MapCoords*)&football, VILLAGER_STATE_FARMER_ARRIVES_AT_FARM);
	return true;
}

// BW1W120 00759e40 BW1M100 10578000 Villager::FarmerDigsUpCrop(void)
// TODO: deferred -- Field::RemoveFood (cross-unit, Field.cpp @0x5295a0) is mangled `float` via
// ST0, but its own compiled body also leaves an integer "amount removed" in EAX on every path,
// which THIS caller reads directly as PickupFood's argument (fpu-leak family, but the leak is in
// the callee's body in another unit -- not reproducible via the declared float return). Also
// compares against an UNNAMED global float @0x00d394dc (missing symbol, data not function).
bool32_t Villager::FarmerDigsUpCrop()
{
	Field*  field = (Field*)TargetThing;
	int16_t foodCapacity = (int16_t)GetFoodCapacity();
	float   removed = field->RemoveFood((float)foodCapacity);
	if (removed > 0.0f)
	{
		PickupFood((int16_t)removed);
		if ((int16_t)GetFoodCapacity() < 0) // fabricated -- real test is vs the unnamed float @0xd394dc
			return GotoStoragePitForDropOff();
	}
	SetTopState(VILLAGER_STATE_FARMER_ARRIVES_AT_FARM);
	return true;
}

// BW1W120 00759ec0 BW1M100 10577f20 Villager::FarmerPlantsCrop(void)
bool32_t Villager::FarmerPlantsCrop()
{
	if (((Field*)TargetThing)->PlantCrop(Pos))
	{
		if (((Field*)TargetThing)->GetPlantCropPos())
		{
			SetTopState(VILLAGER_STATE_FARMER_ARRIVES_AT_FARM);
			return true;
		}
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00759f30 BW1M100 105777f0 Villager::CheckSatisfyFoodDesire(void)
// TODO: deferred -- builds a 3-candidate desire-priority list (kinds 0/1/2, each from a
// different unnamed/blocked Town|Field query), then picks storage-pit-dropoff vs. becoming a
// farmer/shepherd/fisherman off the winner. Every path out of the list-building is blocked
// (2 unnamed fn_0073E750/fn_0073E7F0 queries, Town::FindBestField's void-returns-Field* bug,
// VillagerBecomesShepherd/Fisherman not yet defined in their own units, and this unit's own
// fn_0075A310 list-node remover, itself unnamed -- see full writeup in the vsm ledger). Nothing
// past GetTown() is reachable without that dispatcher work, so left returning false.
bool32_t Villager::CheckSatisfyFoodDesire()
{
	GetTown(); // discarded -- side-effect/cache-refresh only, same pattern as ExitFarming
	return false;
}

// BW1W120 0075a250 BW1M100 1009d580 Villager::EnterFarming(unsigned char, unsigned char)
bool32_t Villager::EnterFarming(unsigned char current_state, unsigned char previous_state)
{
	if (TargetThing == NULL)
		return false;
	if (!IsStateEntryFunctionSameAs(current_state, previous_state))
	{
		GetTown();
		((Field*)TargetThing)->AddFarmer(this);
	}
	return true;
}

// BW1W120 0075a2a0 BW1M100 1009b430 Villager::ExitFarming(unsigned char)
// TODO: deferred, two blockers. (1) IsStateExitFunctionSameAs (Living vtable slot 0x96c): same
// cross-hierarchy bool/int mismatch already logged against VillagerScript.cpp's
// Living::CannotExitState (target treats it as int-returning, Living.h/Villager.h declare
// `virtual bool`). (2) the removal call is the UNNAMED fn_00528340, a thiscall Field member
// taking a Villager* -- almost certainly Field::RemoveFarmer, the sibling immediately before the
// already-named Field::AddFarmer (0x5283e0 - 0xA0 = 0x528340). Needs dispatcher naming.
bool32_t Villager::ExitFarming(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state) && TargetThing != NULL)
	{
		GetTown();
		Field* field;
		for (field = GGame::g_game->GameLists.fields.head; field != NULL; field = field->next)
		{
			if (field == (Field*)TargetThing)
			{
				// TODO: deferred -- call the UNNAMED fn_00528340 (Field::RemoveFarmer(Villager*)) here.
				break;
			}
		}
	}
	return true;
}

// BW1W120 0075a310 fn_0075A310
// TODO: deferred -- genuinely thiscall-shaped (ECX = list-head {Node* head; int count}, ONE
// stack arg = int key, `ret 4`, confirmed via raw disassembly) yet has NO class-scoped C++ name
// in symbols.txt. `extern "C"` can't reproduce it (MSVC hard-errors on explicit __thiscall for a
// free function), and any class I invent would mangle to a different name -- in-unit twin of the
// fn_00528970/fn_00528340 blockers above; only the dispatcher can resolve it. Body (from Ghidra):
// unlink and `delete` the list node whose key == the argument, decrementing count; used by
// CheckSatisfyFoodDesire's desire list. Left undefined; stays "missing".

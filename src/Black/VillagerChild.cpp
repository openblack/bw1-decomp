#include "Villager.h"

#include "chlasm/GStates.h"

#include "Creche.h"
#include "Town.h"
#include "VillagerInfo.h"

// BW1W120 007579f0 BW1M100 10573ed0 Villager::ChildGotoCreche(void)
uint32_t Villager::ChildGotoCreche()
{
	if (GetTown() != NULL)
	{
		Creche* creche = GetTown()->creche;
		if (creche != NULL && creche->IsFunctional())
		{
			SetupMoveToOnFootpath(*creche, creche->GetDoorPos(), VILLAGER_STATE_CHILD_AT_CRECHE);
			return true;
		}
	}
	return false;
}

// BW1W120 00757c80 BW1M100 1006d8c0 Villager::ChildAtCreche(void)
bool32_t Villager::ChildAtCreche()
{
	return CheckNeededForTownDesire();
}

// BW1W120 00757e80 BW1M100 10084940 Villager::CheckChild(void)
uint32_t Villager::CheckChild()
{
	if (IsChild() == false)
	{
		return GoHome();
	}
	if (IsMotherAlive() == false)
	{
		mother = NULL;
	}
	if (IsHungry())
	{
		return GoHome();
	}
	return 0;
}

// BW1W120 00757ec0 BW1M100 105744c0 Villager::ChildDecideWhatToDo(void)
bool32_t Villager::ChildDecideWhatToDo()
{
	if (CheckChild() != true && ChildAtCreche() != true && ChildGotoCreche() == false)
	{
		SetTopState(VILLAGER_STATE_CHILD_FOLLOWS_MOTHER);
	}
	return true;
}

// BW1W120 00757f00 BW1M100 10573a20 Villager::CheckChildActivity(void)
bool32_t Villager::CheckChildActivity()
{
	ChildDecideWhatToDo();
	return 1;
}

// BW1W120 00757f10 BW1M100 10573990 Villager::ChildBecomesAdult(void)
bool Villager::ChildBecomesAdult()
{
	mother = NULL;
	CheckNeedNewAbode();
	SetTopState(VILLAGER_STATE_GO_HOME_AND_CHANGE);
	// TODO: 99.5% match. Only diff is the epilogue: target emits `mov eax,1` (full dword),
	// we emit `mov al,1` (byte). Semantically identical (bool ABI only guarantees AL); toy-tested
	// several return-statement phrasings without reproducing the target's wider mov -- likely a
	// full-TU register-pressure/scheduler tie-break, not a local source-shape issue.
	return 1;
}

// BW1W120 00757f40 BW1M100 10095500 Villager::IsMotherAlive(void)
bool32_t Villager::IsMotherAlive()
{
	// TODO: 94.8% match. Target keeps this->info->TribeType as a direct memory operand in the
	// TribeType comparison (`cmp eax,[edx+0x1f4]`); our build spills it into a register first.
	// Tried swapping operand order (regresses to 94.0%). Same family as MakeChildOrphaned's
	// open cmp-mem-rhs-spill issue -- see CHEATSHEET.md.
	Villager* m = mother;
	if (m != NULL && m->IsAvailable() == 1 &&
	    ((const GVillagerInfo*)m->info)->TribeType == ((const GVillagerInfo*)info)->TribeType && m->IsAMother() == 1 &&
	    (m->status & 1) != 1)
	{
		return true;
	}
	return false;
}

// BW1W120 00758080 BW1M100 105734a0 Villager::MoveVillagerToAbode(Abode*)
// TODO: 59.3% match. Target reaches a SINGLE shared ForceMoveVillagerToAbode call site from
// both branches (jg to a common tail), but duplicates the early-return epilogue in each branch;
// our build does the reverse -- it inlines/duplicates the ForceMoveVillagerToAbode call into
// both branches and shares only the final epilogue. Tried a shared `int roomLeft` local computed
// in each branch with a single trailing `if (roomLeft > 0) ForceMoveVillagerToAbode(abode);`
// (regressed to 56.0%, still duplicated) and the plain nested if/else with the call written
// inside each branch (49.8%, wrong register assignment too). This early-return form gives the
// closest match (correct edi=this/esi=abode register assignment) but the call-site sharing is
// an unresolved compiler tail-duplication asymmetry.
void Villager::MoveVillagerToAbode(Abode* abode)
{
	if (IsChild())
	{
		if (abode->GetRoomLeftForChildren() <= 0)
		{
			return;
		}
	}
	else
	{
		if (abode->GetRoomLeftForAdults() <= 0)
		{
			return;
		}
	}
	ForceMoveVillagerToAbode(abode);
}

// BW1W120 007580d0 BW1M100 105733f0 Villager::MakeChildOrphaned(Villager *)
uint32_t Villager::MakeChildOrphaned(Villager* param_1)
{
	// TODO: 91% match. Target loads `mother` into eax and compares directly against the
	// [esp+8] stack slot (`cmp eax,[esp+8]`); our build additionally spills param_1 into ecx
	// first (`mov ecx,[esp+8]; cmp eax,ecx`). Tried swapping comparison operand order and an
	// early-return (`if (mother != param_1) return 0;`) restructuring -- both regressed further
	// (86%/58%). Also `test eax,eax` (target) vs `test al,al` (ours) after IsVillagerAvailable(),
	// same family as the bool-return-full-eax-epilogue open idiom.
	if (mother == param_1)
	{
		if (IsVillagerAvailable())
		{
			SetTopState(VILLAGER_STATE_MORN_DEATH);
		}
		mother = NULL;
		return 1;
	}
	return 0;
}

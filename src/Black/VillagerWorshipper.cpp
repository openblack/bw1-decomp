#include "Villager.h"

#include "Dance.h"
#include "DanceGroup.h"
#include "GameThingWithPos.h"
#include "MapCoords.h"
#include "WorshipSite.h"
#include "chlasm/GStates.h"

// BW1W120 0076bf90 BW1M100 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
bool32_t Villager::CheckNeededForSupplyWorship()
{
	GetWorshipSite();
	return 0;
}

// BW1W120 0076c100 BW1M100 1059e190 Villager::GotoWorshipSiteWithSupplies(void)
bool32_t Villager::GotoWorshipSiteWithSupplies()
{
	return 0;
}

// BW1W120 0076c110 BW1M100 1059e140 Villager::MoveToWorshipSiteWithSupplies(void)
bool32_t Villager::MoveToWorshipSiteWithSupplies()
{
	return 1;
}

// BW1W120 0076c1f0 BW1M100 1059de40 Villager::ExitAtWorshipSite(unsigned char)
// TODO: 88.5% — structure/semantics correct. Residual diffs are all bool-width scheduler tie-breaks:
// target tests full `eax` and ends `mov eax,1` where ours uses `al` (bool-return-full-eax-epilogue,
// documented open idiom), plus a prologue reg-move reorder. == 0 vs ! forms give identical asm.
bool Villager::ExitAtWorshipSite(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL)
			worshipSite->RemoveVillagerRequestingToGoHome(this);
		if (!IsReactiveState(state) && state != VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE)
		{
			RemoveVillagerFromWorshipSite();
		}
		else
		{
			if (worshipSite != NULL)
				worshipSite->RemoveVillagerFromWorshipCount(this);
			if (IsDancing())
				RemoveFromDance(1);
		}
	}
	return true;
}

// BW1W120 0076c390 BW1M100 1059daf0 Villager::RestartWorshippingAtWorshipSite(void)
bool32_t Villager::RestartWorshippingAtWorshipSite()
{
	if (StartWorshippingAtWorshipSite() != 1)
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0076c3c0 BW1M100 1059da60 Villager::RestartWorshippingCreature(void)
// TODO: 85% — dance_group->Dancer's MapCoords base is at +0x14 (type unknown beyond GameThingWithPos).
// Only diff is `add eax,0x14` (arg1 address) scheduled before `push 0x5a` instead of after
// — an arg-evaluation scheduler tie-break (named-local variant gives identical asm). Semantics correct.
bool32_t Villager::RestartWorshippingCreature()
{
	if (dance_group != NULL)
	{
		PerformDance(&dance_group->Dancer->Pos, VILLAGER_STATE_WORSHIPPING_CREATURE, 9);
		return 1;
	}
	GoHome();
	return 1;
}

// BW1W120 0076c4c0 BW1M100 1059d740 Villager::StartWorshippingAtWorshipSite(void)
// TODO: 91.9% — structure/semantics correct. Residuals: `push edi` prologue timing shifts the pos
// stack slot (target lea [esp+0xc] vs ours [esp+8]) and `cmp eax,1` vs `cmp al,1` bool-width on the
// FindDanceGroup `== 1` test. Both are scheduler/bool-width tie-breaks.
bool32_t Villager::StartWorshippingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL && worshipSite->IsAvailable() && worshipSite->dance != NULL)
	{
		if (worshipSite->dance->FindDanceGroup(this) == 1)
		{
			MapCoords pos;
			CalculateDancePosition(worshipSite->dance->Pos, &pos);
			if (SetupMoveToPos(pos, VILLAGER_STATE_WORSHIPPING_AT_WORSHIP_SITE))
			{
				AddVillagerToWorshipSite();
				return 1;
			}
		}
	}
	return 0;
}

// BW1W120 0076c680 BW1M100 1059d470 Villager::WorshippingAtWorshipSite(void)
// TODO: 91.7% — dance_group->Dancer has a counter at +0x114 and its MapCoords base at +0x14 (the
// containing type beyond GameThingWithPos is unknown, hence the raw +0x114 cast). Only diff is the
// arg1 pointer landing in edx instead of ecx — a register-allocation tie-break (scheduling and
// everything else match). Semantics correct.
bool32_t Villager::WorshippingAtWorshipSite()
{
	uint32_t flags = Flags;
	if (flags & 0x10)
	{
		Flags = flags & 0xffef;
		// TODO: +0x114 is a counter on the (unidentified) dancer type; keep the raw offset.
		--*(int*)((char*)dance_group->Dancer + 0x114);
	}
	bool32_t result = ProcessInWorship();
	if (result == 1)
		result = PerformDance(&dance_group->Dancer->Pos, VILLAGER_STATE_WORSHIPPING_AT_WORSHIP_SITE,
		                      dance_group->field_0x5c);
	return result;
}

// BW1W120 0076c7c0 BW1M100 1059d280 Villager::WorshippingCreature(void)
// TODO: 79.5% — same arg-eval scheduler tie-break as RestartWorshippingCreature on the PerformDance
// call (`add edx,0x14` for arg1 address floats before the const pushes instead of after). Everything
// else — including the push/pop esi flag test at +0x100 — matches. dance_group->Dancer has a flag at
// +0x100 and its MapCoords base at +0x14 (containing type beyond GameThingWithPos unknown). Semantics correct.
bool32_t Villager::WorshippingCreature()
{
	if (dance_group != NULL)
	{
		GameThingWithPos* p = dance_group->Dancer;
		// TODO: +0x100 is a flag on the (unidentified) dancer type; keep the raw offset.
		if (*(int*)((char*)p + 0x100) == 0)
		{
			PerformDance(&p->Pos, VILLAGER_STATE_WORSHIPPING_CREATURE, dance_group->field_0x5c);
			return 1;
		}
		GoHome();
	}
	return 1;
}

// BW1W120 0076c890 BW1M100 1059d090 Villager::ProcessInWorship(void)
// TODO: 91.7% — semantics correct; only diff is `pop esi` floating one slot inside the
// branchless `cond ? 0x23 : 1` tail (target: neg;sbb;and;inc;pop;ret — ours: neg;sbb;pop;and;inc;ret).
// Pure epilogue callee-save restore scheduler tie-break; if/else and ternary forms give identical asm.
// 0x23/0x21 look like state codes but don't map to obvious VILLAGER_STATES names; left numeric.
bool32_t Villager::ProcessInWorship()
{
	if (CheckVillagerGoBackToTownFromWorship() == 1)
		return 0x23;
	if (ReduceVillagerLifeByChant() == 0x21)
		return 0x23;
	return CheckAllowedToRestAtWorshipSite(1) ? 0x23 : 1;
}

// BW1W120 0076cb80 BW1M100 1059ca10 Villager::ArrivesAtAltarForRest(void)
bool32_t Villager::ArrivesAtAltarForRest()
{
	if (CheckAllowedToRestAtWorshipSite(0) != 1)
		return AtAltarFinishedRest();
	PlayAnimThenSetState(VILLAGER_STATE_AT_ALTAR_REST, 1);
	return 1;
}

// BW1W120 0076cbb0 BW1M100 1059c980 Villager::AtAltarRest(void)
bool32_t Villager::AtAltarRest()
{
	if (CheckAllowedToRestAtWorshipSite(0) != 1)
		return AtAltarFinishedRest();
	PlayAnimThenSetState(VILLAGER_STATE_AT_ALTAR_REST, 1);
	return 1;
}

// BW1W120 0076cbe0 BW1M100 1059c8f0 Villager::AtAltarFinishedRest(void)
bool32_t Villager::AtAltarFinishedRest()
{
	bool32_t r = StartWorshippingAtWorshipSite();
	if (r == 1)
		return r;
	return DecideWhatToDo();
}

// BW1W120 0076cc00 BW1M100 1059c880 Villager::CheckSatisfySuppyWorship(void)
bool32_t Villager::CheckSatisfySuppyWorship()
{
	return GotoStoragePitForWorshipSupplies() == 1;
}

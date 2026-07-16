#include "Villager.h"

#include "Citadel.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "GameThingWithPos.h"
#include "MagicTeleport.h"
#include "MapCoords.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownCentre.h"
#include "TownInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"
#include "chlasm/GStates.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// BW1W120 0076ba60 BW1M100 10096dd0 Villager::CheckNeededForWorship(void)
// TODO: the true return type is float — the target tail-returns CheckWorshipActivity's
// float in ST0 with no __ftol; as bool32_t our tail emits one
bool32_t Villager::CheckNeededForWorship()
{
	GetTown();
	if (Flags & 2)
	{
		bool32_t result = StartWorshippingAtWorshipSite();
		if (result != 1)
			RemoveVillagerFromWorshipSite();
		return result;
	}
	Town* town = GetTown();
	if (town != NULL && town->worship_percentage != 0.0f)
	{
		int worshippersNeeded = 1;
		if (town->GetWorshipersNeeded(1, 1, &worshippersNeeded) > 0)
			return (bool32_t)CheckWorshipActivity(worshippersNeeded);
	}
	return 0;
}

// BW1W120 0076bae0 BW1M100 1059ec20 Villager::CheckWorshipActivity(int)
// TODO: the target never sets an explicit return value (every path leaves the last callee's
// ST0), and it inlines removal of `this` from the reaction's follower node list before
// StartReacting — the node type and the Reaction* field at MagicTeleport+0x94 are unnamed
float Villager::CheckWorshipActivity(int num_needed)
{
	MagicTeleport* teleport = NULL;
	Town*          town = GetTown();
	WorshipSite*   worshipSite = GetWorshipSite();
	if (worshipSite != NULL && town != NULL && town->town_centre != NULL && town->town_centre->IsAvailable() == 1 &&
	    town->town_centre->IsBuilt() == 1)
	{
		worshipSite = GetWorshipSite();
		if (worshipSite->GetPlayer() == town->GetPlayer() && (CanIGetToTheWorshipSite(teleport) || num_needed == 0))
		{
			if (CheckNeededForWorshipSiteBuilding() == 1 || GotoWorshipSiteForWorship() == 1)
			{
				if (teleport != NULL)
				{
					SetReactionDoneWhen(REACTION_REACT_TO_TELEPORT);
					// TODO: the target inlines removal of `this` from the reaction's node list here
					StartReacting(REACTION_REACT_TO_TELEPORT, teleport, *(Reaction**)((uint8_t*)teleport + 0x94));
				}
			}
		}
	}
	// TODO: the target has no return value here, but a float function with no return
	// statement at all breaks the MSVC6 optimizer — 0.0f stands in
	return 0.0f;
}

// BW1W120 0076bc20 BW1M100 1059eaf0 Villager::CanIGetToTheWorshipSite(MagicTeleport * &)
// TODO: the distance callee at 0x605cd0 is really a thiscall MapCoords method, not the
// static GUtils form; the teleport lookup is the unnamed GPlayer helper at 0x64d6b0
bool32_t Villager::CanIGetToTheWorshipSite(MagicTeleport*& teleport)
{
	Town* town = GetTown();
	if (town != NULL)
	{
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL)
		{
			const GTownInfo* townInfo = (const GTownInfo*)town->info;
			if (GUtils::GetDistanceInMetres(Pos, worshipSite->Pos) > townInfo->field_0x148)
			{
				if (GetPlayer() != NULL)
				{
					// fabricated: should come from the unnamed teleport-lookup helper at 0x64d6b0
					MagicTeleport* found = NULL;
					if (found == NULL)
						return 0;
					teleport = found;
				}
			}
			return 1;
		}
	}
	return 1;
}

// BW1W120 0076bcc0 BW1M100 1059e8f0 Villager::GotoWorshipSiteForWorship(void)
// TODO: needs the WorshipSite wrapper at 0x77ceb0 named (wraps GetSpecialPos(9), which is
// called directly below); the int at Dance+0x114 is also unnamed
bool32_t Villager::GotoWorshipSiteForWorship()
{
	WorshipSite* worshipSite = GetWorshipSite();
	Town*        town = GetTown();
	bool32_t     result = 0;
	if (worshipSite != NULL && worshipSite->IsBuilt())
	{
		++*(int*)((uint8_t*)worshipSite->dance + 0x114);
		Flags |= 0x10;
		if (worshipSite->GetDistanceFromObject(this) > 0.0f)
		{
			MapCoords pos;
			worshipSite->GetSpecialPos(9, &pos);
			SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
		}
		else
		{
			SetTopState(VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
		}
		if (town != NULL)
			town->AddVillagerOnWayToWorshipSite(this);
		result = 1;
	}
	if (DiscipleType == VILLAGER_DISCIPLE_WORSHIP)
		return SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	return result;
}

// BW1W120 0076bda0 BW1M100 1059e810 Villager::SetGotoWorshipSpeed(void)
// TODO: needs the dance-speed helper at 0x77c100 named; the target also loads info+0x118 as
// an int where the header declares float, and it has no return value on any path (`return 1`
// stands in — no return statement at all breaks MSVC6 codegen)
bool32_t Villager::SetGotoWorshipSpeed()
{
	float speed = ((const GVillagerInfo*)info)->field_0x118;
	if (GetWorshipSite() != NULL)
	{
		float danceSpeed = 0.0f; // fabricated: should come from the helper at 0x77c100
		GetWorshipSite();
		SetSpeed((int)((danceSpeed + 1.0f) * speed), 1);
	}
	else
	{
		SetSpeed((int)speed, 1);
	}
	return 1;
}

// BW1W120 0076be00 BW1M100 1059e6f0 Villager::ArrivesAtWorshipSiteForWorship(void)
// TODO: needs the GetSpecialPos(9) wrapper at 0x77ceb0, the 2D distance twin at 0x74cd50
// and the 10.0f threshold at 0x8ab414 named; the worshipper count at Dance+0x90 is also
// unnamed, hence the raw offset
bool32_t Villager::ArrivesAtWorshipSiteForWorship()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
		return DecideWhatToDo();
	MapCoords pos;
	worshipSite->GetSpecialPos(9, &pos);
	if (GUtils::GetDistanceInMetres(Pos, pos) < 10.0f)
	{
		if (*(uint32_t*)((uint8_t*)worshipSite->dance + 0x90) <
		    ((const GWorshipSiteInfo*)worshipSite->info)->field_0x14c)
			StartWorshippingAtWorshipSite();
		else
			StartHidingAtWorshipSite();
		return 1;
	}
	SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
	return 1;
}

// BW1W120 0076bec0 BW1M100 1059e520 Villager::CheckVillagerGoBackToTownFromWorship(void)
// TODO: needs the WorshipSite go-home-request-list helper at 0x77e0a0 named — it guards the
// SetTopState below, currently written without that check
bool32_t Villager::CheckVillagerGoBackToTownFromWorship()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		if (GetWorshipSite() != NULL && town->town_centre != NULL && town->town_centre->IsAvailable() == 1 &&
		    town->town_centre->IsBuilt() == 1)
		{
			WorshipSite* worshipSite = GetWorshipSite();
			GPlayer*     townPlayer = town->GetPlayer();
			if (worshipSite->GetPlayer() == townPlayer)
			{
				if (town->GetWorshipersNeeded(0, 0, NULL) < 0)
				{
					GetWorshipSite();
					// TODO: guarded by the unnamed helper at 0x77e0a0 in the target
					if (SetTopState(VILLAGER_STATE_GO_HOME_FROM_WORSHIP) != 1)
						return 0;
					return 1;
				}
				return 0;
			}
		}
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return 1;
	}
	return 0;
}

// BW1W120 0076bf90 BW1M100 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
bool32_t Villager::CheckNeededForSupplyWorship()
{
	GetWorshipSite();
	return 0;
}

// BW1W120 0076bfa0 BW1M100 1059e310 Villager::GotoStoragePitForWorshipSupplies(void)
// TODO: Town::GetFoodForWorshipSiteIfEnough is declared void but returns the amount of food
// the worship site needs (see Town.h)
bool32_t Villager::GotoStoragePitForWorshipSupplies()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		if (GetWorshipSite() != NULL)
		{
			int      foodHeld = ResourceHeld[RESOURCE_TYPE_FOOD];
			uint32_t foodNeeded = GetTown()->GetFoodForWorshipSiteIfEnough();
			uint32_t pitFood = GetStoragePit()->GetResource(RESOURCE_TYPE_FOOD);
			if (foodNeeded != 0)
			{
				if ((uint32_t)foodHeld > foodNeeded || foodHeld == (int)((const GVillagerInfo*)info)->MaxFoodCarried)
					return GotoWorshipSiteWithSupplies();
				if (pitFood != 0)
				{
					SetupMoveToOnFootpath(*GetStoragePit(),
					                      GetStoragePit()->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 0),
					                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_WORSHIP_SUPPLIES);
					return 1;
				}
			}
		}
	}
	return 0;
}

// BW1W120 0076c080 BW1M100 1059e1e0 Villager::ArrivesAtStoragePitForWorshipSupplies(void)
// TODO: same GetFoodForWorshipSiteIfEnough return-type issue as GotoStoragePitForWorshipSupplies
bool32_t Villager::ArrivesAtStoragePitForWorshipSupplies()
{
	if (GetWorshipSite() != NULL)
	{
		int foodNeeded = GetTown()->GetFoodForWorshipSiteIfEnough();
		if (foodNeeded != 0)
		{
			if (ResourceHeld[RESOURCE_TYPE_FOOD] >= foodNeeded)
				return GotoWorshipSiteWithSupplies();
			if (GetFoodCapacity() < foodNeeded)
				foodNeeded = GetFoodCapacity();
			if (foodNeeded > 0)
				return ArrivesAtStoragePitForResource(RESOURCE_TYPE_FOOD, foodNeeded, VILLAGER_STATE_INVALID_STATE,
				                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		}
	}
	return DecideWhatToDo();
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

// BW1W120 0076c120 BW1M100 1059e070 Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char)
bool32_t Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (GetWorshipSite() != NULL)
			GetWorshipSite()->RemoveFromFoodOnTheWay(ResourceHeld[RESOURCE_TYPE_FOOD]);
	}
	return 1;
}

// BW1W120 0076c170 BW1M100 1059df70 Villager::ExitMoveToWorshipSite(unsigned char)
// TODO: the target also skips the block below when the state's exit function is
// ExitReactToTeleport — needs the state-function table at 0xd09198 named
bool32_t Villager::ExitMoveToWorshipSite(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (GetTown() != NULL)
			GetTown()->RemoveVillagerOnWayToWorshipSite(this);
		Flags &= 0xffef;
	}
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

// BW1W120 0076c280 BW1M100 1059dd90 Villager::ExitGetFoodAtWorship(unsigned char)
// TODO: only a reloc-form diff remains (raw address vs g_GVillagerStateTableInfos symbol);
// byte-identical after link
bool32_t Villager::ExitGetFoodAtWorship(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state) && g_GVillagerStateTableInfos[state].field_0xe8 == 0)
		RemoveVillagerFromWorshipSite();
	return 1;
}

// BW1W120 0076c2d0 BW1M100 1059dc80 Villager::ArrivesAtWorshipSiteWithSupplies(void)
bool32_t Villager::ArrivesAtWorshipSiteWithSupplies()
{
	if (GetWorshipSite() != NULL)
	{
		unsigned long amount = ResourceHeld[RESOURCE_TYPE_FOOD];
		if (amount != 0)
		{
			uint32_t result = AtStructureAddResource(GetWorshipSite(), RESOURCE_TYPE_FOOD, amount, false);
			GetWorshipSite()->RemoveFromFoodOnTheWay(amount);
			if (result == VILLAGER_STATE_GO_HOME)
				return 1;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0076c340 BW1M100 1059db90 Villager::GetWorshipSite(void)
WorshipSite* Villager::GetWorshipSite()
{
	if (GetTown() != NULL)
		return GetTown()->GetWorshipSite();
	if (GetCitadel() != NULL)
		return GetCitadel()->FindTribeWorshipSite(GetTribe());
	return NULL;
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

// BW1W120 0076c3f0 BW1M100 1059d990 Villager::AddVillagerToWorshipSite(void)
// TODO: needs the Town worship-count helper at 0x73e3e0 (open-coded below) and the
// WorshipSite add-worshipper helper at 0x77d040 named
bool32_t Villager::AddVillagerToWorshipSite()
{
	if (!(Flags & 2))
	{
		GetTown()->WorshipCount++; // fabricated: open-codes the helper at 0x73e3e0
		Flags |= 2;
		TargetThing = NULL;
	}
	GetWorshipSite(); // fabricated: should call the add-worshipper helper at 0x77d040
	return 1;
}

// BW1W120 0076c440 BW1M100 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
// TODO: needs the Town worship-count helper at 0x73e3f0 (open-coded below) and the
// WorshipSite list-contains helper at 0x77d110 named
bool Villager::RemoveVillagerFromWorshipSite()
{
	if (GetTown() != NULL)
	{
		if (Flags & 2)
			GetTown()->WorshipCount--; // fabricated: open-codes the helper at 0x73e3f0
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL)
		{
			// TODO: the target guards this with the unnamed list-contains helper at 0x77d110
			worshipSite->RemoveVillagerFromWorshipCount(this);
		}
		if (IsDancing())
			RemoveFromDance(1);
	}
	Flags &= 0xfffd;
	TargetThing = NULL;
	return true;
}

// BW1W120 0076c4c0 BW1M100 1059d740 Villager::StartWorshippingAtWorshipSite(void)
// TODO: push edi prologue timing and the pos lea scheduling differ; FindDanceGroup should
// return bool32_t (target compares full eax)
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

// BW1W120 0076c550 BW1M100 1059d640 Villager::StartHidingAtWorshipSite(void)
// TODO: the target branches on SetupMoveToOnFootpath's result (declared void; failure
// returns 0 without adding the villager) — success path taken unconditionally until its
// return type is fixed
bool32_t Villager::StartHidingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
		return DecideWhatToDo();
	MapCoords pos;
	pos = worshipSite->GetDoorPos();
	SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_HIDING_AT_WORSHIP_SITE);
	AddVillagerToWorshipSite();
	return 1;
}

// BW1W120 0076c5e0 BW1M100 1059d530 Villager::HidingAtWorshipSite(void)
bool32_t Villager::HidingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		MapCoords pos;
		pos = worshipSite->GetDoorPos();
		if (AreWeThere(&pos, 1.0f))
			return ProcessInWorship();
		SetupMoveToWithHug(pos, VILLAGER_STATE_HIDING_AT_WORSHIP_SITE);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
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

// BW1W120 0076c6e0 BW1M100 1059d310 Villager::StartWorshippingCreature(Creature *)
// TODO: the target only overwrites the current state when its exit function is ExitDance —
// needs the state-function table at 0xd09198 named
bool Villager::StartWorshippingCreature(Creature* creature)
{
	MapCoords pos;
	// TODO: Creature.h's include chain doesn't compile under MSVC6 in this TU; +0x1074 is
	// Creature::dance and +0x14 the inherited Pos, accessed raw for now
	if ((*(Dance**)((uint8_t*)creature + 0x1074))->FindDanceGroup(this) && dance_group != NULL)
	{
		GetFinalState();
		action.states[0] = VILLAGER_STATE_CONTROLLED_BY_CREATURE;
		SetTopState(VILLAGER_STATE_CONTROLLED_BY_CREATURE);
		if (dance_group != NULL)
		{
			CalculateDancePosition(((GameThingWithPos*)creature)->Pos, &pos);
			int speed = *(const int*)((const uint8_t*)info + 0x110);
			SetSpeed(speed, 1);
			return true;
		}
	}
	return false;
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

// BW1W120 0076c800 BW1M100 1059d130 Villager::ReduceVillagerLifeByChant(void)
bool32_t Villager::ReduceVillagerLifeByChant()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		float damage = worshipSite->ChantDamage;
		damage *= ((const GVillagerInfo*)info)->ChantLifeRate;
		ReduceLife(damage, NULL);
		if (GetLife() <= 0.0f)
		{
			GPlayer* player;
			if (GetTown() != NULL)
				player = GetTown()->GetPlayer();
			else
				player = NULL;
			VillagerDead(DEATH_REASON_CHANT, player, damage, 1);
			return 0x21; // "villager died" code checked by ProcessInWorship
		}
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

// BW1W120 0076c8d0 BW1M100 1059cfa0 Villager::CheckRequestGoHome(void)
// TODO: needs the WorshipSite request-to-go-home helper at 0x77e0c0 named; the target also
// has no return value on any path (`return 1` stands in)
bool32_t Villager::CheckRequestGoHome()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
		if (GetLife() < villagerInfo->DamageThresholdToGoHome)
		{
			if (TargetThing == NULL)
			{
				// TODO: the target calls the request-to-go-home helper at 0x77e0c0 here
			}
		}
		else if (TargetThing == (GameThing*)1)
		{
			worshipSite->RemoveVillagerRequestingToGoHome(this);
		}
	}
	return 1;
}

// BW1W120 0076c930 BW1M100 1059ce60 Villager::CheckNeededForWorshipSiteBuilding(void)
// TODO: Citadel::FindOrCreateWorshipSite and Town::GetBuildingSiteInList are declared void
// but return the pointers used below; their call relocs cannot match until fixed
bool32_t Villager::CheckNeededForWorshipSiteBuilding()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
	{
		Citadel* citadel = GetCitadel();
		if (citadel == NULL)
			return 0;
		worshipSite = (WorshipSite*)citadel->FindOrCreateWorshipSite(GetTown());
		if (worshipSite == NULL)
			return 0;
	}
	BuildingSite* buildingSite = GetTown()->GetBuildingSiteInList(worshipSite);
	if (buildingSite != NULL)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		if (SetupBuildingObject(buildingSite) == 1)
			return 1;
	}
	return 0;
}

// BW1W120 0076c9a0 BW1M100 1059cd40 Villager::CheckAllowedToRestAtWorshipSite(int)
// TODO: WorshipSite::GetFood is declared void but returns the available food compared below
// (see WorshipSite.h)
bool32_t Villager::CheckAllowedToRestAtWorshipSite(int move_to_food)
{
	WorshipSite* worshipSite = GetWorshipSite();
	float        currentFood = food;
	if (currentFood < ((const GVillagerInfo*)info)->HungryForFood)
	{
		int foodRequired = GetAmountOfFoodRequiredForMeal();
		int foodAvailable = 0;
		if (worshipSite != NULL)
			foodAvailable = worshipSite->GetFood();
		if (foodAvailable >= foodRequired)
		{
			if (move_to_food != 0)
				SetupMoveToWithHug(worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1),
				                   VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE);
			return 1;
		}
	}
	return 0;
}

// BW1W120 0076ca30 BW1M100 1059cbd0 Villager::GetFoodAtWorshipSite(void)
// TODO: EatFoodHeld really returns float — the target discards it with `fstp st(0)` after
// the call
bool32_t Villager::GetFoodAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		MapCoords pos = worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1);
		if (AreWeThere(&pos, 0.0f))
		{
			int amount = GetAmountOfFoodRequiredForMeal();
			if (amount != 0)
				GetResourceFrom(worshipSite, RESOURCE_TYPE_FOOD, amount);
			EatFoodHeld();
			PlayAnimThenSetState(VILLAGER_STATE_RESTART_WORSHIPPING_AT_WORSHIP_SITE, 1);
			return 1;
		}
		SetupMoveToWithHug(worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1),
		                   VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0076caf0 BW1M100 1059cb80 Villager::GetFoodDesireAtWorshipSite(void)
// TODO: the true return type is float (the target body is `fld 1.0; ret`)
bool32_t Villager::GetFoodDesireAtWorshipSite()
{
	return 1;
}

// BW1W120 0076cb00 BW1M100 1059caa0 Villager::GotoAltarForRest(void)
// TODO: needs the WorshipSite wrapper at 0x77ce70 named (wraps GetSpecialPos(7), which is
// called directly below)
bool32_t Villager::GotoAltarForRest()
{
	if (GetWorshipSite() != NULL)
	{
		MapCoords pos;
		GetWorshipSite()->GetSpecialPos(7, &pos);
		SetupMoveToOnFootpath(*GetWorshipSite(), pos, VILLAGER_STATE_ARRIVES_AT_ALTAR_FOR_REST);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
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

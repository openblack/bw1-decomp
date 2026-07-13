#include "Villager.h"

#include "DanceGroup.h"
#include "GameThingWithPos.h"
#include "GroupBehaviour.h"
#include "MapCoords.h"
#include "Object.h"
#include "ObjectInfo.h"
#include "Utils.h"
#include "chlasm/GStates.h"

// ============================================================================
// UNIT-WIDE BLOCKER (dispatcher): crt static-init cluster, mirrors the identical
// cluster documented in VillagerTrader.cpp / VillagerScript.cpp.
//   crt_xc_fn_atexitCleanupReg_VillagerDance_00759810 (44B): common CRT/header
//     boilerplate (same guard flag `_Stz@?$fpos@H@std@@0HA` pattern seen binary-wide),
//     not VillagerDance-specific logic.
//   crt_xc_fn_secsPerYear_VillagerDance_00759840 (5B jmp-stub) + FUN_00759850 (0x759850):
//     computes SecondsInDay * NumDaysInYear into a private .bss float (0xdb9df8, owned
//     by this TU per splits.txt). Values confirmed from raw .rdata bytes: 365.25f
//     (num_days_in_year @0x99a950), 86400.0f (seconds_in_day @0x99a954); operand order
//     confirmed from the target: fld seconds_in_day; fmul num_days_in_year; fstp.
//   crt_xc_fn_sentinelNegOne_VillagerDance_00759870 (5B jmp-stub) + FUN_00759880 (0x759880):
//     sets another private .bss dword (0xdb9df4, adjacent to the float above) to -1.
//   BLOCKED (both FUN_ bodies): the target's real symbols are `?FUN_00759850@Villager@@QAEXXZ`
//   and `?FUN_00759880@Villager@@QAEXXZ` -- genuine __thiscall Villager:: member manglings
//   (public, non-virtual, void, no args), NOT the anonymous compiler-synthesized initializer
//   a plain file-scope const/static produces. This strongly implies NumDaysInYear/SecondsInDay/
//   SecondsPerYear (and the -1 sentinel) are actually `static` DATA MEMBERS of Villager -- a
//   Villager.h change with cross-TU naming implications shared by other TUs (VillagerTrader,
//   VillagerScript already hit the identical wall); deferring rather than guessing. Kept below
//   as fabricated file-scope approximations (correct values/operand order, wrong symbol
//   identity) for the next pass.
// ============================================================================
const float VillagerDanceNumDaysInYear = 365.25f;
const float VillagerDanceSecondsInDay = 86400.0f;

// BW1W120 00759850 Villager::FUN_00759850(void) -- see unit-wide blocker above.
static float VillagerDanceSecondsPerYear = VillagerDanceSecondsInDay * VillagerDanceNumDaysInYear;

// BW1W120 00759880 Villager::FUN_00759880(void) -- see unit-wide blocker above.
static int VillagerDanceSentinel = -1;

// BW1W120 00759890 BW1M100 105775d0 Villager::FindImmediateNeighbour(void)
// TODO: ~unknown% — blocked on a cross-TU return-type contradiction (mangled-void-returns-value
// family, dispatcher-owned). GUtils::Spiral is declared in Utils.h as returning `JustMapXZ` BY
// VALUE, but its real mangled signature (?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z) proves it
// returns `const JustMapXZ*` (a pointer into some static table) -- the target call site here
// pushes the result pointer directly as the (already-a-pointer) argument to
// MapCoords::operator+=(const JustMapXZ&), with NO intervening spill/temp. Fixing Utils.h would
// require also updating VillagerForester.cpp's existing call site (`searchCoords +=
// GUtils::Spiral(spiralA, spiralB);`, which relies on the current by-value form) -- cross-TU,
// not mine to touch. Kept using the current (by-value) convention so this compiles/matches the
// rest of the function; only the Spiral call site itself is expected to differ.
Villager* Villager::FindImmediateNeighbour()
{
	MapCoords coords = Pos;
	int       spiralVar1 = 1; // GUtils::Spiral in/out state; true meaning of the pair unclear
	int       spiralVar2 = 1;
	int       i = 0x31; // 49 -- max map cells to visit spiralling outward from Pos
	do
	{
		if (coords.InBounds() == 1)
		{
			Object* obj = coords.GetFirstObjectMobile();
			while (obj != NULL)
			{
				if (obj->info->type == OBJECT_TYPE_VILLAGER && obj != this)
					return (Villager*)obj;
				obj = obj->MapChild;
			}
		}
		coords += GUtils::Spiral(spiralVar1, spiralVar2);
	} while (--i != 0);
	return NULL;
}

// BW1W120 00759930 BW1M100 10577560 Villager::DanceForEditingPurposes(void)
bool32_t Villager::DanceForEditingPurposes()
{
	PerformDance(&dance_group->behaviour->Pos, VILLAGER_STATE_DANCE_FOR_EDITING_PURPOSES, dance_group->field_0x5c);
	return 1;
}

// BW1W120 00759960 BW1M100 105774f0 Villager::DanceButNotWorship(void)
bool32_t Villager::DanceButNotWorship()
{
	PerformDance(&dance_group->behaviour->Pos, VILLAGER_STATE_DANCE_BUT_NOT_WORSHIP, dance_group->field_0x5c);
	return 1;
}

// BW1W120 00759990 BW1M100 10577430 Villager::MoveToDancePos(void)
// TODO: blocked on an UNNAMED helper — the target computes `&dance_group->behaviour->Pos` via an
// out-of-line thiscall (symbols.txt: `fn_0050D5F0`, size 0x10, body `mov eax,[ecx+0x18]; add
// eax,0x14; ret`; ecx=dance_group), rather than inlining the two-instruction field access as
// this source naturally does. Needs a real name in symbols.txt (dispatcher; likely belongs in a
// DanceGroup/GroupBehaviour TU, not this one) before the call site can match. dance_group's
// field at +0x7c is inside its still-opaque `field_0x60[0x11c]` blob (DanceGroup.h); raw offset
// kept, matching the cast idiom already established in VillagerWorshipper.cpp.
bool32_t Villager::MoveToDancePos()
{
	if (dance_group == NULL)
		return false;
	// TODO: +0x7c is inside DanceGroup's unidentified field_0x60 blob; keep raw offset.
	if (*(int*)((char*)dance_group + 0x7c) != 0)
	{
		MapCoords pos;
		CalculateDancePosition(dance_group->behaviour->Pos, &pos);
		goal = pos;
	}
	return MoveToPos();
}

// BW1W120 00759a00 BW1M100 105772e0 Villager::ControlledByCreature(void)
bool32_t Villager::ControlledByCreature()
{
	if (dance_group != NULL && dance_group->Dancer != NULL)
	{
		MapCoords dancePos;
		CalculateDancePosition(dance_group->Dancer->Pos, &dancePos);
		if (Pos != dancePos)
		{
			MapCoords arrivePos = dance_group->Dancer->GetArrivePos();
			if (Pos == arrivePos)
			{
				SetupMoveToPos(dancePos, VILLAGER_STATE_CONTROLLED_BY_CREATURE);
			}
		}
	}
	return 1;
}

// BW1W120 00759a90 BW1M100 105770d0 Villager::ExitControlledByCreature(unsigned char)
// TODO: deferred — blocked on an UNNAMED global (symbols.txt has NO entry at all, not even a
// placeholder, for the absolute load at 0xc5fcf8 that the target uses as a creature-list head)
// plus loosely-typed cross-unit fields (Creature::field_0x1090/field_0x1094 in Creature.h are
// currently plain uint32_t, but the target treats them as a linked-list head of {next,
// Villager*} nodes and a count respectively — same family as VillagerFireman's
// fn_007309A0/fn_007309E0 add/remove-participant-list pattern). Full target logic for the
// cleanup block, from Ghidra + raw disassembly:
//   for each creature in the (unnamed) global creature list:
//     walk creature->field_0x1090 (a {next, Villager*} node list); if a node's villager == this:
//       unlink it from the list (fixing up head/prev->next), creature->field_0x1094--,
//       operator delete(node), then stop scanning creatures.
// Everything else below (state checks, IsDancing/RemoveFromDance, the trailing status clear)
// uses only already-named members/virtuals and should be correct.
bool32_t Villager::ExitControlledByCreature(unsigned char state)
{
	if (state == VILLAGER_STATE_IN_HAND || state == VILLAGER_STATE_FLYING || IsDeathState((VILLAGER_STATES)state))
	{
		// TODO: see unnamed-global blocker above — the creature participant-list removal is not
		// yet representable in source. Only the tail (IsDancing/RemoveFromDance) is written.
		if (IsDancing())
			RemoveFromDance(1);
	}
	else if (state != VILLAGER_STATE_CONTROLLED_BY_CREATURE && state != VILLAGER_STATE_WORSHIPPING_CREATURE &&
	         state != VILLAGER_STATE_DECIDE_WHAT_TO_DO)
	{
		return false;
	}
	status &= ~0x4; // TODO: bit meaning not yet identified (Living::status)
	return true;
}

// BW1W120 00759b80 BW1M100 10577060 Villager::SetStateAfterFinishingDance(void)
void Villager::SetStateAfterFinishingDance()
{
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
}

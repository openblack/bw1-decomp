#include "Villager.h"

#include "FireEffect.h"
#include "Game.h"
#include "GameThingWithPos.h"
#include "MapCoords.h"
#include "Town.h"

// ============================================================================
// UNIT-WIDE BLOCKER (dispatcher): most fire functions call helper functions in
// FireEffect.cpp / MapCoords.cpp that are UNNAMED in symbols.txt (dtk labelled
// them fn_XXXXXXXX). The target's calls to them are relocless (dtk baked the VA,
// no symbol), so our reloc'd call to any C++ name can't match until these get
// real names in symbols.txt. Once named, the deferred functions below can be
// written from the logic in their TODOs. The cluster:
//   fn_00603260 (0x00603260, 0x20B): MapCoords = JustWholeMapXZ assignment
//       (dst.x=src.x; dst.z=src.z; dst.altitude=0). Likely
//       MapCoords::operator=(const JustWholeMapXZ&). Callers: FinishBeingOnFire, MoveAroundFire.
//   fn_0072FEF0 (0x0072FEF0, 0x20B): FireEffect thiscall(MapCoords& out) -> writes the
//       fire's object position into out. Caller: GetFireFightingPos, fn_0073006E.
//   fn_0073006E (0x0073006E, 0xF2B): FireEffect thiscall(MapCoords& pos) -> FireEffect*;
//       walks GetFirstCaused()/next-caused list, returns the nearest safe fire to pos
//       (uses GetObjectA, GetSafeFireRadius, GUtils::GetDistanceInMetres). Caller: DecideHowToPutOutFire.
//   fn_007309A0 (0x007309A0, 0x40B): adds a {next,Villager*} node to GetFirstCaused()'s
//       list at +0x48 (operator new(8)); "add villager to fire's participant list".
//       Callers: EnterOnFire, EnterPutOutFire.
//   fn_007309E0 (0x007309E0, 0x50B): removes the villager's node from that list
//       (operator delete); "remove villager from fire's participant list".
//       Callers: ExitOnFire, ExitPutOutFire.
//   fn_00732AD0 (0x00732AD0, 0x10B): "next caused fire" iterator (used inside fn_0073006E).
//   fn_0075ABA0 (0x0075ABA0, in THIS unit, 0xB0B): unnamed helper for PutOutFireByBeating.
// ============================================================================

// BW1W120 0075a3d0 BW1M100 1057a120 Villager::DecideHowToPutOutFire(FireEffect *)
// TODO: deferred — blocked on UNNAMED fn_0073006E (see file-header cluster). Logic:
//   MapCoords pos;   // {0,0,0}
//   fire_effect = param_1->fn_0073006E(((GameThingWithPos*)this)->Pos);   // nearest safe fire to my pos
//   if (fire_effect != NULL && GetFireFightingPos(fire_effect, &pos))
//   {
//       SetupMoveAroundFire(pos, VILLAGER_STATE_PUT_OUT_FIRE_BY_BEATING);   // 0xd8
//       return true;
//   }
//   return false;
bool32_t Villager::DecideHowToPutOutFire(FireEffect* param_1)
{
	return true;
}

// BW1W120 0075a760 Villager::FUN_0075a760(void)
void Villager::FUN_0075a760() {}

// BW1W120 0075a770 BW1M100 10579a00 Villager::SetupMoveAroundFire(MapCoords const &, VILLAGER_STATES)
// TODO: 94.9% — the only diff is a scheduler tie-break at the entry SetTopState call: target
// emits `mov eax,[esi]` (vtable load) BEFORE `push 0xdc` (the state arg); ours pushes the const
// first. Correct semantics; setup-addreaction-field-sched family (see CHEATSHEET.md). The
// early-return form regresses to 77.9% (changes the branch structure), so this shape is kept.
bool32_t Villager::SetupMoveAroundFire(const MapCoords& pos, VILLAGER_STATES state)
{
	if (SetTopState(VILLAGER_STATE_MOVE_AROUND_FIRE) == 1)
	{
		// field_0x10c/field_0x110 double as a JustWholeMapXZ (x,z) wander target for this state.
		((JustWholeMapXZ*)&field_0x10c)->Init(pos);
		SetState(LIVING_ACTION_INDEX_PREVIOUS, state);
		if (state == VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP)
		{
			if (GetTown())
			{
				GetTown()->AddVillagerOnWayToWorshipSite(this);
				Flags |= 0x10;
			}
		}
		return true;
	}
	return false;
}

// BW1W120 0075a7e0 BW1M100 105796c0 Villager::MoveAroundFire(void)
// TODO: deferred (675B) — blocked on UNNAMED fn_00603260 (MapCoords=JustWholeMapXZ assign at
// this+0x80, see file header) plus other helpers. Large state-tick function; write after naming.
uint32_t Villager::MoveAroundFire()
{
	return true;
}

// BW1W120 0075aa90 BW1M100 10579520 Villager::GetFireFightingPos(FireEffect *, MapCoords *)
// TODO: deferred — blocked on UNNAMED fn_0072FEF0 (see file-header cluster) + capped by the
// GameFloatRand file/line split-TU issue (gamerand-file-line-split-tu). Logic:
//   if (param_1 == NULL) return false;
//   Object* obj = param_1->GetObjectA();
//   if (obj == NULL) return false;
//   MapCoords firePos;   // {0,0,0}
//   param_1->fn_0072FEF0(firePos);                       // fill firePos with fire object pos
//   float angle = GUtils::Get3DAngleFromXZ(firePos, ((GameThingWithPos*)this)->Pos);
//   float radius = (obj->vf0x64() <= GetSafeFireRadius()) ? GetSafeFireRadius() : obj->vf0x64();
//   radius += this->vf0x64();                            // slot 0x64 returns a float (bounding radius?)
//   radius += GameFloatRand(1.0f, __FILE__, __LINE__) + 0.3f;   // push 0x133/1.0f in target
//   *param_2 = GUtils::GetPosFromAngle(radius, angle) + obj->Pos;   // MapCoords operator+
//   return true;
bool32_t Villager::GetFireFightingPos(FireEffect* param_1, MapCoords* param_2)
{
	return true;
}

// BW1W120 0075ac50 BW1M100 10579150 Villager::PutOutFireByBeating(void)
// TODO: deferred (313B) — blocked on UNNAMED fn_0075ABA0 (in-unit helper, 0xB0B) plus
// GetFireFightingPos/SetupMoveAroundFire (also blocked). Uses GetObjectA, LookAtObject,
// IsReadyForNewAnimation, IsAboveReactionTemperature, EffectValues ctor +
// ApplyEffectToFireEffectIfNecessary. Write after the FireEffect helpers are named.
bool32_t Villager::PutOutFireByBeating()
{
	return true;
}

// BW1W120 0075ad90 BW1M100 105790d0 Villager::IsValidFire(FireEffect *)
bool32_t Villager::IsValidFire(FireEffect* fire_effect)
{
	FireEffect* fire = GGame::g_game->GameLists.FireEffects.head;
	while (fire != NULL)
	{
		if (fire == fire_effect)
			return true;
		fire = fire->next;
	}
	return false;
}

// BW1W120 0075adc0 BW1M100 10578f40 Villager::EnterPutOutFire(unsigned char, unsigned char)
// TODO: deferred — blocked on UNNAMED fn_007309A0 (add-to-participant-list, see file header).
// Guarded by IsStateEntryFunctionSameAs(param_1,param_2); validates fire_effect (IsValidFire,
// fire_effect->vf, reaction@0x94 checks), walks GetFirstCaused list, calls fn_007309A0(this);
// on failure clears fire_effect and drives the state table (global 0xdb9f30, vtable+0x998).
bool32_t Villager::EnterPutOutFire(unsigned char param_1, unsigned char param_2)
{
	return true;
}

// BW1W120 0075ae80 BW1M100 10578da0 Villager::ExitPutOutFire(unsigned char)
// TODO: deferred — blocked on UNNAMED fn_007309E0 (remove-from-participant-list, see file header).
// vtable+0x96c guard; walks GetFirstCaused list to remove self via fn_007309E0; clears fire_effect;
// GetTown()->RemoveVillagerOnWayToWorshipSite(this) walking town list at +0xdf4; vtable+0x910.
bool32_t Villager::ExitPutOutFire(unsigned char param_1)
{
	return true;
}

// BW1W120 0075af30 BW1M100 10578cc0 Villager::EnterOnFire(unsigned char, unsigned char)
// TODO: deferred — blocked on UNNAMED fn_007309A0 (see file header). Logic:
//   if (fire_effect && fire_effect->vf0x2c()) {   // fire still valid/burning
//       walk GetFirstCaused() list (+0x48, ->next via *node, node->villager at [1]);
//       if any node->villager == this return true;   // already listed
//       fn_007309A0(this);   // add this to fire's participant list
//   }
//   return true;
bool32_t Villager::EnterOnFire(unsigned char param_1, unsigned char param_2)
{
	return true;
}

// BW1W120 0075af80 BW1M100 10578bd0 Villager::ExitOnFire(unsigned char)
// TODO: deferred — blocked on UNNAMED fn_007309E0 (see file header). Logic:
//   if (fire_effect) {
//       walk GetFirstCaused() list; if a node->villager == this: fn_007309E0(this); (remove)
//       else if list ended: fire_effect = NULL; return true;
//       fire_effect = NULL;
//   }
//   return true;
bool32_t Villager::ExitOnFire(unsigned char param_1)
{
	return true;
}

// BW1W120 0075afe0 BW1M100 10578b60 Villager::PutOutFireWithWater(void)
bool32_t Villager::PutOutFireWithWater()
{
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 0075b000 BW1M100 10578af0 Villager::GetWaterToPutOutFire(void)
bool32_t Villager::GetWaterToPutOutFire()
{
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 0075b020 BW1M100 10578900 Villager::StopFireFighting(void)
// TODO: deferred (331B) — blocked on an UNNAMED FireEffect helper at ~0x730c20 (relocless call)
// plus state-table logic (global 0xdb9e98/0xd091b8, vtable ExitPutOutFire@0xb04, +0x904/+0x938).
// Uses LivingAction::SetState. Write after the FireEffect helper is named.
bool32_t Villager::StopFireFighting()
{
	return true;
}

// BW1W120 0075b170 BW1M100 105787c0 Villager::SetupOnFire(FireEffect *)
// TODO: 97.0% — declared bool32_t but the target NEVER sets a clean return value: all paths fall
// through to one shared pop/ret, leaking whatever eax held (the last SetTopState(0xdb) result on
// the body path, the failed-condition value on the skip paths). MSVC6 hard-errors (C4716) on a
// non-void body with no return, so a trailing `return true` is forced — the ONE residual diff is
// that extra `mov eax,1`. void-call-eax-probed / fpu-leak-void-return family (see CHEATSHEET.md);
// `return SetTopState(0xdb)` in the body regresses to 90.5% (two epilogues). Everything else matches.
bool32_t Villager::SetupOnFire(FireEffect* new_fire_effect)
{
	if (!(((GameThingWithPos*)this)->Flags & 0x44) && IsAvailable() && (status & 1) != 1)
	{
		StorePreviousState();
		// field_0x10c/field_0x110 double as a JustWholeMapXZ (x,z) position here too (see SetupMoveAroundFire).
		((JustWholeMapXZ*)&field_0x10c)->Init(*GetDestPos());
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		fire_effect = new_fire_effect;
		SetTopState(VILLAGER_STATE_ON_FIRE);
	}
	return true;
}

// BW1W120 0075b1e0 BW1M100 105785a0 Villager::OnFire(void)
// TODO: deferred (489B) — blocked on an UNNAMED FireEffect helper (relocless call) + calls the
// deferred FinishBeingOnFire, and has float consts / GameFloatRand (gamerand-file-line-split-tu).
// Uses GetObjectA, IsOnFire, GetMaxFireRadius, GetFireRadius, GUtils::GetPosFromAngle,
// MapCoords operator+, SetupMoveToWithHug. Write after the FireEffect helpers are named.
bool32_t Villager::OnFire()
{
	return true;
}

// BW1W120 0075b3d0 BW1M100 105784e0 Villager::FinishBeingOnFire(void)
// TODO: deferred — the target first calls the UNNAMED fn_00603260 (0x00603260) as a thiscall on
// the MapCoords at this+0x80 with &field_0x10c as the arg: it copies x,z (two int32) and zeroes
// altitude, i.e. a MapCoords = JustWholeMapXZ assignment (likely MapCoords::operator=(const
// JustWholeMapXZ&)). fn_00603260 has NO name in symbols.txt (only callers are this + MoveAroundFire),
// so the call reloc can't match until the dispatcher names it. Once named, restore before
// PopFromPrevious:  ((MapCoords*)&<0x80>) = *(JustWholeMapXZ*)&field_0x10c;
bool32_t Villager::FinishBeingOnFire()
{
	PopFromPrevious();
	return true;
}

// BW1W120 0075b400 BW1M100 10578430 Villager::IsFireMan(void)
// TODO: deferred — double-blocked (dispatcher):
//  (1) RETURN TYPE: symbols.txt has ?IsFireMan@Villager@@UAEIXZ and ?IsFireMan@Object@@UAEIXZ
//      (both `I` = bool32_t), but Villager.h:285 and Object.h:533 both declare `virtual bool`.
//      Both must change to bool32_t together (C2555 blocks changing only one — it overrides
//      Object::IsFireMan). Until then our stub emits the wrong (_N) mangling ("extra" symbol).
//  (2) BODY reads UNNAMED globals: the Villager state table at 0x00d091b8 and a table at
//      0x00db9e98. Logic: s = GetFinalState(); return (state_table[s].EntryFn==ExitPutOutFire
//      && [s].next3 fields==0) || (uint8_t)s==VILLAGER_STATE_REACT_TO_FIRE (0xd7). Needs the
//      globals named.
bool Villager::IsFireMan()
{
	return true;
}

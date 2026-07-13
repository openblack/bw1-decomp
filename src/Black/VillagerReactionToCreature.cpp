#include "Villager.h"

#include "MapCoords.h"
#include "Reaction.h"
#include "Utils.h"

// BW1W120 00767630 BW1M100 10596820 Villager::SetupReactToCreature(GameThingWithPos *, Reaction *)
void Villager::SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2)
{
	// TODO: deferred — void-call-eax-probed-by-caller blocker. The body switches on
	// Town::GetTownAttitudeToCreature(c)'s result, but that symbol is mangled QAEX (void return,
	// ground truth at 0x7436f0). Declaring it non-void to switch on it changes the call's mangled
	// reloc and breaks the match; `switch(voidfunc())` won't compile. Semantics (from target asm):
	//   Creature* c = dynamic_cast<Creature*>(param_1);
	//   if (c->IsAvailable()) {
	//     field_0xbc = c;
	//     Town* t = GetTown();
	//     if (t) {
	//       t->CreateCreatureInfo(c);
	//       switch (t->GetTownAttitudeToCreature(c)) {   // <-- void-return, eax probed
	//         case 0: case 2: case 4: AddReaction(param_2, 0x92); return;
	//         case 3: AddReaction(param_2, 0x9f); return;
	//         default: return;   // case 1 and >4
	//       }
	//     }
	//     AddReaction(param_2, 0x92);
	//   }
	// (GetTownAttitudeToCreature/CreateCreatureInfo are undeclared in Town.h — dispatcher should
	//  add them, and resolve the void-return-type contradiction.)
}

// BW1W120 007676e0 BW1M100 10596540 Villager::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t Villager::ReactToCreaturePriority(Reaction* param_1, Reaction* param_2)
{
	// TODO: deferred — void-call-eax-probed-by-caller blocker: switches on
	// Town::GetTownAttitudeToCreature() (mangled QAEX void). Also depends on several globals
	// (0x00d4f918/0x00d4f6c0/0x00d4f788 attitude bytes, 0xdb9e7c desire table) and a jump table.
	return 0;
}

// BW1W120 007678a0 BW1M100 10596410 Villager::InspectCreatureReaction(void)
bool32_t Villager::InspectCreatureReaction()
{
	// TODO: deferred — blocked on two things outside this unit:
	//  (1) an UNNAMED global at 0x00d01a38 (the divisor in `1000/global`, likely a game
	//      frame/tick rate) that has no symbol in symbols.txt, so the load reloc can't match;
	//  (2) GRand::GameRand(max, __FILE__, __LINE__) — the target's __FILE__ string (0xc245b0,
	//      "...VillagerReaction...") and __LINE__=0xa0 can't be reproduced from this file
	//      (same known blocker noted in VillagerStates.cpp:554).
	// Semantics (from target asm):
	//   field_0x10c = 20.0f;
	//   int a = (int)((1000/global) * 1.5f);
	//   field_0x110 = a + GameRand((int)((1000/global) * 3.0f), __FILE__, __LINE__);
	//   SetTopState(0x93); UpdateAttitudeToCreature(); return 1;   (else StopReactingAndSetState)
	return 0;
}

// BW1W120 00767970 BW1M100 105962d0 Villager::PerformInspectCreatureReaction(void)
bool32_t Villager::PerformInspectCreatureReaction()
{
	// TODO: 95.7% — sole diff is FPU scheduling: target places FCOMP after the counter
	// decrement (FLD;load;dec;FCOMP;store), ours emits FCOMP right after FLD. The compare is
	// independent of the dec so MSVC is free to place it either side; no source order forces it.
	if (field_0xbc != NULL && field_0xbc->IsAvailable())
	{
		field_0x110 = field_0x110 - 1;
		if (field_0x10c < 1.0f)
		{
			if (field_0x110 == 0)
			{
				StopReactingAndSetState();
				return 1;
			}
		}
		else if (field_0x110 == 0)
		{
			SetTopState(VILLAGER_STATE_APPROACH_CREATURE_REACTION);
			UpdateAttitudeToCreature();
			return 1;
		}
		else
		{
			LookAtObject(field_0xbc, 1);
		}
		UpdateAttitudeToCreature();
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00767a00 BW1M100 10596080 Villager::ApproachCreatureReaction(void)
bool32_t Villager::ApproachCreatureReaction()
{
	// TODO: deferred — triple-blocked: (1) unnamed global 0x00d01a38 (1000/global tick math);
	// (2) GRand::GameRand(max, __FILE__, __LINE__) at line 0xe7 — string 0xc245b0 unmatchable;
	// (3) self `coords` layout bug ([esi+0x2c] vs target [esi+0x14]). Distance/angle-gated approach
	// that on arrival scales a random dwell time and SetupMoveToCreatureReaction / SetTopState(0x93).
	return 0;
}

// BW1W120 00767ba0 BW1M100 10595f40 Villager::InitialiseRespectCreatureReaction(void)
bool32_t Villager::InitialiseRespectCreatureReaction()
{
	// TODO: deferred — hidden-retbuf signature blocker (cross-unit, dispatcher). The body calls
	// Object::GetNearestEdgeOfObject(c), which is declared `void ...(Object*)` in Object.h but is
	// really a hidden-retbuf function returning a float x,y,z position BY VALUE (call passes a
	// retbuf + the Object*). Same shape as FindPosOutsideAbode noted in VillagerFood.cpp. Until
	// Object.h's return type is fixed (and its definition unit updated), this can't be written.
	// Semantics (from target asm):
	//   if (field_0xbc && field_0xbc->IsAvailable()) {
	//     Creature* c = dynamic_cast<Creature*>(field_0xbc);
	//     LHCoord e = GetNearestEdgeOfObject(c);           // hidden retbuf
	//     MapCoords m((int)(e.x*6553.6f), (int)(e.z*6553.6f), 0);
	//     SetupMoveToCreatureReaction(m, 0xa0);
	//     UpdateAttitudeToCreature(); return 1;
	//   }
	//   StopReactingAndSetState(); return 1;
	return 0;
}

// BW1W120 00767c80 BW1M100 10595e50 Villager::TurnToFaceCreatureReaction(void)
bool32_t Villager::TurnToFaceCreatureReaction()
{
	// TODO: 99.7% — sole diff is the scratch register for the reloaded field_0xbc passed to
	// LookAtObject: target uses eax, ours ecx (register-allocation tie-break). A named local
	// and reusing it both regress; body is otherwise byte-exact.
	if (field_0xbc != NULL && field_0xbc->IsAvailable())
	{
		if (LookAtObject(field_0xbc, 2) == 1)
		{
			TurnsUntilNextStateChange = 0;
			SetTopState(0x9c);
		}
		UpdateAttitudeToCreature();
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00767ce0 BW1M100 10595cf0 Villager::PerformRespectCreatureReaction(void)
bool32_t Villager::PerformRespectCreatureReaction()
{
	// TODO: deferred — blocked on the same UNNAMED global 0x00d01a38 (divisor in `1000/global`)
	// as InspectCreatureReaction, plus the `coords` layout bug (self coords at [esi+0x2c] vs
	// target [esi+0x14]). Semantics (from target asm):
	//   if (field_0xbc && field_0xbc->IsAvailable()) {
	//     int d = GUtils::GetAngleFromXZ(coords, field_0xbc->coords) - field_0x5c;
	//     if (abs(d) > 0x100) { SetTopState(0xa0); return 1; }
	//     ++TurnsUntilNextStateChange;   // field_0x58
	//     if ((short)TurnsUntilNextStateChange > (int)((1000/global) * <c@0x8ab418>))
	//         SetTopState(0x9d);
	//     UpdateAttitudeToCreature(); return 1;
	//   }
	//   StopReactingAndSetState(); return 1;
	return 0;
}

// BW1W120 00767dc0 BW1M100 10595c30 Villager::FinishRespectCreatureReaction(void)
bool32_t Villager::FinishRespectCreatureReaction()
{
	if (field_0xbc != NULL && field_0xbc->IsAvailable())
	{
		StopReactingAndSetState();
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00767e00 BW1M100 10595a30 Villager::FleeingFromCreatureReaction(void)
bool32_t Villager::FleeingFromCreatureReaction()
{
	// TODO: deferred — blocked by: GRand::GameRand(0xa, __FILE__, __LINE__) at line 0x161 (string
	// 0xc245b0 unmatchable), plus self `coords` layout bug ([esi+0x2c] vs [esi+0x14]). Reads the
	// creature's speed/threat, computes a flee target via GetReaction()->GetInfo(), checks InBounds
	// and SetSpeed, else SetupMoveToCreatureReaction.
	return 0;
}

// BW1W120 00767f70 BW1M100 10595930 Villager::MoveTowardsCreatureReaction(void)
bool32_t Villager::MoveTowardsCreatureReaction()
{
	if (field_0xbc != NULL && field_0xbc->IsAvailable())
	{
		if (MoveTo() == 10)
		{
			// `coords` here is the GameThingWithPos base member (0x14), not Object::coords (0x2c)
			if (GUtils::GetDistanceInMetres(((GameThingWithPos*)this)->coords, *GetDestPos()) <= 0.5f)
			{
				SetTopStateToFinal();
			}
		}
		UpdateAttitudeToCreature();
		return 1;
	}
	StopReactingAndSetState();
	return 1;
}

// BW1W120 00767fe0 BW1M100 10595660 LivingMapCell::LivingMapCell(JustMapXZ &)
// TODO: deferred — struct-layout blocker (dispatcher). LivingMapCell is declared as a single
// uint8_t in Living.h but is really a ~40-byte occupancy bitmap (ctor zeroes 10 dwords via
// rep stosd, then ORs one bit per fixed object on the map at its grid cell). Cannot be matched
// until LivingMapCell is given its true 40-byte layout. Body: memset(this,0,40); iterate
// map->ToMap() fixed objects, for each set bit [x*2 + z/8] |= 1<<(z&7) using the float->grid math.
LivingMapCell::LivingMapCell(JustMapXZ& param_1) {}

// BW1W120 007680d0 BW1M100 105953b0 LivingMapCell::FindFreePosition(JustMapXZ &, MapCoords const &, MapCoords *)
// TODO: deferred — same LivingMapCell 40-byte layout blocker; reads the occupancy bitmap.
bool32_t LivingMapCell::FindFreePosition(JustMapXZ& param_1, const MapCoords& param_2, MapCoords* param_3)
{
	return 0;
}

// BW1W120 007682a0 BW1M100 10595080 Villager::CalculateNearestFreeDestination(MapCoords *)
// TODO: deferred — blocked on undefined helper types/symbols (dispatcher):
//  * LHStack__JustMapXZ (a fixed stack: short pairs array + `current` count at +0x20) — undefined;
//  * fn_007685A0 is its push method (unnamed symbol, blocker #4);
//  * LivingMapCell's true 40-byte layout (see ctor above);
//  * a neighbour-offset table global at 0x00da59fe..0x00da5a0e.
// Body does a BFS over grid neighbours pushing candidates onto local LHStack__JustMapXZ stacks,
// building a LivingMapCell per candidate and calling FindFreePosition until one succeeds.
void Villager::CalculateNearestFreeDestination(MapCoords* param_1) {}

// BW1W120 007683f0 BW1M100 10595020 Villager::UpdateAttitudeToCreature(void)
void Villager::UpdateAttitudeToCreature()
{
	UpdateReactiveStateFromAttitudeToCreature();
}

// BW1W120 00768400 BW1M100 10594e00 Villager::UpdateReactiveStateFromAttitudeToCreature(void)
bool32_t Villager::UpdateReactiveStateFromAttitudeToCreature()
{
	// TODO: deferred — void-call-eax-probed-by-caller blocker: the arena==0 path switches on
	// Town::GetTownAttitudeToCreature(c) (mangled QAEX void) via an iVar==1/3/4 chain, same as
	// SetupReactToCreature. (Globals ARE named here: GGame::g_game @0x00d0195c, Creature::arena
	// @0x10a0.) Semantics (from target asm):
	//   if (CheckNeededForWorship() == 1) return;
	//   Creature* c = dynamic_cast<Creature*>(field_0xbc);
	//   if (!c) return;
	//   if (c->arena) {                      // arena != 0
	//     StopReactingAndSetState();
	//     for (Reaction* r = g_game->GameLists.<reactions>.head; r; r = r->next)
	//       if (r->target == c->arena) { SetupReactToFight(c->arena, r); return; }
	//     return;
	//   }
	//   if (!GetTown()) return;
	//   switch (GetTownAttitudeToCreature(c)) {   // <-- void-return, eax probed
	//     case 1: StopReactingAndSetState(); break;
	//     case 3: if ((char)GetFinalState() != 0x9f) SetTopState(0x9f); break;
	//     case 4: { uint8_t s = GetFinalState();
	//               if (s < 0x9b || (s > 0x9d && s != 0xa0)) SetTopState(0x9b); break; }
	//   }
	return 0;
}

// BW1W120 00768510 BW1M100 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
void Villager::SetupMoveToCreatureReaction(const MapCoords& destination, unsigned char state)
{
	// TODO: 92.5% — target passes state (unsigned char) to SetupMoveToWithHug's
	// VILLAGER_STATES (enum, 4-byte) param WITHOUT widening (`mov eax,[esp+8]; push eax`),
	// but MSVC6 emits `and eax,0xff` for the required unsigned char->enum conversion here.
	// The only C++ that omits the widen reads the padding bytes (fakematch), so left as-is.
	SetupMoveToWithHug(destination, (VILLAGER_STATES)state);
	action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_MOVE_TOWARDS_CREATURE_REACTION);
}

// BW1W120 00768540 BW1M100 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
uint32_t GameThingWithPos::AttitudeToCreatureNone()
{
	return 1;
}

// BW1W120 00768550 BW1M100 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
uint32_t GameThingWithPos::AttitudeToCreatureFear()
{
	return 3;
}

// BW1W120 00768560 BW1M100 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
uint32_t GameThingWithPos::AttitudeToCreatureRespect()
{
	return 4;
}

// BW1W120 00768570 BW1M100 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
uint32_t GameThingWithPos::AttitudeToCreatureEating()
{
	return 1;
}

// BW1W120 00768580 BW1M100 10594bb0 Living::AttitudeToCreatureEating(void)
uint32_t Living::AttitudeToCreatureEating()
{
	return IsVillager(NULL) ? 3 : 1;
}

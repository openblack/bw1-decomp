# Villager state machine

Architecture notes for the Villager 255-state matching campaign. Tooling and
per-function workflow live in `.claude/skills/villager-state-matching/`
(`vsm.py` driver, `SKILL.md` playbook, `CHEATSHEET.md` MSVC6 idioms,
`vsm_ledger.jsonl` attempt log). Append architectural facts here as they are
proven; per-function discoveries go in the cheat-sheet instead.

## Compiler (do not re-investigate)

The shipped `build/compilers/MSVC/6.5/c2.dll` is **build 12.00.8966** — the VC6
Processor Pack optimizer backend, which is exactly what built the bulk of the
game (BW1W120 Rich header: `UTC12_CPP` build 8966 × 620 objects). `cl.exe`
reports 12.00.8804 but that is only the **driver** version; the scheduler/backend
is 8966 and is correct. Instruction-scheduling gaps in villager functions are
therefore **source-shape puzzles, not a compiler mismatch** — this was tested and
disproven in the pilot. Don't go looking for a "better" compiler.

## One class, one table

Every villager role (Farmer, Fisherman, Forester, Fireman, Shepherd, Housewife,
Trader, Worshipper, Leader, Breeder/Missionary disciples, Child, …) and every
reaction is a method on the single `Villager` class. The per-role `.cpp` files
under `src/Black/` (24 objdiff units, ~980 target functions, ~115 KB .text)
only group methods; there are no role subclasses. `SpecialVillager` is the one
real subclass and adds no state machinery.

States are values of `enum VILLAGER_STATES` (`include/chlasm/GStates.h`,
0 = `INVALID_STATE`, 255 = `LAST_STATE`, 254 real states between). Animals have
a separate `ANIMAL_STATES` enum in the same header.

## Dispatch

Each state has a `Living::StateTableEntry` (0x90 bytes, `src/Black/Living.h`):
nine 0x10-byte sub-entries, each a member-function pointer + 12 bytes of
adjustor/vtordisp fields (MSVC "pointer to member of virtual base" is 16 bytes):

| off | sub-entry | signature (on `Living`) |
|---|---|---|
| 0x00 | `state` | `uint32_t ()()` — per-tick process function |
| 0x10 | `EntryState` | `bool ()(VILLAGER_STATES, VILLAGER_STATES)` |
| 0x20 | `ExitState` | `bool ()()` |
| 0x30 | `save_state` | `bool ()()` |
| 0x40 | `LoadState` | `bool ()()` |
| 0x50 | `field_0x50` | unknown |
| 0x60 | `field_0x60` | unknown |
| 0x70 | `TransitionAnimation` | `bool ()()` |
| 0x80 | `validate` | `bool ()()` |

`Villager::GetStateTable(VILLAGER_STATES)` (static, fully inlined in W120,
`src/Black/Villager.h:526`) indexes the table. Drivers, all virtual on
`Villager`:

- `ProcessState()` @ 0x0074FF70 — per-tick entry
- `CallState()` — invoke `entry.state`
- `CallEntryStateFunction(uint8_t)` @ 0x007523D0 and
  `CallEntryStateFunction(uint8_t, uint8_t)` @ 0x00752440
- `CallExitStateFunction(uint8_t)` @ 0x00752320
- `SetState(LIVING_ACTION_INDEX, VILLAGER_STATES)` @ 0x00753690

Generic handlers shared by all `Living` subclasses (`EnterMoveToPos`,
`ExitInScript`, …) live on `Living`; `Animal`/`Creature` reuse the same
`VILLAGER_STATES`-keyed machinery.

Per-state *metadata* (name string, `isFinalState`, `isScriptState`, timings) is
data-driven via `GVillagerStateTableInfo : GBaseInfo`
(`src/Black/VillagerStateTableInfo.h`), loaded from game data — separate from
the function-pointer table.

## Enum ranges → units (rough map)

The enum is grouped by feature; ranges below name the dominant unit (handlers
for a state can still live elsewhere — trust `vsm.py`'s per-unit function list
over this table):

| states | theme | main unit(s) |
|---|---|---|
| 1–30 | movement, script, dying, in-hand, basic reactions | VillagerStates, VillagerReaction |
| 31–46 | storage pit, home, building, worship supplies | VillagerStates, VillagerHome |
| 47–56 | forester, fisherman | VillagerForester, VillagerFisherman |
| 57–66 | worship at site/altar | VillagerWorshipper |
| 67–69 | farmer | VillagerFarmer |
| 70–84 | football | VillagerFootball |
| 85–90 | created, trade, scared, worship creature | VillagerStates, VillagerTrader |
| 91–99 | shepherd | VillagerShepherd |
| 100–112 | housewife (incl. birth) | VillagerHousewife |
| 113–115 | child | VillagerChild |
| 116–128 | dinner, sleep, sex at home | VillagerHome |
| 129–131 | homeless, vagrant, mourning | VillagerStates |
| 132–162 | object/creature reactions, tell-others | VillagerReaction, VillagerReactionToCreature |
| 163–164 | DECIDE_WHAT_TO_DO | Villager |
| 165–189 | interact checks, wood gathering | VillagerCheck, VillagerStates |
| 190–198 | shepherd slaughter, dance, confusion | VillagerShepherd, VillagerDance |
| 199–208 | script states, teleport, mourn dead | VillagerScript, VillagerReaction |
| 209–232 | workshop, fire fighting, disciples, trader | VillagerFireman, VillagerStates |
| 233–254 | inspect, hide, chill-out, worship-home, breeder | VillagerStates, VillagerHome |

## Naming grammar

State handler names follow a small grammar (useful when guessing which
`FUN_*` is which):

- `GotoX` → walk toward X; paired `ArrivesAtX` when the move completes
- `SetupX` → one-shot entry that configures then transitions into `X`
- `CheckX` → decision predicate (interact checks, role checks)
- `EnterX(uint8_t, uint8_t)` / `ExitX(uint8_t)` → table `EntryState`/`ExitState`
  slots (params are current/destination states)
- `PerformX` / `InitialiseX` → reaction two-step (see states 132–162)

## Campaign order

Matching order is mechanical: `vsm.py next` ranks by
`fan_in*10 − size/32 − 2*callees − 8*float_const + 5*callees_matched`, which
front-loads high-fan-in helpers (`GetAbode`, `GetStoragePit`, `GoHome`, …) so
their idioms reach the cheat-sheet before the many states that call them.
Milestones: helpers → VillagerStates → Reaction(+ToCreature) →
Child/Home/Food/Playtime/Dance/Leader/Trader → roles → Football/Special/
Villager.cpp sweep. On x86/COFF a caller can byte-match while its callees are
stubs (call relocs diff by symbol name), so "ready" = semantically cheap, not
link-blocked.

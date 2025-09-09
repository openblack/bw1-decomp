#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GPlayer;

struct GameStats
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x94];
  uint32_t wood_used;  /* 0xa8 */
  uint8_t graph_0[0x1f4];
  uint8_t field_0x2a0[0x5e8];
  uint8_t graph_1[0x1f4];  /* 0x888 */
  uint8_t field_0xa7c[0x6ac];
};
static_assert(sizeof(struct GameStats) == 0x1128, "Data type is of wrong size");

// win1.41 008ffdbc mac 1099ab2c GameStats::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9GameStats asm("??_R4GameStats@@6B@");

// win1.41 008ffdc0 mac 1099ab34 GameStats::`vftable'
extern const struct GameThingVftable __vt__9GameStats asm("??_7GameStats@@6B@");

// Constructors

// win1.41 00564a40 mac 1031b7d0 GameStats::GameStats(void)
struct GameStats* __fastcall __ct__9GameStatsFv(struct GameStats* this);

// Override methods

// win1.41 00564b00 mac 1031b740 GameStats::_dt(void)
void __fastcall __dt__9GameStatsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGameStats@@UAEPAXI@Z");
// win1.41 00564ac0 mac 103109d0 GameStats::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9GameStatsFv(struct GameThing* this) asm("?GetPlayer@GameStats@@UAEPAVGPlayer@@XZ");
// win1.41 00564ad0 mac 10310a10 GameStats::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9GameStatsFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@GameStats@@UAEXPAVGPlayer@@@Z");
// win1.41 00564af0 mac 10310a90 GameStats::GetDebugText(void)
char* __fastcall GetDebugText__9GameStatsFv(struct GameThing* this) asm("?GetDebugText@GameStats@@UAEPADXZ");

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */

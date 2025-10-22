#ifndef BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H
#define BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

struct PlayerProfile
{
  char16_t creature_name[0x100];  /* 0x0 */
  char16_t current_profile[0x100];  /* 0x200 */
  char16_t login_name[0x100];  /* 0x400 */
  char16_t login_password[0x100];  /* 0x600 */
  uint32_t stuff;  /* 0x800 */
  uint32_t player_symbol;
  uint32_t timestarted;
  uint32_t numberofsaves;
  uint32_t numberofloads;  /* 0x810 */
  uint32_t pitchaboutcentre;
  uint32_t pushscroll;
  uint32_t HAND_ORIENTATION;
  uint32_t IMMERSION_KEY;  /* 0x820 */
};
static_assert(sizeof(struct PlayerProfile) == 0x824, "Data type is of wrong size");

// Static methods

// win1.41 0066b7a0 mac 104cbec0 PlayerProfile::SetCurrentProfile(wchar_t *)
void __cdecl SetCurrentProfile__13PlayerProfileFPw(char16_t* name) asm("?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z");
// win1.41 0066bfb0 mac 104cb130 PlayerProfile::ProfileExists(wchar_t *)
uint32_t __cdecl ProfileExists__13PlayerProfileFPw(char16_t* name) asm("?ProfileExists@PlayerProfile@@SAIPA_W@Z");

#endif /* BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H */

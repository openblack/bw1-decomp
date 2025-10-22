#ifndef BW1_DECOMP_SETTINGS_INCLUDED_H
#define BW1_DECOMP_SETTINGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct Settings
{
  char quest_path[0x1];  /* 0x0 */
  uint8_t field_0x1[0x103];
};
static_assert(sizeof(struct Settings) == 0x104, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00714af0 mac 105e8db0 Settings::ParseConfigFile(char*)
void __fastcall ParseConfigFile__8SettingsFPc(struct Settings* this, const void* edx, char* path) asm("?ParseConfigFile@Settings@@QAEXPAD@Z");
// win1.41 00714c20 mac 105e8d50 Settings::InitialiseToDefaults(void)
void __fastcall InitialiseToDefaults__8SettingsFv(struct Settings* this) asm("?InitialiseToDefaults@Settings@@QAEXXZ");

#endif /* BW1_DECOMP_SETTINGS_INCLUDED_H */

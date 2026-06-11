#ifndef BW1_DECOMP_SETTINGS_INCLUDED_H
#define BW1_DECOMP_SETTINGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct Settings
{
    char quest_path[0x1]; /* 0x0 */
    uint8_t field_0x1[0x103];

    // Non-virtual methods

    // win1.41 00714af0 mac 105e8db0 Settings::ParseConfigFile(char*)
    void ParseConfigFile(char* path);
    // win1.41 00714c20 mac 105e8d50 Settings::InitialiseToDefaults(void)
    void InitialiseToDefaults();
};

#endif /* BW1_DECOMP_SETTINGS_INCLUDED_H */

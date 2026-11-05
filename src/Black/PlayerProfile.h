#ifndef BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H
#define BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For memset */
#include <wchar.h>  /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#define PLAYER_PROFILE_DEFAULT_IMMERSION_LEVEL 1
#define PLAYER_PROFILE_REGISTRY_VALUE_SIZE     63

const char* const HandOrientationKey = "HAND_ORIENTATION";

#define PLAYER_PROFILE_NAME_LENGTH 64
#define PLAYER_SYMBOL_COUNT        16

struct PlayerProfile
{
	// Descriptive singleton name.
	// BW1W120 00d4bd38
	static PlayerProfile Profile;
	wchar_t              CreatureName[0x100];   /* 0x0 */
	wchar_t              CurrentProfile[0x100]; /* 0x200 */
	wchar_t              LoginName[0x100];      /* 0x400 */
	wchar_t              LoginPassword[0x100];  /* 0x600 */
	uint32_t             stuff;                 /* 0x800 */
	uint32_t             PlayerSymbol;
	uint32_t             timestarted;
#ifdef VERSION_BW1WCI
	uint32_t timestarted_creatureisle;
#endif
	uint32_t numberofsaves;
	uint32_t numberofloads; /* 0x810 */
	bool32_t pitchaboutcentre;
	bool32_t pushscroll;
	uint32_t HAND_ORIENTATION;
	uint32_t IMMERSION_KEY; /* 0x820 */
#ifdef VERSION_BW1W130
	uint32_t useglove;
#endif
	uint32_t UserDataFlags;

	// BW1W120 inlined BW1M119 inlined
	PlayerProfile()
	{
		memset(this, 0, sizeof(PlayerProfile));
		IMMERSION_KEY = PLAYER_PROFILE_DEFAULT_IMMERSION_LEVEL;
	}

	// Static methods
	// BW1W120 0066bfb0 BW1M119 014d1590
	// Both Windows callers consume AL; the DLL int result is normalized by this bool wrapper.
	static bool ProfileExists(wchar_t* name);
	// BW1W120 0066bf20 BW1M119 014d1600
	static void DeleteProfile(wchar_t* name);
	// BW1W120 0066bf10 BW1M119 014d16f0
	static void CreateProfile(wchar_t* name);
	// BW1W120 0066bcd0 BW1M119 014d1750
	static void WriteBackToRegistry(PlayerProfile& profile);
	// BW1W120 0066bad0 BW1M119 014d1a80
	static void GetProfileByName(wchar_t* name, PlayerProfile& profile);
	// BW1W120 0066ba00 BW1M119 014d1d50
	static void GetProfileNameByIndex(int index, wchar_t* name);
	// BW1W120 0066b9c0 BW1M119 014d2020
	static int GetNumberOfProfiles();
	// BW1W120 0066b920 BW1M119 014d20c0
	static int GetProfileIdx(wchar_t* name);
	// BW1W120 0066b900 BW1M119 014d22b0
	static void GetCurrentProfile(wchar_t* name);
	// BW1W120 0066b7a0 BW1M119 014d2330
	static void SetCurrentProfile(wchar_t* name);
};
#if defined(VERSION_BW1W130) || defined(VERSION_BW1WCI)
static_assert(sizeof(PlayerProfile) == 0x82c, "PlayerProfile size is incorrect");
#else
static_assert(sizeof(PlayerProfile) == 0x828, "PlayerProfile size is incorrect");
#endif

#endif /* BW1_DECOMP_PLAYER_PROFILE_INCLUDED_H */

#include "LoaderAnon.h"

#include <stdlib.h> /* For getenv */

#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>   /* For operator new(size_t, const char*, uint32_t) */

#include "CreatureMentalDesire.h"   /* For struct CreatureDesireDependency */
#include "VillagerStateTableInfo.h" /* For struct GVillagerStateTableInfo */

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// The original does not inline the LoadIt instantiations into load_variables; our partial
// load_variables is still small enough that the compiler otherwise would.
#pragma inline_depth(0)

// BW1W120 0042b460 BW1M100 10181840 load_variables(void)
// TODO: partial. The original loads every info table in the game (~130 loader calls between the
// LoaderAnon construction and file.Close()), each one line of the same shape as the two below.
// Also still missing: the scripts\info*.txt vs scripts\info.tmp timestamp scan that computes
// use_binary, and the tmp-file unlink/rename handling after Close().
void load_variables(void)
{
	LHFile file; // TODO: LHReleasedFile

	char*       load_id = getenv("LH_LOADID");
	LoaderAnon* loader =
		new ("C:\\dev\\MP\\Black\\Balance.cpp", 531) LoaderAnon((char*)"DETAIL_", (char*)"ENUM_", load_id);
	bool use_binary = false; // TODO: true when scripts\info.tmp is newer than every scripts\info*.txt

	LoadIt(loader, (char*)"DETAIL_CREATURE_DESIRE_DEPENDENCIES", CreatureDesireDependency::g_CreatureDesireDependency,
	       NUM_CREATURE_DESIRES, use_binary, &file);
	LoadIt(loader, (char*)"DETAIL_VILLAGER_STATE_TABLE_INFO", g_GVillagerStateTableInfos, VILLAGER_STATE_LAST_STATE,
	       use_binary, &file);

	file.Close();
}
#pragma inline_depth()

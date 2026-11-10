#ifndef BW1_DECOMP_PC_INPUT_INCLUDED_H
#define BW1_DECOMP_PC_INPUT_INCLUDED_H

#include <re_common.h> /* For bool32_t */

#define DEBUG_TEXT_LINE_COUNT   20
#define DEBUG_TEXT_LINE_LENGTH  256
#define DEBUG_TEXT_LINE_HEIGHT  20
#define DEBUG_TEXT_DISPLAY_TIME 250.0f

#define CREATURE_SNAPSHOT_FILENAME          "\\creaturesnapshot.csn"
#define CREATURE_SNAPSHOT_VERSION           2409
#define CREATURE_SNAPSHOT_HAIR_SETTLE_STEPS 100
#define CREATURE_SNAPSHOT_HAIR_SETTLE_TIME  0.05f
#define CREATURE_SNAPSHOT_DISPLAY_TIME      2000

#define ZOOM_TO_CREATURE_NEAR_DISTANCE 80.0f
#define LOADING_BOX_TEST_TIME          1000

#define GENERATE_FOOTPATHS_TOWN_RANGE   99999.0f
#define GENERATE_FOOTPATHS_BUILD_DESIRE 9.0f
#define GENERATE_FOOTPATHS_MAX_ROUTES   10

enum DEVELOPER_PROFILE
{
	DEVELOPER_PROFILE_DEFAULT,
	DEVELOPER_PROFILE_JEREMY,
	DEVELOPER_PROFILE_MARK_WEBLEY,
	DEVELOPER_PROFILE_GILES,
	DEVELOPER_PROFILE_JEAN_CLAUDE,
	DEVELOPER_PROFILE_DANIEL,
	DEVELOPER_PROFILE_GEORGE_BACKER,
	DEVELOPER_PROFILE_TIM,
	DEVELOPER_PROFILE_TBL,
	DEVELOPER_PROFILE_COUNT
};

struct DebugText
{
	// BW1W120 00d45630
	static DebugText Display;

	bool32_t Active;
	char     Lines[DEBUG_TEXT_LINE_COUNT][DEBUG_TEXT_LINE_LENGTH];
	float    DisplayTime;
	int      Line;

	// BW1W120 inlined BW1M119 inlined
	DebugText()
	{
		Active = false;
		DisplayTime = 0.0f;
		for (int i = 0; i < DEBUG_TEXT_LINE_COUNT; i++)
		{
			Lines[i][0] = '\0';
		}
	}

	// BW1W120 0063ed40
	static void Set(char* text, int line);
	// BW1W120 005e66a0 BW1M119 inlined
	void Draw();
	// BW1W120 005e6630
	void DrawLines();
};

class LH3DCreature;

// BW1W120 00d46a74
extern bool PhysicsWhilePaused;

// BW1W120 0063ff80
bool32_t LoadCreatureSnapshot();
// BW1W120 006405f0 BW1M119 013e29a0
bool32_t SaveCreatureSnapshot();
// BW1W120 00640bb0
void SaveAvoidMap(LH3DCreature* creature);

#endif /* BW1_DECOMP_PC_INPUT_INCLUDED_H */

#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <LHALL/Released/Headers/LHReleasedOSFile.h> /* For class LHReleasedOSFile */

#define CONFIG_MILLISECONDS_PER_SECOND 1000

#define CONFIG_CAST_SHIELD_GAME_TURN      200
#define CONFIG_CREATE_CREATURE_GAME_TURN  300
#define CONFIG_MOVE_CAMERA_GAME_TURN      600
#define CONFIG_QUIT_GAME_TURN             1200
#define CONFIG_GROSSE_MERDE_MAX_GAME_TURN 200

#define CONFIG_TEST_POSITION_X 2193.0f
#define CONFIG_TEST_POSITION_Z 2359.0f
#define CONFIG_CAMERA_OFFSET   50.0f

#define CONFIG_CAMERA_ORIGIN_X 1942.0f
#define CONFIG_CAMERA_ORIGIN_Y 141.0f
#define CONFIG_CAMERA_ORIGIN_Z 2377.0f
#define CONFIG_CAMERA_FOCUS_X  1993.0f
#define CONFIG_CAMERA_FOCUS_Y  118.0f
#define CONFIG_CAMERA_FOCUS_Z  2387.0f

#define CONFIG_SHIELD_RADIUS          45.0f
#define CONFIG_SHIELD_DURATION        10.0f
#define CONFIG_CREATURE_SIZE_INCREASE 1.5f

// Forward Declares

class CameraModeNew3;
struct LHPoint;
struct MapCoords;

struct Config
{
	LHReleasedOSFile file; /* 0x0 */
	int              LastFPS;
	CameraModeNew3*  NewCameraMode;
	// BW1W120 inlined BW1M119 inlined
	Config() { Init(); }
	~Config() { CloseDown(); }
	// BW1W120 0046b750 BW1M119 010c2170
	void CloseDown();

	// Non-virtual methods

	// BW1W120 0046af20 BW1M119 010c2ba0
	void Init();
	// BW1W120 0046b1f0 BW1M119 010c2810
	void Process();
	// BW1W120 0046b290 BW1M119 010c24b0
	void ProcessOneGameTurn();
	// BW1W120 0046b5e0 BW1M119 010c2400
	void Record(char* text);
	// BW1W120 0046b630 BW1M119 010c22b0
	void Record(char* text, MapCoords& coords);
	// BW1W120 0046b6b0 BW1M119 010c21c0
	void Record(char* text, LHPoint& point);
	// BW1W120 0046b720 BW1M119 inlined
	void Write(const char* text);
};

#ifndef VERSION_BW1W100
// BW1W120 0046b050 BW1M119 null
void ConfigSetGrosseMerdeCamera(int game_turn);
#endif
// BW1W120 0046b0b0 BW1M119 010c2950
int ConfigGetFPS();

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */

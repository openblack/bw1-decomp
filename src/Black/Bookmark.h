#ifndef BW1_DECOMP_BOOKMARK_INCLUDED_H
#define BW1_DECOMP_BOOKMARK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <chlasm/CreatureEnum.h>                  /* For enum CREATURE_TYPE */
#include <re_common.h>                            /* For bool32_t */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct LH3DSprite;
class GameOSFile;
class GameThing;
class Object;

enum BOOKMARK_INDEX
{
	BOOKMARK_INDEX_NONE = -1,
	BOOKMARK_INDEX_USER_FIRST = 0,
	BOOKMARK_INDEX_TOWN = 8,
	BOOKMARK_INDEX_USER_LAST = BOOKMARK_INDEX_TOWN,
	BOOKMARK_INDEX_BEFORE_JUMP = 10,
	BOOKMARK_INDEX_LAST = 11,
};

enum BOOKMARK_FLAG
{
	BOOKMARK_FLAG_SET = 1,
};

#define BOOKMARK_PULSE_PERIOD       2000
#define BOOKMARK_PULSE_PHASE_OFFSET 200
#define BOOKMARK_PULSE_RATE         0.0005f
#define BOOKMARK_PULSE_MINIMUM      0.2
#define BOOKMARK_HEIGHT_OFFSET      2.0f
#define BOOKMARK_FLY_TIME           0.3f
#define BOOKMARK_TOWN_OFFSET_X      24.45f
#define BOOKMARK_TOWN_OFFSET_Y      28.3786f
#define BOOKMARK_TOWN_OFFSET_Z      47.4f

struct BookmarkGraphic
{
	LH3DSprite*   sprite; /* 0x0 */
	CREATURE_TYPE type;

	// Static data

	// BW1W120 00c58cc8
	static int PulseTime;
	// BW1W120 00c58b24
	static float PulseWidth;
	// BW1W120 00c58b20
	static float PulseHeight;

	// Static methods

	// BW1W120 0043a7d0 BW1M119 010b8360
	static BookmarkGraphic* Create(long index, CREATURE_TYPE type);
	// BW1W120 0043a9e0 BW1M119 01029e40
	static void DrawLoopUpdate();

	// Non-virtual methods

	// BW1W120 0043a850 BW1M119 010b8300
	void Release();
	// BW1W120 0043a860 BW1M119 010b82a0
	void SetPosition(const LHPoint& pos);
	// BW1W120 0043a880 BW1M119 010b81e0
	void AddDrawing();
	// BW1W120 0043a8d0 BW1M119 010b8030
	void Draw();
};

class Bookmark
{
public:
	BookmarkGraphic* Graphic; /* 0x0 */
	uint8_t          Flags;
	MapCoords        Pos; /* 0x8 */
	Object*          Target;
	LHPoint          CameraOffset; /* 0x18 */

	// Static data

	// BW1W120 00c58b30
	static Bookmark Bookmarks[BOOKMARK_INDEX_LAST];
	// BW1W120 00c58cc4
	static int CurrentBookmark;
	// BW1W120 009cd380
	static int FollowBookmark;
	// BW1W120 009cd384
	static bool32_t ShowBookmarks;
	// BW1W120 009cd388
	static int FocusTownID;

	// Constructors

	// BW1W120 00439cb0 BW1M119 010ba040
	Bookmark();

	// Static methods

	// BW1W120 00439d60 BW1M119 010b9ea0
	static void ClearAll();
	// BW1W120 00439d40 BW1M119 010b9f40
	static void Clear(unsigned long index);
	// BW1W120 00439dd0 BW1M119 01085110
	static void ProcessAll();
	// BW1W120 00439b90 BW1M119 0101cb10
	static void DrawAll();
	// BW1W120 00439e50 BW1M119 010b99c0
	static void SetBookMark(unsigned long index, const MapCoords& coords);
	// BW1W120 00439f70 BW1M119 010b9790
	static void SetBookMark(unsigned long index, Object* object);
	// BW1W120 0043a070 BW1M119 010b8fa0
	static void SetCameraToBookMark(unsigned long index);
	// BW1W120 0043a390 BW1M119 010b8b60
	static void SetFollow(long index);
	// BW1W120 0043a380 BW1M119 010b8cc0
	static void SetFocusBeforeJumpBookmark();
	// BW1W120 0043a320 BW1M119 010b8d20
	static void SetFocusNextBookmark();
	// BW1W120 0043a2c0 BW1M119 010b8e60
	static void SetFocusPreviousBookmark();
	// BW1W120 0043aa60 BW1M119 010b7b00
	static void SetFocusToOwnedTown();
	// BW1W120 0043a3f0 BW1M119 010b8990
	static uint32_t SaveAll(GameOSFile& file);
	// BW1W120 0043a5e0 BW1M119 010b8600
	static uint32_t LoadAll(GameOSFile& file);

	// Destructors

	// BW1W120 00439d10 BW1M119 010b9fb0
	~Bookmark();

	// Non-virtual methods

	// BW1W120 00439d30 BW1M119 010ba180
	void GetBookMarkSet();
	// BW1W120 00439d80 BW1M119 inlined
	void ValidateTarget();
	// BW1W120 00439da0 BW1M119 01085260
	void Process();
	// BW1W120 0043a4e0 BW1M119 010b87d0
	bool32_t Save(GameOSFile& file);
	// BW1W120 0043a6d0 BW1M119 010b8460
	bool32_t Load(GameOSFile& file);
};
static_assert(sizeof(Bookmark) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_BOOKMARK_INCLUDED_H */

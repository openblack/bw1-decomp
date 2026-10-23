#ifndef BW1_DECOMP_DEBUG_INCLUDED_H
#define BW1_DECOMP_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdarg.h> /* For va_list */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHTimer.h> /* For struct LHTimer */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

class CellBox;

#define GDEBUG_NUM_CATEGORIES        12
#define GDEBUG_MESSAGES_PER_CATEGORY 60
// Drawn first, ahead of the enabled categories, and skipped among them.
#define GDEBUG_FIRST_DRAWN_CATEGORY 6

struct GDebug
{
	LHTimer  field_0x0;
	uint32_t field_0x110;
	bool32_t ShowVillagerDebugText;
	uint32_t field_0x118;
	bool32_t ShowReactions;
	uint32_t field_0x120;
	uint32_t field_0x124;
	uint32_t field_0x128;
	uint32_t field_0x12c;
	uint32_t field_0x130;
	bool32_t ShowHowImpressed;
	uint32_t field_0x138;
	uint32_t field_0x13c;
	bool32_t ShowIndirectFeedbackLessons;
	bool32_t ShowCreatureStatistics;
	bool32_t LogVillagers;
	bool32_t LogCreatures;
	bool32_t LogTownDesire;
	bool32_t LogCollide;
	bool32_t LogAllocations;
	bool32_t LogRand;
	uint8_t  field_0x160[0x40];
	char     Messages[GDEBUG_NUM_CATEGORIES][GDEBUG_MESSAGES_PER_CATEGORY][0x100]; /* 0x1a0 */
	bool32_t CategoryEnabled[GDEBUG_NUM_CATEGORIES];                               /* 0x2d1a0 */
	uint8_t  field_0x2d1d0[0xb4];
#ifdef VERSION_BW1WCI
	uint32_t ci_field_0x2d284;
#endif
	int      field_0x2d284;
	uint32_t field_0x2d288;
	uint32_t field_0x2d28c;
	bool     field_0x2d290;
	uint32_t field_0x2d294;
	uint32_t field_0x2d298;
	bool     field_0x2d29c;
	// TODO: Original member name is unrecovered. Mac constructor establishes the list type.
	LHLinkedList<CellBox*> CellBoxes; /* 0x2d2a0 */

	// Constructors

	// BW1W120 00511ba0 BW1M119 011c16e0
	GDebug();
	// BW1W120 00511d70 BW1M119 011d1e00
	~GDebug();

	// Non-virtual methods

	// BW1W120 00511d80 BW1M119 0106a660
	void SetMessage(char* fmt, ...);
	// BW1W120 00511da0 BW1M119 0102f280
	void SetMessage(uint16_t category, char* fmt, ...);
	// fabricated name: SetMessage's body, stores the formatted text in the category's first free
	// slot. The Mac build inlines it into both overloads.
	// BW1W120 00511dd0 BW1M119 inlined
	void AddMessage(uint16_t category, char* fmt, va_list args);
	// fabricated name: draws category 6, then every other enabled category, a line per message.
	// Nothing calls it in 1.20, and the Mac build has no copy.
	// BW1W120 00511e30 BW1M119 null
	void DrawMessages(long x, long y);
	// BW1W120 00511f50 BW1M119 01090b10
	void ClearMessages(long index);
};

#endif /* BW1_DECOMP_DEBUG_INCLUDED_H */

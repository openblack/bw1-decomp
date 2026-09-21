#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

enum DANCE_GROUP_ACTION_TYPE
{
	DANCE_GROUP_ACTION_TYPE_0 = 0x0,
	_DANCE_GROUP_ACTION_TYPE_COUNT = 0x1
};

// Forward Declares

class Base;
class GameOSFile;
class GameThingWithPos;
class GroupBehaviour;

class DanceGroup : public GameThing
{
public:
	// Descriptive name; constructor formats "Untitled %d".
	// BW1W120 00be8290
	static int NextUntitledNumber;
	// Pointer to the object being danced around (the dancer/target). Its MapCoords
	// base member is at +0x14 (GameThingWithPos::Pos); it also has a flag at +0x100
	// and a counter at +0x114 whose containing (derived) type is not yet identified.
	GameThingWithPos* Dancer; /* 0x14 */
	GroupBehaviour*   behaviour;
	uint8_t           field_0x1c[0x40];
	uint32_t          field_0x5c;
	uint8_t           field_0x60[0x11c];

	// Override methods

	// BW1W120 0050cf00 BW1M119 012ad510
	virtual ~DanceGroup();
	// BW1W120 0050cef0 BW1M119 012adc80
	virtual char* GetDebugText();
	// BW1W120 0050d9c0 BW1M119 012add40
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050d640 BW1M119 012ae700
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050cee0 BW1M119 012adc40
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */

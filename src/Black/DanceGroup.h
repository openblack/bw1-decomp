#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

enum DANCE_GROUP_ACTION_TYPE
{
	DANCE_GROUP_ACTION_TYPE_SET_SHAPE = 0x0,
	DANCE_GROUP_ACTION_TYPE_SET_POS = 0x1,
	DANCE_GROUP_ACTION_TYPE_SET_SIZE = 0x2,
	DANCE_GROUP_ACTION_TYPE_SET_ACTION = 0x3,
	DANCE_GROUP_ACTION_TYPE_ADD_PATH = 0x4,
	DANCE_GROUP_ACTION_TYPE_REMOVE_PATH = 0x5,
	DANCE_GROUP_ACTION_TYPE_PROPORTION = 0x6,
	DANCE_GROUP_ACTION_TYPE_CHANGE_GROUP = 0x7,
	DANCE_GROUP_ACTION_TYPE_WAIT_FOR_SIGNAL = 0x8,
	DANCE_GROUP_ACTION_TYPE_SET_STATE = 0x9,
	DANCE_GROUP_ACTION_TYPE_SET_STATE_OF_PROPORTION = 0xa,
	DANCE_GROUP_ACTION_TYPE_SET_ANGLE = 0xb,
	DANCE_GROUP_ACTION_TYPE_SHOW_GROUP = 0xc,
	DANCE_GROUP_ACTION_TYPE_HIDE_GROUP = 0xd,
	DANCE_GROUP_ACTION_TYPE_SET_PATH = 0xe,
	DANCE_GROUP_ACTION_TYPE_SET_LIVING_TYPE = 0xf,
	DANCE_GROUP_ACTION_TYPE_SET_VILLAGER_TYPE = 0x10,
	DANCE_GROUP_ACTION_TYPE_OFFSET_ANGLE = 0x11,
	DANCE_GROUP_ACTION_TYPE_SET_CAMERA = 0x12,
	DANCE_GROUP_ACTION_TYPE_SET_CAMERA_TRAVEL_TIME = 0x13,
	DANCE_GROUP_ACTION_TYPE_SET_LIGHT_ON_OR_OFF = 0x14,
	DANCE_GROUP_ACTION_TYPE_ATTACH_LIGHT_TO_GROUP = 0x15,
	DANCE_GROUP_ACTION_TYPE_SET_LIGHT_BITMAP = 0x16,
	DANCE_GROUP_ACTION_TYPE_SET_LIGHT_SYNCHRONISATION_ON_OR_OFF = 0x17,
	_DANCE_GROUP_ACTION_TYPE_COUNT = 0x18
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

	// BW1W120 0050ce40 BW1M119 012aff60
	DanceGroup();
};

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */

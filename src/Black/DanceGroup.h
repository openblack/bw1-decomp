#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                        /* For enum SEX_TYPE */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHStack.h>      /* For class LHStack */
#include <re_common.h>                          /* For bool32_t */

#include "GameThing.h"  /* For struct GameThing */
#include "DanceShape.h" /* For enum DANCE_SHAPE */
#include "MapCoords.h"  /* For struct MapCoords */

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

#define DANCE_GROUP_MOVEMENT_DEFAULT_END_TIME 10000

enum DANCE_GROUP_MOVEMENT_KIND
{
	DANCE_GROUP_MOVEMENT_KIND_STAND_STILL = 0x0,
	DANCE_GROUP_MOVEMENT_KIND_ROTATE_DANCERS = 0x1,
	DANCE_GROUP_MOVEMENT_KIND_LOOK_AT = 0x2,
	DANCE_GROUP_MOVEMENT_KIND_SPIN_AROUND = 0x3,
	DANCE_GROUP_MOVEMENT_KIND_RANDOM_DANCE = 0x4,
	DANCE_GROUP_MOVEMENT_KIND_PRAY = 0x5,
	DANCE_GROUP_MOVEMENT_KIND_FUNKY = 0x6,
	DANCE_GROUP_MOVEMENT_KIND_FACE_IN = 0x7,
	DANCE_GROUP_MOVEMENT_KIND_FACE_OUT = 0x8,
	DANCE_GROUP_MOVEMENT_KIND_ROTATE_SHAPE = 0x9,
	DANCE_GROUP_MOVEMENT_KIND_PLAY_ANIM = 0xa,
	DANCE_GROUP_MOVEMENT_KIND_CHANGE_SIZE = 0xb,
	DANCE_GROUP_MOVEMENT_KIND_MOVE_TO_POS = 0xc,
	DANCE_GROUP_MOVEMENT_KIND_FACE_DIRECTION = 0xd,
	DANCE_GROUP_MOVEMENT_KIND_IMPRESSED = 0xe,
	DANCE_GROUP_MOVEMENT_KIND_SAD = 0xf,
	DANCE_GROUP_MOVEMENT_KIND_HAPPY = 0x10,
	DANCE_GROUP_MOVEMENT_KIND_LOOKING_FOR_SOMETHING = 0x11,
	DANCE_GROUP_MOVEMENT_KIND_SEX = 0x12,
	DANCE_GROUP_MOVEMENT_KIND_MOURNING = 0x13,
	DANCE_GROUP_MOVEMENT_KIND_TALK = 0x14,
	DANCE_GROUP_MOVEMENT_KIND_TALK_AND_POINT = 0x15,
	DANCE_GROUP_MOVEMENT_KIND_WORSHIP_CREATURE = 0x16,
	DANCE_GROUP_MOVEMENT_KIND_DANCE_X = 0x17,
	DANCE_GROUP_MOVEMENT_KIND_DANCE_X_PARTNER = 0x18,
	DANCE_GROUP_MOVEMENT_KIND_FEMALE_A = 0x19,
	DANCE_GROUP_MOVEMENT_KIND_FEMALE_B = 0x1a,
	DANCE_GROUP_MOVEMENT_KIND_FEMALE_C = 0x1b,
	DANCE_GROUP_MOVEMENT_KIND_MALE_A = 0x1c,
	DANCE_GROUP_MOVEMENT_KIND_MALE_B = 0x1d,
	DANCE_GROUP_MOVEMENT_KIND_MALE_C = 0x1e,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_IN = 0x1f,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_OUT = 0x20,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACE_DIRECTION = 0x21,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_DANCE = 0x22,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_INDIVIDUAL = 0x23,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_STATIC = 0x24,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_LOOK_AT = 0x25,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_FACIAL = 0x26,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_GESTURE = 0x27,
	DANCE_GROUP_MOVEMENT_KIND_CREATURE_POINT = 0x28,
};

union DancerActionParam {
	float    Value;
	bool32_t Direction;
};

struct DancerAction
{
	DANCE_GROUP_MOVEMENT_KIND Kind;
	DancerActionParam         Param1;
	float                     Param2;
	int32_t                   EndTime;

	// BW1W120 inlined BW1M119 012b1ce0
	DancerAction()
	{
		Kind = DANCE_GROUP_MOVEMENT_KIND_STAND_STILL;
		EndTime = DANCE_GROUP_MOVEMENT_DEFAULT_END_TIME;
		Param2 = 0;
		Param1.Value = 0;
	}
};

static_assert(sizeof(DancerAction) == 0x10, "Data type is of wrong size");

struct DanceGroupActionArgument
{
	uint32_t     Value;
	uint32_t     Value2;
	uint32_t     Value3;
	uint32_t     Unused;
	DancerAction Action;
	float        CameraPoints[2][3];
};

static_assert(sizeof(DanceGroupActionArgument) == 0x38, "Data type is of wrong size");

#define DANCE_GROUP_MAX_CHILD_GROUPS   32
#define DANCE_GROUP_NAME_LENGTH        64
#define DANCE_GROUP_DEFAULT_SIZE       20.0f
#define DANCE_GROUP_DEFAULT_PROPORTION 100

enum DANCE_TYPE
{
	DANCE_TYPE_LIVING = 0,
	DANCE_TYPE_CREATURE = 1,
};

enum DANCE_GROUP_VILLAGER_TYPE
{
	DANCE_GROUP_VILLAGER_TYPE_MALE = 1 << SEX_MALE,
	DANCE_GROUP_VILLAGER_TYPE_FEMALE = 1 << SEX_FEMALE,
	DANCE_GROUP_VILLAGER_TYPE_ANY = DANCE_GROUP_VILLAGER_TYPE_MALE | DANCE_GROUP_VILLAGER_TYPE_FEMALE,
};

#define DANCE_DANCER_ANGLE_FULL_TURN 256.0f
#define DANCE_DANCER_ANGLE_UNIT      1.0f
#define DANCE_DANCER_ANGLE_MAX       (DANCE_DANCER_ANGLE_FULL_TURN - DANCE_DANCER_ANGLE_UNIT)
#define DANCE_SHAPE_ANGLE_FULL_TURN  2048.0f

struct DancePos
{
	float x;
	float z;

	void operator+=(const DancePos& other)
	{
		x += other.x;
		z += other.z;
	}
};

struct DanceGroupProportion
{
	bool32_t Fixed;
	uint32_t Value;
	uint32_t Numerator;
};

struct DanceGroupChange
{
	DancePos Move;
	float    Size;
	float    DancerRotation;
	float    ShapeRotation;

	// BW1W120 inlined BW1M119 012afdc0
	void Initialise()
	{
		Move.z = 0.0f;
		Move.x = 0.0f;
	}

	DanceGroupChange() { Initialise(); }
};

// Forward Declares

class Base;
class Dance;
class GameOSFile;
class GameThingWithPos;
class GroupBehaviour;
class Living;
struct MapCoords;

class DanceGroup : public GameThing
{
public:
	// BW1W120 00be8290
	static int NextUntitledNumber;

	Dance*          Dancer; /* 0x14 */
	GroupBehaviour* behaviour;

	LHLinkedList<Living*> Dancers; /* 0x1c */
	uint32_t              Index;
	DanceGroupChange      Change; /* 0x28 */
	bool32_t              Hidden;
	bool32_t              IsPath; /* 0x40 */
	DANCE_SHAPE           Shape;
	DancePos              Pos;
	float                 Size; /* 0x50 */
	uint32_t              Unused;
	float                 Angle;

	DancerAction         Action;
	float                DancerAngle; /* 0x6c */
	DanceGroup*          Parent;
	uint8_t              IndexInParent;
	uint32_t             NumDancersAssigned;
	bool32_t             Moved;
	long                 Speed; /* 0x80 */
	bool32_t             HasLastCentre;
	MapCoords            Centre;
	MapCoords            LastCentre;
	DANCE_TYPE           LivingType; /* 0xa0 */
	uint32_t             NumLights;
	char                 Name[DANCE_GROUP_NAME_LENGTH];
	DanceGroupProportion Proportion; /* 0xe8 */

	LHStack<unsigned long, DANCE_GROUP_MAX_CHILD_GROUPS> ChildGroups;  /* 0xf4 */
	DANCE_GROUP_VILLAGER_TYPE                            VillagerType; /* 0x178 */

	// Override methods

	// BW1W120 0050cef0 BW1M119 012adc80
	virtual char* GetDebugText();
	// BW1W120 0050d9c0 BW1M119 012add40
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0050d640 BW1M119 012ae700
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050cee0 BW1M119 012adc40
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 0050ce40 BW1M119 012aff60
	DanceGroup();

	// Static methods

	// BW1W120 0050d2a0 BW1M119 012af810
	static void RotateMapCoordsByAngle(MapCoords* coords, float angle);
	// BW1W120 0050d320 BW1M119 012af5b0
	static DancePos RotatePointByAngle(DancePos& point, float angle);

	// Non-virtual methods

	// BW1W120 0050cf30 BW1M119 012afe10
	void Initialise();
	// BW1W120 0050cff0 BW1M119 012afb00
	void Process();
	// BW1W120 0050d1c0 BW1M119 012af970
	DancePos InterpolatedShapePosition(unsigned long shape, float position);
	// BW1W120 0050d460 BW1M119 012af4c0
	float GetAngleFromPosToGroupCentre(const MapCoords& pos);
	// BW1W120 0050d490 BW1M119 012af440
	void ReassignIndices();
	// BW1W120 0050d4b0 BW1M119 012af390
	void ReassignChildGroupIndices();
	// BW1W120 0050d510 BW1M119 012af1e0
	MapCoords CalculateActualPos();
	// BW1W120 0050d5a0 BW1M119 012af190
	long GetTime();
	// BW1W120 0050d5f0 BW1M119 012af150
	MapCoords* GetParentCentre();
	// BW1W120 0050d600 BW1M119 012af0f0
	DanceGroup* GetGroup(unsigned long index);
};

static_assert(sizeof(DanceGroup) == 0x17c, "Data type is of wrong size");

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */

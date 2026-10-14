#ifndef BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H
#define BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h>      /* For LHDynamicStack */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>        /* For LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */
#include <re_common.h>                                 /* For bool32_t */

#include "DanceGroup.h"       /* For enum DANCE_GROUP_ACTION_TYPE */
#include "DancePathInfo.h"    /* For struct DancePathInfo */
#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class Base;
class DanceGroup;
class DanceKeyAction;
class DanceKeyFrame;
class DanceLight;
class GameOSFile;
class Living;
struct MapCoords;

#define GROUP_BEHAVIOUR_MAX_LIGHTS                 10
#define GROUP_BEHAVIOUR_DEFAULT_LENGTH             5
#define GROUP_BEHAVIOUR_DEFAULT_DENOMINATOR        100
#define GROUP_BEHAVIOUR_DEFAULT_EDITOR_VALUE       30
#define GROUP_BEHAVIOUR_DEFAULT_CAMERA_TRAVEL_TIME 2.0f

class GroupBehaviour : public GameThingWithPos
{
public:
	float                              Time; /* 0x28 */
	uint32_t                           Unused1;
	uint32_t                           Unused2;
	uint32_t                           Unused3;
	LHOrderedLinkedList<DanceKeyFrame> KeyFrames; /* 0x38 */
	uint32_t                           NumGroups; /* 0x40 */
	uint32_t                           EditorValue;
	uint32_t                           EditorValue2;
	DanceLight*                        Lights[GROUP_BEHAVIOUR_MAX_LIGHTS]; /* 0x4c */
	uint32_t                           Length;                             /* 0x74 */
	LHLinkedList<DanceGroup*>          DanceGroups;
	LHLinkedList<DanceGroup*>          FixedGroups; /* 0x80 */
	LHLinkedList<DanceGroup*>          ProportionGroups;
	uint32_t                           NumDancers; /* 0x90 */
	uint8_t                            ProportionCounter;
	uint32_t                           Denominator;
	float                              Speed;
	float                              LastSpeed; /* 0xa0 */
	LHLinkedList<Living*>              DanceMembers;
	float                              GroupAngle;
	bool32_t                           UseDanceCamera; /* 0xb0 */
	bool32_t                           DanceCameraDisabled;
	bool32_t                           DanceCameraCreated;
	bool32_t                           MarkedForDeletion;
	float                              CameraTravelTime; /* 0xc0 */
	uint32_t                           CameraNearTurns;
	DancePathInfo                      dance_path_info; /* 0xc8 */

	// Override methods

	// BW1W120 00596190 BW1M119 01103890
	virtual ~GroupBehaviour();
	// BW1W120 00596320 BW1M119 01103310
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 005985c0 BW1M119 010fe130
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00598240 BW1M119 010fee10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005964a0 BW1M119 01103120
	virtual void Process();

	// New virtual methods

	// BW1W120 00596700 BW1M119 01102350
	virtual void UpdateGroupBasedOnAction(DanceGroup* dance_group, DANCE_GROUP_ACTION_TYPE action_type,
	                                      const DanceGroupActionArgument& argument, unsigned long light);
	// BW1W120 00597270 BW1M119 01101cf0
	virtual void AddAction(float time, unsigned long group, DANCE_GROUP_ACTION_TYPE action_type,
	                       const DanceGroupActionArgument& argument);
	// BW1W120 00597300 BW1M119 01101ac0
	virtual DanceKeyFrame* AddAction(float time, LHDynamicStack<unsigned long>& groups,
	                                 DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument& argument);
	// BW1W120 005978e0 BW1M119 01100230
	virtual void LoadDance(const char* file_name);
	// BW1W120 0050cc40 BW1M119 010fe0f0
	virtual float GetAngle() { return GroupAngle; }

	// Constructors

	// BW1W120 00596070 BW1M119 01103fc0
	GroupBehaviour();

	// Non-virtual methods

	// BW1W120 00596550 BW1M119 011030a0
	void ProcessGroups();
	// BW1W120 00596570 BW1M119 01102fd0
	void UpdateGroupsFromKeyFrame(DanceKeyFrame* key_frame);
	// BW1W120 005965c0 BW1M119 01102db0
	void UpdateGroupsBasedOnAction(DanceKeyAction* action);
	// BW1W120 00596fd0 BW1M119 01102020
	void UpdateGroupBasedOnDancerAction(DanceGroup& dance_group, const DancerAction& action, long time);
	// BW1W120 00597190 BW1M119 01101ed0
	void UpdateNumeratorsAndDenominator();
	// BW1W120 00597400 BW1M119 011018b0
	bool32_t FindDanceGroup(Living* living);
	// BW1W120 00597ed0 BW1M119 01100070
	Living* GetFirstDancer();
	// BW1W120 005981d0 BW1M119 010ffa50
	Living* FindFirstDanceMember(GameThingWithPos* exclude);
	// BW1W120 00597f20 BW1M119 010ffc30
	static void CalculateDancePosition(const MapCoords& centre, MapCoords* pos, DanceGroup* dance_group,
	                                   unsigned long index);
};

static_assert(sizeof(GroupBehaviour) == 0xe8, "Data type is of wrong size");

class DanceEditState : public GroupBehaviour
{
public:
	// BW1W120 0050ccd0 BW1M119 0108ff10
	static void UpdateEveryGameTurn();
	// BW1W120 0050ccc0 BW1M119 01093b30
	static void UpdateEveryRender();

	// Override methods

	// BW1W120 0050cc80 BW1M119 inlined
	virtual ~DanceEditState();
	// BW1W120 0050cc90 BW1M119 inlined
	virtual void ToBeDeleted(int delete_now);

	// Constructors

	DanceEditState();
};

static_assert(sizeof(DanceEditState) == 0xe8, "Data type is of wrong size");

#endif /* BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H */

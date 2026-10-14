#ifndef BW1_DECOMP_DANCE_KEY_INCLUDED_H
#define BW1_DECOMP_DANCE_KEY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h> /* For class LHDynamicStack */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For class LHLinkedList */
#include <re_common.h>                            /* For bool32_t */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "GameThing.h"  /* For struct GameThing */

#define DANCE_KEY_FRAMES_PER_SECOND 2

// Forward Declares

class Base;
class GameOSFile;

class DanceKeyAction : public GameThing
{
public:
	LHDynamicStack<unsigned long> Groups;
	DANCE_GROUP_ACTION_TYPE       Type;
	DanceGroupActionArgument      Argument;

	// Override methods

	// BW1W120 0050e390 BW1M119 012b1ee0
	virtual char* GetDebugText();
	// BW1W120 0050ea00 BW1M119 012b16f0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0050e880 BW1M119 012b1920
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050e380 BW1M119 012b1ea0
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 0050e340 BW1M119 012b1d30
	DanceKeyAction();
	// BW1W120 0050e3e0 BW1M119 012b1b40
	DanceKeyAction(LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE type,
	               const DanceGroupActionArgument& argument);
};

static_assert(sizeof(DanceKeyAction) == 0x58, "Data type is of wrong size");

class DanceKeyFrame : public GameThing
{
public:
	float                         Time;
	LHLinkedList<DanceKeyAction*> Actions;
	uint32_t                      EditFlags;

	// Override methods

	// BW1W120 0050ebf0 BW1M119 012b1300
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0050ebc0 BW1M119 012b00e0
	virtual char* GetDebugText();
	// BW1W120 0050f2f0 BW1M119 012b0120
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0050f1c0 BW1M119 012b05a0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050ebb0 BW1M119 012b00a0
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	DanceKeyFrame() {}
	// BW1W120 0050eb60 BW1M119 012b1570
	DanceKeyFrame(int time, LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE action_type,
	              const DanceGroupActionArgument& arguments);

	// Static methods

	// BW1W120 0050ecd0 BW1M119 012b1140
	static bool32_t GroupList1SubsumesGroupList2(LHDynamicStack<unsigned long>& group_list1,
	                                             LHDynamicStack<unsigned long>& group_list2);
	// BW1W120 0050ed30 BW1M119 012b1080
	static bool32_t IsGroupInGroupList(unsigned long group, LHDynamicStack<unsigned long>& group_list);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01100a80
	bool operator<(const DanceKeyFrame& key_frame) { return Time <= key_frame.Time; }
	// BW1W120 0050ec70 BW1M119 012b1250
	bool32_t IsTimeEqualTo(float time);
	// BW1W120 0050ed80 BW1M119 012b0ea0
	void RemoveActionsWithSubsumedGroupLists(unsigned long index, DANCE_GROUP_ACTION_TYPE action_type,
	                                         LHDynamicStack<unsigned long>& groups);
	// BW1W120 0050ee90 BW1M119 012b0850
	void AddAction(LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE action_type,
	               const DanceGroupActionArgument& arguments);
};

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */

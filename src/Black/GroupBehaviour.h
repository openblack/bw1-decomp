#ifndef BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H
#define BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h> /* For LHDynamicStack */

#include "DanceGroup.h"       /* For enum DANCE_GROUP_ACTION_TYPE */
#include "DancePathInfo.h"    /* For struct DancePathInfo */
#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class Base;
class DanceGroup;
struct DanceGroupActionArgument;
class GameOSFile;
class Living;
struct MapCoords;

class GroupBehaviour : public GameThingWithPos
{
public:
	uint32_t      field_0x28;
	uint32_t      field_0x2c;
	uint32_t      field_0x30;
	uint32_t      field_0x34;
	uint32_t      field_0x38;
	uint32_t      field_0x3c;
	uint32_t      field_0x40;
	uint32_t      field_0x44;
	uint8_t       field_0x48;
	uint32_t      field_0x4c[0xa];
	uint32_t      field_0x74;
	uint32_t      field_0x78;
	uint32_t      field_0x7c;
	uint32_t      field_0x80;
	uint32_t      field_0x84;
	uint32_t      field_0x88;
	uint32_t      field_0x8c;
	uint32_t      field_0x90;
	uint32_t      field_0x94;
	uint32_t      field_0x98;
	float         field_0x9c;
	float         field_0xa0;
	uint32_t      field_0xa4;
	uint32_t      field_0xa8;
	float         GroupAngle;
	uint32_t      field_0xb0;
	uint32_t      field_0xb4;
	uint32_t      field_0xb8;
	uint32_t      field_0xbc;
	uint32_t      field_0xc0;
	uint32_t      field_0xc4;
	DancePathInfo dance_path_info;

	// Override methods

	// BW1W120 00596190 BW1M119 01103890
	virtual ~GroupBehaviour();
	// BW1W120 00596320 BW1M119 01103310
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005985c0 BW1M119 010fe130
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00598240 BW1M119 010fee10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005964a0 BW1M119 01103120
	virtual void Process();
	// BW1W120 00596700 BW1M119 01102350
	virtual void UpdateGroupBasedOnAction(DanceGroup* dance_group, DANCE_GROUP_ACTION_TYPE action_type,
	                                      const DanceGroupActionArgument& argument, uint32_t param_4);
	// BW1W120 00597300 BW1M119 01101ac0
	virtual void AddAction(float param_1, LHDynamicStack<uint32_t>& stack, DANCE_GROUP_ACTION_TYPE action_type,
	                       const DanceGroupActionArgument& argument);
	// BW1W120 00597270 BW1M119 01101cf0
	virtual void AddAction(float param_1, uint32_t param_2, DANCE_GROUP_ACTION_TYPE action_type,
	                       const DanceGroupActionArgument& arguments);
	// BW1W120 005978e0 BW1M119 01100230
	virtual void LoadDance(const char* param_1);
	// BW1W120 0050cc40 BW1M119 010fe0f0
	virtual float GetAngle();

	// Constructors

	// BW1W120 00596070 BW1M119 01103fc0
	GroupBehaviour();

	// Non-virtual methods

	// BW1W120 00597400 BW1M119 011018b0
	bool FindDanceGroup(Living* param_1);
	// BW1W120 00597f20 BW1M119 010ffc30
	void CalculateDancePosition(const MapCoords& param_1, MapCoords* param_2, DanceGroup* param_3,
	                            unsigned long param_4);
};

class DanceEditState : public GroupBehaviour
{
public:
	// BW1W120 0050ccc0 BW1M119 01093b30
	static void UpdateEveryRender();

	// Override methods

	// BW1W120 0050cc50 BW1M119 inlined
	virtual ~DanceEditState();
	// BW1W120 0050cc90 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
};

class DanceKeyAction : public GameThing
{
public:
	// Override methods

	// BW1W120 0050e3a0 BW1M119 012b1dd0
	virtual ~DanceKeyAction();
	// BW1W120 0050e390 BW1M119 012b1ee0
	virtual char* GetDebugText();
	// BW1W120 0050ea00 BW1M119 012b16f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050e880 BW1M119 012b1920
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050e380 BW1M119 012b1ea0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H */

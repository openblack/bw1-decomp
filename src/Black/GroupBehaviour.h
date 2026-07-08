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

	// BW1W120 00596190 BW1M100 100fa600 GroupBehaviour::_dt(void)
	virtual ~GroupBehaviour();
	// BW1W120 00596320 BW1M100 100fa080 GroupBehaviour::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005985c0 BW1M100 100f4e70 GroupBehaviour::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00598240 BW1M100 100f5a80 GroupBehaviour::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005964a0 BW1M100 106ffb98 GroupBehaviour::Process(void)
	virtual void Process();
	// BW1W120 00596700 BW1M100 100f90b0 GroupBehaviour::UpdateGroupBasedOnAction(DanceGroup *, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &, unsigned long)
	virtual void UpdateGroupBasedOnAction(DanceGroup* dance_group, DANCE_GROUP_ACTION_TYPE action_type,
	                                      const DanceGroupActionArgument* argument, uint32_t param_4);
	// BW1W120 00597300 BW1M100 100f8760 GroupBehaviour::AddAction(float, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
	virtual void AddAction(float param_1, LHDynamicStack<uint32_t>& stack, DANCE_GROUP_ACTION_TYPE action_type,
	                       const DanceGroupActionArgument* argument);
	// BW1W120 00597270 BW1M100 100f8990 GroupBehaviour::AddAction(float, unsigned long, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
	virtual void AddAction(float param_1, uint32_t param_2, DANCE_GROUP_ACTION_TYPE action_type,
	                       DanceGroupActionArgument* arguments);
	// BW1W120 005978e0 BW1M100 100f6eb0 GroupBehaviour::LoadDance(char const *)
	virtual void LoadDance(const char* param_1);
	// BW1W120 0050cc40 BW1M100 100f4e30 GroupBehaviour::GetAngle(void)
	virtual float GetAngle();

	// Constructors

	// BW1W120 00596070 BW1M100 100fad20 GroupBehaviour::GroupBehaviour(void)
	GroupBehaviour();

	// Non-virtual methods

	// BW1W120 00597400 BW1M100 100f8550 GroupBehaviour::FindDanceGroup(Living *)
	bool FindDanceGroup(Living* param_1);
	// BW1W120 00597f20 BW1M100 100f68a0 GroupBehaviour::CalculateDancePosition(MapCoords const &, MapCoords *, DanceGroup *, unsigned long)
	void CalculateDancePosition(const MapCoords* param_1, MapCoords* param_2, DanceGroup* param_3,
	                            unsigned long param_4);
};

class DanceEditState : public GroupBehaviour
{
public:
	// Override methods

	// BW1W120 0050cc50 BW1M100 inlined DanceEditState::_dt(void)
	virtual ~DanceEditState();
	// BW1W120 0050cc90 BW1M100 inlined DanceEditState::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
};

class DanceKeyAction : public GameThing
{
public:
	// Override methods

	// BW1W120 0050e3a0 BW1M100 102aed30 DanceKeyAction::_dt(void)
	virtual ~DanceKeyAction();
	// BW1W120 0050e390 BW1M100 102aee40 DanceKeyAction::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0050ea00 BW1M100 102ae600 DanceKeyAction::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050e880 BW1M100 102ae810 DanceKeyAction::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050e380 BW1M100 102aee00 DanceKeyAction::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H */

#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>     /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>     /* For struct LHListNode */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class CPDecisionPlayer;
class GameThingWithPos;
class GComputerLookAndLearn;
class GComputerPlayerQueue;
class GComputerSeen;
class GComputerSpellCast;
class GPlayer;
class PlayerActionState;
class PlayerSubAction;
class PlayerSubActionArgument;
class GameOSFile;

class GComputerAttitudeToPlayer : public GameThing
{
public:
	float Attitude;

	// Override methods

	// BW1W120 0055e300 BW1M119 014ac400
	virtual char* GetDebugText() { return "ComputerAttitudeToPlayer:"; }
	// BW1W120 006587d0 BW1M119 014acfa0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00658830 BW1M119 014aceb0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e2f0 BW1M119 014ac3b0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_ATTITUDE_TO_PLAYER; }

	// BW1W120 0055e2d0 BW1M119 inlined
	GComputerAttitudeToPlayer() { Attitude = 1.0f; }
};

class GComputerPlayer : public GameThingWithPos
{
public:
	GPlayer*                          Player;
	CPDecisionPlayer*                 DecisionPlayer;
	uint32_t                          field_0x30;
	PlayerActionState*                ActionState;
	LHLinkedList<GComputerSpellCast*> SpellCasts;
	LHLinkedList<GComputerSeen*>      Seen;
	LHListHead<GComputerLookAndLearn> LookAndLearn;
	LHListHead<GComputerPlayerQueue>  Queue;
	uint8_t                           field_0x58[0x160];
	bool32_t                          Active;
	uint8_t                           field_0x1bc[0x14];
	int8_t                            CreatureSizeMode;
	uint8_t                           field_0x1d1[0x2b];

	// BW1W120 00656d40 BW1M119 014b0ad0
	GComputerPlayer(GPlayer* player, float param_2, float param_3, unsigned long param_4);
	// BW1W120 006573c0 BW1M119 01091300
	void Draw();
	// BW1W120 00657420 BW1M119 01057350
	void NewProcess();
	// BW1W120 006588d0 BW1M119 014ace40
	void OnEndOfClearMap();

	// Override methods

	// BW1W120 00656f20 BW1M119 014b06a0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e3b0 BW1M119 0149d0b0
	virtual GPlayer* GetPlayer() { return Player; }
	// BW1W120 0055e380 BW1M119 014b3440
	virtual char* GetDebugText() { return "GComputerPlayer:"; }
	// BW1W120 006579a0 BW1M119 014ae9d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00657640 BW1M119 014af650
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e370 BW1M119 014b3400
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_PLAYER; }
	// BW1W120 00657cd0 BW1M119 014ae8f0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 0055e390 BW1M119 014b3480
	virtual void SetSpeedInMetres(float speed_in_metres, int scale_speed) { SetSpeed(speed_in_metres); }
	// BW1W120 0055e3a0 BW1M119 014b34e0
	virtual const char* GetText() { return GetDebugText(); }
	// BW1W120 0055e3c0 BW1M119 014b3540
	virtual bool32_t IsComputerPlayer() { return true; }
	// BW1W120 006587b0 BW1M119 014ad090
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// BW1W120 inlined BW1M119 inlined
	GComputerPlayer()
	{
		Player = NULL;
		DecisionPlayer = NULL;
		ActionState = NULL;
		CreatureSizeMode = -1;
	}

	// Non-virtual methods

	// BW1W120 00657fe0 BW1M119 010572a0
	MapCoords GetHandPos();
	// BW1W120 00658510 BW1M119 014ad590
	void ForceComputerPlayerToMoveToPointAndPause(LHPoint& point, float param_2);
	// BW1W120 006583f0 BW1M119 inlined
	void SetSpeed(float speed);
};

class GComputerPlayerQueue : public GameThing
{
public:
	uint8_t                          field_0x14[0x110];
	LHListNode<GComputerPlayerQueue> next;

	// Override methods

	// BW1W120 00664380 BW1M119 014c5a10
	virtual ~GComputerPlayerQueue();
	// BW1W120 00561c20 BW1M119 014c4d80
	virtual char* GetDebugText() { return "GComputerPlayerQueue:"; }
	// BW1W120 00664660 BW1M119 014c4fb0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00664530 BW1M119 014c52c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561c10 BW1M119 014c4d40
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_PLAYER_QUEUE; }

	// BW1W120 00561bf0 BW1M119 inlined
	GComputerPlayerQueue() {}
};

class GComputerSeen : public GameThing
{
public:
	uint8_t field_0x14[0x8];

	// Override methods

	// BW1W120 0055e340 BW1M119 014b3650
	virtual char* GetDebugText() { return "ComputerSeen:"; }
	// BW1W120 00656bf0 BW1M119 014b0e50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00656b80 BW1M119 014b0f40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e330 BW1M119 014b3610
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_SEEN; }

	// BW1W120 inlined BW1M119 inlined
	GComputerSeen() {}
};

class GComputerSpellCast : public GameThing
{
public:
	uint8_t field_0x14[0x8];

	// Override methods

	// BW1W120 005614a0 BW1M119 014c7340
	virtual char* GetDebugText() { return "ComputerSpellCast:"; }
	// BW1W120 00665c00 BW1M119 014c8cf0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00665b90 BW1M119 014c8de0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561490 BW1M119 014c7300
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_SPELL_CAST; }

	// BW1W120 inlined BW1M119 inlined
	GComputerSpellCast() {}
};

class PlayerActionState : public GameThingWithPos
{
public:
	LHLinkedList<PlayerSubAction*> SubActions; /* 0x28 */
	uint8_t                        field_0x30[0x25c];

	// Override methods

	// BW1W120 00650100 BW1M119 014a3620
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006508e0 BW1M119 014a26e0
	virtual GPlayer* GetPlayer();
	// BW1W120 00651a20 BW1M119 014a03d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651740 BW1M119 014a0c20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e290 BW1M119 014a4e30
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_ACTION_STATE; }
	// BW1W120 00651d20 BW1M119 014a02f0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 0055e280 BW1M119 014a4df0
	virtual const char* GetText() { return "Player Action"; }

	// BW1W120 0055e230 BW1M119 inlined
	PlayerActionState() { SetToZero(); }

	// BW1W120 006500c0 BW1M119 014a36f0
	void SetToZero();
};

class PlayerSubAction : public GameThing
{
public:
	uint32_t                               field_0x14;
	LHLinkedList<PlayerSubActionArgument*> Arguments; /* 0x18 */

	// Override methods

	// BW1W120 00650c40 BW1M119 014a20b0
	virtual ~PlayerSubAction();
	// BW1W120 00651e70 BW1M119 0149fc50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651d80 BW1M119 014a0130
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e200 BW1M119 014a4d10
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_SUB_ACTION; }

	// BW1W120 0055e1e0 BW1M119 inlined
	PlayerSubAction() {}
};

enum PLAYER_SUB_ACTION_ARGUMENT_TYPE
{
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_THING = 0,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_POINT = 1,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_INT = 3,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_FLOAT = 5,
};

class PlayerSubActionArgument : public GameThing
{
public:
	PLAYER_SUB_ACTION_ARGUMENT_TYPE Type;
	GameThingWithPos*               Thing;
	uint8_t                         field_0x1c[0x40];
	long                            IntValue;
	uint32_t                        field_0x60;
	float                           FloatValue;
	LHPoint                         PointValue;

	// Override methods

	// BW1W120 00652140 BW1M119 0149f4d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651f80 BW1M119 0149f8b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e1b0 BW1M119 0149f280
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_SUB_ACTION_ARGUMENT; }

	// BW1W120 0055e180 BW1M119 inlined
	PlayerSubActionArgument()
	{
		SetToZero();
		Type = PLAYER_SUB_ACTION_ARGUMENT_TYPE_FLOAT;
		FloatValue = 0.0f;
	}

	// BW1W120 00651240 BW1M119 014a1320
	void SetToZero();
};

#endif /* BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H */

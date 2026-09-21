#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;

class GComputerAttitudeToPlayer : public GameThing
{
public:
	// Override methods

	// BW1W120 0055e310 BW1M119 014ac310
	virtual ~GComputerAttitudeToPlayer();
	// BW1W120 0055e300 BW1M119 014ac400
	virtual char* GetDebugText();
	// BW1W120 006587d0 BW1M119 014acfa0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00658830 BW1M119 014aceb0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e2f0 BW1M119 014ac3b0
	virtual uint32_t GetSaveType();
};

class GComputerPlayer : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 0055e3d0 BW1M119 0149ec40
	virtual ~GComputerPlayer();
	// BW1W120 00656f20 BW1M119 014b06a0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e3b0 BW1M119 0149d0b0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055e380 BW1M119 014b3440
	virtual char* GetDebugText();
	// BW1W120 006579a0 BW1M119 014ae9d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00657640 BW1M119 014af650
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e370 BW1M119 014b3400
	virtual uint32_t GetSaveType();
	// BW1W120 00657cd0 BW1M119 014ae8f0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 0055e390 BW1M119 014b3480
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 0055e3a0 BW1M119 014b34e0
	virtual const char* GetText();
	// BW1W120 0055e3c0 BW1M119 014b3540
	virtual uint32_t IsComputerPlayer();
	// BW1W120 006587b0 BW1M119 014ad090
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
};

class GComputerPlayerQueue : public GameThing
{
public:
	// Override methods

	// BW1W120 00561c30 BW1M119 014c5a10
	virtual ~GComputerPlayerQueue();
	// BW1W120 00561c20 BW1M119 014c4d80
	virtual char* GetDebugText();
	// BW1W120 00664660 BW1M119 014c4fb0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00664530 BW1M119 014c52c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561c10 BW1M119 014c4d40
	virtual uint32_t GetSaveType();
};

class GComputerSeen : public GameThing
{
public:
	// Override methods

	// BW1W120 0055e350 BW1M119 014b3580
	virtual ~GComputerSeen();
	// BW1W120 0055e340 BW1M119 014b3650
	virtual char* GetDebugText();
	// BW1W120 00656bf0 BW1M119 014b0e50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00656b80 BW1M119 014b0f40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e330 BW1M119 014b3610
	virtual uint32_t GetSaveType();
};

class GComputerSpellCast : public GameThing
{
public:
	// Override methods

	// BW1W120 005614b0 BW1M119 014c7380
	virtual ~GComputerSpellCast();
	// BW1W120 005614a0 BW1M119 014c7340
	virtual char* GetDebugText();
	// BW1W120 00665c00 BW1M119 014c8cf0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00665b90 BW1M119 014c8de0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561490 BW1M119 014c7300
	virtual uint32_t GetSaveType();
};

class PlayerActionState : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 0055e2a0 BW1M119 014a4d50
	virtual ~PlayerActionState();
	// BW1W120 00650100 BW1M119 014a3620
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006508e0 BW1M119 014a26e0
	virtual GPlayer* GetPlayer();
	// BW1W120 00651a20 BW1M119 014a03d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651740 BW1M119 014a0c20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e290 BW1M119 014a4e30
	virtual uint32_t GetSaveType();
	// BW1W120 00651d20 BW1M119 014a02f0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 0055e280 BW1M119 014a4df0
	virtual const char* GetText();
};

class PlayerSubAction : public GameThing
{
public:
	// Override methods

	// BW1W120 0055e210 BW1M119 014a20b0
	virtual ~PlayerSubAction();
	// BW1W120 00651e70 BW1M119 0149fc50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651d80 BW1M119 014a0130
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e200 BW1M119 014a4d10
	virtual uint32_t GetSaveType();
};

class PlayerSubActionArgument : public GameThing
{
public:
	// Override methods

	// BW1W120 0055e1c0 BW1M119 0149f2d0
	virtual ~PlayerSubActionArgument();
	// BW1W120 00652140 BW1M119 0149f4d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00651f80 BW1M119 0149f8b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e1b0 BW1M119 0149f280
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H */

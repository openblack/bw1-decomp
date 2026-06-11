#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;

class GComputerAttitudeToPlayer: public GameThing
{
public:

    // Override methods

    // win1.41 0055e310 mac 104a4ad0 GComputerAttitudeToPlayer::_dt(void)
    virtual ~GComputerAttitudeToPlayer();
    // win1.41 0055e300 mac 104a4bc0 GComputerAttitudeToPlayer::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006587d0 mac 104a5760 GComputerAttitudeToPlayer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00658830 mac 104a5670 GComputerAttitudeToPlayer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e2f0 mac 104a4b70 GComputerAttitudeToPlayer::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class GComputerPlayer: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 0055e3d0 mac 104975d0 GComputerPlayer::_dt(void)
    virtual ~GComputerPlayer();
    // win1.41 00656f20 mac 104a8fe0 GComputerPlayer::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055e3b0 mac 10381df0 GComputerPlayer::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0055e380 mac 104abef0 GComputerPlayer::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006579a0 mac 104a7010 GComputerPlayer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00657640 mac 104a7bc0 GComputerPlayer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e370 mac 104abeb0 GComputerPlayer::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00657cd0 mac 104a6f30 GComputerPlayer::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* param_1);
    // win1.41 0055e390 mac 104abf30 GComputerPlayer::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float param_1, int param_2);
    // win1.41 0055e3a0 mac 104abf90 GComputerPlayer::GetText(void)
    virtual const char* GetText();
    // win1.41 0055e3c0 mac 104abff0 GComputerPlayer::IsComputerPlayer(void)
    virtual uint32_t IsComputerPlayer();
    // win1.41 006587b0 mac 104a5850 GComputerPlayer::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
};

class GComputerPlayerQueue: public GameThing
{
public:

    // Override methods

    // win1.41 00561c30 mac 104bf6b0 GComputerPlayerQueue::_dt(void)
    virtual ~GComputerPlayerQueue();
    // win1.41 00561c20 mac 104be870 GComputerPlayerQueue::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00664660 mac 104beaa0 GComputerPlayerQueue::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00664530 mac 104bed40 GComputerPlayerQueue::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561c10 mac 104be830 GComputerPlayerQueue::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class GComputerSeen: public GameThing
{
public:

    // Override methods

    // win1.41 0055e350 mac 104ac030 GComputerSeen::_dt(void)
    virtual ~GComputerSeen();
    // win1.41 0055e340 mac 104ac100 GComputerSeen::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00656bf0 mac 104a9840 GComputerSeen::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00656b80 mac 104a9930 GComputerSeen::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e330 mac 104ac0c0 GComputerSeen::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class GComputerSpellCast: public GameThing
{
public:

    // Override methods

    // win1.41 005614b0 mac 104c1010 GComputerSpellCast::_dt(void)
    virtual ~GComputerSpellCast();
    // win1.41 005614a0 mac 104c0fd0 GComputerSpellCast::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00665c00 mac 104c2930 GComputerSpellCast::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00665b90 mac 104c2a20 GComputerSpellCast::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561490 mac 104c0f90 GComputerSpellCast::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PlayerActionState: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 0055e2a0 mac 1049d580 PlayerActionState::_dt(void)
    virtual ~PlayerActionState();
    // win1.41 00650100 mac 1049be30 PlayerActionState::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006508e0 mac 1049aee0 PlayerActionState::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00651a20 mac 10498ce0 PlayerActionState::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00651740 mac 104993e0 PlayerActionState::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e290 mac 1049d660 PlayerActionState::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00651d20 mac 10498c00 PlayerActionState::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* param_1);
    // win1.41 0055e280 mac 1049d620 PlayerActionState::GetText(void)
    virtual const char* GetText();
};

class PlayerSubAction: public GameThing
{
public:

    // Override methods

    // win1.41 0055e210 mac 1049a870 PlayerSubAction::_dt(void)
    virtual ~PlayerSubAction();
    // win1.41 00651e70 mac 104985c0 PlayerSubAction::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00651d80 mac 10498a40 PlayerSubAction::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e200 mac 1049d540 PlayerSubAction::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PlayerSubActionArgument: public GameThing
{
public:

    // Override methods

    // win1.41 0055e1c0 mac 10497ca0 PlayerSubActionArgument::_dt(void)
    virtual ~PlayerSubActionArgument();
    // win1.41 00652140 mac 10497ea0 PlayerSubActionArgument::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00651f80 mac 10498220 PlayerSubActionArgument::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e1b0 mac 10497c50 PlayerSubActionArgument::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H */

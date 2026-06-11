#ifndef BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ScriptTimer: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 00561330 mac 10506140 ScriptTimer::_dt(void)
    virtual ~ScriptTimer();
    // win1.41 00561320 mac 10506350 ScriptTimer::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007117b0 mac 10506390 ScriptTimer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00711700 mac 105064b0 ScriptTimer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561310 mac 10506310 ScriptTimer::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561300 mac 105062c0 ScriptTimer::IsDeletedWhenReleasedFromScript(void)
    virtual uint32_t IsDeletedWhenReleasedFromScript();
    // win1.41 005612e0 mac 105061e0 ScriptTimer::GetText(void)
    virtual const char* GetText();
    // win1.41 005612f0 mac 1002b150 ScriptTimer::IsScriptTimer(void)
    virtual uint32_t IsScriptTimer();
    // win1.41 00711600 mac 10506a30 ScriptTimer::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H */

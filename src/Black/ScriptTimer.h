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

    // BW1W120 00561330 BW1M100 10506140 ScriptTimer::_dt(void)
    virtual ~ScriptTimer();
    // BW1W120 00561320 BW1M100 10506350 ScriptTimer::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007117b0 BW1M100 10506390 ScriptTimer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00711700 BW1M100 105064b0 ScriptTimer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00561310 BW1M100 10506310 ScriptTimer::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561300 BW1M100 105062c0 ScriptTimer::IsDeletedWhenReleasedFromScript(void)
    virtual uint32_t IsDeletedWhenReleasedFromScript();
    // BW1W120 005612e0 BW1M100 105061e0 ScriptTimer::GetText(void)
    virtual const char* GetText();
    // BW1W120 005612f0 BW1M100 1002b150 ScriptTimer::IsScriptTimer(void)
    virtual uint32_t IsScriptTimer();
    // BW1W120 00711600 BW1M100 10506a30 ScriptTimer::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H */

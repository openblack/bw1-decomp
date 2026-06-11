#ifndef BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ScriptMarker: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 00561070 mac 10501430 ScriptMarker::_dt(void)
    virtual ~ScriptMarker();
    // win1.41 0070d970 mac 10501740 ScriptMarker::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00561060 mac 10501620 ScriptMarker::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0070d9f0 mac 10501660 ScriptMarker::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0070d9d0 mac 105016d0 ScriptMarker::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561050 mac 105015e0 ScriptMarker::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561030 mac 10501550 ScriptMarker::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00561040 mac 10501590 ScriptMarker::IsDeletedWhenReleasedFromScript(void)
    virtual uint32_t IsDeletedWhenReleasedFromScript();
    // win1.41 00561010 mac 105014d0 ScriptMarker::GetText(void)
    virtual const char* GetText();
    // win1.41 00561020 mac 10501510 ScriptMarker::IsScriptMarker(void)
    virtual uint32_t IsScriptMarker();
    // win1.41 0070d960 mac 10501850 ScriptMarker::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */

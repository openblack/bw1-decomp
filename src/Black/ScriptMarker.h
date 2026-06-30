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

    // BW1W120 00561070 BW1M100 10501430 ScriptMarker::_dt(void)
    virtual ~ScriptMarker();
    // BW1W120 0070d970 BW1M100 10501740 ScriptMarker::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00561060 BW1M100 10501620 ScriptMarker::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0070d9f0 BW1M100 10501660 ScriptMarker::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0070d9d0 BW1M100 105016d0 ScriptMarker::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561050 BW1M100 105015e0 ScriptMarker::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561030 BW1M100 10501550 ScriptMarker::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // BW1W120 00561040 BW1M100 10501590 ScriptMarker::IsDeletedWhenReleasedFromScript(void)
    virtual uint32_t IsDeletedWhenReleasedFromScript();
    // BW1W120 00561010 BW1M100 105014d0 ScriptMarker::GetText(void)
    virtual const char* GetText();
    // BW1W120 00561020 BW1M100 10501510 ScriptMarker::IsScriptMarker(void)
    virtual uint32_t IsScriptMarker();
    // BW1W120 0070d960 BW1M100 10501850 ScriptMarker::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
};

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */

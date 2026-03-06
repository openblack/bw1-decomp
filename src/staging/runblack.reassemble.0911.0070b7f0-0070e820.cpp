#include "Script.h"
#include "ScriptMarker.h"

// win1.41 0070d360 mac 10500750 GScript::DeleteAllScriptCreatedGameThings(void)
void GScript::DeleteAllScriptCreatedGameThings()
{
}

// win1.41 0070d960 mac 10501850 ScriptMarker::GetScriptObjectType(void)
uint32_t ScriptMarker::GetScriptObjectType()
{
    return 0;
}

// win1.41 0070d970 mac 10501740 ScriptMarker::ToBeDeleted(int)
void ScriptMarker::ToBeDeleted(int param_1)
{
}

// win1.41 0070d9d0 mac 105016d0 ScriptMarker::Save(GameOSFile &)
bool ScriptMarker::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0070d9f0 mac 10501660 ScriptMarker::Load(GameOSFile &)
bool ScriptMarker::Load(GameOSFile& file)
{
    return 0;
}

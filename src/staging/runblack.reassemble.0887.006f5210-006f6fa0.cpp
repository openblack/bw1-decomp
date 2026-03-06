#include "ScriptCreatureCurse.h"
#include "Script.h"
#include "ScriptDLL.h"

// win1.41 006f6190 mac 105e86b0 ScriptCreatureCurse::Init(Creature *)
void ScriptCreatureCurse::Init(Creature* creature)
{
}

// win1.41 006f61e0 mac 105e85d0 ScriptCreatureCurse::ResolveLoad(Creature *)
void ScriptCreatureCurse::ResolveLoad(Creature* creature)
{
}

// win1.41 006f62b0 mac 104e7c70 GScript::ScriptErrorMessage(char*)
void GScript::ScriptErrorMessage(char* msg)
{
}

// win1.41 006f62c0 mac 100054c0 GScript::ScriptWarningMessage(char*)
void GScript::ScriptWarningMessage(char* msg)
{
}

// win1.41 006f6320 mac 104e8e70 ScriptDLL::Create(char const *)
ScriptDLL* ScriptDLL::Create(char* library_path)
{
    return 0;
}

// win1.41 006f68c0 mac 104e8480 ScriptDLL::AutoStart(void)
void ScriptDLL::AutoStart()
{
}

// win1.41 006f68f0 mac 104e8410 ScriptDLL::StopTasksOfType(VMScriptType)
void ScriptDLL::StopTasksOfType(VMScriptType param_1)
{
}

// win1.41 006f6910 mac 104e83b0 ScriptDLL::StopAllTasks(void)
void ScriptDLL::StopAllTasks()
{
}

// win1.41 006f6920 mac 104e8350 ScriptDLL::LoadBinary(char const *)
int ScriptDLL::LoadBinary(const char* path)
{
    return 0;
}

// win1.41 006f6ba0 mac 10042e90 ScriptDLL::PUSH(void *, VMType)
void ScriptDLL::PUSH(void* param_1, VMType param_2)
{
}

// win1.41 006f6c50 mac 104e7d70 ScriptDLL::GetScriptType(unsigned long)
void* ScriptDLL::GetScriptType(unsigned long param_1)
{
    return 0;
}

#include "ScriptTimer.h"
#include "SecretCreature.h"
#include "Settings.h"

// win1.41 00711600 mac 10506a30 ScriptTimer::GetScriptObjectType(void)
uint32_t ScriptTimer::GetScriptObjectType()
{
    return 0;
}

// win1.41 00711700 mac 105064b0 ScriptTimer::Save(GameOSFile &)
bool ScriptTimer::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007117b0 mac 10506390 ScriptTimer::Load(GameOSFile &)
bool ScriptTimer::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00711d60 mac 101441a0 SecretCreature::_dt(void)
SecretCreature::~SecretCreature()
{
}

// win1.41 00714af0 mac 105e8db0 Settings::ParseConfigFile(char*)
void Settings::ParseConfigFile(char* path)
{
}

// win1.41 00714c20 mac 105e8d50 Settings::InitialiseToDefaults(void)
void Settings::InitialiseToDefaults()
{
}

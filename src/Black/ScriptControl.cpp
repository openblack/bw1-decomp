#include "WhiteColour.h"
#include "Script.h"

#include <string.h>

#include "Game.h"
#include "ScriptDLL.h"

bool GScript::NameCheck(const char* script_name, const char* filename)
{
	static char buffer[256];
	char        separators[] = " ,\t";

	strcpy(buffer, GGame::g_game->script->StopList);
	char* token = strtok(buffer, separators);
	while (token != NULL)
	{
		if (strcmp(token, script_name) == 0)
		{
			return true;
		}
		token = strtok(NULL, separators);
	}
	return false;
}

bool GScript::FilenameCheck(const char* script_name, const char* filename)
{
	static char buffer[256];
	char        separators[] = " ,\t";

	strcpy(buffer, GGame::g_game->script->StopList);
	char* token = strtok(buffer, separators);
	while (token != NULL)
	{
		if (_stricmp(token, filename) == 0)
		{
			return true;
		}
		token = strtok(NULL, separators);
	}
	return false;
}

bool GScript::NotNameCheck(const char* script_name, const char* filename)
{
	return !NameCheck(script_name, filename);
}

bool GScript::FilenameAndNotScriptCheck(const char* script_name, const char* filename)
{
	char* excluded = GGame::g_game->script->StopList;
	if (!NameCheck(script_name, filename))
	{
		GGame::g_game->script->StopList = GGame::g_game->script->StopFileList;
		if (FilenameCheck(script_name, filename))
		{
			GGame::g_game->script->StopList = excluded;
			return true;
		}
		GGame::g_game->script->StopList = excluded;
	}
	return false;
}

bool GScript::NotFilenameCheck(const char* script_name, const char* filename)
{
	return !FilenameCheck(script_name, filename);
}

bool32_t GScript::StopScript(char* names)
{
	StopList = names;
	g_scriptDLL->StopScripts(NameCheck);
	return true;
}

void GScript::StopScript()
{
	ScriptDLL* dll = g_scriptDLL;
	GGame::g_game->script->StopList = dll->STRING(dll->ULONG_POP());
	SCRIPT_ASSERT(GGame::g_game->script->StopList != NULL, "Jonty - Invalid ptr");
	GGame::g_game->script->StopScript(GGame::g_game->script->StopList);
}

void GScript::StopScriptsExcluding()
{
	ScriptDLL* dll = g_scriptDLL;
	GGame::g_game->script->StopList = dll->STRING(dll->ULONG_POP());
	SCRIPT_ASSERT(GGame::g_game->script->StopList != NULL, "Jonty - Invalid ptr");
	g_scriptDLL->StopScripts(NotNameCheck);
}

void GScript::StopScriptsInFilesExcluding()
{
	ScriptDLL* dll = g_scriptDLL;
	GGame::g_game->script->StopList = dll->STRING(dll->ULONG_POP());
	dll = g_scriptDLL;
	GGame::g_game->script->StopFileList = dll->STRING(dll->ULONG_POP());
	SCRIPT_ASSERT(GGame::g_game->script->StopList != NULL && GGame::g_game->script->StopFileList != NULL,
	              "Jonty - Invalid ptr");
	g_scriptDLL->StopScripts(FilenameAndNotScriptCheck);
}

void GScript::StopScriptsExcludingFiles()
{
	ScriptDLL* dll = g_scriptDLL;
	GGame::g_game->script->StopList = dll->STRING(dll->ULONG_POP());
	SCRIPT_ASSERT(GGame::g_game->script->StopList != NULL, "Jonty - Invalid ptr");
	g_scriptDLL->StopScripts(NotFilenameCheck);
}

void GScript::StopScriptsInFiles()
{
	ScriptDLL* dll = g_scriptDLL;
	GGame::g_game->script->StopList = dll->STRING(dll->ULONG_POP());
	SCRIPT_ASSERT(GGame::g_game->script->StopList != NULL, "Jonty - Invalid ptr");
	g_scriptDLL->StopScripts(FilenameCheck);
}

void GScript::StopScriptsOfType(VMScriptType type)
{
	g_scriptDLL->StopTasksOfType(type);
}

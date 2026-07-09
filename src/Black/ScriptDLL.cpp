#include "ScriptDLL.h"

#include <stddef.h> /* For NULL */

ScriptDLL* ScriptDLL::Create(const char* library_path)
{
	ScriptDLL* script_dll = new ScriptDLL(library_path);

	LHDLL* dll = script_dll->AddToInternalList(script_dll);

	if (dll != script_dll && script_dll != NULL)
	{
		delete script_dll;
	}

	return (ScriptDLL*)dll;
}

void ScriptDLL::AutoStart()
{
	AutoStart(transport);
}

int ScriptDLL::LoadBinary(const char* path)
{
	return LoadBinary(transport, path);
}

#include "LHDLL.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For malloc, free */
#include <string.h> /* For strlen, strrchr, strcmp */

#include <windows.h> /* For LoadLibrary, GetProcAddress, FreeLibrary */

#include "LHDLLTransport.h"

#include "LHDLLLogMacros.h"
#include "LHTemplate.h"

#include <Black/ColourConstants.h> /* For White */

#define LH_DLL_PATH_SEPARATOR '\\'
#define LH_DLL_RELEASE_SUFFIX "R"

enum LH_DLL_MESSAGE_TYPE
{
	LH_DLL_MESSAGE_TYPE_STRING = 1,
	LH_DLL_MESSAGE_TYPE_ULONG = 2,
	LH_DLL_MESSAGE_TYPE_FLOAT = 3,
};

static char* RegistryKey = "Software\\Lionhead Studios Ltd\\BWSetup";

static LHNetMessageFormatDescriptor _message[] = {
	{LH_DLL_MESSAGE_TYPE_STRING, "S"}, //
	{LH_DLL_MESSAGE_TYPE_ULONG, "U"},  //
	{LH_DLL_MESSAGE_TYPE_FLOAT, "F"},  //
	{0, NULL},                         //
};

static LHLinkedList<LHDLL*> _first_library;

LHDLL* LHDLL::Create(const char* library_path)
{
	LHDLL* dll = new LHDLL(library_path);
	LHDLL* result = AddToInternalList(dll);
	if (result != dll)
	{
		delete dll;
	}
	return result;
}

LHDLL* LHDLL::AddToInternalList(LHDLL* dll)
{
	LHDLL* other = NULL;
	char*  name = strrchr(dll->LibraryPath, LH_DLL_PATH_SEPARATOR);
	name = name ? name + 1 : dll->LibraryPath;
	while ((other = _first_library.GetNext(other)) != NULL)
	{
		char* other_name = strrchr(other->LibraryPath, LH_DLL_PATH_SEPARATOR);
		other_name = other_name ? other_name + 1 : other->LibraryPath;
		if (strcmp(name, other_name) == 0)
		{
			return other;
		}
	}
	_first_library.Add(dll);
	return dll;
}

void LHDLL::Destroy()
{
	LHDLL* dll = NULL;
	while ((dll = _first_library.GetNext(dll)) != NULL)
	{
		dll->UnLoad();
		delete dll;
	}
	LHLinkedNode<LHDLL*>* node;
	while ((node = _first_library.GetStart()) != NULL)
	{
		_first_library.Remove(node->Data, false);
	}
}

LHDLL::LHDLL(const char* library_path)
{
	sprintf(LibraryPath = (char*)malloc(strlen(library_path) + sizeof(LH_DLL_RELEASE_SUFFIX)),
	        "%s" LH_DLL_RELEASE_SUFFIX, library_path);
	_valid = false;
	Reset();
}

void LHDLL::Reset()
{
	_initialise = NULL;
	_lookin = NULL;
	_uninitialise = NULL;
	_library = NULL;
	_library_end = NULL;
	_black_end = NULL;
	bool return_value = ResetAPI();
	LH_ASSERT(170, return_value, "Jason: ResetAPI() failed");
}

bool LHDLL::ResetAPI()
{
	return true;
}

LHDLL::~LHDLL()
{
	if (LibraryPath)
	{
		free(LibraryPath);
	}
}

bool LHDLL::Valid()
{
	return _valid;
}

LH_RETURN LHDLL::Load(void (*callback)(void*))
{
	if (_valid == true)
	{
		return LH_OK;
	}

	_library = LoadLibraryA(LibraryPath);
	if (!_library)
	{
		LH_ASSERT(235, _library, LHSPrintf("Jason: Unable to find %s.dll", LibraryPath));
		return LH_FAIL;
	}

	_black_end = LHTransport::Create(LH_TRANSPORT_TYPE_BASE);
	if (!_black_end)
	{
		UnLoad();
		LH_ASSERT(248, _black_end, "Jason: Unable to create transport");
		return LH_FAIL;
	}

	LH_RETURN result = _black_end->Open(NULL, NULL, NULL);
	if (result != LH_OK)
	{
		UnLoad();
		LH_ASSERT(254, 0, "Jason: Unable to open transport");
		return result;
	}

	if (callback)
	{
		_library_end = LHTransport::Create(LH_TRANSPORT_TYPE_SYNC);
	}
	else
	{
		_library_end = LHTransport::Create(LH_TRANSPORT_TYPE_BASE);
	}
	if (!_library_end)
	{
		UnLoad();
		LH_ASSERT(263, _library_end, "Jason: Unable to create transport");
		return LH_FAIL;
	}

	result = _library_end->OpenConnectionToTransport(_black_end, callback, NULL);
	if (result != LH_OK)
	{
		UnLoad();
		LH_ASSERT(269, 0, "Jason: Unable to open transport");
		return result;
	}

	_valid = true;
	LH_RETURN return_value = LH_OK;
	_initialise = (LH_RETURN(__cdecl*)(LHTransport*, ...))GetProcAddress((HMODULE)_library, "Initialise");
	if (!_initialise)
	{
		LH_ASSERT(282, _initialise, "Jason: Unable to find the Initialise function");
		return_value = (LH_RETURN)1;
	}

	_lookin = (LH_RETURN(__cdecl*)(LHTransport*, ...))GetProcAddress((HMODULE)_library, "LookIn");
	if (!_lookin)
	{
		LH_ASSERT(287, _lookin, "Jason: Unable to find the LookIn function");
		return_value = (LH_RETURN)1;
	}

	_uninitialise = (LH_RETURN(__cdecl*)(LHTransport*))GetProcAddress((HMODULE)_library, "UnInitialise");
	if (!_uninitialise)
	{
		LH_ASSERT(292, _uninitialise, "Jason: Unable to find the UnInitialise function");
		return_value = (LH_RETURN)1;
	}

	if (!GetAPI())
	{
		LH_ASSERT(297, 0, "Jason: GetAPI() failed");
		return_value = LH_FAIL;
	}
	return return_value;
}

bool LHDLL::GetAPI()
{
	return true;
}

LH_RETURN LHDLL::UnLoad()
{
	if (_valid)
	{
		if (_library_end)
		{
			_library_end->Close();
			LHTransport::Destroy(_library_end);
		}
		if (_black_end)
		{
			_black_end->Close();
			LHTransport::Destroy(_black_end);
		}
		if (!FreeLibrary((HMODULE)_library))
		{
			LH_ASSERT(345, 0, "Jason: Unable to free library");
			return LH_FAIL;
		}
		Reset();
		_valid = false;
	}
	return LH_OK;
}

LHNetEvent* LHDLL::Read(unsigned long timeout)
{
	LH_ASSERT_CORRECTIVE(361, _valid, "Jason: Library not loaded", return NULL);
	return _black_end->Read(timeout);
}

LH_RETURN LHDLL::Write(LHNetEvent* net_event)
{
	LH_ASSERT_CORRECTIVE(372, _valid, "Jason: Library not loaded", return LH_ERROR);
	_black_end->Write(net_event);
	return LH_OK;
}

LH_RETURN LHDLL::Initialise()
{
	LH_ASSERT_CORRECTIVE(393, _valid, "Jason: Library not loaded", return LH_ERROR);
	LH_ASSERT_CORRECTIVE(394, _initialise, "Jason: Initialise function doesn't exist", return LH_ERROR);
	return _initialise(_library_end);
}

LH_RETURN LHDLL::LookIn()
{
	LH_ASSERT_CORRECTIVE(411, _valid, "Jason: Library not loaded", return LH_ERROR);
	LH_ASSERT_CORRECTIVE(412, _lookin, "Jason: LookIn function doesn't exist", return LH_ERROR);
	return _lookin(_library_end, _message);
}

LH_RETURN LHDLL::UnInitialise()
{
	LH_ASSERT_CORRECTIVE(428, _valid, "Jason: Library not loaded", return LH_ERROR);
	LH_ASSERT_CORRECTIVE(429, _uninitialise, "Jason: UnInitialise function doesn't exist", return LH_ERROR);
	return _uninitialise(_library_end);
}

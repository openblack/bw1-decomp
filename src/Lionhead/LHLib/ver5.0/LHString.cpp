#include <Lionhead/LHLib/ver5.0/LHString.h>

#include <windows.h>

#include <re_common.h>

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>
#include <Lionhead/LHLib/ver5.0/LHScript.h>

#define LH_STRING_CONVERT_BUFFER_SIZE 1024 // Used in 4 places so a define is okay here

char* LHWCHAR2CHAR(wchar_t* string)
{
	static char buffer[LH_STRING_CONVERT_BUFFER_SIZE];
	buffer[WideCharToMultiByte(CP_ACP, 0, string, -1, buffer, sizeof(buffer) - 1, NULL, NULL)] = '\0';
	return buffer;
}

char* LHWCHAR2CHAR(const wchar_t* string)
{
	static char buffer[LH_STRING_CONVERT_BUFFER_SIZE];
	buffer[WideCharToMultiByte(CP_ACP, 0, string, -1, buffer, sizeof(buffer) - 1, NULL, NULL)] = '\0';
	return buffer;
}

#ifndef VERSION_BW1W100

wchar_t* LHCHAR2WCHAR(char* string)
{
	static wchar_t wbuffer[LH_STRING_CONVERT_BUFFER_SIZE];
	wbuffer[MultiByteToWideChar(CP_ACP, 0, string, -1, wbuffer, ARRAY_SIZE(wbuffer) - 1)] = L'\0';
	return wbuffer;
}

wchar_t* LHCHAR2WCHAR(const char* string)
{
	static wchar_t wbuffer[LH_STRING_CONVERT_BUFFER_SIZE];
	wbuffer[MultiByteToWideChar(CP_ACP, 0, string, -1, wbuffer, ARRAY_SIZE(wbuffer) - 1)] = L'\0';
	return wbuffer;
}

#endif // VERSION_BW1W100

void LHScriptX<wchar_t>::PostFileOpenStuff(LHOSFile& file)
{
	size_t  bytesRead = 0;
	wchar_t byteOrderMark;
	file.Read(&byteOrderMark, sizeof(byteOrderMark), &bytesRead);
}

void bodge_to_force_compilation_of_versions()
{
	LHScriptX<char>           scriptC;
	LHScriptX<wchar_t>        scriptW;
	LHScriptCommandX<char>    commandC;
	LHScriptCommandX<wchar_t> commandW;

	scriptC.Load(NULL, (long*)NULL);
	scriptC.Load(NULL, (LHScriptCommandX<char>*)NULL, NULL, (char**)NULL, NULL, NULL);
	scriptC.Load(NULL, (LHScriptCommandX<char>*)NULL, NULL, (long*)NULL);
	scriptC.Load(NULL, (char**)NULL, NULL, (long*)NULL);
	scriptC.SetVariables(NULL, NULL, NULL);
	LHReleasedOSFile file;
	scriptC.LoadOneLine(file, NULL);
	scriptC.DontProcessNumLines(file, NULL, 0);
	scriptC.InitIfLevel();
	scriptC.ScanLine(NULL);
	scriptW.Load(NULL, (long*)NULL);
	scriptW.Load(NULL, (LHScriptCommandX<wchar_t>*)NULL, NULL, (wchar_t**)NULL, NULL, NULL);
	scriptW.Load(NULL, (LHScriptCommandX<wchar_t>*)NULL, NULL, (long*)NULL);
	scriptW.Load(NULL, (wchar_t**)NULL, NULL, (long*)NULL);
	scriptW.SetVariables(NULL, NULL, NULL);
	scriptW.LoadOneLine(file, NULL);
	scriptW.DontProcessNumLines(file, NULL, 0);
	scriptW.InitIfLevel();
	scriptW.ScanLine(NULL);
	commandC.GetCommandAsText(NULL);
	commandW.GetCommandAsText(NULL);
}

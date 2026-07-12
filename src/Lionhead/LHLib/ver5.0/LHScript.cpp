#include <Lionhead/LHLib/ver5.0/LHScript.h>

#include <ctype.h>
#include <string.h>

#pragma intrinsic(strcpy)

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>
#include <Lionhead/LHLib/ver5.0/LHConvert.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHString.h>
#include <Lionhead/LHLib/ver5.0/LHText.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

extern LHScreen g_lhScreen; // 0xE85050 the global LHScreen instance

// The front-end resource bank filled by the LOAD_BMP/LOAD_SPRITES/LOAD_DATA
// commands and read back by the front end. 100 slots at 0xE85964.
// TODO: fabricated names; real home unknown (probably a member of LHSystem,
// like most globals referenced here — 0xE85964 = LHSystem 0xE85040 + 0x924).
struct LHScriptResource
{
	long  type; /* 1 = raw data, 2 = BMP sprite, 3 = sprite list */
	void* data;
	char  name[256];
};
extern LHScriptResource g_lhScriptResources[100]; // 0xE85964

extern LHConvert g_lhConvert;            // 0xE85874
extern LHText    g_lhText;               // 0xE8C084
extern LHPixel16 g_lhTransparentPixel16; // 0xE91EDC TODO: fabricated name
extern LHColor   g_lhTransparentColour;  // 0xE91EE0 TODO: fabricated name

// Front-end/3D-driver setup setters called by ProcessCommand.
// TODO: all fabricated names; tiny setter bodies live at 0x0087FC90..0x0087FD40
// (plus one empty stub at 0x007DED40), real declarations/home unknown.
void           SetD3DSetup(long value);              // 0x0087FC90
void           SetSwapTextureAGPvsLocal(long value); // 0x0087FCA0
void           SetShowDebugInfo(long value);         // 0x0087FCB0
void           SetAGPMem(long bytes);                // 0x0087FCC0
void           SetVRAMMem(long bytes);               // 0x0087FCD0
void           SetUseWireframe(long value);          // 0x0087FCE0
void           SetAllocMouseSurface(long value);     // 0x0087FCF0
void           SetBuildAllMntTexture(long value);    // 0x0087FD00
char*          SetMntName(char* name);               // 0x0087FD10 wraps LH3DIsland::SetFileToLoad
void           SetUseLowTexture(long value);         // 0x0087FD20
void           SetUseSmallBump(long value);          // 0x0087FD30
void           SetVanishObjectDist(float dist);      // 0x0087FD40
void __stdcall D3DSetup(long value);                 // 0x007DED40 empty stub in release builds

// Debug copy of the most recently parsed script line, shared by both
// instantiations (see LoadOneLine). TODO: fabricated name.
static char LastLineParsed[512] = "no line parsed yet";

// BW1W120 00c343c0 LHScriptX<c>::Commands
LHScriptCommandX<char> LHScriptX<char>::Commands[] = {
	{"OPEN_SCREEN", "NNNN    "},
	{"BUILD_ALL_MNT_TEXTURE", "N       "},
	{"D3D_SETUP", "N       "},
	{"SWAP_TEXTURE_AGP_VS_LOCAL", "N       "},
	{"MNT_NAME", "A       "},
	{"USE_LOW_TEXTURE", "N       "},
	{"SHOW_DEBUG_INFO", "N       "},
	{"SET_AGP_MEM", "N       "},
	{"SET_VRAM_MEM", "N       "},
	{"USE_SMALL_BUMP", "N       "},
	{"USE_WIREFRAME", "N       "},
	{"SET_VANISH_OBJECT_DIST", "N       "},
	{"ALLOC_MOUSE_SURFACE", "N       "},
	{"OPEN_KEYBOARD", "A       "},
	{"OPEN_MOUSE", "A       "},
	{"OPEN_SOUND", "A       "},
	{"LOAD_BMP", "AN      "},
	{"LOAD_SPRITES_DEPTH", "ANN     "},
	{"LOAD_SPRITES", "AN      "},
	{"LOAD_DATA", "AN      "},
	{"LOAD_FONT_DEPTH", "AN      "},
	{"LOAD_FONT", "AN      "},
	{"SET_TRANSPARENCY", "NNN     "},
	{"SLONG", "A       "},
	{"FLOAT", "A       "},
	{"CBYTE", "A       "},
	{"IF", "AAA     "},
	{"ENDIF", "        "},
	{"REM", "        "},
	{"***VAR", "        "},
	{NULL, ""},
};

// BW1W120 00c345b0 LHScriptX<w>::Commands
LHScriptCommandX<wchar_t> LHScriptX<wchar_t>::Commands[] = {
	{L"OPEN_SCREEN", "NNNN    "},
	{L"BUILD_ALL_MNT_TEXTURE", "N       "},
	{L"D3D_SETUP", "N       "},
	{L"SWAP_TEXTURE_AGP_VS_LOCAL", "N       "},
	{L"MNT_NAME", "A       "},
	{L"USE_LOW_TEXTURE", "N       "},
	{L"SHOW_DEBUG_INFO", "N       "},
	{L"SET_AGP_MEM", "N       "},
	{L"SET_VRAM_MEM", "N       "},
	{L"USE_SMALL_BUMP", "N       "},
	{L"USE_WIREFRAME", "N       "},
	{L"SET_VANISH_OBJECT_DIST", "N       "},
	{L"ALLOC_MOUSE_SURFACE", "N       "},
	{L"OPEN_KEYBOARD", "A       "},
	{L"OPEN_MOUSE", "A       "},
	{L"OPEN_SOUND", "A       "},
	{L"LOAD_BMP", "AN      "},
	{L"LOAD_SPRITES_DEPTH", "ANN     "},
	{L"LOAD_SPRITES", "AN      "},
	{L"LOAD_DATA", "AN      "},
	{L"LOAD_FONT_DEPTH", "AN      "},
	{L"LOAD_FONT", "AN      "},
	{L"SET_TRANSPARENCY", "NNN     "},
	{L"SLONG", "A       "},
	{L"FLOAT", "A       "},
	{L"CBYTE", "A       "},
	{L"IF", "AAA     "},
	{L"ENDIF", "        "},
	{L"REM", "        "},
	{L"***VAR", "        "},
	{NULL, ""},
};

// BW1W120 00c347a0 LHScriptX<c>::Conditions
char* LHScriptX<char>::Conditions[] = {"MAX_DEPTH", "LH_OK", "LH_FAIL", "LH_ERROR", "LH_NO_MEMORY", NULL};

// BW1W120 00c347b8 LHScriptX<w>::Conditions
wchar_t* LHScriptX<wchar_t>::Conditions[] = {L"MAX_DEPTH", L"LH_OK", L"LH_FAIL", L"LH_ERROR", L"LH_NO_MEMORY", NULL};

// BW1W120 00c347d0 LHScriptX<c>::NamesToCondition
char* LHScriptX<char>::NamesToCondition[] = {"=", "==", "<>", "!=", "<", ">", "<=", ">=", NULL};

// BW1W120 00c347f4 LHScriptX<w>::NamesToCondition
wchar_t* LHScriptX<wchar_t>::NamesToCondition[] = {L"=", L"==", L"<>", L"!=", L"<", L">", L"<=", L">=", NULL};

// BW1W120 00fadce0 LHScriptX<w>::Pram
LHScriptPramX<wchar_t> LHScriptX<wchar_t>::Pram;
// BW1W120 00fb9d40 LHScriptX<c>::Pram
LHScriptPramX<char> LHScriptX<char>::Pram;

// BW1W120 007e7380 BW1M100 1061e4c8 LHScriptX<c>::Load(char*, long*)
template <class T> LH_RETURN LHScriptX<T>::Load(char* file_name, long* param_2)
{
	DestroyVariables();
	LHScriptX<T> saved = *this;
	commands = NULL;
	conditionNames = NULL;
	LH_RETURN result = LoadFile(file_name, param_2);
	*this = saved;
	return result;
}

// BW1W120 007e72c0 BW1M100 1061e38c LHScriptX<c>::Load(char*, LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), long*)
template <class T>
LH_RETURN LHScriptX<T>::Load(char* file_name, LHScriptCommandX<T>*                                new_commands,
                             LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_4)
{
	DestroyVariables();
	LHScriptX<T> saved = *this;
	commands = new_commands;
	commandCallback = command_callback;
	conditionNames = NULL;
	LH_RETURN result = LoadFile(file_name, param_4);
	*this = saved;
	return result;
}

// BW1W120 007e7260 LHScriptX<c>::Load(char*, char**, LH_RETURN (*)(long, long*), long*)
template <class T>
LH_RETURN LHScriptX<T>::Load(char* file_name, T** condition_names, LH_RETURN(__cdecl* condition_callback)(long, long*),
                             long* param_4)
{
	DestroyVariables();
	LHScriptX<T> saved = *this;
	conditionNames = condition_names;
	conditionCallback = condition_callback;
	commands = NULL;
	LH_RETURN result = LoadFile(file_name, param_4);
	*this = saved;
	return result;
}

// BW1W120 007e7320 LHScriptX<c>::Load(char*, LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), char**, LH_RETURN (*)(long, long*), long*)
template <class T>
LH_RETURN LHScriptX<T>::Load(char* file_name, LHScriptCommandX<T>*                              new_commands,
                             LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), T** condition_names,
                             LH_RETURN(__cdecl* condition_callback)(long, long*), long*         param_6)
{
	DestroyVariables();
	LHScriptX<T> saved = *this;
	commands = new_commands;
	commandCallback = command_callback;
	conditionNames = condition_names;
	conditionCallback = condition_callback;
	LH_RETURN result = LoadFile(file_name, param_6);
	*this = saved;
	return result;
}

// BW1W120 007e73d0 LHScriptX<c>::SetVariables(LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), long*)
template <class T>
LH_RETURN LHScriptX<T>::SetVariables(LHScriptCommandX<T>* new_commands,
                                     LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_3)
{
	DestroyVariables();
	commands = new_commands;
	commandCallback = command_callback;
	conditionNames = NULL;
	ifLevel = -1;
	lineNumber = 0;
	return LH_OK;
}

// BW1W120 007e8240 LHScriptX<c>::ProcessCommand(long, LHScriptPramX<c>*)
// Dispatches the built-in front-end setup command set; indices <= 0 are
// forwarded to the host command callback as command -1 - index.
template <class T> LH_RETURN LHScriptX<T>::ProcessCommand(long command, LHScriptPramX<T>* pram)
{
	LH_RETURN result;
	if (command > 0)
	{
		switch (command)
		{
		case 1: // OPEN_SCREEN
			if (pram->number[3] == 1)
				g_lhScreen.SetFullscreenMode(1);
			return (LH_RETURN)g_lhScreen.Open(pram->number[0], pram->number[1], pram->number[2]);
		case 2: // BUILD_ALL_MNT_TEXTURE
			SetBuildAllMntTexture(pram->number[0]);
			return LH_OK;
		case 3: // D3D_SETUP
			D3DSetup(pram->number[0]);
			SetD3DSetup(1);
			return LH_OK;
		case 4: // SWAP_TEXTURE_AGP_VS_LOCAL
			SetSwapTextureAGPvsLocal(pram->number[0]);
			return LH_OK;
		case 5: // MNT_NAME
			SetMntName(LHStringOps<T>::makechar(pram->text[0]));
			return LH_OK;
		case 6: // USE_LOW_TEXTURE
			SetUseLowTexture(pram->number[0]);
			return LH_OK;
		case 7: // SHOW_DEBUG_INFO
			SetShowDebugInfo(pram->number[0]);
			return LH_OK;
		case 8: // SET_AGP_MEM
			SetAGPMem(pram->number[0] << 20);
			return LH_OK;
		case 9: // SET_VRAM_MEM
			SetVRAMMem(pram->number[0] << 20);
			return LH_OK;
		case 10: // USE_SMALL_BUMP
			SetUseSmallBump(pram->number[0]);
			return LH_OK;
		case 11: // USE_WIREFRAME
			SetUseWireframe(pram->number[0]);
			return LH_OK;
		case 12: // SET_VANISH_OBJECT_DIST
			SetVanishObjectDist((float)pram->number[0] * (float)pram->number[0]);
			return LH_OK;
		case 13: // ALLOC_MOUSE_SURFACE
			SetAllocMouseSurface(pram->number[0]);
			return LH_OK;
		case 20: // LOAD_DATA
		{
			if ((unsigned long)pram->number[1] >= 100)
				return LH_ERROR;
			result = (LH_RETURN)LHLoadDataToMemory(LHStringOps<T>::makechar(pram->text[0]),
			                                       &g_lhScriptResources[pram->number[1]].data, NULL);
			if (result)
				return result;
			g_lhScriptResources[pram->number[1]].type = 1;
			strcpy(g_lhScriptResources[pram->number[1]].name, LHStringOps<T>::makechar(pram->text[0]));
			return result;
		}
		// TODO: the original shares a single "return result" tail and the type=3 +
		// strcpy success tail across the LOAD_BMP/LOAD_SPRITES* cases (see the
		// shared blocks around 0x7E85E9 in the target); the exact source shape for
		// that cross-case merge has not been found yet.
		case 17: // LOAD_BMP
		{
			if ((unsigned long)pram->number[1] >= 100)
				return LH_ERROR;
// The #line pins below reproduce the original build's __FILE__/__LINE__ values
// in the memory-tracking operator new calls (evidence: the file/line immediates
// pushed at each call site, e.g. 0x408 = 1032 in CreateVariable). Compiler
// diagnostics for the rest of this file will report the original path/lines.
#line 312 "C:\\Dev\\Libs\\lionhead\\lhlib\\VER5.0\\LHScript.cpp"
			LHSprite* sprite = new (__FILE__, __LINE__) LHSprite;
			result = LH_ERROR;
			g_lhScriptResources[pram->number[1]].data = sprite;
			if (!sprite)
				return result;
			result = LHLoadABMP(LHStringOps<T>::makechar(pram->text[0]), sprite, 0);
			if (result)
			{
				delete sprite;
				return result;
			}
			g_lhScriptResources[pram->number[1]].type = 2;
			strcpy(g_lhScriptResources[pram->number[1]].name, LHStringOps<T>::makechar(pram->text[0]));
			return LH_OK;
		}
		case 18: // LOAD_SPRITES_DEPTH
		{
			if ((unsigned long)pram->number[1] >= 100)
				return LH_ERROR;
#line 333
			LHSpriteList* spriteList = new (__FILE__, __LINE__) LHSpriteList;
			result = LH_ERROR;
			g_lhScriptResources[pram->number[1]].data = spriteList;
			if (!spriteList)
				return result;
			if (pram->number[2] != 16 && pram->number[2] != 24)
			{
				delete spriteList;
				return result;
			}
			result = g_lhConvert.ToSprites(LHStringOps<T>::makechar(pram->text[0]), spriteList, NULL,
			                               pram->number[2] == 16 ? 3 : 1, NULL, NULL, NULL);
			if (result)
			{
				delete spriteList;
				return result;
			}
			g_lhScriptResources[pram->number[1]].type = 3;
			strcpy(g_lhScriptResources[pram->number[1]].name, LHStringOps<T>::makechar(pram->text[0]));
			return result;
		}
		case 19: // LOAD_SPRITES
		{
			if ((unsigned long)pram->number[1] >= 100)
				return LH_ERROR;
			LHSpriteList* spriteList = new (__FILE__, __LINE__) LHSpriteList;
			result = LH_ERROR;
			g_lhScriptResources[pram->number[1]].data = spriteList;
			if (!spriteList)
				return result;
			result = g_lhConvert.ToSprites(LHStringOps<T>::makechar(pram->text[0]), spriteList, NULL,
			                               g_lhScreen.Depth() == 16 ? 3 : 1, NULL, NULL, NULL);
			if (result)
			{
				delete spriteList;
				return result;
			}
			g_lhScriptResources[pram->number[1]].type = 3;
			strcpy(g_lhScriptResources[pram->number[1]].name, LHStringOps<T>::makechar(pram->text[0]));
			return result;
		}
		case 21: // LOAD_FONT_DEPTH
			return g_lhText.LoadFont(LHStringOps<T>::makechar(pram->text[0]), pram->number[1] != 16 ? 1 : 3);
		case 22: // LOAD_FONT
			return g_lhText.LoadFont(LHStringOps<T>::makechar(pram->text[0]), g_lhScreen.Depth() == 16 ? 3 : 1);
		case 23: // SET_TRANSPARENCY
			g_lhTransparentPixel16.Set(pram->number[0], pram->number[1], pram->number[2]);
			g_lhTransparentColour.Set(pram->number[0], pram->number[1], pram->number[2]);
			return LH_OK;
		case 24: // SLONG
		case 25: // FLOAT
		case 26: // CBYTE
			return CreateVariable(command - 1, pram);
		case 27: // IF
			return CommandIf(pram->text[0], pram->text[1], pram->text[2]);
		default:
			return LH_ERROR;
		}
	}
	return commandCallback(-1 - command, pram);
}

// BW1W120 007e7fb0 LHScriptCommandX<c>::GetCommandAsText(char*)
// Renders "NAME(%d, %s, ...)\n" style prototype text for this command.
template <class T> T* LHScriptCommandX<T>::GetCommandAsText(T* text)
{
	LHStringOps<T>::strcpy(text, name);
	LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar("("));
	unsigned int length = LHStringOps<T>::strlen(text);
	for (unsigned int i = 0; i < 12; i++)
	{
		switch (params[i])
		{
		case 'A':
			LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar("%s, "));
			break;
		case 'F':
			LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar("%f, "));
			break;
		case 'L':
			LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar("\"%s\", "));
			break;
		case 'N':
			LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar("%d, "));
			break;
		}
	}
	if (length != LHStringOps<T>::strlen(text))
		text[LHStringOps<T>::strlen(text) - 2] = 0;
	LHStringOps<T>::strcat(text, LHStringOps<T>::fromchar(")\n"));
	return text;
}

// BW1W120 007e9ad0 LHScriptX<c>::PostFileOpenStuff(LHReleasedOSFile&)
void LHScriptX<char>::PostFileOpenStuff(LHOSFile& file) {}

// BW1W120 007e6b40 LHScriptX<w>::PostFileOpenStuff(LHReleasedOSFile&)
// Reads and discards the UTF-16 byte-order mark at the head of the file.
void LHScriptX<wchar_t>::PostFileOpenStuff(LHOSFile& file)
{
	size_t  bytesRead = 0;
	wchar_t byteOrderMark;
	file.Read(&byteOrderMark, 2, &bytesRead);
}

// BW1W120 007e8170 BW1M100 10153040 LHScriptX<c>::LoadFile(char*, long*)
template <class T> LH_RETURN LHScriptX<T>::LoadFile(char* file_name, long* param_2)
{
	LHReleasedOSFile file;
	T                line[2048];

	lineNumber = 0;
	ifLevel = -1;
	if (!file.Open(file_name, LH_FILE_MODE_READ_ONLY))
	{
		PostFileOpenStuff(file);
		while (LoadOneLine(file, line))
			;
		file.Close();
	}
	return LH_OK;
}

// BW1W120 007e7400 BW1M100 1061cd3c LHScriptX<c>::LoadOneLine(LHReleasedOSFile&, char*)
// Reads one '\n'-terminated line character by character, then ScanLine()s it.
// Returns false at end of file or on error.
template <class T> bool LHScriptX<T>::LoadOneLine(LHOSFile& file, T* line)
{
	long      charsRead = 0;
	size_t    bytesRead = 0;
	LH_RETURN result = LH_OK;

	if (file.Read(line, sizeof(T), &bytesRead) == 3)
	{
	fail:
		result = LH_FAIL;
	}
	else
	{
		T* curChar = line;
		while (1)
		{
			if (!bytesRead)
				goto fail;
			if (*curChar == '\n')
				break;
			charsRead++;
			curChar++;
			bytesRead = 0;
			if (file.Read(curChar, sizeof(T), &bytesRead) == 3)
				goto fail;
		}
	}
	if (charsRead)
	{
		line[charsRead] = 0;
		lineNumber++;
		strncpy(LastLineParsed, (char*)line, 511);
		if (ScanLine(line) == LH_ERROR)
			result = LH_FAIL;
	}
	return result == LH_OK;
}

// BW1W120 007e74c0 LHScriptX<c>::DontProcessNumLines(LHReleasedOSFile&, char*, unsigned long)
// Skips num_lines '\n'-terminated lines without processing them.
template <class T> bool LHScriptX<T>::DontProcessNumLines(LHOSFile& file, T* line, unsigned long num_lines)
{
	LH_RETURN result = LH_OK;

	for (unsigned long i = 0; i < num_lines; i++)
	{
		if (result)
			break;
		for (T* curChar = line;; curChar++)
		{
			size_t bytesRead = 0;
			if (file.Read(curChar, sizeof(T), &bytesRead) == 3 || !bytesRead)
				result = LH_FAIL;
			if (*curChar == '\n')
				break;
		}
	}
	return result == LH_OK;
}

// BW1W120 007e7530 LHScriptX<c>::InitIfLevel(void)
template <class T> void LHScriptX<T>::InitIfLevel()
{
	ifLevel = -1;
}

// BW1W120 007e7540 BW1M100 10150830 LHScriptX<c>::ScanLine(char*)
// Core per-line tokeniser/executor: reads words with GetNextWord, handles
// IF/ENDIF/REM and variable assignment, parses command arguments into Pram
// per the command's parameter type string, and dispatches ProcessCommand.
template <class T> LH_RETURN LHScriptX<T>::ScanLine(T* line)
{
	unsigned char endOfLine = 0;
	T             word[1000];

	while (1)
	{
		long                 processCount = 1;
		unsigned long        firstParam = 0;
		long                 command = GetNextWord(&line, word, &endOfLine);
		LHScriptCommandX<T>* currentCommand;

		switch (command)
		{
		case 0:
			break;
		case 27: // IF: process the guarded command first, then IF on its result
			if (ifLevel != -1 && !ifConditionStack[ifLevel])
				return LH_OK;
			command = GetNextWord(&line, word, &endOfLine);
			if (command)
				processCount = 2;
			else
				firstParam = 1;
			goto process_command;
		case 28: // ENDIF
			if (ifLevel-- > -1)
				break;
			return LH_ERROR;
		case 29: // REM
			return LH_OK;
		case 30: // NAME = value assignment to an existing variable
		{
			LHScriptVariable<T>* variable = FindVariable(word);
			if (!variable)
				return LH_ERROR;
			GetNextWord(&line, word, &endOfLine);
			if (endOfLine || word[0] != '=')
				return LH_ERROR;
			GetNextWord(&line, word, &endOfLine);
			if (variable->type == 0)
			{
				variable->value = LHStringOps<T>::atoi(word);
				break;
			}
			if (variable->type != 1)
			{
				if (variable->type == 2)
					*(float*)&variable->value = LHStringOps<T>::atof(word);
				break;
			}
			if (variable->value)
				delete (T*)variable->value;
			unsigned int length = LHStringOps<T>::strlen(word);
#line 737
			T* value = (T*)operator new(sizeof(T) * (length + 1), __FILE__, __LINE__);
			variable->value = (long)value;
			if (!value)
				return LH_ERROR;
			LHStringOps<T>::strcpy(value, word);
			break;
		}
		default:
		process_command:
			if (ifLevel != -1 && !ifConditionStack[ifLevel])
				return LH_OK;
			if (command <= 0)
				currentCommand = &commands[-1 - command];
			else
				currentCommand = &Commands[command - 1];
			if (processCount < 1)
				break;
			while (1)
			{
				unsigned long i = firstParam;
				for (; i < 12; i++)
				{
					if (currentCommand->params[i] == ' ' || endOfLine)
						break;
					if (GetNextWord(&line, Pram.text[i], &endOfLine) == 30)
					{
						LHScriptVariable<T>* variable = FindVariable(Pram.text[i]);
						if (!variable)
							return LH_ERROR;
						if (variable->type != 0)
						{
							if (variable->type == 1)
							{
								T* value = (T*)variable->value;
								if (!value)
									return LH_ERROR;
								LHStringOps<T>::strcpy(Pram.text[i], value);
							}
							else if (variable->type == 2)
							{
								if (currentCommand->params[i] != 'F')
									return LH_ERROR;
								Pram.flt[i] = *(float*)&variable->value;
							}
						}
						else
						{
							if (currentCommand->params[i] != 'N')
								return LH_ERROR;
							Pram.number[i] = variable->value;
						}
					}
					else
					{
						char paramType = currentCommand->params[i];
						if (paramType == 'N')
							Pram.number[i] = LHStringOps<T>::atol(Pram.text[i]);
						else if (paramType == 'F')
							Pram.flt[i] = LHStringOps<T>::atof(Pram.text[i]);
					}
				}
				if (i != 12)
				{
					char paramType = currentCommand->params[i];
					if (paramType == 'L' || paramType == 'A' || paramType == 'N' || paramType == 'F')
						return LH_ERROR;
				}
				if (processCount == 2)
				{
					if (endOfLine == 1)
						return LH_ERROR;
					long result = ProcessCommand(command, &Pram);
					LHStringOps<T>::itoa(result, Pram.text[0], 10);
					currentCommand = &Commands[26]; // IF
					command = 27;
					firstParam = 1;
				}
				else
				{
					ProcessCommand(command, &Pram);
				}
				processCount--;
				if (processCount < 1)
					break;
			}
			break;
		}
		if (endOfLine)
			return LH_OK;
	}
}

// BW1W120 007e8a90 LHScriptX<c>::GetNextWord(char**, char*, unsigned char*)
// Extracts the next word/quoted string/operator token, upper-casing bare
// words, and classifies it: 1..30 = built-in Commands index + 1,
// -1 - index = host command table index, 30 = existing variable, 0 = none.
template <class T> long LHScriptX<T>::GetNextWord(T** cursor, T* word, unsigned char* end_of_line)
{
	*word = 0;
	T* out = word;
	while (LHStringOps<T>::isspace(**cursor))
	{
		if (!**cursor)
			break;
		(*cursor)++;
	}
	if (**cursor == '\n' || !**cursor)
		*end_of_line = 1;
	if (**cursor == '"')
	{
		(*cursor)++;
		while (**cursor != '"')
		{
			if (!**cursor)
				break;
			if (**cursor == '\n')
				break;
			*out++ = **cursor;
			(*cursor)++;
		}
		*out = 0;
		if (**cursor == '"')
		{
			(*cursor)++;
			while (LHStringOps<T>::isspace(**cursor))
			{
				if (!**cursor)
					break;
				(*cursor)++;
			}
			if (**cursor == ',' || **cursor == '(' || **cursor == ')' || **cursor == ':')
				(*cursor)++;
		}
		if (**cursor == '\n' || !**cursor)
			*end_of_line = 1;
		return 0;
	}
	if (**cursor == '=' || **cursor == '!' || **cursor == '>' || **cursor == '<')
	{
		*out++ = **cursor;
		(*cursor)++;
		if (**cursor == '=' || **cursor == '>')
		{
			*out++ = **cursor;
			(*cursor)++;
		}
	}
	else
	{
		while (!LHStringOps<T>::isspace(**cursor))
		{
			T c = **cursor;
			if (!c)
				break;
			if (c == ',' || c == '(' || c == ')' || c == ':')
			{
				(*cursor)++;
				break;
			}
			if (c == '=' || c == '!' || c == '>' || c == '<')
				break;
			(*cursor)++;
			*out++ = toupper(c);
		}
	}
	*out = 0;
	if (**cursor == '\n' || !**cursor)
		*end_of_line = 1;

	// TODO: the built-in table search is 2 instructions off: the original
	// schedules the tableCommand init between the entry test and the loop.
	short                index = 0;
	LHScriptCommandX<T>* tableCommand = Commands;
	while (Commands[index].name)
	{
		if (!LHStringOps<T>::strcmp(word, tableCommand->name))
			return index + 1;
		index++;
		tableCommand = &Commands[index];
	}
	if (commands)
	{
		short hostIndex = 0;
		while (commands[hostIndex].name)
		{
			if (!LHStringOps<T>::strcmp(word, commands[hostIndex].name))
				return -1 - hostIndex;
			hostIndex++;
		}
	}
	if (!FindVariable(word))
		return 0;
	return 30;
}

// BW1W120 007e8cb0 BW1M100 101533a0 LHScriptX<c>::DestroyVariables(void)
template <class T> void LHScriptX<T>::DestroyVariables()
{
	LHScriptVariable<T>* variable = variables;
	if (variable)
	{
		LHScriptVariable<T>* next;
		do
		{
			if (variable->name)
				delete variable->name;
			switch (variable->type)
			{
			case 1:
				if (variable->value)
					delete (T*)variable->value;
				break;
			}
			next = variable->next;
			delete variable;
			variable = next;
		} while (next);
	}
	variables = NULL;
}

// BW1W120 007e8d10 LHScriptX<c>::FindVariable(char*)
template <class T> LHScriptVariable<T>* LHScriptX<T>::FindVariable(T* name)
{
	LHScriptVariable<T>* variable;
	if (!*name)
		goto fail;
	variable = variables;
	if (!variable)
		goto fail;
	while (1)
	{
		if (!LHStringOps<T>::strcmp(name, variable->name))
			break;
		variable = variable->next;
		if (!variable)
			goto fail;
	}
	return variable;
fail:
	return NULL;
}

// BW1W120 007e9910 LHScriptX<c>::CommandIf(char*, char*, char*)
// Evaluates "value1 <condition> value2" and pushes the result on the if stack.
template <class T> LH_RETURN LHScriptX<T>::CommandIf(T* value1, T* condition, T* value2)
{
	unsigned char conditionIndex = 0;
	long          condition1;
	long          condition2;

	if (NamesToCondition[0])
	{
		T** name = NamesToCondition;
		while (1)
		{
			if (!LHStringOps<T>::strcmp(*name, condition))
				break;
			conditionIndex++;
			name = &NamesToCondition[conditionIndex];
			if (!NamesToCondition[conditionIndex])
				break;
		}
	}
	if (!NamesToCondition[conditionIndex])
		return LH_ERROR;
	if (GetConditionValue(value1, &condition1))
		return LH_ERROR;
	if (GetConditionValue(value2, &condition2))
		return LH_ERROR;
	ifLevel++;
	if ((unsigned long)ifLevel >= 20)
		return LH_ERROR;
	ifConditionStack[ifLevel] = GetConditionState(condition1, conditionIndex, condition2);
	return LH_OK;
}

// BW1W120 007e9a10 LHScriptX<c>::CreateVariable(long, LHScriptPramX<c>*)
// command 23 = SLONG (number), 24 = FLOAT, 25 = CBYTE (string).
template <class T> LH_RETURN LHScriptX<T>::CreateVariable(long command, LHScriptPramX<T>* pram)
{
#line 1032
	LHScriptVariable<T>* variable = new (__FILE__, __LINE__) LHScriptVariable<T>;
	if (variable)
	{
		memset(variable, 0, sizeof(LHScriptVariable<T>));
#line 1035
		T* name = (T*)operator new(sizeof(T) * (LHStringOps<T>::strlen(pram->text[0]) + 1), __FILE__, __LINE__);
		variable->name = name;
		if (name)
		{
			LHStringOps<T>::strcpy(name, pram->text[0]);
			switch (command)
			{
			case 23:
				variable->type = 0;
				break;
			case 24:
				variable->type = 2;
				break;
			case 25:
				variable->type = 1;
				break;
			}
			if (variables)
				variable->next = variables;
			variables = variable;
			return LH_OK;
		}
		delete variable;
	}
	return LH_ERROR;
}

// BW1W120 007e9ca0 LHScriptX<c>::GetConditionValue(char*, long*)
// Resolves a condition operand: numeric literal, built-in condition name,
// or a host condition resolved through the condition callback.
template <class T> LH_RETURN LHScriptX<T>::GetConditionValue(T* name, long* value)
{
	if (LHStringOps<T>::isdigit(*name) || *name == '-')
	{
		*value = LHStringOps<T>::atoi(name);
		return LH_OK;
	}
	long index = 0;
	T**  names;
	long hostIndex;
	if (Conditions[0])
	{
		T** current = Conditions;
		T** walk = Conditions;
		while (LHStringOps<T>::strcmp(*current, name))
		{
			T* next = walk[1];
			walk++;
			index++;
			current = walk;
			if (!next)
				goto search_host;
		}
		switch (index)
		{
		case 0: // MAX_DEPTH
			*value = g_lhScreen.MaxDepth();
			return LH_OK;
		case 1:
			*value = LH_OK;
			return LH_OK;
		case 2:
			*value = LH_FAIL;
			return LH_OK;
		case 3:
			*value = LH_ERROR;
			return LH_OK;
		case 4:
			*value = LH_NO_MEMORY;
			return LH_OK;
		default:
			return LH_OK;
		}
	}
search_host:
	names = conditionNames;
	if (!names)
		goto fail;
	hostIndex = 0;
	if (!names[0])
		goto fail;
	while (LHStringOps<T>::strcmp(names[hostIndex], name))
	{
		names = conditionNames;
		hostIndex++;
		if (!names[hostIndex])
			goto fail;
	}
	return conditionCallback(hostIndex, value);
fail:
	return LH_ERROR;
}

// BW1W120 007e9e00 LHScriptX<c>::GetConditionState(long, unsigned char, long)
// Applies the comparison operator (index into NamesToCondition).
template <class T> char LHScriptX<T>::GetConditionState(long value1, unsigned char condition, long value2)
{
	switch (condition)
	{
	case 0: // =
	case 1: // ==
		return value1 == value2;
	case 2: // <>
	case 3: // !=
		return value1 != value2;
	case 4: // <
		return value1 < value2;
	case 5: // >
		return value1 > value2;
	case 6: // <=
		return value1 <= value2;
	case 7: // >=
		return value1 >= value2;
	default:
		return 0;
	}
}

// BW1W120 007e6b70 bodge_to_force_compilation_of_versions(void)
// Forces the compiler to instantiate every member of both template versions.
void bodge_to_force_compilation_of_versions()
{
	LHScriptX<char>           scriptC;
	LHScriptX<wchar_t>        scriptW;
	LHScriptCommandX<char>    commandC;
	LHScriptCommandX<wchar_t> commandW;
	LHReleasedOSFile          file;

	scriptC.Load(NULL, (long*)NULL);
	scriptC.Load(NULL, (LHScriptCommandX<char>*)NULL, NULL, (char**)NULL, NULL, NULL);
	scriptC.Load(NULL, (LHScriptCommandX<char>*)NULL, NULL, (long*)NULL);
	scriptC.Load(NULL, (char**)NULL, NULL, (long*)NULL);
	scriptC.SetVariables(NULL, NULL, NULL);
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

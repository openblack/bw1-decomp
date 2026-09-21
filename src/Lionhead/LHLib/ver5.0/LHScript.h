#ifndef BW1_DECOMP_LH_SCRIPT_INCLUDED_H
#define BW1_DECOMP_LH_SCRIPT_INCLUDED_H

#include "LHReturn.h"

// Forward Declares

class LHOSFile;

template <class T> struct LHScriptCommandX
{
	T*   name;
	char params[12];

	// BW1W120 007e7fb0 BW1M119 01152920 (LHCombined Release)
	T* GetCommandAsText(T* text);
};

template <class T> struct LHScriptPramX
{
	T     text[12][2048];
	long  number[12];
	float flt[12]; // TODO: fabricated member name
};

// The front-end resource bank filled by the LOAD_BMP/LOAD_SPRITES/LOAD_DATA
// commands and read back by the front end. 100 slots embedded in LHSys at +0x924.
// TODO: fabricated names; real home unknown.
struct LHScriptResource
{
	long  type; /* 1 = raw data, 2 = BMP sprite, 3 = sprite list */
	void* data;
	char  name[256];
};

template <class T> struct LHScriptVariable
{
	long                 type;  /* 0x0 0 = number, 1 = string, 2 = float */
	T*                   name;  /* 0x4 */
	long                 value; /* 0x8 long / T* / float depending on type */
	LHScriptVariable<T>* next;  /* 0xc */
};

// Text script engine: loads a plain-text script file and executes it line by
// line. The host registers a command table.
template <class T> class LHScriptX
{
public:
	long                 ifLevel;
	long                 lineNumber;
	char                 ifConditionStack[20];
	LHScriptVariable<T>* variables;
	LHScriptCommandX<T>* commands;
	LH_RETURN(__cdecl* commandCallback)(long command, LHScriptPramX<T>* pram);
	T** conditionNames;
	LH_RETURN(__cdecl* conditionCallback)(long condition, long* value);

	// Built-in front-end setup command table: BW1W120 00c343c0 (<c>), 00c345b0 (<w>).
	static LHScriptCommandX<T> Commands[];
	// Built-in condition names: BW1W120 00c347a0 (<c>), 00c347b8 (<w>).
	static T* Conditions[];
	// Comparison operator tokens: BW1W120 00c347d0 (<c>), 00c347f4 (<w>).
	static T* NamesToCondition[];
	// Shared parameter buffer: BW1W120 00fb9d40 (<c>), 00fadce0 (<w>).
	static LHScriptPramX<T> Pram;

	// Non-virtual methods

	// BW1W120 007e7380 BW1M119 011531f0 (LHCombined Release)
	LH_RETURN Load(char* file_name, long* param_2);
	// BW1W120 007e72c0 BW1M119 01152e90 (LHCombined Release)
	LH_RETURN Load(char* file_name, LHScriptCommandX<T>*                                new_commands,
	               LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_4);
	// BW1W120 007e7260
	LH_RETURN Load(char* file_name, T** condition_names, LH_RETURN(__cdecl* condition_callback)(long, long*),
	               long* param_4);
	// BW1W120 007e7320 BW1M119 01153030 (LHCombined Release)
	LH_RETURN Load(char* file_name, LHScriptCommandX<T>*                              new_commands,
	               LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), T** condition_names,
	               LH_RETURN(__cdecl* condition_callback)(long, long*), long*         param_6);
	// BW1W120 007e73d0 BW1M119 01152c40 (LHCombined Release)
	LH_RETURN SetVariables(LHScriptCommandX<T>* new_commands,
	                       LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_3);
	// BW1W120 007e7400 BW1M119 01152ac0 (LHCombined Release)
	bool LoadOneLine(LHOSFile& file, T* line);
	// BW1W120 007e74c0 BW1M119 01151360 (LHCombined Release)
	bool DontProcessNumLines(LHOSFile& file, T* line, unsigned long num_lines);
	// BW1W120 007e7530 BW1M119 01151460 (LHCombined Release)
	void InitIfLevel();
	// BW1W120 007e7540 BW1M119 011514a0 (LHCombined Release)
	LH_RETURN ScanLine(T* line);
	// BW1W120 007e8170 BW1M119 01154080 (LHCombined Release)
	LH_RETURN LoadFile(char* file_name, long* param_2);
	// BW1W120 007e8240 BW1M119 01151940 (LHCombined Release)
	LH_RETURN ProcessCommand(long command, LHScriptPramX<T>* pram);
	// BW1W120 007e8a90 BW1M119 01151f20 (LHCombined Release)
	long GetNextWord(T** cursor, T* word, unsigned char* end_of_line);
	// BW1W120 007e8cb0 BW1M119 011543d0 (LHCombined Release)
	void DestroyVariables();
	// BW1W120 007e8d10 BW1M119 011526d0 (LHCombined Release)
	LHScriptVariable<T>* FindVariable(T* name);
	// BW1W120 007e9910 BW1M119 01152310 (LHCombined Release)
	LH_RETURN CommandIf(T* value1, T* condition, T* value2);
	// BW1W120 007e9a10 BW1M119 01152570 (LHCombined Release)
	LH_RETURN CreateVariable(long command, LHScriptPramX<T>* pram);
	// BW1W120 007e9ad0 BW1M119 011c98f8 (LHCombined Release)
	// no-op for <c>; the <w> specialisation skips the UTF-16 byte-order mark
	void PostFileOpenStuff(LHOSFile& file);
	// BW1W120 007e9ca0 BW1M119 01154220 (LHCombined Release)
	LH_RETURN GetConditionValue(T* name, long* value);
	// BW1W120 007e9e00 BW1M119 01152450 (LHCombined Release)
	char GetConditionState(long value1, unsigned char condition, long value2);
};

// BW1W120 007e6b70
void bodge_to_force_compilation_of_versions();

#endif /* BW1_DECOMP_LH_SCRIPT_INCLUDED_H */

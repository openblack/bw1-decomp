#ifndef BW1_DECOMP_LH_SCRIPT_INCLUDED_H
#define BW1_DECOMP_LH_SCRIPT_INCLUDED_H

#include "LHReturn.h"

// Forward Declares

class LHOSFile;

template <class T> struct LHScriptCommandX
{
	T*   name;
	char params[12];

	// BW1W120 007e7fb0 LHScriptCommandX<c>::GetCommandAsText(char*)
	T* GetCommandAsText(T* text);
};

template <class T> struct LHScriptPramX
{
	T     text[12][2048];
	long  number[12];
	float flt[12]; // TODO: fabricated member name
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

	// BW1W120 00c343c0 (<c>) 00c345b0 (<w>) built-in front-end setup command table
	static LHScriptCommandX<T> Commands[];
	// BW1W120 00c347a0 (<c>) 00c347b8 (<w>) built-in condition names
	static T* Conditions[];
	// BW1W120 00c347d0 (<c>) 00c347f4 (<w>) comparison operator tokens
	static T* NamesToCondition[];
	// BW1W120 00fb9d40 (<c>) 00fadce0 (<w>) shared parameter buffer
	static LHScriptPramX<T> Pram;

	// Non-virtual methods

	// BW1W120 007e7380 BW1M100 1061e4c8 LHScriptX<c>::Load(char*, long*)
	LH_RETURN Load(char* file_name, long* param_2);
	// BW1W120 007e72c0 BW1M100 1061e38c LHScriptX<c>::Load(char*, LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), long*)
	LH_RETURN Load(char* file_name, LHScriptCommandX<T>*                                new_commands,
	               LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_4);
	// BW1W120 007e7260 LHScriptX<c>::Load(char*, char**, LH_RETURN (*)(long, long*), char**)
	LH_RETURN Load(char* file_name, T** condition_names, LH_RETURN(__cdecl* condition_callback)(long, long*),
	               long* param_4);
	// BW1W120 007e7320 LHScriptX<c>::Load(char*, LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), char**, LH_RETURN (*)(long, long*), long*)
	LH_RETURN Load(char* file_name, LHScriptCommandX<T>*                              new_commands,
	               LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), T** condition_names,
	               LH_RETURN(__cdecl* condition_callback)(long, long*), long*         param_6);
	// BW1W120 007e73d0 LHScriptX<c>::SetVariables(LHScriptCommandX<c>*, LH_RETURN (*)(long, LHScriptPramX<c>*), long*)
	LH_RETURN SetVariables(LHScriptCommandX<T>* new_commands,
	                       LH_RETURN(__cdecl* command_callback)(long, LHScriptPramX<T>*), long* param_3);
	// BW1W120 007e7400 BW1M100 1061cd3c LHScriptX<c>::LoadOneLine(LHReleasedOSFile&, char*)
	bool LoadOneLine(LHOSFile& file, T* line);
	// BW1W120 007e74c0 LHScriptX<c>::DontProcessNumLines(LHReleasedOSFile&, char*, unsigned long)
	bool DontProcessNumLines(LHOSFile& file, T* line, unsigned long num_lines);
	// BW1W120 007e7530 LHScriptX<c>::InitIfLevel(void)
	void InitIfLevel();
	// BW1W120 007e7540 BW1M100 10150830 LHScriptX<c>::ScanLine(char*)
	LH_RETURN ScanLine(T* line);
	// BW1W120 007e8170 BW1M100 10153040 LHScriptX<c>::LoadFile(char*, long*)
	LH_RETURN LoadFile(char* file_name, long* param_2);
	// BW1W120 007e8240 LHScriptX<c>::ProcessCommand(long, LHScriptPramX<c>*)
	LH_RETURN ProcessCommand(long command, LHScriptPramX<T>* pram);
	// BW1W120 007e8a90 LHScriptX<c>::GetNextWord(char**, char*, unsigned char*)
	long GetNextWord(T** cursor, T* word, unsigned char* end_of_line);
	// BW1W120 007e8cb0 BW1M100 101533a0 LHScriptX<c>::DestroyVariables(void)
	void DestroyVariables();
	// BW1W120 007e8d10 LHScriptX<c>::FindVariable(char*)
	LHScriptVariable<T>* FindVariable(T* name);
	// BW1W120 007e9910 LHScriptX<c>::CommandIf(char*, char*, char*)
	LH_RETURN CommandIf(T* value1, T* condition, T* value2);
	// BW1W120 007e9a10 LHScriptX<c>::CreateVariable(long, LHScriptPramX<c>*)
	LH_RETURN CreateVariable(long command, LHScriptPramX<T>* pram);
	// BW1W120 007e9ad0 LHScriptX<c>::PostFileOpenStuff(LHReleasedOSFile&)
	// no-op for <c>; the <w> specialisation skips the UTF-16 byte-order mark
	void PostFileOpenStuff(LHOSFile& file);
	// BW1W120 007e9ca0 LHScriptX<c>::GetConditionValue(char*, long*)
	LH_RETURN GetConditionValue(T* name, long* value);
	// BW1W120 007e9e00 LHScriptX<c>::GetConditionState(long, unsigned char, long)
	char GetConditionState(long value1, unsigned char condition, long value2);
};

// BW1W120 007e6b70 bodge_to_force_compilation_of_versions(void)
void bodge_to_force_compilation_of_versions();

#endif /* BW1_DECOMP_LH_SCRIPT_INCLUDED_H */

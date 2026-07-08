#ifndef BW1_DECOMP_LH_SCRIPT_INCLUDED_H
#define BW1_DECOMP_LH_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class LHReleasedOSFile;

struct LHScriptX_c_
{
	int                  field_0x0;
	int                  field_0x4;
	char                 field_0x8[0x14];
	int*                 field_0x1c;
	LHScriptCommandX_c_* command; /* 0x20 */
	FuncPtr(name = 'LHScriptX_c___callback', call_type = '__cdecl', result = 'enum LH_RETURN',
	        args = [ 'int', 'struct LHScriptPramX_c_*' ], arg_labels = [ 'param_0', 'param_1' ],
	        decorated_name = 'LHScriptX_c___callback', indirection_level = 1) callback;
	int field_0x28;
	int field_0x2c;

	// Non-virtual methods

	// BW1W120 007e72c0 BW1M100 1061e38c LHScriptX<c>::Load(char *, LHScriptCommandX<c> *, LH_RETURN (*)(long, LHScriptPramX<c> *), long *)
	void Load(const char* path, LHScriptCommandX_c_* command, LH_RETURN(__cdecl*)(int, LHScriptPramX_c_*) callback,
	          long* param_4);
	// BW1W120 007e7400 BW1M100 1061cd3c LHScriptX<c>::LoadOneLine(LHReleasedOSFile &, char *)
	bool LoadOneLine(LHReleasedOSFile* file, char* line);
	// BW1W120 007e7540 BW1M100 10150830 LHScriptX<c>::ScanLine(char *)
	uint32_t ScanLine(char* line);
	// BW1W120 007e8170 BW1M100 10153040 LHScriptX<c>::LoadFile(char *, long *)
	uint32_t LoadFile(const char* path, long* param_2);
	// BW1W120 007e8cb0 BW1M100 101533a0 LHScriptX<c>::DestroyVariables(void)
	void DestroyVariables();
};

#endif /* BW1_DECOMP_LH_SCRIPT_INCLUDED_H */

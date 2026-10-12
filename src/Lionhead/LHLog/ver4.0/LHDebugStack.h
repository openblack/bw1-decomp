#ifndef BW1_DECOMP_LH_DEBUG_STACK_INCLUDED_H
#define BW1_DECOMP_LH_DEBUG_STACK_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t */

#include "LHLogExport.h"

struct HINSTANCE__;
struct _EXCEPTION_POINTERS;

#define LH_DEBUG_STACK_MAX_FUNCTIONS      32
#define LH_DEBUG_STACK_FUNCTION_NAME_SIZE 512

class LH_LOG_API LHDebugStack
{
public:
	// BW1W120 10002160 BW1M119 01171c20 (LHCombined Release)
	static int Initialise();
	// BW1W120 10002250 BW1M119 01171be0 (LHCombined Release)
	static void CloseDown();
	// BW1W120 10002280 BW1M119 01171960 (LHCombined Release)
	static int GetFunctionName(HINSTANCE__* instance, void* address, char* name);
	// BW1W120 10002330 BW1M119 01171890 (LHCombined Release)
	static int GetFunctionNameThatCalledThisFunction(HINSTANCE__* instance, char* name);

	// BW1W120 100024d0 BW1M119 01171b80 (LHCombined Release)
	void UpdateStackInformation();

	// BW1W120 100011b0 BW1M119 inlined
	uint8_t GetFunctionCount() const { return FunctionCount; }
	// BW1W120 100011c0 BW1M119 inlined
	const char* GetPreviousFunctionName() const { return FunctionCount > 1 ? FunctionNames[1] : NULL; }
	// BW1W120 100011e0 BW1M119 inlined
	const char* GetFunctionName(uint8_t index) const { return index < FunctionCount ? FunctionNames[index] : NULL; }

private:
	// BW1W120 10002380 BW1M119 01171a40 (LHCombined Release)
	int UpdateStack(_EXCEPTION_POINTERS* exception);

#ifdef _LH_LOG_LIB_
	// BW1W120 10022df0 BW1M119 0138e2ca (LHCombined Release)
	static short BeenInitialisedCount;
#endif

	char    FunctionNames[LH_DEBUG_STACK_MAX_FUNCTIONS][LH_DEBUG_STACK_FUNCTION_NAME_SIZE]; /* 0x0 */
	uint8_t FunctionCount;                                                                  /* 0x4000 */
};

// BW1W120 10002550 BW1M119 01171720 (LHCombined Release)
LH_LOG_API char* GetCurrentStackString();

#endif /* BW1_DECOMP_LH_DEBUG_STACK_INCLUDED_H */

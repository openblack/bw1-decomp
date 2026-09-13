#include "PCMain.h"
#include "Base.h"

// The heap checkpoint is constructed and attached to ObjectHeap by start_system.
HeapStore* Base::ObjectHeapStore;

#include "ColourConstants.h" /* For White */

bool ARGS_FORCEINETCONN;
bool ARGS_NOINETCONN;

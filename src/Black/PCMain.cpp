#include "PCMain.h"
#include "GameTimeConstants.h"
#include "Base.h"

// The heap checkpoint is constructed and attached to ObjectHeap by start_system.
HeapStore* Base::ObjectHeapStore;

#include "ColourConstants.h" /* For White */

bool ARGS_FORCEINETCONN;
bool ARGS_NOINETCONN;
bool Dat_00D46AC1;
bool ARGS_NOLOADMUSIC;
bool QuittingMultiplayerGame;

#include "Global.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

// TODO: Current splits place this Game-startup object inside Furniture's BSS range.
// Keep its semantic owner here; reconcile the original TU boundary before source linkage.
GGlobal GGlobal::Global;

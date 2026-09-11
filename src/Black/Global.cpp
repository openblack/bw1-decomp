#include "Global.h"

// TODO: Current splits place this Game-startup object inside Furniture's BSS range.
// Keep its semantic owner here; reconcile the original TU boundary before source linkage.
GGlobal GGlobal::Global;

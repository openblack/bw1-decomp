#include "Global.h"
#include <string> /* For the std::basic_string instantiations */

// TODO: Current splits place this Game-startup object inside Furniture's BSS range.
// Keep its semantic owner here; reconcile the original TU boundary before source linkage.
GGlobal GGlobal::Global;

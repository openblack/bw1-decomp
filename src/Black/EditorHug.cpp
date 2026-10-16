#include "EditorHug.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#if !defined(VERSION_BW1WCI) /* Creature Isle's build of this unit has no <string> initializers */
#include "StdStringInitializers.h"
#endif

std::map<MapCoords, int> EditorHug::DebugCells;

void EditorHug::ClickFunction(int param_1, int param_2, int param_3) {}

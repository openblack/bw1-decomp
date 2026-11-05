#include "JCMisc.h"

#include "ColourConstants.h" /* For White */
#include "Intro.h"

FlyingObjects FlyingObjects::g_list[FLYING_OBJECTS_LIST_SIZE];
bool32_t      Intro::HandAnimFinished;
#ifdef VERSION_BW1WCI
PetitNavire* PetitNavire::Current;
AndyEye*     AndyEye::Current;
#endif

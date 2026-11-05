#include "GameTimeConstants.h"
#include "SoundGuidance.h"

#include "ColourConstants.h" /* For White */
#include "GameThing.h"

GGuidance::~GGuidance() {}

uint32_t GameThing::GetSampleForAttack()
{
	return 0;
}

uint32_t GameThing::GetGuidanceResourceType()
{
	return 0;
}

float GGuidance::GetNonInterpedHeartBeatPulseValue()
{
	return NonInterpedHeartBeatPulseValue;
}

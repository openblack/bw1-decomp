#include "GameTimeConstants.h"
#include "SoundGuidance.h"

#include "ColourConstants.h" /* For White */
#include "Animal.h"
#include "DeadTree.h"
#include "GameThing.h"
#include "Pot.h"
#include "Tree.h"

GGuidance::~GGuidance() {}

uint32_t GameThing::GetSampleForAttack()
{
	return 0;
}

uint32_t GameThing::GetGuidanceResourceType()
{
	return RESOURCE_RAIN_TYPE_NONE;
}

uint32_t Pot::GetGuidanceResourceType()
{
	if (GetResourceType() == RESOURCE_TYPE_FOOD)
	{
		return RESOURCE_RAIN_TYPE_FOOD;
	}
	if (GetResourceType() == RESOURCE_TYPE_WOOD)
	{
		return RESOURCE_RAIN_TYPE_WOOD;
	}
	return RESOURCE_RAIN_TYPE_NONE;
}

uint32_t Animal::GetGuidanceResourceType()
{
	return RESOURCE_RAIN_TYPE_FOOD;
}

uint32_t Tree::GetGuidanceResourceType()
{
	return RESOURCE_RAIN_TYPE_WOOD;
}

uint32_t DeadTree::GetGuidanceResourceType()
{
	return RESOURCE_RAIN_TYPE_WOOD;
}

float GGuidance::GetNonInterpedHeartBeatPulseValue()
{
	return NonInterpedHeartBeatPulseValue;
}

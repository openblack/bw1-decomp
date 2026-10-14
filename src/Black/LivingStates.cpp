#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Living.h"

#include "LivingInfo.h"
#include "MapCoords.h"

bool32_t Living::SetupMoveToPos(const MapCoords& coord, uint8_t end_state)
{
	uint8_t state = ((const GLivingInfo*)info)->move_to_state;
	if (Flags & GAME_THING_WITH_POS_FLAG_ON_STRUCTURE)
	{
		state = VILLAGER_STATE_MOVE_ON_STRUCTURE;
	}
	if (SetCurrentAndDestinationState(state, end_state) == LIVING_SET_STATE_SUCCESS)
	{
		SetupMobileMoveToPos(coord);
		return true;
	}
	return false;
}

int Living::SetTopState(uint8_t state)
{
	int result = LIVING_SET_STATE_EXIT_REFUSED;
	if (CallExitStateFunction(state) != 0)
	{
		int anim = CallOutofAnimationFunction(state);
		if (CallEntryStateFunction(state) != 0)
		{
			SetStateSpeed();
			if (anim != -1)
			{
				SetAnim(anim, 1);
			}
			else
			{
				SetStateAnim();
				anim = CallIntoAnimationFunction(state);
				if (anim != -1)
				{
					SetAnim(anim, 1);
				}
			}
			result = LIVING_SET_STATE_SUCCESS;
		}
		else
		{
			result = LIVING_SET_STATE_ENTRY_REFUSED;
		}
	}
	return result;
}

int Living::SetCurrentAndDestinationState(uint8_t current, uint8_t destination)
{
	if (CallExitStateFunction(destination) != 0)
	{
		int anim = CallOutofAnimationFunction(destination);
		if (CallEntryStateFunction(current, destination) != 0)
		{
			SetStateSpeed();
			if (anim != -1)
			{
				SetAnim(anim, 1);
				return LIVING_SET_STATE_SUCCESS;
			}
			SetStateAnim();
			anim = CallIntoAnimationFunction(destination);
			if (anim != -1)
			{
				SetAnim(anim, 1);
			}
			return LIVING_SET_STATE_SUCCESS;
		}
		return LIVING_SET_STATE_ENTRY_REFUSED;
	}
	return LIVING_SET_STATE_EXIT_REFUSED;
}

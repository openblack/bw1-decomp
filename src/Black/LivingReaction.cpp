#include "Living.h"

#include "LivingInfo.h"
#include "MapCoords.h"

// BW1W120 005f2830 BW1M100 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
bool32_t Living::SetupMoveToPos(const MapCoords& coord, uint8_t end_state)
{
	uint8_t state = ((const GLivingInfo*)info)->move_to_state;
	if (Flags & GAME_THING_WITH_POS_FLAG_ON_STRUCTURE)
	{
		state = VILLAGER_STATE_MOVE_ON_STRUCTURE;
	}
	if (SetCurrentAndDestinationState(state, end_state) == 1)
	{
		SetupMobileMoveToPos(coord);
		return true;
	}
	return false;
}

// BW1W120 005f28e0 BW1M100 10075940 Living::SetTopState(unsigned char)
int Living::SetTopState(uint8_t state)
{
	int result = LIVING_SET_STATE_EXIT_REFUSED;
	if (CallExitStateFunction(state) != 0)
	{
		result = CallOutofAnimationFunction(state);
		if (CallEntryStateFunction(state) != 0)
		{
			SetStateSpeed();
			if (result != -1)
			{
				SetAnim(result, 1);
				return LIVING_SET_STATE_SUCCESS;
			}
			SetStateAnim();
			result = CallIntoAnimationFunction(state);
			if (result != -1)
			{
				SetAnim(result, 1);
			}
			return LIVING_SET_STATE_SUCCESS;
		}
		return LIVING_SET_STATE_ENTRY_REFUSED;
	}
	return result;
}

// BW1W120 005f2980 BW1M100 10076180 Living::SetCurrentAndDestinationState(unsigned char, unsigned char)
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

#include "Living.h"

#include "LivingInfo.h"
#include "MapCoords.h"

// BW1W120 005f2830 BW1M100 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
bool32_t Living::SetupMoveToPos(const MapCoords& coord, uint8_t end_state)
{
	uint8_t state = ((const GLivingInfo*)info)->move_to_state;
	if (field_0x24 & 0x80)
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

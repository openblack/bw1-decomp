#include "HelpProfile.h"

void CameraHelpAccumulator::Reset()
{
	TotalTriggerCount = 0;
	TriggerTimeCount = 0;
	TriggerTimeHead = 0;
	field_0x4 = 0;
	TriggeredThisFrame = 0;
}

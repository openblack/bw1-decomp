#include "HelpProfile.h"

void CameraHelpAccumulator::Reset()
{
    total_trigger_count = 0;
    trigger_time_count = 0;
    trigger_time_head = 0;
    field_0x4 = 0;
    triggered_this_frame = 0;
}

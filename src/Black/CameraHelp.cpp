#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "HelpProfile.h"
#include "CameraHelp.h"

// Defaults verified in the original data and restored by GGame::ClearMap.
// TODO: Current splits attribute these bytes to CameraEditor; fix ownership before source linkage.
float CameraHelp::AutoPitchParam1 = 0.52359879f;
float CameraHelp::AutoPitchParam2 = 75.0f;
int   CameraHelp::EnabledFeatures = CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_ZOOM |
                                    CAMERA_FEATURE_MOVE | CAMERA_FEATURE_DOUBLE_CLICK | CAMERA_FEATURE_ZOOM_LANDSCAPE |
                                    CAMERA_FEATURE_HELP | CAMERA_FEATURE_EDGE_SCROLL;

void CameraHelpAccumulator::Reset()
{
	TotalTriggerCount = 0;
	TriggerTimeCount = 0;
	TriggerTimeHead = 0;
	field_0x4 = 0;
	TriggeredThisFrame = 0;
}

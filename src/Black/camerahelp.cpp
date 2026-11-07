#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "HelpProfile.h"
#include "camerahelp.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F */

// Defaults verified in the original data and restored by GGame::ClearMap.
// TODO: Current splits attribute these bytes to CameraEditor; fix ownership before source linkage.
float CameraHelp::AutoPitch = PI_F / 6;
float CameraHelp::AutoPitchHeight = 75.0f;
int   CameraHelp::EnabledFeatures = CAMERA_FEATURE_NORMAL;

void CameraHelpAccumulator::Reset()
{
	TotalTriggerCount = 0;
	TriggerTimeCount = 0;
	TriggerTimeHead = 0;
	field_0x4 = 0;
	TriggeredThisFrame = 0;
}

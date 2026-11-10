#ifndef BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H
#define BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H

#include <chlasm/Enum.h>        /* For enum GESTURE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_AVI_SEQUENCE */

// Forward Declares

class GInterfaceStatus;
struct LHPoint;
class Object;

class PSysGlobal
{
public:
	// Static data

	// BW1W120 00c02978
	static long CitadelHeartBeamMesh;

	// Static methods

	static void DrawLoop(); // 0068f5e0
	// BW1W120 0068f750 BW1M119 01418710
	static void InitializeOneTimeOnly();
	// BW1W120 0068f590 BW1M119 01091210
	static void GameLoopStart();
	// BW1W120 0068f5b0 BW1M119 01085520
	static void GameLoopEnd();
	// BW1W120 0068f820 BW1M119 014185d0
	static void OnClearMap();
	// BW1W120 00681230 BW1M119 013fe990
	static void ExplodeObjectMesh(Object* object, bool unused);
	// BW1W120 00681260 BW1M119 013fe770
	static void ExplodeObjectMesh(Object* object, const LHPoint& point, float force, float unused,
	                              bool use_second_rule);
	// BW1W120 0068f400 BW1M119 01418cd0
	static void StartCameraShake(LHPoint pos, float radius, float amplitude, float duration);
	// BW1W120 0068f450 BW1M119 01418b70
	static void StartAVISequence(SCRIPT_AVI_SEQUENCE sequence);
	// BW1W120 0068f4f0 BW1M119 01418af0
	static void StopAVISequence(SCRIPT_AVI_SEQUENCE sequence);
	// BW1W120 0068f510 BW1M119 01418a60
	static void FakeGestureOnLandscape(GESTURE_TYPE gesture, const LHPoint& pos, float scale, GInterfaceStatus* status);
};

#endif /* BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H */

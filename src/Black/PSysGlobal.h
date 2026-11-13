#ifndef BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H
#define BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H

#include <chlasm/Enum.h>        /* For enum GESTURE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_AVI_SEQUENCE */

#include <re_common.h> /* For bool32_t */

// Forward Declares

class GInterfaceStatus;
struct LHPoint;
struct MapCoords;
class Object;

class PSysGlobal
{
public:
	enum PICKUP_TYPE
	{
		PICKUP_TYPE_FOOD = 0,
		PICKUP_TYPE_POISONED_FOOD = 1,
		PICKUP_TYPE_WOOD = 2
	};

	// Static data

	// BW1W120 00c02978
	static long CitadelHeartBeamMesh;
	// BW1W120 00c0299c
	static bool32_t DrawParticles;
	// BW1W120 00c029a0
	static bool32_t DrawSprites;
	// BW1W120 00c029a4
	static bool32_t DrawObjects;
	// BW1W120 00c029a8
	static bool32_t RotateSprites;
	// BW1W120 00c029ac
	static bool32_t DrawManagers;
	// BW1W120 00c029b0
	static bool32_t DrawChainTriangles;
	// BW1W120 00c029b4
	static bool32_t DrawChains;
	// BW1W120 00c029b8
	static bool32_t AnimateUVs;
	// BW1W120 00c029bc
	static bool32_t ZSortObjects;
	// BW1W120 00c029c0
	static bool32_t LightMeshesWithSun;
	// BW1W120 00c029c4
	static bool32_t FaceCameraVolBlendMeshes;
	// BW1W120 00c029c8
	static bool32_t DrawAtoms;
	// BW1W120 00c029cc
	static bool32_t InterpolateAtoms;
	// BW1W120 00d4ec00
	static bool32_t WireframeMeshes;
	// BW1W120 00d4ec08
	static bool32_t FadeMeshEdges;
	// BW1W120 00d4ec14
	static bool32_t ChainSharpJoints;
	// BW1W120 00d4ec1c
	static bool32_t ChainUseUpVector;

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
	// BW1W120 0068f8c0 BW1M119 014184d0
	static void StartMultiPickup(GInterfaceStatus* status, const MapCoords& pos, PICKUP_TYPE type);
	// BW1W120 0068f930 BW1M119 01418330
	static void SetMultiPickUpFraction(GInterfaceStatus* status, PICKUP_TYPE type, float fraction);
	// BW1W120 0068fa50 BW1M119 01418240
	static void StopMultiPickup(GInterfaceStatus* status);
	// BW1W120 0068fae0 BW1M119 01418160
	static void StartMultiPutdown(GInterfaceStatus* status, RESOURCE_TYPE type, bool poisoned, float scale);
};

#endif /* BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H */

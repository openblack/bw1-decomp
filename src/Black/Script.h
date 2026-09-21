#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum MAGIC_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_INTERFACE_LEVEL, enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h"      /* For struct Base */
#include "BaseInfo.h"  /* For struct GBaseInfo */
#include "ScriptDLL.h" /* For enum VMScriptType, enum VMType */

enum SCRIPT_FEATURE_COMMANDS
{
	SCRIPT_FEATURE_COMMANDS_0 = 0x0,
	_SCRIPT_FEATURE_COMMANDS_COUNT = 0x1
};

// Forward Declares

class Abode;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;

struct ScriptObjectDispatch
{
	void*(__cdecl* FindAtPos)(const MapCoords&, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                          SCRIPT_OBJECT_TYPE, uint32_t); /* 0x00 */
	void*(__cdecl* FindNearPos)(const MapCoords&, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                            SCRIPT_OBJECT_TYPE, uint32_t, float); /* 0x04 */
	void*(__cdecl* FindIn)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE, uint32_t); /* 0x08 */
	void*(__cdecl* FindInNear)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                           SCRIPT_OBJECT_TYPE, uint32_t, const MapCoords&, float); /* 0x0c */
	void*(__cdecl* FindInNotNear)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                              SCRIPT_OBJECT_TYPE, uint32_t, const MapCoords&, float); /* 0x10 */
	void*(__cdecl* Loop)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                     SCRIPT_OBJECT_TYPE, uint32_t); /* 0x14 */
};

class GScript : public Base
{
public:
	// BW1W120 006ebea0 BW1M119 014dce80
	uint32_t Save(GameOSFile& file);
	// BW1W120 006ec270 BW1M119 014dc700
	uint32_t Load(GameOSFile& file);
	// BW1W120 006eb710 BW1M119 014de060
	// RET 4 and script-object ECX at callers establish a member, not a static function.
	// TODO: Existing int result retained pending a complete task-ID caller audit.
	int StartScript(char* name);
	// BW1W120 00d95c10
	static ScriptDLL* g_scriptDLL;
	// TODO: Original name unknown; Reset/LoadBinary own this loaded-binary flag.
	// BW1W120 00d95c0c
	static bool32_t Dat_00D95C0C;
	// BW1W120 00c0c740
	static ScriptObjectDispatch g_scriptObjectDispatch[SCRIPT_OBJECT_TYPE_LAST - 1];

	uint32_t CountDownTimerEnabled;   // +08
	uint32_t CountDownTimerRemaining; // +0c
	uint32_t CountDownTimerVisible;   // +10
	uint8_t  field_0x14[0x2c];
	LHPoint  FocusPos; /* 0x40 */
	uint8_t  field_0x4c[0x70];

	// Override methods

	// BW1W120 006eb150 BW1M119 014ddd70
	virtual ~GScript();

	// Static methods

	// BW1W120 006eb100 BW1M119 014de810
	static GScript* Create();
	// BW1W120 006ec780 BW1M119 014dc4f0
	static void StopHelpScripts();
	// BW1W120 0070bd60 BW1M119 01506140
	static GameThing* CastSpellAtPos(const MapCoords& position, MAGIC_TYPE type, const MapCoords& source,
	                                 GameThing* owner, int param_5, float param_6, float param_7, float param_8,
	                                 const LHPoint& point);
	// BW1W120 0070b220 BW1M119 01503f10
	static void SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL level);
	// BW1W120 006ec8f0 BW1M119 014e2f90
	static void SetCameraPos();
	// BW1W120 006ec9a0 BW1M119 014e2e30
	static void SetCameraFocus();
	// BW1W120 006ecaa0 BW1M119 014e2cc0
	static void MoveCameraPos();
	// BW1W120 006ecba0 BW1M119 014e2b50
	static void MoveCameraFocus();
	// BW1W120 006ecff0 BW1M119 010335c0
	static void GetCameraPos();
	// BW1W120 006ed0b0 BW1M119 014e18a0
	static void GetCameraFocus();
	// BW1W120 006f7d60 BW1M119 014ffe40
	static void RunText();
	// BW1W120 006f7e40 BW1M119 014ffcd0
	static void TempText();
	// BW1W120 006f8060 BW1M119 01022e50
	static void IsPosFieldOfView();
	// BW1W120 006f8130 BW1M119 0102e650
	static void IsGameThingFieldOfView();
	// BW1W120 006f8260 BW1M119 014ff9a0
	static void TextRead();
	// BW1W120 0070aeb0 BW1M119 01039f90
	static void GameThingClicked();
	// BW1W120 00710410 BW1M119 0150ca50
	static void SpiritEject();
	// BW1W120 00710490 BW1M119 0150c930
	static void SpiritHome();
	// BW1W120 00710510 BW1M119 0150c7e0
	static void SpiritPointAtPos();
	// BW1W120 007105b0 BW1M119 0150c6f0
	static void SpiritPointAtGameThing();
	// BW1W120 006ecca0 BW1M119 014e2a00
	static void StartCameraControl();
	// BW1W120 006ecef0 BW1M119 014e2750
	static void EndCameraControl();
	// BW1W120 006ed170 BW1M119 010148d0
	static void HasCameraArrived();
	// BW1W120 006ed200 BW1M119 014e0f10
	static void ConvertCameraEditorPosition();
	// BW1W120 006ed270 BW1M119 014e0e50
	static void ConvertCameraEditorFocus();
	// BW1W120 006ed2e0 BW1M119 014e0d60
	static void CreateDualCamera();
	// BW1W120 006ed370 BW1M119 014e0c40
	static void UpdateDualCamera();
	// BW1W120 006ed410 BW1M119 014e0b70
	static void ReleaseDualCamera();
	// BW1W120 006ed460 BW1M119 014e0a90
	static void CreateCameraBetweenObjectAndPoint();
	// BW1W120 006ed500 BW1M119 014e0870
	static void SetCameraToFaceObject();
	// BW1W120 006ed600 BW1M119 014e0640
	static void MoveCameraToFaceObject();
	// BW1W120 006ed7f0 BW1M119 014e0530
	static void SetCameraPath();
	// BW1W120 006ed890 BW1M119 014e03a0
	static void SetCameraZone();
	// BW1W120 006ed990 BW1M119 014e02d0
	static void GetCameraInclusionDistance();
	// BW1W120 006ed9b0 BW1M119 014e0170
	static void SetCameraPosFocFollow();
	// BW1W120 006eda80 BW1M119 014e0030
	static void SetCameraThingFollow();
	// BW1W120 006edb40 BW1M119 014dff00
	static void SetCameraFocusFollow();
	// BW1W120 006edc00 BW1M119 014dfd90
	static void FocusFollowComputerPlayer();
	// BW1W120 006edcd0 BW1M119 014dfc20
	static void PositionFollowComputerPlayer();
	// BW1W120 006edda0 BW1M119 014dfac0
	static void MoveCameraPosFocFollow();
	// BW1W120 006ede70 BW1M119 014df990
	static void MoveCameraThingFollow();
	// BW1W120 006edf30 BW1M119 014df730
	static void MoveCameraFocusFollow();
	// BW1W120 006edff0 BW1M119 014df5a0
	static void SetFollowCameraProperties();
	// BW1W120 006ee0f0 BW1M119 014df4b0
	static void ShakeCamera();
	// BW1W120 006ee1a0 BW1M119 014df340
	static void SetFixedCamRotation();
	// BW1W120 006ee280 BW1M119 014df280
	static void SetCameraLens();
	// BW1W120 006ee2e0 BW1M119 014df1d0
	static void ResetCameraLens();
	// BW1W120 006ee330 BW1M119 014df140
	static void StoreCameraDetails();
	// BW1W120 006ee390 BW1M119 014df0b0
	static void RestoreCameraDetails();
	// BW1W120 006ee3c0 BW1M119 014def90
	static void SetCameraPosFocLens();
	// BW1W120 006ee4b0 BW1M119 014dec80
	static void MoveCameraPosFocLens();
	// BW1W120 006ee630 BW1M119 014debd0
	static void GetStoredCameraPosition();
	// BW1W120 006ee6a0 BW1M119 014deb30
	static void GetStoredCameraFocus();
	// BW1W120 006ee710 BW1M119 014de930
	static void GetFacingCameraPosition();
	// BW1W120 006ee840 BW1M119 014e41c0
	static void GetComputerPlayer();
	// BW1W120 006ee8d0 BW1M119 014e4060
	static void MoveComputerPlayer();
	// BW1W120 006ee9d0 BW1M119 014e3f40
	static void SetComputerPlayerPos();
	// BW1W120 006eeab0 BW1M119 014e3d90
	static void GetComputerPlayerPos();
	// BW1W120 006eeba0 BW1M119 014e3cb0
	static void SetComputerPaused();
	// BW1W120 006eec40 BW1M119 014e3bb0
	static void ComputerPlayerReady();
	// BW1W120 006eecc0 BW1M119 014e3ac0
	static void SetComputerPlayerOnOff();
	// BW1W120 006eed50 BW1M119 014e39d0
	static void SetComputerPlayerPersonality();
	// BW1W120 006eede0 BW1M119 014e38e0
	static void SetComputerPlayerSuppression();
	// BW1W120 006eee70 BW1M119 014e37d0
	static void ForceComputerPlayerAction();
	// BW1W120 006eef20 BW1M119 014e36c0
	static void QueueComputerPlayerAction();
	// BW1W120 006eefd0 BW1M119 014e3620
	static void ReleaseComputerPlayer();
	// BW1W120 006ef020 BW1M119 014e3540
	static void SetComputerPlayerSpeed();
	// BW1W120 006ef090 BW1M119 014e3460
	static void LoadComputerPlayerPersonalltyFile();
	// BW1W120 006ef110 BW1M119 014e3380
	static void SaveComputerPlayerPersonalltyFile();
	// BW1W120 006ef190 BW1M119 014e3260
	static void SetComputerPlayerPersonalltyAttitude();
	// BW1W120 006ef240 BW1M119 014e3130
	static void GetComputerPlayerPersonalltyAttitude();
	// BW1W120 006ef2f0 BW1M119 014e3090
	static void ClearComputerPlayerActions();
	// BW1W120 006ef3c0 BW1M119 014e6440
	static void AttachToId();
	// BW1W120 006ef9e0 BW1M119 014e5a40
	static void DetachFromId();
	// BW1W120 006efdc0 BW1M119 014e5290
	static void DisbandId();
	// BW1W120 006eff50 BW1M119 014e5040
	static void GetIdSize();
	// BW1W120 006f00a0 BW1M119 014e4ea0
	static void IsFlockMember();
	// BW1W120 006f0170 BW1M119 014e4d00
	static void CreateDance();
	// BW1W120 006f0510 BW1M119 014e4760
	static void FlockWithinLimits();
	// BW1W120 006f05a0 BW1M119 014e45b0
	static void GetFirstInContainer();
	// BW1W120 006f0670 BW1M119 014e42d0
	static void GetNextInContainer();
	// BW1W120 006f0aa0 BW1M119 014e69f0
	static void StopScript();
	// BW1W120 006f0b10 BW1M119 014e6920
	static void StopScriptsExcluding();
	// BW1W120 006f0b70 BW1M119 014e6820
	static void StopScriptsInFilesExcluding();
	// BW1W120 006f0c00 BW1M119 014e6750
	static void StopScriptsExcludingFiles();
	// BW1W120 006f0c60 BW1M119 014e6680
	static void StopScriptsInFiles();
	// BW1W120 006f0d60 BW1M119 014ea3b0
	static void Call();
	// BW1W120 006f0eb0 BW1M119 0101c770
	static void CallNear();
	// BW1W120 006f1010 BW1M119 014ea090
	static void CallNearInState();
	// BW1W120 006f1b20 BW1M119 014e96d0
	static void CreateThing();
	// BW1W120 006f1c20 BW1M119 014e9590
	static void CreateHighlight();
	// BW1W120 006f1d20 BW1M119 014e94b0
	static void CreateTimer();
	// BW1W120 006f1da0 BW1M119 014e92e0
	static void CreateMist();
	// BW1W120 006f1f20 BW1M119 014e8f30
	static void PopulateContainer();
	// BW1W120 006f21f0 BW1M119 014e8da0
	static void CreateFlock();
	// BW1W120 006f22f0 BW1M119 014e8c40
	static void CallFromId();
	// BW1W120 006f23e0 BW1M119 014e8b60
	static void GetObjectFlock();
	// BW1W120 006f2450 BW1M119 014e8970
	static void CallInNear();
	// BW1W120 006f25e0 BW1M119 014e8790
	static void CallInNotNear();
	// BW1W120 006f2760 BW1M119 014e86a0
	static void GetObjectHandOver();
	// BW1W120 006f27d0 BW1M119 014e85b0
	static void GetHeldObject();
	// BW1W120 006f2840 BW1M119 014e8440
	static void CallPoisonedFromId();
	// BW1W120 006f2930 BW1M119 014e82d0
	static void CallNotPoisonedFromId();
	// BW1W120 006f2a20 BW1M119 014e8150
	static void GetNearestTownOfPlayer();
	// BW1W120 006f2b30 BW1M119 014e7fc0
	static void CreateReward();
	// BW1W120 006f2c70 BW1M119 014e7da0
	static void CreateRewardInTown();
	// BW1W120 006f2e10 BW1M119 014e7bd0
	static void CreateWithAngleAndScale();
	// BW1W120 006f2f50 BW1M119 014e7a90
	static void CreateRandomVillagerOfTribe();
	// BW1W120 006f3060 BW1M119 014e7980
	static void GetTownWithId();
	// BW1W120 006f3100 BW1M119 014e7800
	static void GetBuildingInTown();
	// BW1W120 006f31e0 BW1M119 014e7630
	static void CallFlying();
	// BW1W120 006f3350 BW1M119 014e7580
	static void GetObjectClicked();
	// BW1W120 006f3390 BW1M119 014e74a0
	static void GetTotemStatue();
	// BW1W120 006f3450 BW1M119 014e71e0
	static void GetDeadLiving();
	// BW1W120 006f3590 BW1M119 014e7070
	static void GetSpellIconFromTemple();
	// BW1W120 006f3790 BW1M119 014ef090
	static void CreateCreatureFromCreature();
	// BW1W120 006f38f0 BW1M119 014eefc0
	static void CreatureLearnEverything();
	// BW1W120 006f3960 BW1M119 014eeec0
	static void CreatureSetKnowsAction();
	// BW1W120 006f3a10 BW1M119 014eedd0
	static void CreatureSetAgendaPriority();
	// BW1W120 006f3a90 BW1M119 014eed00
	static void CreatureTurnOffAllDesires();
	// BW1W120 006f3b80 BW1M119 014eebe0
	static void CreatureLearnDistinction();
	// BW1W120 006f3c50 BW1M119 014eea90
	static void CreatureDoAction();
	// BW1W120 006f3d40 BW1M119 014ee970
	static void CallPlayerCreature();
	// BW1W120 006f3de0 BW1M119 014ee780
	static void InCreatureHand();
	// BW1W120 006f3ef0 BW1M119 014ee620
	static void CreatureSetDesireValue();
	// BW1W120 006f3ff0 BW1M119 014ee510
	static void CreatureSetDesireActivated();
	// BW1W120 006f4090 BW1M119 014ee410
	static void CreatureSetAllDesireActivated();
	// BW1W120 006f4120 BW1M119 014ee310
	static void CreatureSetDesireMaximum();
	// BW1W120 006f41c0 BW1M119 014ee190
	static void CreatureSetPlayer();
	// BW1W120 006f42b0 BW1M119 014ee080
	static void CreatureInitialiseNumTimesPerformedAction();
	// BW1W120 006f4340 BW1M119 014edf50
	static void CreatureGetNumTimesPerformedAction();
	// BW1W120 006f4400 BW1M119 014edee0
	static void SetCreatureHelp();
	// BW1W120 006f4430 BW1M119 014ede50
	static void TogglePlayerLeash();
	// BW1W120 006f4480 BW1M119 014edc70
	static void AttachObjectLeachToObject();
	// BW1W120 006f4580 BW1M119 014edb40
	static void AttachLeashToHand();
	// BW1W120 006f4610 BW1M119 014ed9e0
	static void DetachObjectLeash();
	// BW1W120 006f46c0 BW1M119 014ed880
	static void SetCreatureOnlyDesire();
	// BW1W120 006f4780 BW1M119 014ed730
	static void SetCreatureOnlyDesireOff();
	// BW1W120 006f4820 BW1M119 014ed610
	static void SetCreatureDevelopmentPhase();
	// BW1W120 006f48a0 BW1M119 014ed470
	static void SwapCreature();
	// BW1W120 006f4980 BW1M119 014ed330
	static void IsLeashed();
	// BW1W120 006f4a20 BW1M119 014ed210
	static void SetCreatureHome();
	// BW1W120 006f4af0 BW1M119 014ecff0
	static void GetArena();
	// BW1W120 006f4cb0 BW1M119 014eced0
	static void SetCreatureCanAttackOwnTown();
	// BW1W120 006f4d40 BW1M119 014ecdb0
	static void IsFighting();
	// BW1W120 006f4dd0 BW1M119 014ecca0
	static void SetCreatureSpellReversion();
	// BW1W120 006f4e50 BW1M119 014ecb60
	static void SetLeashWorks();
	// BW1W120 006f4ef0 BW1M119 014ec9e0
	static void CreatureLearnAllExcluding();
	// BW1W120 006f4fc0 BW1M119 014ec7d0
	static void ObjectLeashedToObject();
	// BW1W120 006f50d0 BW1M119 014ec640
	static void InteractionMagnitude();
	// BW1W120 006f5170 BW1M119 014ec4e0
	static void CreatureAvailable();
	// BW1W120 006f5210 BW1M119 014ec3d0
	static void GetObjectDropped();
	// BW1W120 006f52a0 BW1M119 014ec2f0
	static void ClearDroppedByObject();
	// BW1W120 006f5310 BW1M119 014ec1d0
	static void GetObjectHeldByObject();
	// BW1W120 006f53a0 BW1M119 014ec010
	static void GetActionCount();
	// BW1W120 006f5460 BW1M119 014ebeb0
	static void GetObjectLeashType();
	// BW1W120 006f5500 BW1M119 014ebdf0
	static void CreatureForceFinish();
	// BW1W120 006f5570 BW1M119 014ebcd0
	static void SetAnimationModify();
	// BW1W120 006f5600 BW1M119 014ebbc0
	static void SetCreatureReaction();
	// BW1W120 006f5680 BW1M119 014ebab0
	static void SetCreatureInDevScript();
	// BW1W120 006f5700 BW1M119 014eb9c0
	static void ReleaseObjectFocus();
	// BW1W120 006f5770 BW1M119 014eb710
	static void SetCreatureFriends();
	// BW1W120 006f58c0 BW1M119 014eb5b0
	static void ObjectInteractingWithObject();
	// BW1W120 006f5980 BW1M119 014eb490
	static void ConfineObject();
	// BW1W120 006f5a60 BW1M119 014eb3c0
	static void ClearConfineOnObject();
	// BW1W120 006f5ac0 BW1M119 014eb120
	static void GetOpposingCreatureType();
	// BW1W120 006f5b20 BW1M119 014eafd0
	static void SetCreedProperties();
	// BW1W120 006f5be0 BW1M119 014eaed0
	static void SetCreatureName();
	// BW1W120 006f5c80 BW1M119 014eae20
	static void PositionValidForCreature();
	// BW1W120 006f5cf0 BW1M119 014ead10
	static void SetCreatureAutoFighting();
	// BW1W120 006f5d70 BW1M119 014eac00
	static void IsCreatureAutoFighting();
	// BW1W120 006f5df0 BW1M119 014eab10
	static void QueueCreatureFightMove();
	// BW1W120 006f5e60 BW1M119 014eaa20
	static void QueueCreatureFightSpell();
	// BW1W120 006f5ed0 BW1M119 014ea930
	static void QueueCreatureFightStep();
	// BW1W120 006f5f40 BW1M119 014ea820
	static void GetCreatureFightAction();
	// BW1W120 006f5fc0 BW1M119 014ea6f0
	static void GetCreatureFightQueuedHits();
	// BW1W120 006f6060 BW1M119 014ea690
	static void SetFightExit();
	// BW1W120 006f6080 BW1M119 014ea590
	static void SetCreatureAutoScale();
	// BW1W120 006f7910 BW1M119 014f0d70
	static void IsFireNear();
	// BW1W120 006f7bf0 BW1M119 01500100
	static void SetWideScreen();
	// BW1W120 006f7c70 BW1M119 014fff90
	static void RunTextWithNumber();
	// BW1W120 006f7f50 BW1M119 014ffb00
	static void TempTextWithNumber();
	// BW1W120 006f8370 BW1M119 014ff590
	static void SetScriptState();
	// BW1W120 inlined BW1M119 014ff710
	static void SetScriptState(Living* living, uint32_t state);
	// BW1W120 006f84c0 BW1M119 014ff2b0
	static void SetScriptStatePos();
	// BW1W120 006f8640 BW1M119 014ff070
	static void SetScriptStateFloat();
	// BW1W120 006f8770 BW1M119 014fedd0
	static void SetScriptStateULData();
	// BW1W120 006f88a0 BW1M119 0104d150
	static void GetPosition();
	// BW1W120 006f8a00 BW1M119 014fea60
	static void SetPosition();
	// BW1W120 006f8ca0 BW1M119 01045680
	static void GetDistance();
	// BW1W120 006f8da0 BW1M119 010151e0
	static void Random();
	// BW1W120 006f8e20 BW1M119 014fe780
	static void RandomULONG();
	// BW1W120 006f8e80 BW1M119 014fe4c0
	static void MoveGameThing();
	// BW1W120 0070d220 BW1M119 0104f750
	static GameThingWithPos* GetScriptGameThing(uint32_t id);
	// BW1W120 006f90b0 BW1M119 0102e4a0
	static void SetFocus();
	// BW1W120 006f91f0 BW1M119 014fe210
	static void SetFocusOnObject();
	// BW1W120 006f92d0 BW1M119 014fdfa0
	static void DeleteObject();
	// BW1W120 006f94a0 BW1M119 014fdde0
	static void UpdateSnapShotDetails();
	// BW1W120 006f9640 BW1M119 014fdc20
	static void UpdateSnapShot();
	// BW1W120 006f97b0 BW1M119 014fda00
	static void SnapShot();
	// BW1W120 006f99c0 BW1M119 014fd8f0
	static void UpdateAlignment();
	// BW1W120 006f9a60 BW1M119 014fd860
	static void GetAlignment();
	// BW1W120 006f9aa0 BW1M119 014fd720
	static void CreateInfluenceOnObject();
	// BW1W120 006f9b60 BW1M119 014fd5c0
	static void CreateInfluenceOnPos();
	// BW1W120 006f9c60 BW1M119 010336a0
	static void GetInfluence();
	// BW1W120 006f9d30 BW1M119 014fd480
	static void GetPlayedPercentage();
	// BW1W120 006f9dc0 BW1M119 010149f0
	static void HasPlayed();
	// BW1W120 006f9f50 BW1M119 014fd1c0
	static void OverrideStateAnimation();
	// BW1W120 006fa070 BW1M119 014fd110
	static void CreateReaction();
	// BW1W120 006fa0e0 BW1M119 014fcf90
	static void RemoveReaction();
	// BW1W120 006fa180 BW1M119 014fcdc0
	static void RemoveReactionsOfType();
	// BW1W120 006fa220 BW1M119 014fcc70
	static void GetTargetObject();
	// BW1W120 006fa2c0 BW1M119 014fcb80
	static void DesireIs();
	// BW1W120 006fa350 BW1M119 014fca50
	static void GetObjectDestination();
	// BW1W120 006fa430 BW1M119 014fc9e0
	static void GetActionTextForObject();
	// BW1W120 006fa450 BW1M119 01006a90
	static void AddReference();
	// BW1W120 006fa470 BW1M119 01005410
	static void RemoveReference();
	// BW1W120 006fa490 BW1M119 014fc750
	static void SetWeatherProperties();
	// BW1W120 006fa570 BW1M119 014fc640
	static void SetTimeFadeProperties();
	// BW1W120 006fa600 BW1M119 014fc500
	static void SetCloudProperties();
	// BW1W120 006fa6b0 BW1M119 014fc3c0
	static void SetLightningProperties();
	// BW1W120 006fa770 BW1M119 014fc0e0
	static void SetVelocityHeadingSpeed();
	// BW1W120 006fa9e0 BW1M119 014fc020
	static void StartGameSpeed();
	// BW1W120 006faab0 BW1M119 014fbe90
	static void EndGameSpeed();
	// BW1W120 006faae0 BW1M119 014fbde0
	static void SetGameSpeed();
	// BW1W120 006fab30 BW1M119 014fbd20
	static void BuildBuilding();
	// BW1W120 006fabc0 BW1M119 014fbc60
	static void SetAffectedByWind();
	// BW1W120 006fac20 BW1M119 014fbbd0
	static void IsWideScreenTransitionFinished();
	// BW1W120 006fac50 BW1M119 014fba90
	static void GetResource();
	// BW1W120 006fad10 BW1M119 014fb920
	static void AddResource();
	// BW1W120 006fae00 BW1M119 014fb7c0
	static void RemoveResource();
	// BW1W120 006faef0 BW1M119 014fb4e0
	static void GetTargetRelativePos();
	// BW1W120 006fb150 BW1M119 014fb3a0
	static void GetScriptState();
	// BW1W120 006fb1f0 BW1M119 01030770
	static void GetLandHeight();
	// BW1W120 006fb320 BW1M119 014fb250
	static void LoadMap();
	// BW1W120 006fb380 BW1M119 014fb180
	static void ReleaseActorFromScript();
	// BW1W120 006fb3e0 BW1M119 014fb0d0
	static void SetMoveable();
	// BW1W120 006fb450 BW1M119 014fb020
	static void SetPickupable();
	// BW1W120 006fb4c0 BW1M119 014faf50
	static void IsOnFire();
	// BW1W120 006fb520 BW1M119 014fae80
	static void IsPoisoned();
	// BW1W120 006fb5b0 BW1M119 014fac60
	static void GetPoisonedSize();
	// BW1W120 006fb6a0 BW1M119 014faa50
	static void SetPoisoned();
	// BW1W120 006fb780 BW1M119 014fa930
	static void SetOnFire();
	// BW1W120 006fb840 BW1M119 014fa840
	static void SetTemperature();
	// BW1W120 006fb8c0 BW1M119 014fa550
	static void SetIdTarget();
	// BW1W120 006fbb50 BW1M119 014fa3e0
	static void SetWalkPath();
	// BW1W120 006fbc50 BW1M119 014fa2f0
	static void GetWalkPathPercentage();
	// BW1W120 006fbcd0 BW1M119 014fa1b0
	static void IsOfType();
	// BW1W120 006fbd80 BW1M119 014fa100
	static void GetLastHitObject();
	// BW1W120 006fbdc0 BW1M119 014fa050
	static void GetObjectWhichHit();
	// BW1W120 006fbe00 BW1M119 014f9fe0
	static void ClearHitObject();
	// BW1W120 006fbe20 BW1M119 01026720
	static void IsHitObject();
	// BW1W120 006fbee0 BW1M119 014f9b40
	static void GetSlowestInId();
	// BW1W120 006fbfd0 BW1M119 014f9a50
	static void IsHelpSystemOn();
	// BW1W120 006fc020 BW1M119 014f99e0
	static void SetHelpSystem();
	// BW1W120 006fc050 BW1M119 014f9940
	static void SetAviSequence();
	// BW1W120 006fc090 BW1M119 014f9860
	static void PlayGesture();
	// BW1W120 006fc130 BW1M119 014f93f0
	static void DevFunction();
	// BW1W120 006fc520 BW1M119 014f9340
	static void HasMouseWheel();
	// BW1W120 006fc540 BW1M119 014f9270
	static void GetNumberMouseButtons();
	// BW1W120 006fc580 BW1M119 014f9130
	static void GetFootballPitch();
	// BW1W120 006fc630 BW1M119 014f9050
	static void StopAllGames();
	// BW1W120 006fc6a0 BW1M119 014f8e80
	static void AttachToGame();
	// BW1W120 006fc7b0 BW1M119 014f8cf0
	static void DetachFromGame();
	// BW1W120 006fc8b0 BW1M119 014f8bd0
	static void DetachFirstFromGame();
	// BW1W120 006fc950 BW1M119 014f8ac0
	static void SetOnlyForScripts();
	// BW1W120 006fc9e0 BW1M119 014f8910
	static void StartWithReferee();
	// BW1W120 006fcae0 BW1M119 014f86d0
	static void GetTeamSize();
	// BW1W120 006fcbe0 BW1M119 014f8600
	static void GetType();
	// BW1W120 006fcc40 BW1M119 014f8540
	static void GetSubType();
	// BW1W120 006fcca0 BW1M119 014f8410
	static void GetDesire();
	// BW1W120 006fcd70 BW1M119 014f8310
	static void SetFade();
	// BW1W120 006fce00 BW1M119 014f8290
	static void SetFadeIn();
	// BW1W120 006fce40 BW1M119 014f8210
	static void IsFadeFinished();
	// BW1W120 006fce60 BW1M119 01007790
	static void GetThingBeliefForPlayer();
	// BW1W120 006fcf50 BW1M119 014f7f90
	static void GetThingHelp();
	// BW1W120 006fd0a0 BW1M119 014f7e30
	static void GetFirstHelp();
	// BW1W120 006fd180 BW1M119 014f7cd0
	static void GetLastHelp();
	// BW1W120 006fd260 BW1M119 014f7bc0
	static void LoadMyCreature();
	// BW1W120 006fd2f0 BW1M119 014f7a00
	static void LoadComputerCreature();
	// BW1W120 006fd450 BW1M119 014f78b0
	static void SetObjectRelativeBelief();
	// BW1W120 006fd520 BW1M119 014f7760
	static void SetBelief();
	// BW1W120 006fd6c0 BW1M119 014f76b0
	static void SetVirtualInfluence();
	// BW1W120 006fd720 BW1M119 014f7570
	static void SetActive();
	// BW1W120 006fd7e0 BW1M119 014f74a0
	static void IsActive();
	// BW1W120 006fd840 BW1M119 01039ea0
	static void IsThingValid();
	// BW1W120 006fd8c0 BW1M119 014f7360
	static void VortexFadeOut();
	// BW1W120 006fd940 BW1M119 014f71f0
	static void SetMistFade();
	// BW1W120 006fda30 BW1M119 014f70d0
	static void GetMistFade();
	// BW1W120 006fdad0 BW1M119 014f6fe0
	static void PlayHandDemo();
	// BW1W120 006fdb80 BW1M119 014f6f60
	static void IsHandDemoPlayed();
	// BW1W120 006fdbd0 BW1M119 014f6d90
	static void SetSkeleton();
	// BW1W120 006fdc80 BW1M119 014f6cc0
	static void IsSkeleton();
	// BW1W120 006fdce0 BW1M119 014f6be0
	static void AddTargetPos();
	// BW1W120 006fdd80 BW1M119 014f6b00
	static void AddTargetObject();
	// BW1W120 006fde20 BW1M119 014f6940
	static void SetIndestructable();
	// BW1W120 006fdee0 BW1M119 014f6890
	static void SetSetOnFire();
	// BW1W120 006fdf40 BW1M119 014f67e0
	static void SetHurtByFire();
	// BW1W120 006fdfa0 BW1M119 014f6710
	static void ImmersionExists();
	// BW1W120 006fdfd0 BW1M119 014f6690
	static void SetIntroBuilding();
	// BW1W120 006fe000 BW1M119 010267f0
	static void ObjectInfoBits();
	// BW1W120 006fe090 BW1M119 014f6450
	static void SetVortexParameters();
	// BW1W120 006fe1f0 BW1M119 014f6330
	static void SetHighlightProperties();
	// BW1W120 006fe280 BW1M119 014f6290
	static void ScriptIsHandDemoTrigger();
	// BW1W120 006fe2c0 BW1M119 014f60d0
	static void GetArsePosition();
	// BW1W120 006fe3c0 BW1M119 014f5ec0
	static void GetBellyPosition();
	// BW1W120 006fe4d0 BW1M119 014f5c30
	static void GameThingCanViewCamera();
	// BW1W120 006fe650 BW1M119 014f5aa0
	static void SetTownDesireBoost();
	// BW1W120 006fe750 BW1M119 014f59c0
	static void ClearActorMind();
	// BW1W120 006fe7c0 BW1M119 014f5930
	static void EnterExitCitadel();
	// BW1W120 006fe800 BW1M119 014f57b0
	static void SetObjectMana();
	// BW1W120 006fe8c0 BW1M119 014f5660
	static void GetObjectMana();
	// BW1W120 006fe960 BW1M119 014f5500
	static void GetSacrificeTotal();
	// BW1W120 006fea00 BW1M119 014f53e0
	static void SexIsMale();
	// BW1W120 006fea70 BW1M119 014f5350
	static void SetBookmarkPosition();
	// BW1W120 006feab0 BW1M119 014f5200
	static void SetScaffoldProperties();
	// BW1W120 006feb90 BW1M119 014f50d0
	static void SetDisciple();
	// BW1W120 006fec40 BW1M119 014f4e90
	static void SetBuildWorshipSite();
	// BW1W120 006fed70 BW1M119 014f4da0
	static void SetPlayerAlly();
	// BW1W120 006fee10 BW1M119 014f4ca0
	static void GetPlayerAlly();
	// BW1W120 006feeb0 BW1M119 014f4bf0
	static void GetNoWindResistanceFlag();
	// BW1W120 006fef10 BW1M119 014f4b40
	static void SetNoWindResistanceFlag();
	// BW1W120 006fef70 BW1M119 014f4a40
	static void SetObjectFadeIn();
	// BW1W120 006ff000 BW1M119 014f4890
	static void AffectedBySpell();
	// BW1W120 006ff0b0 BW1M119 014f4750
	static void SetMagicInObject();
	// BW1W120 006ff160 BW1M119 014f4540
	static void GetObjectAdultSize();
	// BW1W120 006ff270 BW1M119 014f4350
	static void GetObjectCapacity();
	// BW1W120 006ff390 BW1M119 014f4170
	static void GetObjectAdultCapacity();
	// BW1W120 006ff4a0 BW1M119 014f4090
	static void SquareRoot();
	// BW1W120 006ff4e0 BW1M119 014f4020
	static void SetPauseWeather();
	// BW1W120 006ff500 BW1M119 014f3fb0
	static void SetStormCreation();
	// BW1W120 006ff520 BW1M119 014f3ee0
	static void KillStormsInArea();
	// BW1W120 006ff5a0 BW1M119 014f3e20
	static void InsideTemple();
	// BW1W120 006ff5d0 BW1M119 014f3d60
	static void RestartThing();
	// BW1W120 006ff640 BW1M119 014f3c20
	static void GetTownWorshipDeaths();
	// BW1W120 006ff6f0 BW1M119 014f3bc0
	static void ClearDialogue();
	// BW1W120 006ff700 BW1M119 014f3b40
	static void CloseDialogue();
	// BW1W120 006ff730 BW1M119 014f3a90
	static void GetHandState();
	// BW1W120 006ff750 BW1M119 014f3a10
	static void MapScriptFunction();
	// BW1W120 006ff780 BW1M119 014f3950
	static void GetPlayerTownTotal();
	// BW1W120 006ff7f0 BW1M119 014f38b0
	static void SetLandBalance();
	// BW1W120 006ff840 BW1M119 014f37b0
	static void TownBalanceBeliefScale();
	// BW1W120 006ff8c0 BW1M119 014f3740
	static void SetCreatureInTemple();
	// BW1W120 006ff8e0 BW1M119 014f36c0
	static void InstantSaveForScript();
	// BW1W120 006ff910 BW1M119 014f35c0
	static void SetObjectCarrying();
	// BW1W120 006ff990 BW1M119 014f3430
	static void TimeSinceObjectAttacked();
	// BW1W120 006ffa90 BW1M119 014f3350
	static void GetTownAndVillagerHealthTotal();
	// BW1W120 006ffb10 BW1M119 014f3260
	static void AddForBuildingForTown();
	// BW1W120 006ffba0 BW1M119 014f30b0
	static void GetTemplePosition();
	// BW1W120 006ffcb0 BW1M119 014f2d90
	static void GetTempleEntrancePosition();
	// BW1W120 006ffef0 BW1M119 014f2d20
	static void CanSkipTutorial();
	// BW1W120 006fff10 BW1M119 014f2cb0
	static void CanSkipTraining();
	// BW1W120 006fff30 BW1M119 014f2c30
	static void IsKeepingOldCreature();
	// BW1W120 006fff50 BW1M119 014f2bb0
	static void CurrentProfileHasCreature();
	// BW1W120 00708c50 BW1M119 01501070
	static void SetClippingDistance();
	// BW1W120 00708c80 BW1M119 01501000
	static void SetDrawLeash();
	// BW1W120 00708cb0 BW1M119 01500f90
	static void SetDrawHighlight();
	// BW1W120 00708ce0 BW1M119 01500d30
	static void SetHighGFXDetail();
	// BW1W120 00708e30 BW1M119 01500c40
	static void SetOpenCloseState();
	// BW1W120 00708eb0 BW1M119 01500be0
	static void SetSunDraw();
	// BW1W120 00708ed0 BW1M119 01500ae0
	static void PlayJCSpecial();
	// BW1W120 00708fc0 BW1M119 01500a30
	static void IsPlayingJCSpecial();
	// BW1W120 00709000 BW1M119 015007f0
	static void ThingJCSpecial();
	// BW1W120 00709170 BW1M119 01500680
	static void DrawTextA();
	// BW1W120 00709290 BW1M119 015004f0
	static void DrawTempText();
	// BW1W120 007093b0 BW1M119 01500400
	static void SetDrawTextColour();
	// BW1W120 00709430 BW1M119 01500360
	static void FadeAllDrawText();
	// BW1W120 00709470 BW1M119 01500280
	static void SetClippingWindow();
	// BW1W120 00709510 BW1M119 01500210
	static void ClearClippingWindow();
	// BW1W120 00709540 BW1M119 015001d0
	static void SetHandDemoKeys();
	// BW1W120 0070afe0 BW1M119 01504a50
	static void IsLockedInteraction();
	// BW1W120 0070b040 BW1M119 01504970
	static void GetHandPosition();
	// BW1W120 0070b0e0 BW1M119 01504900
	static void ClearClickedObject();
	// BW1W120 0070b100 BW1M119 01504890
	static void ClearClickedPosition();
	// BW1W120 0070b120 BW1M119 01504750
	static void PositionClickedNear();
	// BW1W120 0070b200 BW1M119 015046e0
	static void SetInterfaceInteraction();
	// BW1W120 0070b7f0 BW1M119 01503da0
	static void GetEventsPerSecond();
	// BW1W120 0070b880 BW1M119 01503c40
	static void GetEventTimeSince();
	// BW1W120 0070b910 BW1M119 01503ae0
	static void GetTotalEvents();
	// BW1W120 0070b9a0 BW1M119 01503a60
	static void SetCitadelInteract();
	// BW1W120 0070b9d0 BW1M119 015039f0
	static void GameWithinRotation();
	// BW1W120 0070b9f0 BW1M119 01503920
	static void ScriptKeyDown();
	// BW1W120 0070ba20 BW1M119 015038a0
	static void StartImmersion();
	// BW1W120 0070ba50 BW1M119 01503820
	static void StopImmersion();
	// BW1W120 0070ba80 BW1M119 015037c0
	static void StopAllImmersion();
	// BW1W120 0070bfa0 BW1M119 01505ef0
	static void SpellOnThing();
	// BW1W120 0070c190 BW1M119 01505d00
	static void SpellAtPos();
	// BW1W120 0070c330 BW1M119 01505b40
	static void SpecialEffectOnPos();
	// BW1W120 0070c460 BW1M119 01006850
	static void SpecialEffectOnId();
	// BW1W120 0070c560 BW1M119 01505980
	static void GetSpellAtPoint();
	// BW1W120 0070c660 BW1M119 015058c0
	static void SetRadius();
	// BW1W120 0070c6c0 BW1M119 015057c0
	static void SetPlayerMagic();
	// BW1W120 0070c750 BW1M119 015056a0
	static void HasPlayerMagic();
	// BW1W120 0070c800 BW1M119 01505510
	static void ObjectCastByObject();
	// BW1W120 0070c8d0 BW1M119 015053f0
	static void IsWindMagicAtPos();
	// BW1W120 0070c9a0 BW1M119 015052b0
	static void GetSpellLastCastTime();
	// BW1W120 0070ca50 BW1M119 015051f0
	static void GetSpellLastCast();
	// BW1W120 0070cab0 BW1M119 01505070
	static void GetSpellLastCastPos();
	// BW1W120 0070cb80 BW1M119 01504fd0
	static void IsSpellCharging();
	// BW1W120 0070cbd0 BW1M119 01504f10
	static void IsThatSpellCharging();
	// BW1W120 0070cc30 BW1M119 01504d90
	static void SetMagicProperties();
	// BW1W120 0070cd40 BW1M119 01504cb0
	static void GetManaForSpell();
	// BW1W120 0070cd80 BW1M119 01504c00
	static void ClearPlayerSpellCharging();
	// BW1W120 0070d360 BW1M119 01506f20
	static void DeleteAllScriptCreatedGameThings();
	// BW1W120 0070dae0 BW1M119 01044780
	static void GetProperty();
	// BW1W120 0070f380 BW1M119 015084c0
	static void SetProperty();
	// BW1W120 0070f480 BW1M119 01508350
	static void ChangeObjectProperties();
	// BW1W120 0070f7f0 BW1M119 0101f560
	static void PlaySoundEffect();
	// BW1W120 0070f9b0 BW1M119 0150a780
	static void SaySoundEffect();
	// BW1W120 0070fa50 BW1M119 0150a670
	static void StopSoundEffect();
	// BW1W120 0070fb20 BW1M119 0150a5b0
	static void StartMusic();
	// BW1W120 0070fb90 BW1M119 0150a550
	static void StopMusic();
	// BW1W120 0070fba0 BW1M119 0150a490
	static void IsMusicPlayed();
	// BW1W120 0070fbf0 BW1M119 0150a3c0
	static void AttachMusic();
	// BW1W120 0070fc60 BW1M119 0150a330
	static void DetachMusic();
	// BW1W120 0070fca0 BW1M119 0150a270
	static void MoveMusicThing();
	// BW1W120 0070fd10 BW1M119 0150a1c0
	static void SetMusicEnable();
	// BW1W120 0070fd70 BW1M119 0150a0f0
	static void GetMusicObjectDistance();
	// BW1W120 0070fde0 BW1M119 0150a010
	static void GetMusicEnumDistance();
	// BW1W120 0070fe60 BW1M119 01509f40
	static void SetMusicPlayPosition();
	// BW1W120 0070ff00 BW1M119 01509eb0
	static void RestartMusic();
	// BW1W120 0070ff40 BW1M119 01509df0
	static void MusicPlayed();
	// BW1W120 0070ffa0 BW1M119 01509d50
	static void StartAngleSound();
	// BW1W120 0070ffe0 BW1M119 01509cb0
	static void StartPitchSound();
	// BW1W120 00710020 BW1M119 01509c30
	static void SetPlayCreatureSounds();
	// BW1W120 00710050 BW1M119 01509b60
	static void IsLastMusicLine();
	// BW1W120 007100b0 BW1M119 01509ab0
	static void SetGameSound();
	// BW1W120 00710100 BW1M119 01509a40
	static void SoundExists();
	// BW1W120 00710120 BW1M119 015099d0
	static void SetAlignmentMusic();
	// BW1W120 00710150 BW1M119 015098e0
	static void AttachSoundTag();
	// BW1W120 007101d0 BW1M119 01509830
	static void DetachSoundTag();
	// BW1W120 00710230 BW1M119 01509780
	static void IsSoundPlaying();
	// BW1W120 00710280 BW1M119 01509680
	static void SaySoundEffectPlaying();
	// BW1W120 00710460 BW1M119 0150c9d0
	static void ScriptSpiritAppear();
	// BW1W120 007104e0 BW1M119 0150c8b0
	static void ScriptSpiritDisappear();
	// BW1W120 00710630 BW1M119 0150c620
	static void SpiritLookAtGameThing();
	// BW1W120 00710690 BW1M119 0150c490
	static void StartSpiritControl();
	// BW1W120 00710780 BW1M119 0150c370
	static void EndSpiritControl();
	// BW1W120 00710830 BW1M119 010118b0
	static void IsSpiritFree();
	// BW1W120 00710860 BW1M119 0150c280
	static void StopSpiritPointing();
	// BW1W120 00710890 BW1M119 0150c200
	static void StopSpiritLooking();
	// BW1W120 007108c0 BW1M119 0150c140
	static void SpiritLookAtPosition();
	// BW1W120 00710940 BW1M119 0150bfb0
	static void SpiritPlayAnim();
	// BW1W120 00710a50 BW1M119 0150bf10
	static void SpiritPlayed();
	// BW1W120 00710aa0 BW1M119 0150bde0
	static void ClingSpirit();
	// BW1W120 00710b70 BW1M119 0150bcb0
	static void FlySpirit();
	// BW1W120 00710c40 BW1M119 0150bbe0
	static void SpiritSpeaks();
	// BW1W120 00710ca0 BW1M119 0150ba40
	static void ScriptSpiritScreenPoint();
	// BW1W120 00710e20 BW1M119 0150d950
	static void SetGameTime();
	// BW1W120 00710e60 BW1M119 0150d8e0
	static void GetGameTime();
	// BW1W120 00710e90 BW1M119 0150d850
	static void GameTimeOnOff();
	// BW1W120 00710ec0 BW1M119 0150d7b0
	static void MoveGameTime();
	// BW1W120 00710f20 BW1M119 0150d690
	static void GetRealTime();
	// BW1W120 00710fa0 BW1M119 0150d5c0
	static void GetRealDay();
	// BW1W120 00711000 BW1M119 0150d4e0
	static void GetRealWeekDay();
	// BW1W120 00711070 BW1M119 0150d400
	static void GetRealMonth();
	// BW1W120 007110e0 BW1M119 0150d320
	static void GetRealYear();
	// BW1W120 00711150 BW1M119 0150d2a0
	static void StartCountDownTimer();
	// BW1W120 00711180 BW1M119 0150d250
	static void RemoveCountDownTimer();
	// BW1W120 007111a0 BW1M119 0150d1d0
	static void GetCountDownTimer();
	// BW1W120 007111d0 BW1M119 0150d110
	static void CountDownTimerExists();
	// BW1W120 007111f0 BW1M119 0150d0c0
	static void HideCountDownTimer();
	// BW1W120 00711210 BW1M119 0150d070
	static void RevealCountDownTimer();
	// BW1W120 00711230 BW1M119 0150cfd0
	static void GetMoonPercentage();
	// BW1W120 00711280 BW1M119 01006d90
	static void SetTimerTime();
	// BW1W120 00711370 BW1M119 01030000
	static void GetTimeRemaining();
	// BW1W120 00711410 BW1M119 0150cd70
	static void GetTimeSinceSet();
	// BW1W120 007114b0 BW1M119 0150ccb0
	static void SetGameTimeProperties();
	// BW1W120 00711520 BW1M119 0150cc30
	static void ResetGameTimeProperties();

	// BW1W120 006f9090 BW1M119 014fe420
	static int SetFocusLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t param_3);

	// Non-virtual methods

	// BW1W120 006eb2d0 BW1M119 014de360
	void Reset(int param_2);
	// BW1W120 006eb6f0 BW1M119 014de110
	void ValidateScriptVariables();
	// BW1W120 006eb610 BW1M119 014de270
	void LoadBinary(char* binary);
	// BW1W120 006eb6b0 BW1M119 010813d0
	void Process();
	// BW1W120 006eb9d0 BW1M119 01084630
	void  ProcessFade(bool param_1);
	float GetCountDownTimerRemainingTime(); // 006eb950
	// BW1W120 006eba90 BW1M119 014dd990
	void SetupScreenFadeTo(uint8_t r, uint8_t g, uint8_t b, signed char a);
	// BW1W120 006ebbc0 BW1M119 014dd630
	void CleanGameForScriptReboot();
	// BW1W120 006ec790 BW1M119 014dc490
	void PUSH(void* param_1, VMType param_2);
	// BW1W120 006f0cc0 BW1M119 014e6610
	void StopScriptsOfType(VMScriptType param_1);
	// BW1W120 006f62b0 BW1M119 014ef410
	static void ScriptErrorMessage(char* msg);
	// BW1W120 006f62c0 BW1M119 010053d0
	static void ScriptWarningMessage(char* msg);
	// BW1W120 006f7220 BW1M119 014f2030
	static void* FindAtPos(const MapCoords& pos,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7280 BW1M119 0101c220
	static void* FindNearPos(const MapCoords& pos,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7340 BW1M119 014f1de0
	static void* FindTownAtPos(const MapCoords& pos,
	                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                           SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7370 BW1M119 014f1d40
	static void* FindTownNearPos(const MapCoords& pos,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7380 BW1M119 014f1c30
	static void* FindCreatureAtPos(const MapCoords& pos,
	                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                               SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f73c0 BW1M119 014f1af0
	static void* FindCreatureNearPos(const MapCoords& pos,
	                                 int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                 SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7410 BW1M119 014f1a10
	static void* FindInTown(GameThingWithPos* thing,
	                        int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                        SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7470 BW1M119 014f18c0
	static void* FindInTownNear(GameThingWithPos* thing,
	                            int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                            SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7500 BW1M119 014f1820
	static void* FindInFlock(GameThingWithPos* thing,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7520 BW1M119 014f1780
	static void* FindInDance(GameThingWithPos* thing,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7570 BW1M119 014f1670
	static void* FindInFlockNear(GameThingWithPos* thing,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f75c0 BW1M119 014f1560
	static void* FindInDanceNear(GameThingWithPos* thing,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7670 BW1M119 014f1440
	static void* FindInFlockNotNear(GameThingWithPos* thing,
	                                int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f76c0 BW1M119 014f1320
	static void* FindInDanceNotNear(GameThingWithPos* thing,
	                                int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7710 BW1M119 014f11c0
	static void* FindInTownNotNear(GameThingWithPos* thing,
	                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                               SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7850 BW1M119 014f1010
	static void* TownLoop(GameThingWithPos* thing,
	                      int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                      SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f78b0 BW1M119 014f0f50
	static void* FlockLoop(GameThingWithPos* thing,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f78e0 BW1M119 014f0e90
	static void* DanceLoop(GameThingWithPos* thing,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
};

class GScriptOpposingCreature : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006f3770 BW1M119 014eb2a0
	virtual ~GScriptOpposingCreature();
	// BW1W120 006f3710 BW1M119 014ef2f0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */

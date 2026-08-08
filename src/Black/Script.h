#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

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
	// BW1W120 00d95c10 BW1M100 10b49ffc
	static ScriptDLL* g_scriptDLL;
	// BW1W120 00c0c740 BW1M100 1099bea4
	static ScriptObjectDispatch g_scriptObjectDispatch[SCRIPT_OBJECT_TYPE_LAST - 1];

	uint8_t field_0x8[0x38];
	LHPoint FocusPos; /* 0x40 */
	uint8_t field_0x4c[0x70];

	// Override methods

	// BW1W120 006eb150 BW1M100 104ddd70 GScript::_dt(void)
	virtual ~GScript();

	// Static methods

	// BW1W120 006eb100 BW1M100 104de810 GScript::Create(void)
	static GScript* Create();
	// BW1W120 006eb710 BW1M100 104de060 GScript::StartScript(char *)
	static int StartScript(char* name);
	// BW1W120 0070b220 BW1M100 10503f10 GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL)
	static void SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL level);
	// BW1W120 006ec8f0 BW1M100 104e2f90 GScript::SetCameraPos(void)
	static void SetCameraPos();
	// BW1W120 006ec9a0 BW1M100 104e2e30 GScript::SetCameraFocus(void)
	static void SetCameraFocus();
	// BW1W120 006ecaa0 BW1M100 104e2cc0 GScript::MoveCameraPos(void)
	static void MoveCameraPos();
	// BW1W120 006ecba0 BW1M100 104e2b50 GScript::MoveCameraFocus(void)
	static void MoveCameraFocus();
	// BW1W120 006ecff0 BW1M100 100335c0 GScript::GetCameraPos(void)
	static void GetCameraPos();
	// BW1W120 006ed0b0 BW1M100 104e18a0 GScript::GetCameraFocus(void)
	static void GetCameraFocus();
	// BW1W120 006f7d60 BW1M100 104ffe40 GScript::RunText(void)
	static void RunText();
	// BW1W120 006f7e40 BW1M100 104ffcd0 GScript::TempText(void)
	static void TempText();
	// BW1W120 006f8060 BW1M100 10022e50 GScript::IsPosFieldOfView(void)
	static void IsPosFieldOfView();
	// BW1W120 006f8130 BW1M100 1002e650 GScript::IsGameThingFieldOfView(void)
	static void IsGameThingFieldOfView();
	// BW1W120 006f8260 BW1M100 104ff9a0 GScript::TextRead(void)
	static void TextRead();
	// BW1W120 0070aeb0 BW1M100 10039f90 GScript::GameThingClicked(void)
	static void GameThingClicked();
	// BW1W120 00710410 BW1M100 1050ca50 GScript::SpiritEject(void)
	static void SpiritEject();
	// BW1W120 00710490 BW1M100 1050c930 GScript::SpiritHome(void)
	static void SpiritHome();
	// BW1W120 00710510 BW1M100 1050c7e0 GScript::SpiritPointAtPos(void)
	static void SpiritPointAtPos();
	// BW1W120 007105b0 BW1M100 1050c6f0 GScript::SpiritPointAtGameThing(void)
	static void SpiritPointAtGameThing();
	// BW1W120 006ecca0 BW1M100 104e2a00 GScript::StartCameraControl(void)
	static void StartCameraControl();
	// BW1W120 006ecef0 BW1M100 104e2750 GScript::EndCameraControl(void)
	static void EndCameraControl();
	// BW1W120 006ed170 BW1M100 100148d0 GScript::HasCameraArrived(void)
	static void HasCameraArrived();
	// BW1W120 006ed200 BW1M100 104e0f10 GScript::ConvertCameraEditorPosition(void)
	static void ConvertCameraEditorPosition();
	// BW1W120 006ed270 BW1M100 104e0e50 GScript::ConvertCameraEditorFocus(void)
	static void ConvertCameraEditorFocus();
	// BW1W120 006ed2e0 BW1M100 104e0d60 GScript::CreateDualCamera(void)
	static void CreateDualCamera();
	// BW1W120 006ed370 BW1M100 104e0c40 GScript::UpdateDualCamera(void)
	static void UpdateDualCamera();
	// BW1W120 006ed410 BW1M100 104e0b70 GScript::ReleaseDualCamera(void)
	static void ReleaseDualCamera();
	// BW1W120 006ed460 BW1M100 104e0a90 GScript::CreateCameraBetweenObjectAndPoint(void)
	static void CreateCameraBetweenObjectAndPoint();
	// BW1W120 006ed500 BW1M100 104e0870 GScript::SetCameraToFaceObject(void)
	static void SetCameraToFaceObject();
	// BW1W120 006ed600 BW1M100 104e0640 GScript::MoveCameraToFaceObject(void)
	static void MoveCameraToFaceObject();
	// BW1W120 006ed7f0 BW1M100 104e0530 GScript::SetCameraPath(void)
	static void SetCameraPath();
	// BW1W120 006ed890 BW1M100 104e03a0 GScript::SetCameraZone(void)
	static void SetCameraZone();
	// BW1W120 006ed990 BW1M100 104e02d0 GScript::GetCameraInclusionDistance(void)
	static void GetCameraInclusionDistance();
	// BW1W120 006ed9b0 BW1M100 104e0170 GScript::SetCameraPosFocFollow(void)
	static void SetCameraPosFocFollow();
	// BW1W120 006eda80 BW1M100 104e0030 GScript::SetCameraThingFollow(void)
	static void SetCameraThingFollow();
	// BW1W120 006edb40 BW1M100 104dff00 GScript::SetCameraFocusFollow(void)
	static void SetCameraFocusFollow();
	// BW1W120 006edc00 BW1M100 104dfd90 GScript::FocusFollowComputerPlayer(void)
	static void FocusFollowComputerPlayer();
	// BW1W120 006edcd0 BW1M100 104dfc20 GScript::PositionFollowComputerPlayer(void)
	static void PositionFollowComputerPlayer();
	// BW1W120 006edda0 BW1M100 104dfac0 GScript::MoveCameraPosFocFollow(void)
	static void MoveCameraPosFocFollow();
	// BW1W120 006ede70 BW1M100 104df990 GScript::MoveCameraThingFollow(void)
	static void MoveCameraThingFollow();
	// BW1W120 006edf30 BW1M100 104df730 GScript::MoveCameraFocusFollow(void)
	static void MoveCameraFocusFollow();
	// BW1W120 006edff0 BW1M100 104df5a0 GScript::SetFollowCameraProperties(void)
	static void SetFollowCameraProperties();
	// BW1W120 006ee0f0 BW1M100 104df4b0 GScript::ShakeCamera(void)
	static void ShakeCamera();
	// BW1W120 006ee1a0 BW1M100 104df340 GScript::SetFixedCamRotation(void)
	static void SetFixedCamRotation();
	// BW1W120 006ee280 BW1M100 104df280 GScript::SetCameraLens(void)
	static void SetCameraLens();
	// BW1W120 006ee2e0 BW1M100 104df1d0 GScript::ResetCameraLens(void)
	static void ResetCameraLens();
	// BW1W120 006ee330 BW1M100 104df140 GScript::StoreCameraDetails(void)
	static void StoreCameraDetails();
	// BW1W120 006ee390 BW1M100 104df0b0 GScript::RestoreCameraDetails(void)
	static void RestoreCameraDetails();
	// BW1W120 006ee3c0 BW1M100 104def90 GScript::SetCameraPosFocLens(void)
	static void SetCameraPosFocLens();
	// BW1W120 006ee4b0 BW1M100 104dec80 GScript::MoveCameraPosFocLens(void)
	static void MoveCameraPosFocLens();
	// BW1W120 006ee630 BW1M100 104debd0 GScript::GetStoredCameraPosition(void)
	static void GetStoredCameraPosition();
	// BW1W120 006ee6a0 BW1M100 104deb30 GScript::GetStoredCameraFocus(void)
	static void GetStoredCameraFocus();
	// BW1W120 006ee710 BW1M100 104de930 GScript::GetFacingCameraPosition(void)
	static void GetFacingCameraPosition();
	// BW1W120 006ee840 BW1M100 104e41c0 GScript::GetComputerPlayer(void)
	static void GetComputerPlayer();
	// BW1W120 006ee8d0 BW1M100 104e4060 GScript::MoveComputerPlayer(void)
	static void MoveComputerPlayer();
	// BW1W120 006ee9d0 BW1M100 104e3f40 GScript::SetComputerPlayerPos(void)
	static void SetComputerPlayerPos();
	// BW1W120 006eeab0 BW1M100 104e3d90 GScript::GetComputerPlayerPos(void)
	static void GetComputerPlayerPos();
	// BW1W120 006eeba0 BW1M100 104e3cb0 GScript::SetComputerPaused(void)
	static void SetComputerPaused();
	// BW1W120 006eec40 BW1M100 104e3bb0 GScript::ComputerPlayerReady(void)
	static void ComputerPlayerReady();
	// BW1W120 006eecc0 BW1M100 104e3ac0 GScript::SetComputerPlayerOnOff(void)
	static void SetComputerPlayerOnOff();
	// BW1W120 006eed50 BW1M100 104e39d0 GScript::SetComputerPlayerPersonality(void)
	static void SetComputerPlayerPersonality();
	// BW1W120 006eede0 BW1M100 104e38e0 GScript::SetComputerPlayerSuppression(void)
	static void SetComputerPlayerSuppression();
	// BW1W120 006eee70 BW1M100 104e37d0 GScript::ForceComputerPlayerAction(void)
	static void ForceComputerPlayerAction();
	// BW1W120 006eef20 BW1M100 104e36c0 GScript::QueueComputerPlayerAction(void)
	static void QueueComputerPlayerAction();
	// BW1W120 006eefd0 BW1M100 104e3620 GScript::ReleaseComputerPlayer(void)
	static void ReleaseComputerPlayer();
	// BW1W120 006ef020 BW1M100 104e3540 GScript::SetComputerPlayerSpeed(void)
	static void SetComputerPlayerSpeed();
	// BW1W120 006ef090 BW1M100 104e3460 GScript::LoadComputerPlayerPersonalltyFile(void)
	static void LoadComputerPlayerPersonalltyFile();
	// BW1W120 006ef110 BW1M100 104e3380 GScript::SaveComputerPlayerPersonalltyFile(void)
	static void SaveComputerPlayerPersonalltyFile();
	// BW1W120 006ef190 BW1M100 104e3260 GScript::SetComputerPlayerPersonalltyAttitude(void)
	static void SetComputerPlayerPersonalltyAttitude();
	// BW1W120 006ef240 BW1M100 104e3130 GScript::GetComputerPlayerPersonalltyAttitude(void)
	static void GetComputerPlayerPersonalltyAttitude();
	// BW1W120 006ef2f0 BW1M100 104e3090 GScript::ClearComputerPlayerActions(void)
	static void ClearComputerPlayerActions();
	// BW1W120 006ef3c0 BW1M100 104e6440 GScript::AttachToId(void)
	static void AttachToId();
	// BW1W120 006ef9e0 BW1M100 104e5a40 GScript::DetachFromId(void)
	static void DetachFromId();
	// BW1W120 006efdc0 BW1M100 104e5290 GScript::DisbandId(void)
	static void DisbandId();
	// BW1W120 006eff50 BW1M100 104e5040 GScript::GetIdSize(void)
	static void GetIdSize();
	// BW1W120 006f00a0 BW1M100 104e4ea0 GScript::IsFlockMember(void)
	static void IsFlockMember();
	// BW1W120 006f0170 BW1M100 104e4d00 GScript::CreateDance(void)
	static void CreateDance();
	// BW1W120 006f0510 BW1M100 104e4760 GScript::FlockWithinLimits(void)
	static void FlockWithinLimits();
	// BW1W120 006f05a0 BW1M100 104e45b0 GScript::GetFirstInContainer(void)
	static void GetFirstInContainer();
	// BW1W120 006f0670 BW1M100 104e42d0 GScript::GetNextInContainer(void)
	static void GetNextInContainer();
	// BW1W120 006f0aa0 BW1M100 104e69f0 GScript::StopScript(void)
	static void StopScript();
	// BW1W120 006f0b10 BW1M100 104e6920 GScript::StopScriptsExcluding(void)
	static void StopScriptsExcluding();
	// BW1W120 006f0b70 BW1M100 104e6820 GScript::StopScriptsInFilesExcluding(void)
	static void StopScriptsInFilesExcluding();
	// BW1W120 006f0c00 BW1M100 104e6750 GScript::StopScriptsExcludingFiles(void)
	static void StopScriptsExcludingFiles();
	// BW1W120 006f0c60 BW1M100 104e6680 GScript::StopScriptsInFiles(void)
	static void StopScriptsInFiles();
	// BW1W120 006f0d60 BW1M100 104ea3b0 GScript::Call(void)
	static void Call();
	// BW1W120 006f0eb0 BW1M100 1001c770 GScript::CallNear(void)
	static void CallNear();
	// BW1W120 006f1010 BW1M100 104ea090 GScript::CallNearInState(void)
	static void CallNearInState();
	// BW1W120 006f1b20 BW1M100 104e96d0 GScript::CreateThing(void)
	static void CreateThing();
	// BW1W120 006f1c20 BW1M100 104e9590 GScript::CreateHighlight(void)
	static void CreateHighlight();
	// BW1W120 006f1d20 BW1M100 104e94b0 GScript::CreateTimer(void)
	static void CreateTimer();
	// BW1W120 006f1da0 BW1M100 104e92e0 GScript::CreateMist(void)
	static void CreateMist();
	// BW1W120 006f1f20 BW1M100 104e8f30 GScript::PopulateContainer(void)
	static void PopulateContainer();
	// BW1W120 006f21f0 BW1M100 104e8da0 GScript::CreateFlock(void)
	static void CreateFlock();
	// BW1W120 006f22f0 BW1M100 104e8c40 GScript::CallFromId(void)
	static void CallFromId();
	// BW1W120 006f23e0 BW1M100 104e8b60 GScript::GetObjectFlock(void)
	static void GetObjectFlock();
	// BW1W120 006f2450 BW1M100 104e8970 GScript::CallInNear(void)
	static void CallInNear();
	// BW1W120 006f25e0 BW1M100 104e8790 GScript::CallInNotNear(void)
	static void CallInNotNear();
	// BW1W120 006f2760 BW1M100 104e86a0 GScript::GetObjectHandOver(void)
	static void GetObjectHandOver();
	// BW1W120 006f27d0 BW1M100 104e85b0 GScript::GetHeldObject(void)
	static void GetHeldObject();
	// BW1W120 006f2840 BW1M100 104e8440 GScript::CallPoisonedFromId(void)
	static void CallPoisonedFromId();
	// BW1W120 006f2930 BW1M100 104e82d0 GScript::CallNotPoisonedFromId(void)
	static void CallNotPoisonedFromId();
	// BW1W120 006f2a20 BW1M100 104e8150 GScript::GetNearestTownOfPlayer(void)
	static void GetNearestTownOfPlayer();
	// BW1W120 006f2b30 BW1M100 104e7fc0 GScript::CreateReward(void)
	static void CreateReward();
	// BW1W120 006f2c70 BW1M100 104e7da0 GScript::CreateRewardInTown(void)
	static void CreateRewardInTown();
	// BW1W120 006f2e10 BW1M100 104e7bd0 GScript::CreateWithAngleAndScale(void)
	static void CreateWithAngleAndScale();
	// BW1W120 006f2f50 BW1M100 104e7a90 GScript::CreateRandomVillagerOfTribe(void)
	static void CreateRandomVillagerOfTribe();
	// BW1W120 006f3060 BW1M100 104e7980 GScript::GetTownWithId(void)
	static void GetTownWithId();
	// BW1W120 006f3100 BW1M100 104e7800 GScript::GetBuildingInTown(void)
	static void GetBuildingInTown();
	// BW1W120 006f31e0 BW1M100 104e7630 GScript::CallFlying(void)
	static void CallFlying();
	// BW1W120 006f3350 BW1M100 104e7580 GScript::GetObjectClicked(void)
	static void GetObjectClicked();
	// BW1W120 006f3390 BW1M100 104e74a0 GScript::GetTotemStatue(void)
	static void GetTotemStatue();
	// BW1W120 006f3450 BW1M100 104e71e0 GScript::GetDeadLiving(void)
	static void GetDeadLiving();
	// BW1W120 006f3590 BW1M100 104e7070 GScript::GetSpellIconFromTemple(void)
	static void GetSpellIconFromTemple();
	// BW1W120 006f3790 BW1M100 104ef090 GScript::CreateCreatureFromCreature(void)
	static void CreateCreatureFromCreature();
	// BW1W120 006f38f0 BW1M100 104eefc0 GScript::CreatureLearnEverything(void)
	static void CreatureLearnEverything();
	// BW1W120 006f3960 BW1M100 104eeec0 GScript::CreatureSetKnowsAction(void)
	static void CreatureSetKnowsAction();
	// BW1W120 006f3a10 BW1M100 104eedd0 GScript::CreatureSetAgendaPriority(void)
	static void CreatureSetAgendaPriority();
	// BW1W120 006f3a90 BW1M100 104eed00 GScript::CreatureTurnOffAllDesires(void)
	static void CreatureTurnOffAllDesires();
	// BW1W120 006f3b80 BW1M100 104eebe0 GScript::CreatureLearnDistinction(void)
	static void CreatureLearnDistinction();
	// BW1W120 006f3c50 BW1M100 104eea90 GScript::CreatureDoAction(void)
	static void CreatureDoAction();
	// BW1W120 006f3d40 BW1M100 104ee970 GScript::CallPlayerCreature(void)
	static void CallPlayerCreature();
	// BW1W120 006f3de0 BW1M100 104ee780 GScript::InCreatureHand(void)
	static void InCreatureHand();
	// BW1W120 006f3ef0 BW1M100 104ee620 GScript::CreatureSetDesireValue(void)
	static void CreatureSetDesireValue();
	// BW1W120 006f3ff0 BW1M100 104ee510 GScript::CreatureSetDesireActivated(void)
	static void CreatureSetDesireActivated();
	// BW1W120 006f4090 BW1M100 104ee410 GScript::CreatureSetAllDesireActivated(void)
	static void CreatureSetAllDesireActivated();
	// BW1W120 006f4120 BW1M100 104ee310 GScript::CreatureSetDesireMaximum(void)
	static void CreatureSetDesireMaximum();
	// BW1W120 006f41c0 BW1M100 104ee190 GScript::CreatureSetPlayer(void)
	static void CreatureSetPlayer();
	// BW1W120 006f42b0 BW1M100 104ee080 GScript::CreatureInitialiseNumTimesPerformedAction(void)
	static void CreatureInitialiseNumTimesPerformedAction();
	// BW1W120 006f4340 BW1M100 104edf50 GScript::CreatureGetNumTimesPerformedAction(void)
	static void CreatureGetNumTimesPerformedAction();
	// BW1W120 006f4400 BW1M100 104edee0 GScript::SetCreatureHelp(void)
	static void SetCreatureHelp();
	// BW1W120 006f4430 BW1M100 104ede50 GScript::TogglePlayerLeash(void)
	static void TogglePlayerLeash();
	// BW1W120 006f4480 BW1M100 104edc70 GScript::AttachObjectLeachToObject(void)
	static void AttachObjectLeachToObject();
	// BW1W120 006f4580 BW1M100 104edb40 GScript::AttachLeashToHand(void)
	static void AttachLeashToHand();
	// BW1W120 006f4610 BW1M100 104ed9e0 GScript::DetachObjectLeash(void)
	static void DetachObjectLeash();
	// BW1W120 006f46c0 BW1M100 104ed880 GScript::SetCreatureOnlyDesire(void)
	static void SetCreatureOnlyDesire();
	// BW1W120 006f4780 BW1M100 104ed730 GScript::SetCreatureOnlyDesireOff(void)
	static void SetCreatureOnlyDesireOff();
	// BW1W120 006f4820 BW1M100 104ed610 GScript::SetCreatureDevelopmentPhase(void)
	static void SetCreatureDevelopmentPhase();
	// BW1W120 006f48a0 BW1M100 104ed470 GScript::SwapCreature(void)
	static void SwapCreature();
	// BW1W120 006f4980 BW1M100 104ed330 GScript::IsLeashed(void)
	static void IsLeashed();
	// BW1W120 006f4a20 BW1M100 104ed210 GScript::SetCreatureHome(void)
	static void SetCreatureHome();
	// BW1W120 006f4af0 BW1M100 104ecff0 GScript::GetArena(void)
	static void GetArena();
	// BW1W120 006f4cb0 BW1M100 104eced0 GScript::SetCreatureCanAttackOwnTown(void)
	static void SetCreatureCanAttackOwnTown();
	// BW1W120 006f4d40 BW1M100 104ecdb0 GScript::IsFighting(void)
	static void IsFighting();
	// BW1W120 006f4dd0 BW1M100 104ecca0 GScript::SetCreatureSpellReversion(void)
	static void SetCreatureSpellReversion();
	// BW1W120 006f4e50 BW1M100 104ecb60 GScript::SetLeashWorks(void)
	static void SetLeashWorks();
	// BW1W120 006f4ef0 BW1M100 104ec9e0 GScript::CreatureLearnAllExcluding(void)
	static void CreatureLearnAllExcluding();
	// BW1W120 006f4fc0 BW1M100 104ec7d0 GScript::ObjectLeashedToObject(void)
	static void ObjectLeashedToObject();
	// BW1W120 006f50d0 BW1M100 104ec640 GScript::InteractionMagnitude(void)
	static void InteractionMagnitude();
	// BW1W120 006f5170 BW1M100 104ec4e0 GScript::CreatureAvailable(void)
	static void CreatureAvailable();
	// BW1W120 006f5210 BW1M100 104ec3d0 GScript::GetObjectDropped(void)
	static void GetObjectDropped();
	// BW1W120 006f52a0 BW1M100 104ec2f0 GScript::ClearDroppedByObject(void)
	static void ClearDroppedByObject();
	// BW1W120 006f5310 BW1M100 104ec1d0 GScript::GetObjectHeldByObject(void)
	static void GetObjectHeldByObject();
	// BW1W120 006f53a0 BW1M100 104ec010 GScript::GetActionCount(void)
	static void GetActionCount();
	// BW1W120 006f5460 BW1M100 104ebeb0 GScript::GetObjectLeashType(void)
	static void GetObjectLeashType();
	// BW1W120 006f5500 BW1M100 104ebdf0 GScript::CreatureForceFinish(void)
	static void CreatureForceFinish();
	// BW1W120 006f5570 BW1M100 104ebcd0 GScript::SetAnimationModify(void)
	static void SetAnimationModify();
	// BW1W120 006f5600 BW1M100 104ebbc0 GScript::SetCreatureReaction(void)
	static void SetCreatureReaction();
	// BW1W120 006f5680 BW1M100 104ebab0 GScript::SetCreatureInDevScript(void)
	static void SetCreatureInDevScript();
	// BW1W120 006f5700 BW1M100 104eb9c0 GScript::ReleaseObjectFocus(void)
	static void ReleaseObjectFocus();
	// BW1W120 006f5770 BW1M100 104eb710 GScript::SetCreatureFriends(void)
	static void SetCreatureFriends();
	// BW1W120 006f58c0 BW1M100 104eb5b0 GScript::ObjectInteractingWithObject(void)
	static void ObjectInteractingWithObject();
	// BW1W120 006f5980 BW1M100 104eb490 GScript::ConfineObject(void)
	static void ConfineObject();
	// BW1W120 006f5a60 BW1M100 104eb3c0 GScript::ClearConfineOnObject(void)
	static void ClearConfineOnObject();
	// BW1W120 006f5ac0 BW1M100 104eb120 GScript::GetOpposingCreatureType(void)
	static void GetOpposingCreatureType();
	// BW1W120 006f5b20 BW1M100 104eafd0 GScript::SetCreedProperties(void)
	static void SetCreedProperties();
	// BW1W120 006f5be0 BW1M100 104eaed0 GScript::SetCreatureName(void)
	static void SetCreatureName();
	// BW1W120 006f5c80 BW1M100 104eae20 GScript::PositionValidForCreature(void)
	static void PositionValidForCreature();
	// BW1W120 006f5cf0 BW1M100 104ead10 GScript::SetCreatureAutoFighting(void)
	static void SetCreatureAutoFighting();
	// BW1W120 006f5d70 BW1M100 104eac00 GScript::IsCreatureAutoFighting(void)
	static void IsCreatureAutoFighting();
	// BW1W120 006f5df0 BW1M100 104eab10 GScript::QueueCreatureFightMove(void)
	static void QueueCreatureFightMove();
	// BW1W120 006f5e60 BW1M100 104eaa20 GScript::QueueCreatureFightSpell(void)
	static void QueueCreatureFightSpell();
	// BW1W120 006f5ed0 BW1M100 104ea930 GScript::QueueCreatureFightStep(void)
	static void QueueCreatureFightStep();
	// BW1W120 006f5f40 BW1M100 104ea820 GScript::GetCreatureFightAction(void)
	static void GetCreatureFightAction();
	// BW1W120 006f5fc0 BW1M100 104ea6f0 GScript::GetCreatureFightQueuedHits(void)
	static void GetCreatureFightQueuedHits();
	// BW1W120 006f6060 BW1M100 104ea690 GScript::SetFightExit(void)
	static void SetFightExit();
	// BW1W120 006f6080 BW1M100 104ea590 GScript::SetCreatureAutoScale(void)
	static void SetCreatureAutoScale();
	// BW1W120 006f7910 BW1M100 104f0d70 GScript::IsFireNear(void)
	static void IsFireNear();
	// BW1W120 006f7bf0 BW1M100 10500100 GScript::SetWideScreen(void)
	static void SetWideScreen();
	// BW1W120 006f7c70 BW1M100 104fff90 GScript::RunTextWithNumber(void)
	static void RunTextWithNumber();
	// BW1W120 006f7f50 BW1M100 104ffb00 GScript::TempTextWithNumber(void)
	static void TempTextWithNumber();
	// BW1W120 006f8370 BW1M100 104ff590 GScript::SetScriptState(void)
	static void SetScriptState();
	// BW1W120 inlined BW1M100 104ff710 GScript::SetScriptState(Living *, ulong)
	static void SetScriptState(Living* living, uint32_t state);
	// BW1W120 006f84c0 BW1M100 104ff2b0 GScript::SetScriptStatePos(void)
	static void SetScriptStatePos();
	// BW1W120 006f8640 BW1M100 104ff070 GScript::SetScriptStateFloat(void)
	static void SetScriptStateFloat();
	// BW1W120 006f8770 BW1M100 104fedd0 GScript::SetScriptStateULData(void)
	static void SetScriptStateULData();
	// BW1W120 006f88a0 BW1M100 1004d150 GScript::GetPosition(void)
	static void GetPosition();
	// BW1W120 006f8a00 BW1M100 104fea60 GScript::SetPosition(void)
	static void SetPosition();
	// BW1W120 006f8ca0 BW1M100 10045680 GScript::GetDistance(void)
	static void GetDistance();
	// BW1W120 006f8da0 BW1M100 100151e0 GScript::Random(void)
	static void Random();
	// BW1W120 006f8e20 BW1M100 104fe780 GScript::RandomULONG(void)
	static void RandomULONG();
	// BW1W120 006f8e80 BW1M100 104fe4c0 GScript::MoveGameThing(void)
	static void MoveGameThing();
	// BW1W120 0070d220 BW1M100 1004f750 GScript::GetScriptGameThing(ulong)
	static GameThingWithPos* GetScriptGameThing(uint32_t id);
	// BW1W120 006f90b0 BW1M100 1002e4a0 GScript::SetFocus(void)
	static void SetFocus();
	// BW1W120 006f91f0 BW1M100 104fe210 GScript::SetFocusOnObject(void)
	static void SetFocusOnObject();
	// BW1W120 006f92d0 BW1M100 104fdfa0 GScript::DeleteObject(void)
	static void DeleteObject();
	// BW1W120 006f94a0 BW1M100 104fdde0 GScript::UpdateSnapShotDetails(void)
	static void UpdateSnapShotDetails();
	// BW1W120 006f9640 BW1M100 104fdc20 GScript::UpdateSnapShot(void)
	static void UpdateSnapShot();
	// BW1W120 006f97b0 BW1M100 104fda00 GScript::SnapShot(void)
	static void SnapShot();
	// BW1W120 006f99c0 BW1M100 104fd8f0 GScript::UpdateAlignment(void)
	static void UpdateAlignment();
	// BW1W120 006f9a60 BW1M100 104fd860 GScript::GetAlignment(void)
	static void GetAlignment();
	// BW1W120 006f9aa0 BW1M100 104fd720 GScript::CreateInfluenceOnObject(void)
	static void CreateInfluenceOnObject();
	// BW1W120 006f9b60 BW1M100 104fd5c0 GScript::CreateInfluenceOnPos(void)
	static void CreateInfluenceOnPos();
	// BW1W120 006f9c60 BW1M100 100336a0 GScript::GetInfluence(void)
	static void GetInfluence();
	// BW1W120 006f9d30 BW1M100 104fd480 GScript::GetPlayedPercentage(void)
	static void GetPlayedPercentage();
	// BW1W120 006f9dc0 BW1M100 100149f0 GScript::HasPlayed(void)
	static void HasPlayed();
	// BW1W120 006f9f50 BW1M100 104fd1c0 GScript::OverrideStateAnimation(void)
	static void OverrideStateAnimation();
	// BW1W120 006fa070 BW1M100 104fd110 GScript::CreateReaction(void)
	static void CreateReaction();
	// BW1W120 006fa0e0 BW1M100 104fcf90 GScript::RemoveReaction(void)
	static void RemoveReaction();
	// BW1W120 006fa180 BW1M100 104fcdc0 GScript::RemoveReactionsOfType(void)
	static void RemoveReactionsOfType();
	// BW1W120 006fa220 BW1M100 104fcc70 GScript::GetTargetObject(void)
	static void GetTargetObject();
	// BW1W120 006fa2c0 BW1M100 104fcb80 GScript::DesireIs(void)
	static void DesireIs();
	// BW1W120 006fa350 BW1M100 104fca50 GScript::GetObjectDestination(void)
	static void GetObjectDestination();
	// BW1W120 006fa430 BW1M100 104fc9e0 GScript::GetActionTextForObject(void)
	static void GetActionTextForObject();
	// BW1W120 006fa450 BW1M100 10006a90 GScript::AddReference(void)
	static void AddReference();
	// BW1W120 006fa470 BW1M100 10005410 GScript::RemoveReference(void)
	static void RemoveReference();
	// BW1W120 006fa490 BW1M100 104fc750 GScript::SetWeatherProperties(void)
	static void SetWeatherProperties();
	// BW1W120 006fa570 BW1M100 104fc640 GScript::SetTimeFadeProperties(void)
	static void SetTimeFadeProperties();
	// BW1W120 006fa600 BW1M100 104fc500 GScript::SetCloudProperties(void)
	static void SetCloudProperties();
	// BW1W120 006fa6b0 BW1M100 104fc3c0 GScript::SetLightningProperties(void)
	static void SetLightningProperties();
	// BW1W120 006fa770 BW1M100 104fc0e0 GScript::SetVelocityHeadingSpeed(void)
	static void SetVelocityHeadingSpeed();
	// BW1W120 006fa9e0 BW1M100 104fc020 GScript::StartGameSpeed(void)
	static void StartGameSpeed();
	// BW1W120 006faab0 BW1M100 104fbe90 GScript::EndGameSpeed(void)
	static void EndGameSpeed();
	// BW1W120 006faae0 BW1M100 104fbde0 GScript::SetGameSpeed(void)
	static void SetGameSpeed();
	// BW1W120 006fab30 BW1M100 104fbd20 GScript::BuildBuilding(void)
	static void BuildBuilding();
	// BW1W120 006fabc0 BW1M100 104fbc60 GScript::SetAffectedByWind(void)
	static void SetAffectedByWind();
	// BW1W120 006fac20 BW1M100 104fbbd0 GScript::IsWideScreenTransitionFinished(void)
	static void IsWideScreenTransitionFinished();
	// BW1W120 006fac50 BW1M100 104fba90 GScript::GetResource(void)
	static void GetResource();
	// BW1W120 006fad10 BW1M100 104fb920 GScript::AddResource(void)
	static void AddResource();
	// BW1W120 006fae00 BW1M100 104fb7c0 GScript::RemoveResource(void)
	static void RemoveResource();
	// BW1W120 006faef0 BW1M100 104fb4e0 GScript::GetTargetRelativePos(void)
	static void GetTargetRelativePos();
	// BW1W120 006fb150 BW1M100 104fb3a0 GScript::GetScriptState(void)
	static void GetScriptState();
	// BW1W120 006fb1f0 BW1M100 10030770 GScript::GetLandHeight(void)
	static void GetLandHeight();
	// BW1W120 006fb320 BW1M100 104fb250 GScript::LoadMap(void)
	static void LoadMap();
	// BW1W120 006fb380 BW1M100 104fb180 GScript::ReleaseActorFromScript(void)
	static void ReleaseActorFromScript();
	// BW1W120 006fb3e0 BW1M100 104fb0d0 GScript::SetMoveable(void)
	static void SetMoveable();
	// BW1W120 006fb450 BW1M100 104fb020 GScript::SetPickupable(void)
	static void SetPickupable();
	// BW1W120 006fb4c0 BW1M100 104faf50 GScript::IsOnFire(void)
	static void IsOnFire();
	// BW1W120 006fb520 BW1M100 104fae80 GScript::IsPoisoned(void)
	static void IsPoisoned();
	// BW1W120 006fb5b0 BW1M100 104fac60 GScript::GetPoisonedSize(void)
	static void GetPoisonedSize();
	// BW1W120 006fb6a0 BW1M100 104faa50 GScript::SetPoisoned(void)
	static void SetPoisoned();
	// BW1W120 006fb780 BW1M100 104fa930 GScript::SetOnFire(void)
	static void SetOnFire();
	// BW1W120 006fb840 BW1M100 104fa840 GScript::SetTemperature(void)
	static void SetTemperature();
	// BW1W120 006fb8c0 BW1M100 104fa550 GScript::SetIdTarget(void)
	static void SetIdTarget();
	// BW1W120 006fbb50 BW1M100 104fa3e0 GScript::SetWalkPath(void)
	static void SetWalkPath();
	// BW1W120 006fbc50 BW1M100 104fa2f0 GScript::GetWalkPathPercentage(void)
	static void GetWalkPathPercentage();
	// BW1W120 006fbcd0 BW1M100 104fa1b0 GScript::IsOfType(void)
	static void IsOfType();
	// BW1W120 006fbd80 BW1M100 104fa100 GScript::GetLastHitObject(void)
	static void GetLastHitObject();
	// BW1W120 006fbdc0 BW1M100 104fa050 GScript::GetObjectWhichHit(void)
	static void GetObjectWhichHit();
	// BW1W120 006fbe00 BW1M100 104f9fe0 GScript::ClearHitObject(void)
	static void ClearHitObject();
	// BW1W120 006fbe20 BW1M100 10026720 GScript::IsHitObject(void)
	static void IsHitObject();
	// BW1W120 006fbee0 BW1M100 104f9b40 GScript::GetSlowestInId(void)
	static void GetSlowestInId();
	// BW1W120 006fbfd0 BW1M100 104f9a50 GScript::IsHelpSystemOn(void)
	static void IsHelpSystemOn();
	// BW1W120 006fc020 BW1M100 104f99e0 GScript::SetHelpSystem(void)
	static void SetHelpSystem();
	// BW1W120 006fc050 BW1M100 104f9940 GScript::SetAviSequence(void)
	static void SetAviSequence();
	// BW1W120 006fc090 BW1M100 104f9860 GScript::PlayGesture(void)
	static void PlayGesture();
	// BW1W120 006fc130 BW1M100 104f93f0 GScript::DevFunction(void)
	static void DevFunction();
	// BW1W120 006fc520 BW1M100 104f9340 GScript::HasMouseWheel(void)
	static void HasMouseWheel();
	// BW1W120 006fc540 BW1M100 104f9270 GScript::GetNumberMouseButtons(void)
	static void GetNumberMouseButtons();
	// BW1W120 006fc580 BW1M100 104f9130 GScript::GetFootballPitch(void)
	static void GetFootballPitch();
	// BW1W120 006fc630 BW1M100 104f9050 GScript::StopAllGames(void)
	static void StopAllGames();
	// BW1W120 006fc6a0 BW1M100 104f8e80 GScript::AttachToGame(void)
	static void AttachToGame();
	// BW1W120 006fc7b0 BW1M100 104f8cf0 GScript::DetachFromGame(void)
	static void DetachFromGame();
	// BW1W120 006fc8b0 BW1M100 104f8bd0 GScript::DetachFirstFromGame(void)
	static void DetachFirstFromGame();
	// BW1W120 006fc950 BW1M100 104f8ac0 GScript::SetOnlyForScripts(void)
	static void SetOnlyForScripts();
	// BW1W120 006fc9e0 BW1M100 104f8910 GScript::StartWithReferee(void)
	static void StartWithReferee();
	// BW1W120 006fcae0 BW1M100 104f86d0 GScript::GetTeamSize(void)
	static void GetTeamSize();
	// BW1W120 006fcbe0 BW1M100 104f8600 GScript::GetType(void)
	static void GetType();
	// BW1W120 006fcc40 BW1M100 104f8540 GScript::GetSubType(void)
	static void GetSubType();
	// BW1W120 006fcca0 BW1M100 104f8410 GScript::GetDesire(void)
	static void GetDesire();
	// BW1W120 006fcd70 BW1M100 104f8310 GScript::SetFade(void)
	static void SetFade();
	// BW1W120 006fce00 BW1M100 104f8290 GScript::SetFadeIn(void)
	static void SetFadeIn();
	// BW1W120 006fce40 BW1M100 104f8210 GScript::IsFadeFinished(void)
	static void IsFadeFinished();
	// BW1W120 006fce60 BW1M100 10007790 GScript::GetThingBeliefForPlayer(void)
	static void GetThingBeliefForPlayer();
	// BW1W120 006fcf50 BW1M100 104f7f90 GScript::GetThingHelp(void)
	static void GetThingHelp();
	// BW1W120 006fd0a0 BW1M100 104f7e30 GScript::GetFirstHelp(void)
	static void GetFirstHelp();
	// BW1W120 006fd180 BW1M100 104f7cd0 GScript::GetLastHelp(void)
	static void GetLastHelp();
	// BW1W120 006fd260 BW1M100 104f7bc0 GScript::LoadMyCreature(void)
	static void LoadMyCreature();
	// BW1W120 006fd2f0 BW1M100 104f7a00 GScript::LoadComputerCreature(void)
	static void LoadComputerCreature();
	// BW1W120 006fd450 BW1M100 104f78b0 GScript::SetObjectRelativeBelief(void)
	static void SetObjectRelativeBelief();
	// BW1W120 006fd520 BW1M100 104f7760 GScript::SetBelief(void)
	static void SetBelief();
	// BW1W120 006fd6c0 BW1M100 104f76b0 GScript::SetVirtualInfluence(void)
	static void SetVirtualInfluence();
	// BW1W120 006fd720 BW1M100 104f7570 GScript::SetActive(void)
	static void SetActive();
	// BW1W120 006fd7e0 BW1M100 104f74a0 GScript::IsActive(void)
	static void IsActive();
	// BW1W120 006fd840 BW1M100 10039ea0 GScript::IsThingValid(void)
	static void IsThingValid();
	// BW1W120 006fd8c0 BW1M100 104f7360 GScript::VortexFadeOut(void)
	static void VortexFadeOut();
	// BW1W120 006fd940 BW1M100 104f71f0 GScript::SetMistFade(void)
	static void SetMistFade();
	// BW1W120 006fda30 BW1M100 104f70d0 GScript::GetMistFade(void)
	static void GetMistFade();
	// BW1W120 006fdad0 BW1M100 104f6fe0 GScript::PlayHandDemo(void)
	static void PlayHandDemo();
	// BW1W120 006fdb80 BW1M100 104f6f60 GScript::IsHandDemoPlayed(void)
	static void IsHandDemoPlayed();
	// BW1W120 006fdbd0 BW1M100 104f6d90 GScript::SetSkeleton(void)
	static void SetSkeleton();
	// BW1W120 006fdc80 BW1M100 104f6cc0 GScript::IsSkeleton(void)
	static void IsSkeleton();
	// BW1W120 006fdce0 BW1M100 104f6be0 GScript::AddTargetPos(void)
	static void AddTargetPos();
	// BW1W120 006fdd80 BW1M100 104f6b00 GScript::AddTargetObject(void)
	static void AddTargetObject();
	// BW1W120 006fde20 BW1M100 104f6940 GScript::SetIndestructable(void)
	static void SetIndestructable();
	// BW1W120 006fdee0 BW1M100 104f6890 GScript::SetSetOnFire(void)
	static void SetSetOnFire();
	// BW1W120 006fdf40 BW1M100 104f67e0 GScript::SetHurtByFire(void)
	static void SetHurtByFire();
	// BW1W120 006fdfa0 BW1M100 104f6710 GScript::ImmersionExists(void)
	static void ImmersionExists();
	// BW1W120 006fdfd0 BW1M100 104f6690 GScript::SetIntroBuilding(void)
	static void SetIntroBuilding();
	// BW1W120 006fe000 BW1M100 100267f0 GScript::ObjectInfoBits(void)
	static void ObjectInfoBits();
	// BW1W120 006fe090 BW1M100 104f6450 GScript::SetVortexParameters(void)
	static void SetVortexParameters();
	// BW1W120 006fe1f0 BW1M100 104f6330 GScript::SetHighlightProperties(void)
	static void SetHighlightProperties();
	// BW1W120 006fe280 BW1M100 104f6290 GScript::ScriptIsHandDemoTrigger(void)
	static void ScriptIsHandDemoTrigger();
	// BW1W120 006fe2c0 BW1M100 104f60d0 GScript::GetArsePosition(void)
	static void GetArsePosition();
	// BW1W120 006fe3c0 BW1M100 104f5ec0 GScript::GetBellyPosition(void)
	static void GetBellyPosition();
	// BW1W120 006fe4d0 BW1M100 104f5c30 GScript::GameThingCanViewCamera(void)
	static void GameThingCanViewCamera();
	// BW1W120 006fe650 BW1M100 104f5aa0 GScript::SetTownDesireBoost(void)
	static void SetTownDesireBoost();
	// BW1W120 006fe750 BW1M100 104f59c0 GScript::ClearActorMind(void)
	static void ClearActorMind();
	// BW1W120 006fe7c0 BW1M100 104f5930 GScript::EnterExitCitadel(void)
	static void EnterExitCitadel();
	// BW1W120 006fe800 BW1M100 104f57b0 GScript::SetObjectMana(void)
	static void SetObjectMana();
	// BW1W120 006fe8c0 BW1M100 104f5660 GScript::GetObjectMana(void)
	static void GetObjectMana();
	// BW1W120 006fe960 BW1M100 104f5500 GScript::GetSacrificeTotal(void)
	static void GetSacrificeTotal();
	// BW1W120 006fea00 BW1M100 104f53e0 GScript::SexIsMale(void)
	static void SexIsMale();
	// BW1W120 006fea70 BW1M100 104f5350 GScript::SetBookmarkPosition(void)
	static void SetBookmarkPosition();
	// BW1W120 006feab0 BW1M100 104f5200 GScript::SetScaffoldProperties(void)
	static void SetScaffoldProperties();
	// BW1W120 006feb90 BW1M100 104f50d0 GScript::SetDisciple(void)
	static void SetDisciple();
	// BW1W120 006fec40 BW1M100 104f4e90 GScript::SetBuildWorshipSite(void)
	static void SetBuildWorshipSite();
	// BW1W120 006fed70 BW1M100 104f4da0 GScript::SetPlayerAlly(void)
	static void SetPlayerAlly();
	// BW1W120 006fee10 BW1M100 104f4ca0 GScript::GetPlayerAlly(void)
	static void GetPlayerAlly();
	// BW1W120 006feeb0 BW1M100 104f4bf0 GScript::GetNoWindResistanceFlag(void)
	static void GetNoWindResistanceFlag();
	// BW1W120 006fef10 BW1M100 104f4b40 GScript::SetNoWindResistanceFlag(void)
	static void SetNoWindResistanceFlag();
	// BW1W120 006fef70 BW1M100 104f4a40 GScript::SetObjectFadeIn(void)
	static void SetObjectFadeIn();
	// BW1W120 006ff000 BW1M100 104f4890 GScript::AffectedBySpell(void)
	static void AffectedBySpell();
	// BW1W120 006ff0b0 BW1M100 104f4750 GScript::SetMagicInObject(void)
	static void SetMagicInObject();
	// BW1W120 006ff160 BW1M100 104f4540 GScript::GetObjectAdultSize(void)
	static void GetObjectAdultSize();
	// BW1W120 006ff270 BW1M100 104f4350 GScript::GetObjectCapacity(void)
	static void GetObjectCapacity();
	// BW1W120 006ff390 BW1M100 104f4170 GScript::GetObjectAdultCapacity(void)
	static void GetObjectAdultCapacity();
	// BW1W120 006ff4a0 BW1M100 104f4090 GScript::SquareRoot(void)
	static void SquareRoot();
	// BW1W120 006ff4e0 BW1M100 104f4020 GScript::SetPauseWeather(void)
	static void SetPauseWeather();
	// BW1W120 006ff500 BW1M100 104f3fb0 GScript::SetStormCreation(void)
	static void SetStormCreation();
	// BW1W120 006ff520 BW1M100 104f3ee0 GScript::KillStormsInArea(void)
	static void KillStormsInArea();
	// BW1W120 006ff5a0 BW1M100 104f3e20 GScript::InsideTemple(void)
	static void InsideTemple();
	// BW1W120 006ff5d0 BW1M100 104f3d60 GScript::RestartThing(void)
	static void RestartThing();
	// BW1W120 006ff640 BW1M100 104f3c20 GScript::GetTownWorshipDeaths(void)
	static void GetTownWorshipDeaths();
	// BW1W120 006ff6f0 BW1M100 104f3bc0 GScript::ClearDialogue(void)
	static void ClearDialogue();
	// BW1W120 006ff700 BW1M100 104f3b40 GScript::CloseDialogue(void)
	static void CloseDialogue();
	// BW1W120 006ff730 BW1M100 104f3a90 GScript::GetHandState(void)
	static void GetHandState();
	// BW1W120 006ff750 BW1M100 104f3a10 GScript::MapScriptFunction(void)
	static void MapScriptFunction();
	// BW1W120 006ff780 BW1M100 104f3950 GScript::GetPlayerTownTotal(void)
	static void GetPlayerTownTotal();
	// BW1W120 006ff7f0 BW1M100 104f38b0 GScript::SetLandBalance(void)
	static void SetLandBalance();
	// BW1W120 006ff840 BW1M100 104f37b0 GScript::TownBalanceBeliefScale(void)
	static void TownBalanceBeliefScale();
	// BW1W120 006ff8c0 BW1M100 104f3740 GScript::SetCreatureInTemple(void)
	static void SetCreatureInTemple();
	// BW1W120 006ff8e0 BW1M100 104f36c0 GScript::InstantSaveForScript(void)
	static void InstantSaveForScript();
	// BW1W120 006ff910 BW1M100 104f35c0 GScript::SetObjectCarrying(void)
	static void SetObjectCarrying();
	// BW1W120 006ff990 BW1M100 104f3430 GScript::TimeSinceObjectAttacked(void)
	static void TimeSinceObjectAttacked();
	// BW1W120 006ffa90 BW1M100 104f3350 GScript::GetTownAndVillagerHealthTotal(void)
	static void GetTownAndVillagerHealthTotal();
	// BW1W120 006ffb10 BW1M100 104f3260 GScript::AddForBuildingForTown(void)
	static void AddForBuildingForTown();
	// BW1W120 006ffba0 BW1M100 104f30b0 GScript::GetTemplePosition(void)
	static void GetTemplePosition();
	// BW1W120 006ffcb0 BW1M100 104f2d90 GScript::GetTempleEntrancePosition(void)
	static void GetTempleEntrancePosition();
	// BW1W120 006ffef0 BW1M100 104f2d20 GScript::CanSkipTutorial(void)
	static void CanSkipTutorial();
	// BW1W120 006fff10 BW1M100 104f2cb0 GScript::CanSkipTraining(void)
	static void CanSkipTraining();
	// BW1W120 006fff30 BW1M100 104f2c30 GScript::IsKeepingOldCreature(void)
	static void IsKeepingOldCreature();
	// BW1W120 006fff50 BW1M100 104f2bb0 GScript::CurrentProfileHasCreature(void)
	static void CurrentProfileHasCreature();
	// BW1W120 00708c50 BW1M100 10501070 GScript::SetClippingDistance(void)
	static void SetClippingDistance();
	// BW1W120 00708c80 BW1M100 10501000 GScript::SetDrawLeash(void)
	static void SetDrawLeash();
	// BW1W120 00708cb0 BW1M100 10500f90 GScript::SetDrawHighlight(void)
	static void SetDrawHighlight();
	// BW1W120 00708ce0 BW1M100 10500d30 GScript::SetHighGFXDetail(void)
	static void SetHighGFXDetail();
	// BW1W120 00708e30 BW1M100 10500c40 GScript::SetOpenCloseState(void)
	static void SetOpenCloseState();
	// BW1W120 00708eb0 BW1M100 10500be0 GScript::SetSunDraw(void)
	static void SetSunDraw();
	// BW1W120 00708ed0 BW1M100 10500ae0 GScript::PlayJCSpecial(void)
	static void PlayJCSpecial();
	// BW1W120 00708fc0 BW1M100 10500a30 GScript::IsPlayingJCSpecial(void)
	static void IsPlayingJCSpecial();
	// BW1W120 00709000 BW1M100 105007f0 GScript::ThingJCSpecial(void)
	static void ThingJCSpecial();
	// BW1W120 00709170 BW1M100 10500680 GScript::DrawTextA(void)
	static void DrawTextA();
	// BW1W120 00709290 BW1M100 105004f0 GScript::DrawTempText(void)
	static void DrawTempText();
	// BW1W120 007093b0 BW1M100 10500400 GScript::SetDrawTextColour(void)
	static void SetDrawTextColour();
	// BW1W120 00709430 BW1M100 10500360 GScript::FadeAllDrawText(void)
	static void FadeAllDrawText();
	// BW1W120 00709470 BW1M100 10500280 GScript::SetClippingWindow(void)
	static void SetClippingWindow();
	// BW1W120 00709510 BW1M100 10500210 GScript::ClearClippingWindow(void)
	static void ClearClippingWindow();
	// BW1W120 00709540 BW1M100 105001d0 GScript::SetHandDemoKeys(void)
	static void SetHandDemoKeys();
	// BW1W120 0070afe0 BW1M100 10504a50 GScript::IsLockedInteraction(void)
	static void IsLockedInteraction();
	// BW1W120 0070b040 BW1M100 10504970 GScript::GetHandPosition(void)
	static void GetHandPosition();
	// BW1W120 0070b0e0 BW1M100 10504900 GScript::ClearClickedObject(void)
	static void ClearClickedObject();
	// BW1W120 0070b100 BW1M100 10504890 GScript::ClearClickedPosition(void)
	static void ClearClickedPosition();
	// BW1W120 0070b120 BW1M100 10504750 GScript::PositionClickedNear(void)
	static void PositionClickedNear();
	// BW1W120 0070b200 BW1M100 105046e0 GScript::SetInterfaceInteraction(void)
	static void SetInterfaceInteraction();
	// BW1W120 0070b7f0 BW1M100 10503da0 GScript::GetEventsPerSecond(void)
	static void GetEventsPerSecond();
	// BW1W120 0070b880 BW1M100 10503c40 GScript::GetEventTimeSince(void)
	static void GetEventTimeSince();
	// BW1W120 0070b910 BW1M100 10503ae0 GScript::GetTotalEvents(void)
	static void GetTotalEvents();
	// BW1W120 0070b9a0 BW1M100 10503a60 GScript::SetCitadelInteract(void)
	static void SetCitadelInteract();
	// BW1W120 0070b9d0 BW1M100 105039f0 GScript::GameWithinRotation(void)
	static void GameWithinRotation();
	// BW1W120 0070b9f0 BW1M100 10503920 GScript::ScriptKeyDown(void)
	static void ScriptKeyDown();
	// BW1W120 0070ba20 BW1M100 105038a0 GScript::StartImmersion(void)
	static void StartImmersion();
	// BW1W120 0070ba50 BW1M100 10503820 GScript::StopImmersion(void)
	static void StopImmersion();
	// BW1W120 0070ba80 BW1M100 105037c0 GScript::StopAllImmersion(void)
	static void StopAllImmersion();
	// BW1W120 0070bfa0 BW1M100 10505ef0 GScript::SpellOnThing(void)
	static void SpellOnThing();
	// BW1W120 0070c190 BW1M100 10505d00 GScript::SpellAtPos(void)
	static void SpellAtPos();
	// BW1W120 0070c330 BW1M100 10505b40 GScript::SpecialEffectOnPos(void)
	static void SpecialEffectOnPos();
	// BW1W120 0070c460 BW1M100 10006850 GScript::SpecialEffectOnId(void)
	static void SpecialEffectOnId();
	// BW1W120 0070c560 BW1M100 10505980 GScript::GetSpellAtPoint(void)
	static void GetSpellAtPoint();
	// BW1W120 0070c660 BW1M100 105058c0 GScript::SetRadius(void)
	static void SetRadius();
	// BW1W120 0070c6c0 BW1M100 105057c0 GScript::SetPlayerMagic(void)
	static void SetPlayerMagic();
	// BW1W120 0070c750 BW1M100 105056a0 GScript::HasPlayerMagic(void)
	static void HasPlayerMagic();
	// BW1W120 0070c800 BW1M100 10505510 GScript::ObjectCastByObject(void)
	static void ObjectCastByObject();
	// BW1W120 0070c8d0 BW1M100 105053f0 GScript::IsWindMagicAtPos(void)
	static void IsWindMagicAtPos();
	// BW1W120 0070c9a0 BW1M100 105052b0 GScript::GetSpellLastCastTime(void)
	static void GetSpellLastCastTime();
	// BW1W120 0070ca50 BW1M100 105051f0 GScript::GetSpellLastCast(void)
	static void GetSpellLastCast();
	// BW1W120 0070cab0 BW1M100 10505070 GScript::GetSpellLastCastPos(void)
	static void GetSpellLastCastPos();
	// BW1W120 0070cb80 BW1M100 10504fd0 GScript::IsSpellCharging(void)
	static void IsSpellCharging();
	// BW1W120 0070cbd0 BW1M100 10504f10 GScript::IsThatSpellCharging(void)
	static void IsThatSpellCharging();
	// BW1W120 0070cc30 BW1M100 10504d90 GScript::SetMagicProperties(void)
	static void SetMagicProperties();
	// BW1W120 0070cd40 BW1M100 10504cb0 GScript::GetManaForSpell(void)
	static void GetManaForSpell();
	// BW1W120 0070cd80 BW1M100 10504c00 GScript::ClearPlayerSpellCharging(void)
	static void ClearPlayerSpellCharging();
	// BW1W120 0070d360 BW1M100 10506f20 GScript::DeleteAllScriptCreatedGameThings(void)
	static void DeleteAllScriptCreatedGameThings();
	// BW1W120 0070dae0 BW1M100 10044780 GScript::GetProperty(void)
	static void GetProperty();
	// BW1W120 0070f380 BW1M100 105084c0 GScript::SetProperty(void)
	static void SetProperty();
	// BW1W120 0070f480 BW1M100 10508350 GScript::ChangeObjectProperties(void)
	static void ChangeObjectProperties();
	// BW1W120 0070f7f0 BW1M100 1001f560 GScript::PlaySoundEffect(void)
	static void PlaySoundEffect();
	// BW1W120 0070f9b0 BW1M100 1050a780 GScript::SaySoundEffect(void)
	static void SaySoundEffect();
	// BW1W120 0070fa50 BW1M100 1050a670 GScript::StopSoundEffect(void)
	static void StopSoundEffect();
	// BW1W120 0070fb20 BW1M100 1050a5b0 GScript::StartMusic(void)
	static void StartMusic();
	// BW1W120 0070fb90 BW1M100 1050a550 GScript::StopMusic(void)
	static void StopMusic();
	// BW1W120 0070fba0 BW1M100 1050a490 GScript::IsMusicPlayed(void)
	static void IsMusicPlayed();
	// BW1W120 0070fbf0 BW1M100 1050a3c0 GScript::AttachMusic(void)
	static void AttachMusic();
	// BW1W120 0070fc60 BW1M100 1050a330 GScript::DetachMusic(void)
	static void DetachMusic();
	// BW1W120 0070fca0 BW1M100 1050a270 GScript::MoveMusicThing(void)
	static void MoveMusicThing();
	// BW1W120 0070fd10 BW1M100 1050a1c0 GScript::SetMusicEnable(void)
	static void SetMusicEnable();
	// BW1W120 0070fd70 BW1M100 1050a0f0 GScript::GetMusicObjectDistance(void)
	static void GetMusicObjectDistance();
	// BW1W120 0070fde0 BW1M100 1050a010 GScript::GetMusicEnumDistance(void)
	static void GetMusicEnumDistance();
	// BW1W120 0070fe60 BW1M100 10509f40 GScript::SetMusicPlayPosition(void)
	static void SetMusicPlayPosition();
	// BW1W120 0070ff00 BW1M100 10509eb0 GScript::RestartMusic(void)
	static void RestartMusic();
	// BW1W120 0070ff40 BW1M100 10509df0 GScript::MusicPlayed(void)
	static void MusicPlayed();
	// BW1W120 0070ffa0 BW1M100 10509d50 GScript::StartAngleSound(void)
	static void StartAngleSound();
	// BW1W120 0070ffe0 BW1M100 10509cb0 GScript::StartPitchSound(void)
	static void StartPitchSound();
	// BW1W120 00710020 BW1M100 10509c30 GScript::SetPlayCreatureSounds(void)
	static void SetPlayCreatureSounds();
	// BW1W120 00710050 BW1M100 10509b60 GScript::IsLastMusicLine(void)
	static void IsLastMusicLine();
	// BW1W120 007100b0 BW1M100 10509ab0 GScript::SetGameSound(void)
	static void SetGameSound();
	// BW1W120 00710100 BW1M100 10509a40 GScript::SoundExists(void)
	static void SoundExists();
	// BW1W120 00710120 BW1M100 105099d0 GScript::SetAlignmentMusic(void)
	static void SetAlignmentMusic();
	// BW1W120 00710150 BW1M100 105098e0 GScript::AttachSoundTag(void)
	static void AttachSoundTag();
	// BW1W120 007101d0 BW1M100 10509830 GScript::DetachSoundTag(void)
	static void DetachSoundTag();
	// BW1W120 00710230 BW1M100 10509780 GScript::IsSoundPlaying(void)
	static void IsSoundPlaying();
	// BW1W120 00710280 BW1M100 10509680 GScript::SaySoundEffectPlaying(void)
	static void SaySoundEffectPlaying();
	// BW1W120 00710460 BW1M100 1050c9d0 GScript::ScriptSpiritAppear(void)
	static void ScriptSpiritAppear();
	// BW1W120 007104e0 BW1M100 1050c8b0 GScript::ScriptSpiritDisappear(void)
	static void ScriptSpiritDisappear();
	// BW1W120 00710630 BW1M100 1050c620 GScript::SpiritLookAtGameThing(void)
	static void SpiritLookAtGameThing();
	// BW1W120 00710690 BW1M100 1050c490 GScript::StartSpiritControl(void)
	static void StartSpiritControl();
	// BW1W120 00710780 BW1M100 1050c370 GScript::EndSpiritControl(void)
	static void EndSpiritControl();
	// BW1W120 00710830 BW1M100 100118b0 GScript::IsSpiritFree(void)
	static void IsSpiritFree();
	// BW1W120 00710860 BW1M100 1050c280 GScript::StopSpiritPointing(void)
	static void StopSpiritPointing();
	// BW1W120 00710890 BW1M100 1050c200 GScript::StopSpiritLooking(void)
	static void StopSpiritLooking();
	// BW1W120 007108c0 BW1M100 1050c140 GScript::SpiritLookAtPosition(void)
	static void SpiritLookAtPosition();
	// BW1W120 00710940 BW1M100 1050bfb0 GScript::SpiritPlayAnim(void)
	static void SpiritPlayAnim();
	// BW1W120 00710a50 BW1M100 1050bf10 GScript::SpiritPlayed(void)
	static void SpiritPlayed();
	// BW1W120 00710aa0 BW1M100 1050bde0 GScript::ClingSpirit(void)
	static void ClingSpirit();
	// BW1W120 00710b70 BW1M100 1050bcb0 GScript::FlySpirit(void)
	static void FlySpirit();
	// BW1W120 00710c40 BW1M100 1050bbe0 GScript::SpiritSpeaks(void)
	static void SpiritSpeaks();
	// BW1W120 00710ca0 BW1M100 1050ba40 GScript::ScriptSpiritScreenPoint(void)
	static void ScriptSpiritScreenPoint();
	// BW1W120 00710e20 BW1M100 1050d950 GScript::SetGameTime(void)
	static void SetGameTime();
	// BW1W120 00710e60 BW1M100 1050d8e0 GScript::GetGameTime(void)
	static void GetGameTime();
	// BW1W120 00710e90 BW1M100 1050d850 GScript::GameTimeOnOff(void)
	static void GameTimeOnOff();
	// BW1W120 00710ec0 BW1M100 1050d7b0 GScript::MoveGameTime(void)
	static void MoveGameTime();
	// BW1W120 00710f20 BW1M100 1050d690 GScript::GetRealTime(void)
	static void GetRealTime();
	// BW1W120 00710fa0 BW1M100 1050d5c0 GScript::GetRealDay(void)
	static void GetRealDay();
	// BW1W120 00711000 BW1M100 1050d4e0 GScript::GetRealWeekDay(void)
	static void GetRealWeekDay();
	// BW1W120 00711070 BW1M100 1050d400 GScript::GetRealMonth(void)
	static void GetRealMonth();
	// BW1W120 007110e0 BW1M100 1050d320 GScript::GetRealYear(void)
	static void GetRealYear();
	// BW1W120 00711150 BW1M100 1050d2a0 GScript::StartCountDownTimer(void)
	static void StartCountDownTimer();
	// BW1W120 00711180 BW1M100 1050d250 GScript::RemoveCountDownTimer(void)
	static void RemoveCountDownTimer();
	// BW1W120 007111a0 BW1M100 1050d1d0 GScript::GetCountDownTimer(void)
	static void GetCountDownTimer();
	// BW1W120 007111d0 BW1M100 1050d110 GScript::CountDownTimerExists(void)
	static void CountDownTimerExists();
	// BW1W120 007111f0 BW1M100 1050d0c0 GScript::HideCountDownTimer(void)
	static void HideCountDownTimer();
	// BW1W120 00711210 BW1M100 1050d070 GScript::RevealCountDownTimer(void)
	static void RevealCountDownTimer();
	// BW1W120 00711230 BW1M100 1050cfd0 GScript::GetMoonPercentage(void)
	static void GetMoonPercentage();
	// BW1W120 00711280 BW1M100 10006d90 GScript::SetTimerTime(void)
	static void SetTimerTime();
	// BW1W120 00711370 BW1M100 10030000 GScript::GetTimeRemaining(void)
	static void GetTimeRemaining();
	// BW1W120 00711410 BW1M100 1050cd70 GScript::GetTimeSinceSet(void)
	static void GetTimeSinceSet();
	// BW1W120 007114b0 BW1M100 1050ccb0 GScript::SetGameTimeProperties(void)
	static void SetGameTimeProperties();
	// BW1W120 00711520 BW1M100 1050cc30 GScript::ResetGameTimeProperties(void)
	static void ResetGameTimeProperties();

	// BW1W120 006f9090 BW1M100 104fe420 GScript::SetFocusLoopFn(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong)
	static int SetFocusLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t param_3);

	// Non-virtual methods

	// BW1W120 006eb2d0 BW1M100 104de360 GScript::Reset(int)
	void Reset(int param_2);
	// BW1W120 006eb610 BW1M100 104de270 GScript::LoadBinary(char *)
	void LoadBinary(char* binary);
	// BW1W120 006eb6b0 BW1M100 100813d0 GScript::Process(void)
	void Process();
	// BW1W120 006eb9d0 BW1M100 10084630 GScript::ProcessFade(bool)
	void ProcessFade(bool param_1);
	// BW1W120 006eba90 BW1M100 104dd990 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
	void SetupScreenFadeTo(uint8_t r, uint8_t g, uint8_t b, int8_t a);
	// BW1W120 006ebbc0 BW1M100 104dd630 GScript::CleanGameForScriptReboot(void)
	void CleanGameForScriptReboot();
	// BW1W120 006ec790 BW1M100 104dc490 GScript::PUSH(void *, VMType)
	void PUSH(void* param_1, VMType param_2);
	// BW1W120 006f0cc0 BW1M100 104e6610 GScript::StopScriptsOfType(VMScriptType)
	void StopScriptsOfType(VMScriptType param_1);
	// BW1W120 006f62b0 BW1M100 104ef410 GScript::ScriptErrorMessage(char*)
	static void ScriptErrorMessage(char* msg);
	// BW1W120 006f62c0 BW1M100 100053d0 GScript::ScriptWarningMessage(char*)
	static void ScriptWarningMessage(char* msg);
	// BW1W120 006f7220 BW1M100 104f2030 GScript::FindAtPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindAtPos(const MapCoords& pos,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7280 BW1M100 1001c220 GScript::FindNearPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, float)
	static void* FindNearPos(const MapCoords& pos,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7340 BW1M100 104f1de0 GScript::FindTownAtPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindTownAtPos(const MapCoords& pos,
	                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                           SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7370 BW1M100 104f1d40 GScript::FindTownNearPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, float)
	static void* FindTownNearPos(const MapCoords& pos,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7380 BW1M100 104f1c30 GScript::FindCreatureAtPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindCreatureAtPos(const MapCoords& pos,
	                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                               SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f73c0 BW1M100 104f1af0 GScript::FindCreatureNearPos(MapCoords const &, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, float)
	static void* FindCreatureNearPos(const MapCoords& pos,
	                                 int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                 SCRIPT_OBJECT_TYPE type, uint32_t param_4, float radius);
	// BW1W120 006f7410 BW1M100 104f1a10 GScript::FindInTown(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindInTown(GameThingWithPos* thing,
	                        int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                        SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7470 BW1M100 104f18c0 GScript::FindInTownNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInTownNear(GameThingWithPos* thing,
	                            int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                            SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7500 BW1M100 104f1820 GScript::FindInFlock(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindInFlock(GameThingWithPos* thing,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7520 BW1M100 104f1780 GScript::FindInDance(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FindInDance(GameThingWithPos* thing,
	                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                         SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f7570 BW1M100 104f1670 GScript::FindInFlockNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInFlockNear(GameThingWithPos* thing,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f75c0 BW1M100 104f1560 GScript::FindInDanceNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInDanceNear(GameThingWithPos* thing,
	                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                             SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7670 BW1M100 104f1440 GScript::FindInFlockNotNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInFlockNotNear(GameThingWithPos* thing,
	                                int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f76c0 BW1M100 104f1320 GScript::FindInDanceNotNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInDanceNotNear(GameThingWithPos* thing,
	                                int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7710 BW1M100 104f11c0 GScript::FindInTownNotNear(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong, MapCoords const &, float)
	static void* FindInTownNotNear(GameThingWithPos* thing,
	                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                               SCRIPT_OBJECT_TYPE type, uint32_t param_4, const MapCoords& pos, float radius);
	// BW1W120 006f7850 BW1M100 104f1010 GScript::TownLoop(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* TownLoop(GameThingWithPos* thing,
	                      int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                      SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f78b0 BW1M100 104f0f50 GScript::FlockLoop(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* FlockLoop(GameThingWithPos* thing,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
	// BW1W120 006f78e0 BW1M100 104f0e90 GScript::DanceLoop(GameThingWithPos *, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	static void* DanceLoop(GameThingWithPos* thing,
	                       int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE type, uint32_t param_4);
};

class GScriptOpposingCreature : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006f3770 BW1M100 104eb2a0 GScriptOpposingCreature::_dt(void)
	virtual ~GScriptOpposingCreature();
	// BW1W120 006f3710 BW1M100 104ef2f0 GScriptOpposingCreature::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */

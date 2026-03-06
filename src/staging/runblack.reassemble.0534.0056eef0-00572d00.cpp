#include "MultiplayerConditionBox.h"
#include "GameThing.h"
#include "GameThingWithPos.h"
#include "GatheringBox.h"
#include "SetupStaticTextNoHit.h"
#include "SetupMP3Button.h"

// win1.41 0056eef0 mac inlined MultiplayerConditionBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void MultiplayerConditionBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0056f260 mac inlined MultiplayerConditionBox::Destroy(void)
void MultiplayerConditionBox::Destroy()
{
}

// win1.41 0056f460 mac inlined MultiplayerConditionBox::InitControls(void)
void MultiplayerConditionBox::InitControls()
{
}

// win1.41 0056fa10 mac 10088880 GameThing::GameThing(void)
GameThing::GameThing()
{
}

// win1.41 0056fa50 mac 10086e30 GameThing::~GameThing(void)
GameThing::~GameThing()
{
}

// win1.41 0056faa0 mac 10492500 GameThing::ProcessDead(int)
void GameThing::ProcessDead(int param_1)
{
}

// win1.41 0056fb10 mac 1008e550 GameThing::ProcessDeadList(int)
void GameThing::ProcessDeadList(int param_1)
{
}

// win1.41 0056fb70 mac 10380a20 GameThing::ToBeDeleted(int)
void GameThing::ToBeDeleted(int param_1)
{
}

// win1.41 0056fbe0 mac 101724b0 GameThing::Save(GameOSFile &)
bool GameThing::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0056fcf0 mac 103807f0 GameThing::Load(GameOSFile &)
bool GameThing::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0056fd90 mac 101361c0 GameThing::GetSaveType(void)
uint32_t GameThing::GetSaveType()
{
    return 0;
}

// win1.41 0056fda0 mac 100bc180 GameThing::SaveExtraData(GameOSFile &)
void GameThing::SaveExtraData(GameOSFile* file)
{
}

// win1.41 0056fe00 mac 100bc3e0 GameThingWithPos::ToBeDeleted(int)
void GameThingWithPos::ToBeDeleted(int param_1)
{
}

// win1.41 0056fe20 mac 106fd140 GameThingWithPos::Get3DSoundPos(LHPoint*)
int GameThingWithPos::Get3DSoundPos(LHPoint* param_1)
{
    return 0;
}

// win1.41 0056fe60 mac 100bbfe0 GameThingWithPos::GetPower( const(void))
float GameThingWithPos::GetPower() const
{
    return 0;
}

// win1.41 0056fe70 mac 103793b0 GameThingWithPos::GetBoredomMultiplier(Reaction *)
int GameThingWithPos::GetBoredomMultiplier(Reaction* param_1)
{
    return 0;
}

// win1.41 0056feb0 mac 10002750 GameThingWithPos::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float GameThingWithPos::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
    return 0;
}

// win1.41 0056fec0 mac 10513050 GameThingWithPos::GetPSysPower( const(void))
float GameThingWithPos::GetPSysPower() const
{
    return 0;
}

// win1.41 0056fed0 mac 10160960 GameThing::MaintainSpell(Spell *, float)
void GameThing::MaintainSpell(uint32_t param_1, float param_2)
{
}

// win1.41 0056fee0 mac 100fc510 GameThing::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void GameThing::UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2)
{
}

// win1.41 0056fef0 mac 103c2300 GameThing::CheckAndSetSaved(void)
bool GameThing::CheckAndSetSaved()
{
    return 0;
}

// win1.41 0056ff10 mac 103c22d0 GameThing::GetTown(void)
Town* GameThing::GetTown()
{
    return 0;
}

// win1.41 0056ff20 mac 1019c820 GameThingWithPos::GetMovementDirection(LHPoint *)
void GameThingWithPos::GetMovementDirection(LHPoint* pos)
{
}

// win1.41 0056ff50 mac 1056c0f0 GameThingWithPos::GetPhysicsMovementDirection(LHPoint *)
void GameThingWithPos::GetPhysicsMovementDirection(LHPoint* pos)
{
}

// win1.41 0056ff70 mac 10569e60 GameThingWithPos::GetImpressiveType(void)
IMPRESSIVE_TYPE GameThingWithPos::GetImpressiveType()
{
    return (IMPRESSIVE_TYPE)0;
}

// win1.41 00570130 mac 10364e60 GameThing::GetPlayer(void)
GPlayer* GameThing::GetPlayer()
{
    return 0;
}

// win1.41 00570150 mac 10359980 GameThing::SetPlayer(GPlayer *)
void GameThing::SetPlayer(GPlayer* param_1)
{
}

// win1.41 005701b0 mac 1007b9d0 GameThingWithPos::IsInteractable(void)
bool GameThingWithPos::IsInteractable()
{
    return 0;
}

// win1.41 005701c0 mac 103623e0 GameThingWithPos::CanBeThrownByPlayer(void)
bool32_t GameThingWithPos::CanBeThrownByPlayer()
{
    return 0;
}

// win1.41 00570200 mac 100008c0 GameThingWithPos::GetScriptObjectType(void)
uint32_t GameThingWithPos::GetScriptObjectType()
{
    return 0;
}

// win1.41 00570210 mac 10357d80 GameThingWithPos::SetSpeedInMetres(float, int)
void GameThingWithPos::SetSpeedInMetres(float speed, int scale)
{
}

// win1.41 00570220 mac 103e3220 GameThingWithPos::GetSpeedInMetres( const(void))
float GameThingWithPos::GetSpeedInMetres() const
{
    return 0;
}

// win1.41 00570230 mac 10492670 GameThingWithPos::GetRunningSpeedInMetres(void)
float GameThingWithPos::GetRunningSpeedInMetres()
{
    return 0;
}

// win1.41 00570240 mac 101473d0 GameThingWithPos::GetDefaultSpeedInMetres(void)
float GameThingWithPos::GetDefaultSpeedInMetres()
{
    return 0;
}

// win1.41 00570250 mac 101723c0 GameThingWithPos::SetSpeedInMetresPerSecond(float, int)
void GameThingWithPos::SetSpeedInMetresPerSecond(float speed, int scale)
{
}

// win1.41 00570260 mac 1055f490 GameThingWithPos::GetSpeedInMetresPerSecond( const(void))
float GameThingWithPos::GetSpeedInMetresPerSecond() const
{
    return 0;
}

// win1.41 00570270 mac 100bc060 GameThingWithPos::GetRunningSpeedInMetresPerSecond(void)
float GameThingWithPos::GetRunningSpeedInMetresPerSecond()
{
    return 0;
}

// win1.41 00570280 mac 1055e070 GameThingWithPos::GetDefaultSpeedInMetresPerSecond(void)
float GameThingWithPos::GetDefaultSpeedInMetresPerSecond()
{
    return 0;
}

// win1.41 00570290 mac 1036ad90 GameThingWithPos::ForDrawFXGetNumVertices(void)
int GameThingWithPos::ForDrawFXGetNumVertices()
{
    return 0;
}

// win1.41 005702a0 mac 1056f610 GameThingWithPos::ForDrawFXGetVertexPos(long, LHPoint *)
void GameThingWithPos::ForDrawFXGetVertexPos(int param_1, LHPoint* param_2)
{
}

// win1.41 005702b0 mac 10172410 GameThingWithPos::GetDistanceFromObject(MapCoords const &)
float GameThingWithPos::GetDistanceFromObject(const MapCoords* target)
{
    return 0;
}

// win1.41 005702e0 mac 10110d20 GameThingWithPos::GetPSysBeamTargetPos(LHPoint *)
void GameThingWithPos::GetPSysBeamTargetPos(LHPoint* pos)
{
}

// win1.41 00570330 mac 100e4740 GameThing::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void GameThing::UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3)
{
}

// win1.41 00570350 mac 10005560 GameThingWithPos::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void GameThingWithPos::UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3)
{
}

// win1.41 005703a0 mac 103dbd40 GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
}

// win1.41 005703d0 mac 10174fb0 GameThingWithPos::GetFOVHelpMessageSet(void)
uint32_t GameThingWithPos::GetFOVHelpMessageSet()
{
    return 0;
}

// win1.41 005703e0 mac 100e46f0 GameThingWithPos::GetFOVHelpCondition(void)
uint32_t GameThingWithPos::GetFOVHelpCondition()
{
    return 0;
}

// win1.41 005703f0 mac 10512f10 GameThingWithPos::Save(GameOSFile &)
bool GameThingWithPos::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005704a0 mac 1016a2c0 GameThingWithPos::Load(GameOSFile &)
bool GameThingWithPos::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00570560 mac 10430e60 GameThingWithPos::GetSaveType(void)
uint32_t GameThingWithPos::GetSaveType()
{
    return 0;
}

// win1.41 00570570 mac 10541fb0 GameThingWithPos::GetSpellCastPos(void)
void GameThingWithPos::GetSpellCastPos(MapCoords* outPos)
{
}

// win1.41 00570590 mac 101bf190 GameThingWithPos::GetOverwritePickUpToolTip(void)
uint32_t GameThingWithPos::GetOverwritePickUpToolTip()
{
    return 0;
}

// win1.41 005705a0 mac 100b34e0 GameThingWithPos::GetOverwriteInteractableToolTip(void)
uint32_t GameThingWithPos::GetOverwriteInteractableToolTip()
{
    return 0;
}

// win1.41 005705b0 mac 10097060 GameThingWithPos::GetOverwriteDropToolTip(void)
uint32_t GameThingWithPos::GetOverwriteDropToolTip()
{
    return 0;
}

// win1.41 005705c0 mac 103eff20 GameThingWithPos::GetOverwriteTapToolTip(void)
uint32_t GameThingWithPos::GetOverwriteTapToolTip()
{
    return 0;
}

// win1.41 005705d0 mac 10098a30 GameThingWithPos::SetToZero(void)
void GameThingWithPos::SetToZero()
{
}

// win1.41 005705f0 mac 10560530 GameThing::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t GameThing::JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3)
{
    return 0;
}

// win1.41 00570600 mac 1054a9d0 GameThing::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t GameThing::JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    return 0;
}

// win1.41 00570610 mac 101669d0 GameThing::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t GameThing::JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    return 0;
}

// win1.41 00570e90 mac 10326ea0 GatheringBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void GatheringBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 00571f00 mac 10328c60 SetupStaticTextNoHit::HitTest(int, int)
bool SetupStaticTextNoHit::HitTest(int x, int y)
{
    return 0;
}

// win1.41 00571f10 mac 10328bc0 SetupStaticTextNoHit::~SetupStaticTextNoHit(void)
SetupStaticTextNoHit::~SetupStaticTextNoHit()
{
}

// win1.41 00571f30 mac 103547d0 SetupMP3Button::~SetupMP3Button(void)
SetupMP3Button::~SetupMP3Button()
{
}

// win1.41 00572530 mac 103266d0 GatheringBox::Destroy(void)
void GatheringBox::Destroy()
{
}

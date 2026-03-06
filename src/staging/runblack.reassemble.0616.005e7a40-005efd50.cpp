#include "LHInetWeather.h"
#include "lionhead/lhmultiplayer/ver4.0/LHLobby.h"
#include "Living.h"
#include "Mobile.h"
#include "LivingAction.h"
#include "DataPath.h"

// win1.41 005e98b0 mac 10352780 LHInetWeather::InitForGame(void)
void LHInetWeather::InitForGame()
{
}

// win1.41 005ea900 mac 100ed350 LHLobby::_dt(void)
LHLobby::~LHLobby()
{
}

// // win1.41 005ebec0 mac 10383560 Living::Living(MapCoords const &, GLivingInfo const *)
// Living::Living(const MapCoords& coords, const GLivingInfo& info)
// {
// }

// // win1.41 005ec000 mac inlined Mobile::Mobile(MapCoords const &, GMobileInfo const *)
// Mobile::Mobile(const MapCoords& coords, const GMobileInfo& info)
// {
// }

// win1.41 005ec030 mac 103834b0 Living::SetToZero(void)
void Living::SetToZero()
{
}

// win1.41 005ec0a0 mac 10383210 Living::ToBeDeleted(int)
void Living::ToBeDeleted(int param_1)
{
}

// win1.41 005ec1d0 mac 103831d0 Living::InvalidState(void)
bool Living::InvalidState()
{
    return 0;
}

// win1.41 005ec1e0 mac 103830e0 Living::GetFinalDestPos(MapCoords *)
MapCoords* Living::GetFinalDestPos(MapCoords* pos)
{
    return 0;
}

// win1.41 005ec270 mac 1004cf70 Living::MoveToPos(void)
int Living::MoveToPos()
{
    return 0;
}

// win1.41 005ec2c0 mac 10382da0 Living::MoveToObject(void)
uint32_t Living::MoveToObject()
{
    return 0;
}

// win1.41 005ec330 mac 10382cf0 Living::Flying(void)
uint32_t Living::Flying()
{
    return 0;
}

// win1.41 005ec340 mac 10382c10 Living::MoveByTeleport(MapCoords const &)
void Living::MoveByTeleport(const MapCoords* param_1)
{
}

// win1.41 005ec390 mac 10382b30 Living::SetDying(void)
bool Living::SetDying()
{
    return 0;
}

// win1.41 005ec3e0 mac 10382af0 Living::GetNumTurnsToDieOver(void)
uint32_t Living::GetNumTurnsToDieOver()
{
    return 0;
}

// win1.41 005ec4b0 mac 10382830 Living::Downed(void)
bool Living::Downed()
{
    return 0;
}

// win1.41 005ec520 mac 103826a0 Living::LookAtObject(GameThingWithPos *, unsigned long)
uint32_t Living::LookAtObject(GameThingWithPos* param_1, unsigned long param_2)
{
    return 0;
}

// win1.41 005ec550 mac 10382540 Living::LookAtPos(MapCoords const &, ulong)
bool Living::LookAtPos(MapCoords* pos, int param_2)
{
    return 0;
}

// win1.41 005ec810 mac 1004bb10 Living::ProcessLiving(void)
void Living::ProcessLiving()
{
}

// win1.41 005ec960 mac 1004eb50 Living::IsReadyForNewAnimation(unsigned long)
bool Living::IsReadyForNewAnimation(uint32_t index)
{
    return 0;
}

// win1.41 005ec990 mac 10054e20 Living::WaitForAnimation(void)
uint32_t Living::WaitForAnimation()
{
    return 0;
}

// win1.41 005ec9b0 mac 10382060 Living::CallVirtualFunctionsForCreation(MapCoords const &)
void Living::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 005eca60 mac 10381e30 Living::GetReaction(void)
void Living::GetReaction()
{
}

// win1.41 005eca80 mac inlined Living::SetTopStateToFinal(void)
void Living::SetTopStateToFinal()
{
}

// win1.41 005ecaa0 mac inlined Living::IsDeathState( const(VILLAGER_STATES))
bool Living::IsDeathState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ecac0 mac 10091bd0 Living::PlayAnimThenSetState(unsigned char, unsigned long)
void Living::PlayAnimThenSetState(unsigned char param_1, unsigned long param_2)
{
}

// win1.41 005ecaf0 mac 1004c540 Living::GetAge(void)
uint32_t Living::GetAge()
{
    return 0;
}

// win1.41 005ecb10 mac 10053750 Living::SetStateAnim(void)
void Living::SetStateAnim()
{
}

// win1.41 005ecb80 mac inlined Living::SetAnim__i(int)
void Living::SetAnim__i(int param_1)
{
}

// win1.41 005ecba0 mac inlined Living::SetAnim__li(int, int)
void Living::SetAnim__li(int param_1, int param_2)
{
}

// win1.41 005ecc10 mac 10084310 Living::IsDancing(void)
bool Living::IsDancing()
{
    return 0;
}

// win1.41 005ecc70 mac 10381350 LivingAction::LivingAction(void)
LivingAction::LivingAction()
{
}

// win1.41 005ecc90 mac 10072200 LivingAction::SetState(unsigned long, unsigned char)
void LivingAction::SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state)
{
}

// win1.41 005eccb0 mac 10381220 Living::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Living::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005eccd0 mac inlined Living::ExitReaction(VILLAGER_STATES)
int Living::ExitReaction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ecd00 mac 10380fd0 Living::MoveOnStructure(void)
uint32_t Living::MoveOnStructure()
{
    return 0;
}

// win1.41 005ecdb0 mac 10380b40 Living::MoveInFlock(void)
bool Living::MoveInFlock()
{
    return 0;
}

// win1.41 005ecf60 mac 1006ced0 Living::GetFlockPos(void)
MapCoords* Living::GetFlockPos()
{
    return 0;
}

// win1.41 005ecf70 mac 1004bf90 Living::IAmFlockLeader(void)
bool Living::IAmFlockLeader()
{
    return 0;
}

// win1.41 005ecfa0 mac 10065500 Living::GetDomainRadius(void)
uint16_t Living::GetDomainRadius()
{
    return 0;
}

// win1.41 005ecfc0 mac 1006cd50 Living::GetFlockDistance(void)
uint16_t Living::GetFlockDistance()
{
    return 0;
}

// win1.41 005ed080 mac 100336b0 Living::CalcRandomPos(MapCoords const &, float, float)
MapCoords* Living::CalcRandomPos(MapCoords* param_1, MapCoords* param_2, float param_3, float param_4)
{
    return 0;
}

// win1.41 005ed2b0 mac 10380650 Living::DebugShowTime(unsigned long, unsigned char, unsigned char)
uint32_t Living::DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3)
{
    return 0;
}

// win1.41 005ed2c0 mac 10380600 Living::SetAge(float)
void Living::SetAge(int age)
{
}

// win1.41 005ed2f0 mac 103804c0 Living::GetBoundingSphere(LHPoint &, float &)
void Living::GetBoundingSphere(LHPoint* param_1, float* param_2)
{
}

// win1.41 005ed370 mac 103803b0 Living::HasSunk(void)
bool Living::HasSunk()
{
    return 0;
}

// win1.41 005ed3e0 mac 10380210 Living::ReactToPhysicsImpact(PhysicsObject *, bool)
void Living::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 005ed4f0 mac 103801d0 Living::CanBecomeAPhysicsObject(void)
bool Living::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 005ed500 mac inlined Living::ExitInHand(VILLAGER_STATES)
int Living::ExitInHand(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ed540 mac inlined Living::ExitInFlying(VILLAGER_STATES)
int Living::ExitInFlying(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ed580 mac inlined Living::ExitInLanded(VILLAGER_STATES)
int Living::ExitInLanded(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ed590 mac 1037ffb0 Living::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Living::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 005ed5c0 mac 1037fd10 Living::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Living::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 005ed7e0 mac inlined Living::EnterInScript(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterInScript(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 005ed9a0 mac 1006cf40 Living::StateInScript(void)
uint32_t Living::StateInScript()
{
    return 0;
}

// win1.41 005ed9c0 mac inlined Living::ExitInScript(VILLAGER_STATES)
int Living::ExitInScript(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005eda50 mac inlined Living::EnterDanceInScript(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterDanceInScript(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 005edad0 mac 1037f9b0 Living::StateInDance(void)
uint32_t Living::StateInDance()
{
    return 0;
}

// win1.41 005edb10 mac inlined Living::ExitDanceInScript(VILLAGER_STATES)
int Living::ExitDanceInScript(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005edba0 mac 1037f690 Living::CreatureMustAvoid(Creature *)
bool Living::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 005edc10 mac 1037f3d0 Living::SetupMoveOnFootpath(GFootpath *, int, unsigned char, GFootpathNode *)
int Living::SetupMoveOnFootpath(GFootpath* param_1, uint32_t param_2, uint32_t param_3, GFootpathNode* param_4)
{
    return 0;
}

// win1.41 005edd20 mac 100980f0 Living::SetupMoveToOnFootpath(GameThingWithPos &, MapCoords const &, unsigned char)
void Living::SetupMoveToOnFootpath(GameThingWithPos* destination, MapCoords* arrive_position, uint8_t state)
{
}

// win1.41 005edd90 mac inlined Living::EnterMoveToPos(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterMoveToPos(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 005edda0 mac 1001fb70 Living::ExitMoveToPos(unsigned char)
int Living::ExitMoveToPos(uint8_t param_1)
{
    return 0;
}

// win1.41 005eddc0 mac 1037f2a0 Living::ExitBeingEaten(unsigned char)
int Living::ExitBeingEaten(uint8_t param_1)
{
    return 0;
}

// win1.41 005eddd0 mac 1037f260 Living::EnterMoveOnPath(unsigned char, unsigned char)
uint32_t Living::EnterMoveOnPath(VILLAGER_STATES state_1, VILLAGER_STATES state_2)
{
    return 0;
}

// win1.41 005edde0 mac 1037eef0 Living::MoveOnFootpath(void)
int Living::MoveOnFootpath()
{
    return 0;
}

// win1.41 005ee090 mac inlined Living::ExitMoveOnPath(VILLAGER_STATES)
int Living::ExitMoveOnPath(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 005ee230 mac 1037e700 Living::MoveAlongPath(void)
uint32_t Living::MoveAlongPath()
{
    return 0;
}

// win1.41 005ee550 mac 1037e4a0 Living::CanBeHealedByHealSpell(void)
bool Living::CanBeHealedByHealSpell()
{
    return 0;
}

// win1.41 005ee560 mac 1037e320 Living::RemoveFromGame(void)
uint32_t Living::RemoveFromGame()
{
    return 0;
}

// win1.41 005ee5f0 mac 1037e2a0 Living::SetFlock(Flock *)
void Living::SetFlock(Flock* param_1)
{
}

// win1.41 005ee630 mac 1037ddd0 Living::Save(GameOSFile &)
bool Living::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005ee960 mac 1037d8d0 Living::Load(GameOSFile &)
bool Living::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005eed20 mac 1037d880 Living::ResolveLoad(void)
void Living::ResolveLoad()
{
}

// win1.41 005eed30 mac 1037d620 DataPath::Save(GameOSFile &)
bool DataPath::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005eeec0 mac 1037d3e0 DataPath::Load(GameOSFile &)
bool DataPath::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005ef010 mac 10065550 Living::PosWithinDomain(MapCoords const &, float)
uint32_t Living::PosWithinDomain(MapCoords* param_1, float param_2)
{
    return 0;
}

// win1.41 005ef040 mac 1037d350 DataPath::DataPath(void)
DataPath::DataPath()
{
}

// win1.41 005ef070 mac 10383840 DataPath::GetSaveType(void)
uint32_t DataPath::GetSaveType()
{
    return 0;
}

// win1.41 005ef080 mac 10383880 DataPath::GetDebugText(void)
char* DataPath::GetDebugText()
{
    return 0;
}

// win1.41 005ef090 mac 1037d2b0 DataPath::_dt(void)
DataPath::~DataPath()
{
}

// win1.41 005ef340 mac 1037cc80 Living::GetInHandImmersionTexture(void)
IMMERSION_EFFECT_TYPE Living::GetInHandImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}

// win1.41 005ef930 mac 103841e0 Living::RemoveFromDance(int)
void Living::RemoveFromDance(int param_1)
{
}

// win1.41 005ef9c0 mac 10384160 Living::CalculateDancePosition(MapCoords const &, MapCoords *)
bool Living::CalculateDancePosition(const MapCoords* param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 005ef9f0 mac 10383ce0 Living::PerformDance(MapCoords const &, unsigned char, unsigned long)
bool32_t Living::PerformDance(const MapCoords* param_1, unsigned char param_2, unsigned long param_3)
{
    return 0;
}

#include "HanoiBlock.h"
#include "Rand.h"
#include "SquadInfo.h"
#include "RankInfo.h"
#include "Rank.h"
#include "ReactionInfo.h"
#include "Reaction.h"
#include "Living.h"
#include "RewardInfo.h"
#include "Reward.h"
#include "Rock.h"
#include "ScaffoldInfo.h"
#include "Scaffold.h"
#include "Script.h"

// win1.41 006de3f0 mac 1011eed0 HanoiBlock::InterfaceSetInMagicHand(GInterfaceStatus *)
bool HanoiBlock::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006de440 mac 1011ee00 HanoiBlock::IsCannotBePickedUp( const(void))
bool HanoiBlock::IsCannotBePickedUp()
{
    return 0;
}

// win1.41 006de510 mac 104cc380 GRand::GameRand(long)
int GRand::GameRand(uint32_t max, const char* src_file, uint32_t src_line)
{
    return 0;
}

// win1.41 006de530 mac 104cc2c0 GRand::GameFloatRand(float)
float GRand::GameFloatRand(float scale, const char* src_file, uint32_t src_line)
{
    return 0;
}

// win1.41 006de570 mac 10044b40 GRand::LocalRand(long)
uint32_t GRand::LocalRand(long param_1)
{
    return 0;
}

// win1.41 006e0750 mac 10133ff0 GSquadInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSquadInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 006e07b0 mac 10133d90 GSquadInfo::_dt(void)
GSquadInfo::~GSquadInfo()
{
}

// win1.41 006e0810 mac 101340a0 GRankInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GRankInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 006e0870 mac 10133c10 GRankInfo::_dt(void)
GRankInfo::~GRankInfo()
{
}

// win1.41 006e0b80 mac inlined Rank::_dt(void)
Rank::~Rank()
{
}

// win1.41 006e0e00 mac 101368d0 ReactionInfo::GetBaseInfo(unsigned long &)
GBaseInfo* ReactionInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 006e0e60 mac 10135410 ReactionInfo::_dt(void)
ReactionInfo::~ReactionInfo()
{
}

// win1.41 006e3aa0 mac 10136200 Reaction::ToBeDeleted(int)
void Reaction::ToBeDeleted(int param_1)
{
}

// win1.41 006e3d70 mac 10136010 Reaction::CreateReaction(GameThingWithPos *, unsigned char, GPlayer *, int)
Reaction* Reaction::CreateReaction(GameThingWithPos* param_1, uint8_t param_2, GPlayer* player, int param_4)
{
    return 0;
}

// win1.41 006e44a0 mac 101358c0 Living::SetReactionDoneWhen(REACTION)
void Living::SetReactionDoneWhen(REACTION reaction)
{
}

// win1.41 006e4590 mac 10135830 Living::StartReacting(REACTION, GameThingWithPos *, Reaction *)
void Living::StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3)
{
}

// win1.41 006e4700 mac 1008c230 Reaction::GetInfo(void) const
ReactionInfo* Reaction::GetInfo()
{
    return 0;
}

// win1.41 006e48a0 mac 10134d90 Reaction::GetDefaultReactionMultiplier(Living *)
float Reaction::GetDefaultReactionMultiplier(Living* param_1)
{
    return 0;
}

// win1.41 006e4990 mac 10134810 Reaction::Save(GameOSFile &)
bool Reaction::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 006e4ba0 mac 10134400 Reaction::Load(GameOSFile &)
bool Reaction::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006e5440 mac 1013c260 GRewardInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GRewardInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 006e54b0 mac 1013b160 GRewardInfo::_dt(void)
GRewardInfo::~GRewardInfo()
{
}

// win1.41 006e5650 mac 10138ed0 Reward::IsReward( const(void))
bool Reward::IsReward() const
{
    return 0;
}

// win1.41 006e5660 mac 10138f00 Reward::IsActive( const(void))
bool Reward::IsActive() const
{
    return 0;
}

// win1.41 006e5670 mac 10138f30 Reward::GetSaveType(void)
uint32_t Reward::GetSaveType()
{
    return 0;
}

// win1.41 006e5680 mac 10138f70 Reward::GetDebugText(void)
char* Reward::GetDebugText()
{
    return 0;
}

// win1.41 006e5690 mac 1013bef0 Reward::_dt(void)
Reward::~Reward()
{
}

// win1.41 006e59b0 mac 1013b570 Reward::CallVirtualFunctionsForCreation(MapCoords const &)
void Reward::CallVirtualFunctionsForCreation(const MapCoords& param_1)
{
}

// win1.41 006e5c10 mac 1013b3b0 Reward::ToBeDeleted(int)
void Reward::ToBeDeleted(int param_1)
{
}

// win1.41 006e5ca0 mac 1013b370 Reward::GetScriptObjectType(void)
uint32_t Reward::GetScriptObjectType()
{
    return 0;
}

// win1.41 006e5cb0 mac 1013b340 Reward::GetPlayer(void)
GPlayer* Reward::GetPlayer()
{
    return 0;
}

// win1.41 006e5cc0 mac 1013b270 Reward::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Reward::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e5d00 mac 1013a480 Reward::InterfaceTap(GInterfaceStatus *)
uint32_t Reward::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e6380 mac 1013a430 Reward::Draw(void)
void Reward::Draw()
{
}

// win1.41 006e6880 mac 10139bc0 Reward::GetWeight(void)
float Reward::GetWeight()
{
    return 0;
}

// win1.41 006e68f0 mac 10139850 Reward::Process(void)
uint32_t Reward::Process()
{
    return 0;
}

// win1.41 006e6980 mac 10139800 Reward::CanBecomeAPhysicsObject(void)
bool Reward::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 006e6990 mac 101397c0 Reward::PhysicsEditorCreate(int)
void Reward::PhysicsEditorCreate(int param_1)
{
}

// win1.41 006e69a0 mac 10139770 Reward::ValidForPlaceInHand(GInterfaceStatus *)
bool Reward::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e69b0 mac 10139730 Reward::GetOverwriteTapToolTip(void)
uint32_t Reward::GetOverwriteTapToolTip()
{
    return 0;
}

// win1.41 006e69c0 mac 10139380 Reward::Save(GameOSFile &)
bool Reward::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 006e6c70 mac 10139000 Reward::Load(GameOSFile &)
bool Reward::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006e6f00 mac 10138fb0 Reward::ResolveLoad(void)
void Reward::ResolveLoad()
{
}

// win1.41 006e6f70 mac 1013dda0 Rock::Rock(MapCoords const &, GMobileStaticInfo const *, Object *, GPlayer *, float, float)
// Rock::Rock(const MapCoords& coords, const GMobileStaticInfo* info, Object* param_3, GPlayer* param_4, float param_5, float param_6)
// {
// }

// win1.41 006e6ff0 mac 1013dd60 Rock::GetPhysicsConstantsType(void)
uint32_t Rock::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 006e7000 mac 1013dd00 Rock::EndPhysics(PhysicsObject *, bool)
void Rock::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 006e7030 mac 1013dc40 Rock::ValidForPlaceInHand(GInterfaceStatus *)
bool Rock::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e7070 mac 1013dbc0 Rock::CanBeThrownByPlayer(void)
bool Rock::CanBeThrownByPlayer()
{
    return 0;
}

// win1.41 006e7090 mac 1013db10 Rock::GetDefaultResource(void)
int Rock::GetDefaultResource()
{
    return 0;
}

// win1.41 006e70c0 mac 1013dad0 Rock::GetResourceType(void)
RESOURCE_TYPE Rock::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 006e70d0 mac 1013d970 Rock::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t Rock::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 006e7170 mac 1013d800 Rock::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t Rock::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 006e7210 mac 1013d710 Rock::ActualMoveMapObject(MapCoords const &)
void Rock::ActualMoveMapObject(const MapCoords* param_1)
{
}

// win1.41 006e7450 mac 1013d680 Rock::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Rock::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e7480 mac 1013d4e0 Rock::InterfaceTap(GInterfaceStatus *)
uint32_t Rock::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e77a0 mac 1013d1f0 Rock::GetPlayer(void)
GPlayer* Rock::GetPlayer()
{
    return 0;
}

// win1.41 006e77b0 mac 1013d0c0 Rock::Save(GameOSFile &)
bool Rock::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 006e7870 mac 1013cfa0 Rock::Load(GameOSFile &)
bool Rock::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006e7930 mac 1013ce40 Rock::ReactToPhysicsImpact(PhysicsObject *, bool)
void Rock::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 006e79e0 mac 1000ef30 Rock::GetScriptObjectType(void)
uint32_t Rock::GetScriptObjectType()
{
    return 0;
}

// win1.41 006e79f0 mac 1013c460 Rock::PhysicsEditorCreate(int)
void Rock::PhysicsEditorCreate(int param_1)
{
}

// win1.41 006e7a60 mac 1013c420 Rock::GetOverwriteTapToolTip(void)
uint32_t Rock::GetOverwriteTapToolTip()
{
    return 0;
}

// win1.41 006e7a70 mac 1013c3c0 Rock::CanBePickedUpByCreature(Creature *)
bool Rock::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 006e8360 mac 10144060 GScaffoldInfo::_dt(void)
GScaffoldInfo::~GScaffoldInfo()
{
}

// win1.41 006e83e0 mac 10143cd0 Scaffold::ToBeDeleted(int)
void Scaffold::ToBeDeleted(int param_1)
{
}

// win1.41 006e8540 mac 10143a70 Scaffold::CallVirtualFunctionsForCreation(MapCoords const &)
void Scaffold::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 006e8570 mac 101436c0 Scaffold::ProcessInHand(void)
bool Scaffold::ProcessInHand()
{
    return 0;
}

// win1.41 006e8770 mac 10143680 Scaffold::GetPhysicsConstantsType(void)
uint32_t Scaffold::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 006e8780 mac 101434e0 Scaffold::EndPhysics(PhysicsObject *, bool)
void Scaffold::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 006e96a0 mac 10141b10 Scaffold::ValidForPlaceInHand(GInterfaceStatus *)
bool Scaffold::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e96e0 mac 101419a0 Scaffold::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Scaffold::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e9770 mac 10141720 Scaffold::InterfaceSetOutMagicHand(GInterfaceStatus *)
bool Scaffold::InterfaceSetOutMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e9860 mac 10141650 Scaffold::GetOverwriteDropToolTip(void)
uint32_t Scaffold::GetOverwriteDropToolTip()
{
    return 0;
}

// win1.41 006e9890 mac 10141590 Scaffold::ActualMoveMapObject(MapCoords const &)
void Scaffold::ActualMoveMapObject(const MapCoords* param_1)
{
}

// win1.41 006e9900 mac 101413a0 Scaffold::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Scaffold::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 006e99e0 mac 10141130 Scaffold::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Scaffold::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 006e9d30 mac 10140dd0 Scaffold::GetDefaultResource(void)
int Scaffold::GetDefaultResource()
{
    return 0;
}

// win1.41 006e9d80 mac 10140c50 Scaffold::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Scaffold::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006e9dd0 mac 10140af0 Scaffold::InterfaceTap(GInterfaceStatus *)
uint32_t Scaffold::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 006ea240 mac 10140340 Scaffold::Save(GameOSFile &)
bool Scaffold::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 006ea3d0 mac 10140100 Scaffold::Load(GameOSFile &)
bool Scaffold::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006ea560 mac 1013ffc0 Scaffold::ResolveLoad(void)
void Scaffold::ResolveLoad()
{
}

// win1.41 006ea5c0 mac 1013fd30 Scaffold::Draw(void)
void Scaffold::Draw()
{
}

// win1.41 006ea770 mac 1013fba0 Scaffold::GetImpressiveValue(Living *, Reaction *)
float Scaffold::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 006ea840 mac 1013faa0 Scaffold::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t Scaffold::InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5)
{
    return 0;
}

// win1.41 006ea8a0 mac 1013f9a0 Scaffold::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t Scaffold::InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5)
{
    return 0;
}

// win1.41 006ea910 mac 1013f8e0 Scaffold::CanBecomeAPhysicsObject(void)
bool Scaffold::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 006ea940 mac 1013f890 Scaffold::ReactToPhysicsImpact(PhysicsObject *, bool)
void Scaffold::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 006ea9d0 mac 1013f6d0 Scaffold::GetOverwritePickUpToolTip(void)
uint32_t Scaffold::GetOverwritePickUpToolTip()
{
    return 0;
}

// win1.41 006ea9e0 mac 1013f670 Scaffold::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float Scaffold::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
    return 0;
}

// win1.41 006eab60 mac 1013f280 Scaffold::GetScriptObjectType(void)
uint32_t Scaffold::GetScriptObjectType()
{
    return 0;
}

// win1.41 006eab70 mac 1013f210 Scaffold::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t Scaffold::ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2)
{
    return 0;
}

// win1.41 006eaea0 mac 1013ec20 Scaffold::IsResourceStore(RESOURCE_TYPE)
bool Scaffold::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 006eaec0 mac 1013eb90 Scaffold::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool Scaffold::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 006eaef0 mac 1013eaf0 Scaffold::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t Scaffold::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 006eaf30 mac 1013e710 Scaffold::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Scaffold::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 006eb100 mac 104d8610 GScript::Create(void)
GScript* GScript::Create()
{
    return 0;
}

// win1.41 006eb150 mac 104d7b60 GScript::_dt(void)
GScript::~GScript()
{
}

// win1.41 006eb2d0 mac 104d8160 GScript::Reset(int)
void GScript::Reset(int param_2)
{
}

// win1.41 006eb610 mac 104d8070 GScript::LoadBinary(char *)
void GScript::LoadBinary(char* binary)
{
}

// win1.41 006eb6b0 mac 1007ef10 GScript::Process(void)
void GScript::Process()
{
}

// win1.41 006eb710 mac 104d7e50 GScript::StartScript(char *)
int GScript::StartScript(char* name)
{
    return 0;
}

// win1.41 006eb9d0 mac 10082240 GScript::ProcessFade(bool)
void GScript::ProcessFade(bool param_1)
{
}

// win1.41 006eba90 mac 104d7670 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
void GScript::SetupScreenFadeTo(uint8_t r, uint8_t g, uint8_t b, int8_t a)
{
}

// win1.41 006ebbc0 mac 104d7300 GScript::CleanGameForScriptReboot(void)
void GScript::CleanGameForScriptReboot()
{
}

// win1.41 006ec790 mac 104d6160 GScript::PUSH(void *, VMType)
void GScript::PUSH(void* param_1, VMType param_2)
{
}

// win1.41 006f0cc0 mac 104def10 GScript::StopScriptsOfType(VMScriptType)
void GScript::StopScriptsOfType(VMScriptType param_1)
{
}

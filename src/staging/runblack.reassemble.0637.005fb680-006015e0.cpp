#include "MagicInfo.h"
#include "MagicLivingInfo.h"
#include "SpellTeleport.h"
#include "MagicTeleport.h"
#include "MagicTree.h"
#include "VortexInfo.h"
#include "MobileStaticInfo.h"
#include "VortexObjectInfo.h"
#include "MobileObject.h"
#include "MagicWood.h"
#include "Map.h"

// win1.41 005fb680 mac 103adc30 GMagicInfo::GetMagicEffectInfo(void) const
GMagicEffectInfo* GMagicInfo::GetMagicEffectInfo()
{
    return 0;
}

// win1.41 005fb900 mac inlined GMagicLivingInfo::GetMesh( const(void))
uint32_t GMagicLivingInfo::GetMesh() const
{
    return 0;
}

// win1.41 005fb910 mac inlined GMagicLivingInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GMagicLivingInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 005fb980 mac inlined GMagicLivingInfo::_dt(void)
GMagicLivingInfo::~GMagicLivingInfo()
{
}

// win1.41 005fbeb0 mac 103b1550 SpellTeleport::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int SpellTeleport::InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 005fbf50 mac 103b1400 MagicTeleport::Load(GameOSFile &)
bool MagicTeleport::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005fbfa0 mac 103b1350 MagicTeleport::Save(GameOSFile &)
bool MagicTeleport::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005fc040 mac 103aed40 MagicTeleport::CanBePickedUpByCreature(Creature *)
bool MagicTeleport::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc050 mac 103aed90 MagicTeleport::CanBeSetOnFire(Creature *)
bool MagicTeleport::CanBeSetOnFire(Creature* param_1)
{
    return 0;
}

// win1.41 005fc060 mac 103aede0 MagicTeleport::CanBeStompedOnByCreature(Creature *)
bool MagicTeleport::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc070 mac 103aee30 MagicTeleport::CanBeThrownByCreature(Creature *)
bool MagicTeleport::CanBeThrownByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc080 mac 103aee80 MagicTeleport::CanBePutInAStoragePit(Creature *)
bool MagicTeleport::CanBePutInAStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 005fc090 mac 103aeed0 MagicTeleport::CanBeDestroyedByStoning(Creature *)
bool MagicTeleport::CanBeDestroyedByStoning(Creature* param_1)
{
    return 0;
}

// win1.41 005fc0a0 mac 103aef20 MagicTeleport::CanBeStonedAndEatenByCreature(Creature *)
bool MagicTeleport::CanBeStonedAndEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc0b0 mac 103aef80 MagicTeleport::CanBeExaminedByCreature(Creature *)
bool MagicTeleport::CanBeExaminedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc0c0 mac 103aefd0 MagicTeleport::CanBeFoughtByCreature(Creature *)
bool MagicTeleport::CanBeFoughtByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 005fc0d0 mac 103af020 MagicTeleport::CanActAsAContainer(Creature *)
bool MagicTeleport::CanActAsAContainer(Creature* param_1)
{
    return 0;
}

// win1.41 005fc0e0 mac 103af070 MagicTeleport::GetSaveType(void)
uint32_t MagicTeleport::GetSaveType()
{
    return 0;
}

// win1.41 005fc0f0 mac 103af0b0 MagicTeleport::GetDebugText(void)
char* MagicTeleport::GetDebugText()
{
    return 0;
}

// win1.41 005fc100 mac 103b0b60 MagicTeleport::_dt(void)
MagicTeleport::~MagicTeleport()
{
}

// win1.41 005fc260 mac 103b0bf0 MagicTeleport::CallVirtualFunctionsForCreation(MapCoords const &)
void MagicTeleport::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 005fc310 mac 103b06a0 MagicTeleport::ToBeDeleted(int)
void MagicTeleport::ToBeDeleted(int param_1)
{
}

// win1.41 005fc430 mac 103b0660 MagicTeleport::GetPlayer(void)
GPlayer* MagicTeleport::GetPlayer()
{
    return 0;
}

// win1.41 005fc440 mac 103b05b0 MagicTeleport::ValidForPlaceInHand(GInterfaceStatus *)
bool MagicTeleport::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005fc470 mac 103b0500 MagicTeleport::InterfaceSetInMagicHand(GInterfaceStatus *)
bool MagicTeleport::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005fc4a0 mac 103b04c0 MagicTeleport::IsSolidToNewAbode(void)
bool MagicTeleport::IsSolidToNewAbode()
{
    return 0;
}

// win1.41 005fc960 mac 103af8d0 MagicTeleport::ActualMoveMapObject(MapCoords const &)
void MagicTeleport::ActualMoveMapObject(const MapCoords* param_1)
{
}

// win1.41 005fccb0 mac 103af460 MagicTeleport::Get2DRadius(void)
float MagicTeleport::Get2DRadius()
{
    return 0;
}

// win1.41 005fccc0 mac 103af280 MagicTeleport::Draw(void)
void MagicTeleport::Draw()
{
}

// win1.41 005fcde0 mac 103af230 MagicTeleport::InteractsWithPhysicsObjects(void)
bool MagicTeleport::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 005fcdf0 mac 103af1e0 MagicTeleport::CanBecomeAPhysicsObject(void)
bool MagicTeleport::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 005fce00 mac 103af190 MagicTeleport::IsEffectReceiver(EffectValues *)
bool MagicTeleport::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 005fcf00 mac 103b2330 MagicTree::GetImpressiveType(void)
IMPRESSIVE_TYPE MagicTree::GetImpressiveType()
{
    return (IMPRESSIVE_TYPE)0;
}

// win1.41 005fcf10 mac 103b2370 MagicTree::GetSaveType(void)
uint32_t MagicTree::GetSaveType()
{
    return 0;
}

// win1.41 005fcf20 mac 103b23b0 MagicTree::GetDebugText(void)
char* MagicTree::GetDebugText()
{
    return 0;
}

// win1.41 005fcf30 mac 103b22a0 MagicTree::_dt(void)
MagicTree::~MagicTree()
{
}

// win1.41 005fd060 mac 103b2840 MagicTree::GetPlayer(void)
GPlayer* MagicTree::GetPlayer()
{
    return 0;
}

// win1.41 005fd070 mac 103b2760 MagicTree::ToBeDeleted(int)
void MagicTree::ToBeDeleted(int param_1)
{
}

// win1.41 005fd0d0 mac 103b26d0 MagicTree::StartOnFire(void)
void MagicTree::StartOnFire()
{
}

// win1.41 005fd0e0 mac 103b2640 MagicTree::EndOnFire(void)
void MagicTree::EndOnFire()
{
}

// win1.41 005fd110 mac 103b2510 MagicTree::Save(GameOSFile &)
bool MagicTree::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005fd1c0 mac 103b23f0 MagicTree::Load(GameOSFile &)
bool MagicTree::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005fd390 mac 103b9150 GVortexInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GVortexInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 005fd3f0 mac 103b8d80 GVortexInfo::_dt(void)
GVortexInfo::~GVortexInfo()
{
}

// win1.41 005ff2f0 mac 103c1190 GMobileStaticInfo::GetInfo(void)
GMobileStaticInfo* GMobileStaticInfo::GetInfo()
{
    return 0;
}

// win1.41 00600ad0 mac 103b3000 VortexObjectInfo::Save(GameOSFile &)
bool VortexObjectInfo::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00600bf0 mac 103b2d00 VortexObjectInfo::Load(GameOSFile &)
bool VortexObjectInfo::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00600d80 mac 1011a5a0 MobileObject::MobileObject(void)
MobileObject::MobileObject()
{
}

// win1.41 00600da0 mac 103b9ed0 MagicWood::GetPlayer(void)
GPlayer* MagicWood::GetPlayer()
{
    return 0;
}

// win1.41 00600db0 mac 103b9f10 MagicWood::GetImpressiveType(void)
IMPRESSIVE_TYPE MagicWood::GetImpressiveType()
{
    return (IMPRESSIVE_TYPE)0;
}

// win1.41 00600dc0 mac 103b9f50 MagicWood::IsAWoodPileOutsideStoragePit(Creature *)
bool MagicWood::IsAWoodPileOutsideStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 00600dd0 mac 103b9fa0 MagicWood::GetSaveType(void)
uint32_t MagicWood::GetSaveType()
{
    return 0;
}

// win1.41 00600de0 mac 103b9fe0 MagicWood::GetDebugText(void)
char* MagicWood::GetDebugText()
{
    return 0;
}

// win1.41 00600df0 mac 103ba240 MagicWood::_dt(void)
MagicWood::~MagicWood()
{
}

// win1.41 00600f10 mac 103ba140 MagicWood::CallVirtualFunctionsForCreation(MapCoords const &)
void MagicWood::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00600f20 mac 103ba0b0 MagicWood::Save(GameOSFile &)
bool MagicWood::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00600f60 mac 103ba020 MagicWood::Load(GameOSFile &)
bool MagicWood::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00601080 mac 10552040 GMap::GMap(void)
GMap::GMap()
{
}

// win1.41 006010c0 mac 1055f620 GMap::_dt(void)
GMap::~GMap()
{
}

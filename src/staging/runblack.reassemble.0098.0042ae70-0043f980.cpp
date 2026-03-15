#include "MapCoords.h"
#include "ObjectInfo.h"
#include "LeashSelectorInfo.h"
#include "MagicInfo.h"
#include "lionhead/lhfile/ver3.0/LHFile.h"
#include "AbodeInfo.h"
#include "BaseInfo.h"
#include "lionhead/lhfile/ver3.0/LHReleasedOSFile.h"
#include "MagicHealInfo.h"
#include "MagicTeleportInfo.h"
#include "MagicForestInfo.h"
#include "MagicResourceInfo.h"
#include "MagicStormAndTornadoInfo.h"
#include "MagicShieldInfo.h"
#include "MagicWaterInfo.h"
#include "MagicFlockFlyingInfo.h"
#include "MagicFlockGroundInfo.h"
#include "MagicCreatureSpellInfo.h"
#include "MagicObjectInfo.h"
#include "MagicRadiusSpellInfo.h"
#include "BallInfo.h"
#include "Ball.h"
#include "Base.h"
#include "BeliefInfo.h"
#include "Belief.h"
#include "BigForestInfo.h"
#include "BigForest.h"
#include "MultiMapFixed.h"
#include "MobileStatic.h"
#include "Rock.h"
#include "Bonfire.h"
#include "BuildingSite.h"
#include "StandardBuildingSite.h"
#include "CitadelBuildingSite.h"
#include "WorkshopBuildingSite.h"
#include "BWGameSpy.h"
#include "lhall/released/headers/LHTimer.h"

// win1.41 0042b370 mac 1016ddf0 GObjectInfo::GetMesh( const(void))
MeshId GObjectInfo::GetMesh() const
{
    return (MeshId)0;
}

// win1.41 0042b380 mac 104cc120 GObjectInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GObjectInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0042b3d0 mac 10182f90 GLeashSelectorInfo::_dt(void)
GLeashSelectorInfo::~GLeashSelectorInfo()
{
}

// win1.41 0042d700 mac 101980a0 GMagicInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GMagicInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0042e110 mac 10183650 LHFile::LHFile(void)
LHFile::LHFile()
{
}

// win1.41 0042e160 mac 100cd100 LHFile::ResetData(void)
uint32_t LHFile::ResetData()
{
    return 0;
}

// win1.41 0042e520 mac inlined GAbodeInfo::LoadBinary(LHFile *)
void GAbodeInfo::LoadBinary(LHFile* file)
{
}

// win1.41 0042e5e0 mac 102f9af0 GBaseInfo::GBaseInfo(void)
GBaseInfo::GBaseInfo()
{
}

// // win1.41 0042e600 mac 10429820 GBaseInfo::_dt(void)
// GBaseInfo::~GBaseInfo()
// {
// }

// win1.41 0042fd40 mac 1012d3f0 LHReleasedOSFile::~LHReleasedOSFile(void)
LHReleasedOSFile::~LHReleasedOSFile()
{
}

#include "CameraExclusion.h"
#include "CameraModeNew3.h"
#include "lionhead/lh3dlib/development/LH3DCamera.h"
#include "CameraModeTwoObjects.h"
#include "CitadelInfo.h"
#include "Container.h"
#include "Citadel.h"
#include "WorshipSiteInfo.h"
#include "CitadelHeartInfo.h"
#include "Object.h"
#include "CitadelHeart.h"
#include "CitadelPart.h"
#include "PlannedMultiMapFixed.h"
#include "PlannedCitadelPart.h"
#include "PlannedCitadelHeart.h"
#include "FireGraphic.h"
#include "PSysBase.h"
#include "PlannedTownCitadelHeart.h"
#include "CitadelEntrance.h"
#include "Config.h"
#include "lionhead/lhfile/ver3.0/LHOSFile.h"
#include "ContainerInfo.h"
#include "HandState.h"
#include "HandStateInvisible.h"

// win1.41 00455d50 mac 10000050 CameraExclusion::InsideExclusion(LHPoint)
bool CameraExclusion::InsideExclusion(LHPoint point)
{
    return 0;
}

// win1.41 00455e20 mac 1004f140 CameraExclusion::InsideInclusion(LHPoint, LHPoint, LHPoint *, LHPoint *)
bool CameraExclusion::InsideInclusion(LHPoint param_1, LHPoint param_2, LHPoint* param_3, LHPoint* param_4)
{
    return 0;
}

// // win1.41 004572e0 mac 101a6040 CameraModeNew3::CameraModeNew3(GCamera *)
// CameraModeNew3::CameraModeNew3(GCamera* camera)
// {
// }

// win1.41 00458db0 mac 1007c250 CameraModeNew3::CalcPerpDistance(LHPoint &, LHPoint &, LHPoint &)
float CameraModeNew3::CalcPerpDistance(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3)
{
    return 0;
}

// win1.41 00458f40 mac 10062a70 CameraModeNew3::FindBestAngle(float, float, LHPoint &, float &, float *)
float CameraModeNew3::FindBestAngle(float param_1, float param_2, float* param_3, float* param_4, float* param_5)
{
    return 0;
}

// win1.41 00459230 mac 10025a60 CameraModeNew3::UpdateTricons(void)
void CameraModeNew3::UpdateTricons()
{
}

// win1.41 00459610 mac 101a4670 CameraModeNew3::UpdateClickParams(LHPoint &, LHPoint &, bool)
void CameraModeNew3::UpdateClickParams(const LHPoint* param_1, const LHPoint* param_2, bool param_3)
{
}

// win1.41 00459c30 mac 10037970 CameraModeNew3::
// ERROR building signature: substring not found

// win1.41 00459d20 mac 101a4380 CameraModeNew3::SetAltitudeAndNormal(LHPoint &, LHPoint &)
void CameraModeNew3::SetAltitudeAndNormal(LHPoint* param_1, LHPoint* normal)
{
}

// win1.41 00459f10 mac 1007e670 CameraModeNew3::DragFocusOntoLand(LHPoint &, LHPoint &)
void CameraModeNew3::DragFocusOntoLand(LHPoint* param_1, LHPoint* param_2)
{
}

// win1.41 0045a080 mac 101a3db0 CameraModeNew3::UpdateStrafe(LHPoint &, LHPoint &, float &, float &, float, unsigned long)
bool CameraModeNew3::UpdateStrafe(LHPoint* param_1, LHPoint* param_2, float* param_3, float* param_4, float param_5, uint32_t param_6)
{
    return 0;
}

// win1.41 0045a390 mac 100098e0 CameraModeNew3::WantToQuitFight(LHPoint, LHPoint, float)
bool CameraModeNew3::WantToQuitFight(LHPoint param_1, LHPoint param_2, float param_3)
{
    return 0;
}

// win1.41 0045a4d0 mac 101a3910 CameraModeNew3::StartFight(GArena *)
void CameraModeNew3::StartFight(GArena* arena)
{
}

// win1.41 0045a7f0 mac inlined LH3DCamera::GetPos(void)
LHPoint* LH3DCamera::GetPos()
{
    return 0;
}

// win1.41 0045a830 mac inlined CameraModeNew3::EndFightNow(int)
void CameraModeNew3::EndFightNow(int param_1)
{
}

// win1.41 0045a960 mac 1003a4f0 CameraModeNew3::Update(void)
void CameraModeNew3::Update()
{
}

// win1.41 00461c70 mac 101aa520 CameraModeTwoObjects::_dt(void)
CameraModeTwoObjects::~CameraModeTwoObjects()
{
}

// win1.41 00461d90 mac 101aac60 CameraModeTwoObjects::IsStillValid(void)
bool CameraModeTwoObjects::IsStillValid()
{
    return 0;
}

// win1.41 00461de0 mac 101aa880 CameraModeTwoObjects::Update(void)
void CameraModeTwoObjects::Update()
{
}

// win1.41 00462980 mac 101bb430 GCitadelInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GCitadelInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004629d0 mac 101bb390 GCitadelInfo::_dt(void)
GCitadelInfo::~GCitadelInfo()
{
}

// win1.41 00462a50 mac 1005c760 Container::GetPlayer(void)
GPlayer* Container::GetPlayer()
{
    return 0;
}

// win1.41 00462a60 mac 101b6e50 Citadel::GetCreatureBeliefType(void)
uint32_t Citadel::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00462a70 mac 101b6e90 Citadel::GetCreatureBeliefListType(void)
uint32_t Citadel::GetCreatureBeliefListType()
{
    return 0;
}

// win1.41 00462a80 mac 101b6ed0 Citadel::GetOrigin(void)
uint32_t Citadel::GetOrigin()
{
    return 0;
}

// win1.41 00462a90 mac 101b6f00 Citadel::IsSuitableForCreatureActivity(void)
bool Citadel::IsSuitableForCreatureActivity()
{
    return 0;
}

// win1.41 00462aa0 mac 101b6f50 Citadel::GetText(void)
const char* Citadel::GetText()
{
    return 0;
}

// win1.41 00462ab0 mac 101b6f80 Citadel::IsCitadel(void)
bool Citadel::IsCitadel()
{
    return 0;
}

// win1.41 00462ac0 mac 101b6fb0 Citadel::GetSaveType(void)
uint32_t Citadel::GetSaveType()
{
    return 0;
}

// win1.41 00462ad0 mac 101b6ff0 Citadel::GetDebugText(void)
char* Citadel::GetDebugText()
{
    return 0;
}

// win1.41 00462ae0 mac 101b6d30 Citadel::_dt(void)
Citadel::~Citadel()
{
}

// win1.41 00462b90 mac 101ba6a0 Citadel::ToBeDeleted(int)
void Citadel::ToBeDeleted(int param_1)
{
}

// win1.41 00463130 mac 101b9680 Citadel::AddTown(Town*)
void* Citadel::AddTown(Town* town)
{
    return 0;
}

// win1.41 00463220 mac 101b9420 Citadel::FindOrCreateWorshipSite(GTribeInfo const *)
WorshipSite* Citadel::FindOrCreateWorshipSite(GTribeInfo* tribe_info)
{
    return 0;
}

// win1.41 00463240 mac 101b9230 Citadel::CreateCitadel(MapCoords const &, GCitadelHeartInfo const *, unsigned char, float, float)
Citadel* Citadel::CreateCitadel(MapCoords* coords, GCitadelHeartInfo* info, uint8_t param_3, float param_4, float param_5)
{
    return 0;
}

// win1.41 00463b00 mac 101b7db0 Citadel::Save(GameOSFile &)
bool Citadel::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00463dc0 mac 101b71d0 Citadel::Load(GameOSFile &)
bool Citadel::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00464370 mac inlined GWorshipSiteInfo::GetMesh( const(void))
uint32_t GWorshipSiteInfo::GetMesh() const
{
    return 0;
}

// win1.41 00464380 mac inlined GWorshipSiteInfo::GetAbodeType( const(void))
ABODE_TYPE GWorshipSiteInfo::GetAbodeType() const
{
    return (ABODE_TYPE)0;
}

// win1.41 00464390 mac 101c1de0 GCitadelHeartInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GCitadelHeartInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004643e0 mac 101c1bf0 GCitadelHeartInfo::_dt(void)
GCitadelHeartInfo::~GCitadelHeartInfo()
{
}

// win1.41 004648b0 mac 100e33f0 Object::Draw(void)
void Object::Draw()
{
}

// win1.41 00464950 mac 101c1180 CitadelHeart::CreateLeashes(void)
void CitadelHeart::CreateLeashes()
{
}

// win1.41 004649b0 mac 101c0f90 CitadelHeart::__ct(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
CitadelHeart::CitadelHeart(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5, float param_6, int param_7)
{
}

// win1.41 00464a80 mac 1008aa80 CitadelPart::GetCitadel(void)
Citadel* CitadelPart::GetCitadel()
{
    return 0;
}

// win1.41 00464a90 mac 101c2400 CitadelPart::GetMesh( const(void))
int CitadelPart::GetMesh() const
{
    return 0;
}

// win1.41 00464aa0 mac 101c2460 CitadelPart::GetCreatureBeliefType(void)
uint32_t CitadelPart::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00464ab0 mac 101c08e0 CitadelPart::IsRepaired(void)
bool CitadelPart::IsRepaired()
{
    return 0;
}

// win1.41 00464ad0 mac 10081060 CitadelPart::IsBuilt(void)
bool CitadelPart::IsBuilt()
{
    return 0;
}

// win1.41 00464b00 mac inlined CitadelPart::IsCitadelPart_0(void)
bool CitadelPart::IsCitadelPart()
{
    return 0;
}

// win1.41 00464b10 mac inlined CitadelPart::IsCitadelPart_1(Creature *)
bool CitadelPart::IsCitadelPart(Creature* param_1)
{
    return 0;
}

// win1.41 00464b20 mac inlined CitadelHeart::SetSpecularColor(LH3DColor)
void CitadelHeart::SetSpecularColor(LH3DColor param_1)
{
}

// // win1.41 00464b30 mac 100173c0 CitadelHeart::GetSpecularColor(void)
// LH3DColor CitadelHeart::GetSpecularColor()
// {
//     return 0;
// }

// win1.41 00464b40 mac 101be8a0 CitadelHeart::Get3DType(void)
LH3DObject::ObjectType CitadelHeart::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 00464b50 mac 101c2180 CitadelHeart::GetObjectCollide(void)
uint32_t CitadelHeart::GetObjectCollide()
{
    return 0;
}

// win1.41 00464b60 mac 101c21c0 CitadelHeart::GetAbodeType(void)
ABODE_TYPE CitadelHeart::GetAbodeType()
{
    return (ABODE_TYPE)0;
}

// win1.41 00464b70 mac 101c2200 CitadelHeart::ShouldFootpathsGoRound(void)
bool CitadelHeart::ShouldFootpathsGoRound()
{
    return 0;
}

// win1.41 00464b80 mac 101c2250 CitadelHeart::IsCitadelHeart(void)
bool CitadelHeart::IsCitadelHeart()
{
    return 0;
}

// win1.41 00464b90 mac 10011680 CitadelHeart::Draw(void)
void CitadelHeart::Draw()
{
}

// win1.41 00464ba0 mac 101c2380 CitadelHeart::GetSaveType(void)
uint32_t CitadelHeart::GetSaveType()
{
    return 0;
}

// win1.41 00464bb0 mac 101c23c0 CitadelHeart::GetDebugText(void)
char* CitadelHeart::GetDebugText()
{
    return 0;
}

// win1.41 00464bc0 mac 101c0df0 CitadelHeart::_dt(void)
CitadelHeart::~CitadelHeart()
{
}

// win1.41 00464c50 mac 101c0b90 CitadelHeart::ToBeDeleted(int)
void CitadelHeart::ToBeDeleted(int param_1)
{
}

// win1.41 00464da0 mac 101c0af0 CitadelHeart::SetToZero(void)
void CitadelHeart::SetToZero()
{
}

// win1.41 00464e20 mac 101c0960 CitadelHeart::Create(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
CitadelHeart* CitadelHeart::Create(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5, float param_6, int param_7)
{
    return 0;
}

// win1.41 00465000 mac 101c0570 CitadelHeart::Built(void)
bool CitadelHeart::Built()
{
    return 0;
}

// win1.41 00465110 mac 101c03b0 CitadelHeart::CreateBuiltWorshipSite(MapCoords const &, GWorshipSiteInfo const *, Citadel *, GTribeInfo const *)
WorshipSite* CitadelHeart::CreateBuiltWorshipSite(const MapCoords* coords, const GWorshipSiteInfo* info, const Citadel* citadel, const GTribeInfo* tribe_info)
{
    return 0;
}

// win1.41 00465430 mac 101bfcc0 CitadelHeart::ConvertToPlanned(void)
PlannedMultiMapFixed* CitadelHeart::ConvertToPlanned()
{
    return 0;
}

// win1.41 00465540 mac 100d1720 PlannedMultiMapFixed::CreatePlannedNoFixedCheck(float)
MultiMapFixed* PlannedMultiMapFixed::CreatePlannedNoFixedCheck(float param_1)
{
    return 0;
}

// win1.41 00465550 mac 100d1770 PlannedMultiMapFixed::IsCivic(void)
bool PlannedMultiMapFixed::IsCivic()
{
    return 0;
}

// win1.41 00465560 mac 100d17b0 PlannedMultiMapFixed::IsWonder(void)
bool PlannedMultiMapFixed::IsWonder()
{
    return 0;
}

// win1.41 00465570 mac 100d17f0 PlannedMultiMapFixed::GetAbodeType(void)
ABODE_TYPE PlannedMultiMapFixed::GetAbodeType()
{
    return (ABODE_TYPE)0;
}

// win1.41 00465580 mac 101c20f0 PlannedCitadelPart::GetSaveType(void)
uint32_t PlannedCitadelPart::GetSaveType()
{
    return 0;
}

// win1.41 00465590 mac 101c2130 PlannedCitadelPart::GetDebugText(void)
char* PlannedCitadelPart::GetDebugText()
{
    return 0;
}

// win1.41 004655a0 mac 101c2050 PlannedCitadelHeart::_dt(void)
PlannedCitadelHeart::~PlannedCitadelHeart()
{
}

// win1.41 004655c0 mac 101bf9c0 CitadelHeart::Save(GameOSFile &)
bool CitadelHeart::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004657f0 mac 101bf6e0 CitadelHeart::Load(GameOSFile &)
bool CitadelHeart::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00465a10 mac 101bf690 CitadelHeart::ResolveLoad(void)
void CitadelHeart::ResolveLoad()
{
}

// win1.41 00465a20 mac 101bf550 PlannedCitadelHeart::CreatePlanned(float)
MultiMapFixed* PlannedCitadelHeart::CreatePlanned(float param_1)
{
    return 0;
}

// win1.41 004664e0 mac inlined FireGraphic::SpritePos::GetSaveType( (void))
uint32_t FireGraphic::SpritePos::GetSaveType()
{
    return 0;
}

// win1.41 004664f0 mac 10110ed0 PSysBase::GetDebugText(void)
char* PSysBase::GetDebugText()
{
    return 0;
}

// win1.41 00466500 mac 10086ed0 PSysBase::_dt(void)
PSysBase::~PSysBase()
{
}

// win1.41 004665a0 mac 1008a6f0 CitadelHeart::Process(void)
uint32_t CitadelHeart::Process()
{
    return 0;
}

// win1.41 004673a0 mac 101be8e0 CitadelHeart::SaveObject(LHOSFile &, MapCoords const &)
uint32_t CitadelHeart::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 004675a0 mac 101be430 CitadelHeart::CallVirtualFunctionsForCreation(MapCoords const &)
void CitadelHeart::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 00467870 mac 101be3b0 CitadelHeart::GetWorldMatrix(LHMatrix *)
void CitadelHeart::GetWorldMatrix(LHMatrix* param_1)
{
}

// win1.41 00467b30 mac 101bdfc0 CitadelHeart::ChecksVerticesVObjects(void)
bool CitadelHeart::ChecksVerticesVObjects()
{
    return 0;
}

// win1.41 00467b40 mac 101bdf40 CitadelHeart::InteractsWithPhysicsObjects(void)
bool CitadelHeart::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00467b60 mac 101bdef0 CitadelHeart::GetPhysicsConstantsType(void)
uint32_t CitadelHeart::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 00467b70 mac 101bde40 CitadelHeart::SetUpPhysOb(PhysOb *)
void CitadelHeart::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 00467bb0 mac 101bdc10 CitadelHeart::ReactToPhysicsImpact(PhysicsObject *, bool)
void CitadelHeart::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00467d10 mac inlined CitadelHeart::GetDoorPos(MapCoords *)
MapCoords* CitadelHeart::GetDoorPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00467e10 mac 101c1ee0 PlannedTownCitadelHeart::IsCivic(void)
bool PlannedTownCitadelHeart::IsCivic()
{
    return 0;
}

// win1.41 00467e20 mac 101c1f20 PlannedTownCitadelHeart::IsWonder(void)
bool PlannedTownCitadelHeart::IsWonder()
{
    return 0;
}

// win1.41 00467e30 mac 101c1f60 PlannedTownCitadelHeart::GetAbodeType(void)
ABODE_TYPE PlannedTownCitadelHeart::GetAbodeType()
{
    return (ABODE_TYPE)0;
}

// win1.41 00467e40 mac 101c1fb0 PlannedTownCitadelHeart::GetSaveType(void)
uint32_t PlannedTownCitadelHeart::GetSaveType()
{
    return 0;
}

// win1.41 00467e50 mac 101c2000 PlannedTownCitadelHeart::GetDebugText(void)
char* PlannedTownCitadelHeart::GetDebugText()
{
    return 0;
}

// win1.41 00467e60 mac 101c1e40 PlannedTownCitadelHeart::_dt(void)
PlannedTownCitadelHeart::~PlannedTownCitadelHeart()
{
}

// win1.41 00467e80 mac 101bd9b0 PlannedTownCitadelHeart::ToBeDeleted(int)
void PlannedTownCitadelHeart::ToBeDeleted(int param_1)
{
}

// win1.41 00467ea0 mac 101bd8c0 PlannedTownCitadelHeart::CreatePlanned(float)
MultiMapFixed* PlannedTownCitadelHeart::CreatePlanned(float param_1)
{
    return 0;
}

// win1.41 00467ef0 mac 101bd6b0 PlannedTownCitadelHeart::CreatePlannedNoFixedCheck(float)
MultiMapFixed* PlannedTownCitadelHeart::CreatePlannedNoFixedCheck(float param_1)
{
    return 0;
}

// win1.41 00467fc0 mac 101bd610 PlannedTownCitadelHeart::Save(GameOSFile &)
bool PlannedTownCitadelHeart::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00467ff0 mac 101bd570 PlannedTownCitadelHeart::Load(GameOSFile &)
bool PlannedTownCitadelHeart::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00468020 mac 10075fd0 CitadelHeart::GetPlayer(void)
GPlayer* CitadelHeart::GetPlayer()
{
    return 0;
}

// win1.41 004680b0 mac 101bd410 CitadelHeart::GetScriptObjectType(void)
uint32_t CitadelHeart::GetScriptObjectType()
{
    return 0;
}

// win1.41 004680c0 mac 101bd390 CitadelHeart::GetRoutePlanRadius(Creature *)
float CitadelHeart::GetRoutePlanRadius(Creature* param_1)
{
    return 0;
}

// win1.41 004680d0 mac 101bceb0 CitadelHeart::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void CitadelHeart::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (_cdecl* param_4)(int, Point2D, float, int))
{
}

// win1.41 00468c30 mac 101bc080 CitadelHeart::GetActualObjectToEffect(GPlayer *, bool)
void* CitadelHeart::GetActualObjectToEffect(GPlayer* param_1, bool param_2)
{
    return 0;
}

// win1.41 00468da0 mac 101bc010 CitadelHeart::DestroyedByEffect(GPlayer *, float)
bool CitadelHeart::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 00468dc0 mac 101bbf10 CitadelHeart::CreateBuildingSite(void)
bool CitadelHeart::CreateBuildingSite()
{
    return 0;
}

// win1.41 00468df0 mac 101bbe50 PlannedCitadelHeart::CreateBuildingSite(void)
bool PlannedCitadelHeart::CreateBuildingSite()
{
    return 0;
}

// win1.41 00468e50 mac 101bb520 CitadelEntrance::SaveObject(LHOSFile &, MapCoords const &)
uint32_t CitadelEntrance::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00468e60 mac 101bb570 CitadelEntrance::GetSaveType(void)
uint32_t CitadelEntrance::GetSaveType()
{
    return 0;
}

// win1.41 00468e70 mac 101bb5b0 CitadelEntrance::GetDebugText(void)
char* CitadelEntrance::GetDebugText()
{
    return 0;
}

// win1.41 00468e80 mac 101bb490 CitadelEntrance::_dt(void)
CitadelEntrance::~CitadelEntrance()
{
}

// win1.41 00468ef0 mac 101bbce0 CitadelEntrance::InterfaceTap(GInterfaceStatus *)
uint32_t CitadelEntrance::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00468f50 mac 101bbc30 CitadelEntrance::InterfaceValidToTap(GInterfaceStatus *)
uint32_t CitadelEntrance::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00468f90 mac 101bbbe0 CitadelEntrance::GetQueryFirstEnumText(void)
HELP_TEXT CitadelEntrance::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00468fa0 mac 101bbb70 CitadelEntrance::GetQueryLastEnumText(void)
HELP_TEXT CitadelEntrance::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00468fb0 mac 101bb6e0 CitadelHeart::CreateCollideData(void)
void CitadelHeart::CreateCollideData()
{
}

// win1.41 00469380 mac 101bb5f0 CitadelEntrance::ResolveLoad(void)
void CitadelEntrance::ResolveLoad()
{
}

// win1.41 004693f0 mac 101c35b0 CitadelPart::CitadelPart(MapCoords const &, GCitadelPartInfo const *, Citadel *, float, float, float, int)
CitadelPart::CitadelPart(MapCoords* coords, GCitadelPartInfo* info, Citadel* citadel, float y_angle, float scale, float param_6, int param_7)
{
}

// win1.41 00469490 mac 101ba510 CitadelPart::Process(void)
uint32_t CitadelPart::Process()
{
    return 0;
}

// win1.41 004694a0 mac 101b91f0 CitadelPart::ConvertToPlanned(void)
PlannedMultiMapFixed* CitadelPart::ConvertToPlanned()
{
    return 0;
}

// win1.41 004694b0 mac 101c3720 CitadelPart::Get3DType(void)
LH3DObject::ObjectType CitadelPart::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 004694c0 mac 101c3760 CitadelPart::SaveObject(LHOSFile &, MapCoords const &)
uint32_t CitadelPart::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 004694d0 mac 101c37b0 CitadelPart::GetSaveType(void)
uint32_t CitadelPart::GetSaveType()
{
    return 0;
}

// win1.41 004694e0 mac 101c37f0 CitadelPart::GetDebugText(void)
char* CitadelPart::GetDebugText()
{
    return 0;
}

// win1.41 004694f0 mac 101c3830 CitadelPart::ShouldFootpathsGoRound(void)
bool CitadelPart::ShouldFootpathsGoRound()
{
    return 0;
}

// win1.41 00469500 mac 101c3520 CitadelPart::_dt(void)
CitadelPart::~CitadelPart()
{
}

// win1.41 00469540 mac 101c3320 CitadelPart::ToBeDeleted(int)
void CitadelPart::ToBeDeleted(int param_1)
{
}

// win1.41 004695c0 mac 101c32d0 CitadelPart::DestroyedByEffect(GPlayer *, float)
bool CitadelPart::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 004695d0 mac inlined CitadelPart::CanBeDestroyedBySpell_1(Spell *)
bool CitadelPart::CanBeDestroyedBySpell(Spell* param_1)
{
    return 0;
}

// win1.41 00469660 mac 100bd510 PlannedMultiMapFixed::CreatePlanned(float)
MultiMapFixed* PlannedMultiMapFixed::CreatePlanned(float param_1)
{
    return 0;
}

// win1.41 00469670 mac 101bff10 PlannedCitadelPart::_dt(void)
PlannedCitadelPart::~PlannedCitadelPart()
{
}

// win1.41 00469690 mac 101c2f70 PlannedCitadelPart::ToBeDeleted(int)
void PlannedCitadelPart::ToBeDeleted(int param_1)
{
}

// win1.41 004696f0 mac 101c2ed0 PlannedCitadelPart::Save(GameOSFile &)
bool PlannedCitadelPart::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00469720 mac 101c2e30 PlannedCitadelPart::Load(GameOSFile &)
bool PlannedCitadelPart::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00469750 mac 10075f70 CitadelPart::GetPlayer(void)
GPlayer* CitadelPart::GetPlayer()
{
    return 0;
}

// win1.41 00469760 mac 101c2b70 CitadelPart::CallVirtualFunctionsForCreation(MapCoords const &)
void CitadelPart::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00469780 mac 101c2a50 CitadelPart::GetActualObjectToEffect(GPlayer *, bool)
void* CitadelPart::GetActualObjectToEffect(GPlayer* param_1, bool param_2)
{
    return 0;
}

// win1.41 004697f0 mac 101c2970 CitadelPart::ReactToPhysicsImpact(PhysicsObject *, bool)
void CitadelPart::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00469830 mac 101c2870 CitadelPart::Save(GameOSFile &)
bool CitadelPart::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004698b0 mac 101c2780 CitadelPart::Load(GameOSFile &)
bool CitadelPart::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0046b1f0 mac 100bf310 Config::Process(void)
void Config::Process()
{
}

// win1.41 0046b290 mac 100befa0 Config::ProcessOneGameTurn(void)
void Config::ProcessOneGameTurn()
{
}

// win1.41 0046b720 mac inlined LHOSFile::Write(char *const)
uint32_t LHOSFile::Write(const char* str)
{
    return 0;
}

// win1.41 0046b820 mac 100bfe80 GContainerInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GContainerInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0046b880 mac 100bfd60 GContainerInfo::_dt(void)
GContainerInfo::~GContainerInfo()
{
}

// win1.41 0046b900 mac 100bf890 Container::_dt(void)
Container::~Container()
{
}

// win1.41 0046b920 mac 100bf9d0 Container::Save(GameOSFile &)
bool Container::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0046b960 mac 100bf930 Container::Load(GameOSFile &)
bool Container::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0046be80 mac 101a6900 HandState::AllowCameraTricons(void)
bool HandState::AllowCameraTricons()
{
    return 0;
}

// win1.41 0046be90 mac 101c9440 HandStateInvisible::Enter(void)
void HandStateInvisible::Enter()
{
}

// win1.41 0046bed0 mac 101c9510 HandStateInvisible::Exit(void)
void HandStateInvisible::Exit()
{
}

// win1.41 0046bee0 mac 101c9570 HandStateInvisible::Update(float, LHMatrix *)
void HandStateInvisible::Update(float param_1, LHMatrix* param_2)
{
}

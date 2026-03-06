#include "FireEffect.h"
#include "FireGraphic.h"
#include "Object.h"
#include "StoragePit.h"
#include "Stream.h"
#include "Waterfall.h"
#include "StreetLantern.h"
#include "StreetLight.h"
#include "TerrainMaterialInfo.h"

// win1.41 0072ea80 mac 10150740 FireEffect::FireEffect(void)
FireEffect::FireEffect()
{
}

// win1.41 0072eab0 mac 1014cc60 FireEffect::GetPlayer(void)
GPlayer* FireEffect::GetPlayer()
{
    return 0;
}

// win1.41 0072eac0 mac 101508d0 FireEffect::GetSaveType(void)
uint32_t FireEffect::GetSaveType()
{
    return 0;
}

// win1.41 0072ead0 mac 10150910 FireEffect::GetDebugText(void)
char* FireEffect::GetDebugText()
{
    return 0;
}

// win1.41 0072eae0 mac 10150470 FireEffect::_dt(void)
FireEffect::~FireEffect()
{
}

// win1.41 0072ebe0 mac 101500c0 FireEffect::ToBeDeleted(int)
void FireEffect::ToBeDeleted(int param_1)
{
}

// win1.41 0072ee70 mac 1014fd50 FireEffect::Get3DSoundPos(LHPoint *)
int FireEffect::Get3DSoundPos(LHPoint* param_1)
{
    return 0;
}

// win1.41 00730ad0 mac 1014c5c0 FireEffect::CreateSprites(void)
FireGraphic* FireEffect::CreateSprites()
{
    return 0;
}

// win1.41 00730b00 mac 1014c110 FireEffect::Save(GameOSFile &)
bool FireEffect::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00730df0 mac 1014bcc0 FireEffect::Load(GameOSFile &)
bool FireEffect::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007310d0 mac 1014bc70 FireEffect::ResolveLoad(void)
void FireEffect::ResolveLoad()
{
}

// win1.41 00731390 mac 1014b860 FireGraphic::_dt(void)
FireGraphic::~FireGraphic()
{
}

// win1.41 00731a90 mac inlined FireGraphic::SpritePos::_dt( (void))
FireGraphic::SpritePos::~SpritePos()
{
}

// win1.41 00732630 mac 101499d0 Object::GetPSysFireFlameMatrix(LHMatrix *)
bool Object::GetPSysFireFlameMatrix(LHMatrix* matrix)
{
    return 0;
}

// win1.41 00732660 mac 10149810 Object::GetPSysFireWorldFlamePos(LHPoint const &, long, LHPoint *)
bool Object::GetPSysFireWorldFlamePos(const LHPoint& param_1, int param_2, LHPoint* param_3)
{
    return 0;
}

// win1.41 00732770 mac 10149520 Object::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
bool Object::GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2)
{
    return 0;
}

// win1.41 00732950 mac 101493c0 Object::GetPSysFireLocalFlameScale(void)
float Object::GetPSysFireLocalFlameScale()
{
    return 0;
}

// win1.41 00732a30 mac 101492c0 Object::GetPSysFireMaxFlames(void)
uint32_t Object::GetPSysFireMaxFlames()
{
    return 0;
}

// win1.41 00732ae0 mac 10149240 FireEffect::GetFirstCaused(void)
uint32_t FireEffect::GetFirstCaused()
{
    return 0;
}

// win1.41 00732c10 mac 101532f0 StoragePit::Delete(void)
void StoragePit::Delete()
{
}

// win1.41 00732c30 mac 101531a0 StoragePit::ToBeDeleted(int)
void StoragePit::ToBeDeleted(int param_1)
{
}

// win1.41 00732cd0 mac 10153060 StoragePit::DeleteDependancys(void)
void StoragePit::DeleteDependancys()
{
}

// win1.41 00732e80 mac 10152d50 StoragePit::CallVirtualFunctionsForCreation(MapCoords const &)
void StoragePit::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00732f30 mac 10152b90 StoragePit::MakeFunctional(void)
void StoragePit::MakeFunctional()
{
}

// win1.41 00732f60 mac 10003d60 StoragePit::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t StoragePit::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 007331d0 mac 101527b0 StoragePit::RemovePotFromStructure(PotStructure *)
void StoragePit::RemovePotFromStructure(PotStructure* param_1)
{
}

// win1.41 00733260 mac 101526e0 StoragePit::CalulateAmountOverMaximum(RESOURCE_TYPE)
int StoragePit::CalulateAmountOverMaximum(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 007332a0 mac 10152550 StoragePit::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t StoragePit::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 00733400 mac 10002840 StoragePit::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
MapCoords* StoragePit::GetResourceNearestEdge(MapCoords* param_1, RESOURCE_TYPE param_2, Object* param_3, int param_4)
{
    return 0;
}

// win1.41 00733550 mac inlined StoragePit::IsPoisonedResource(void)
bool StoragePit::IsPoisonedResource()
{
    return 0;
}

// win1.41 007335d0 mac 10152110 StoragePit::SetPoisoned(int)
void StoragePit::SetPoisoned(int param_1)
{
}

// win1.41 007335f0 mac 10151f80 StoragePit::SetPoisonedResource(RESOURCE_TYPE, int)
void StoragePit::SetPoisonedResource(RESOURCE_TYPE param_1, int param_2)
{
}

// win1.41 007336b0 mac 10151ed0 StoragePit::IsPoisoned(void)
bool StoragePit::IsPoisoned()
{
    return 0;
}

// win1.41 00733730 mac 10151d80 StoragePit::ReactToPhysicsImpact(PhysicsObject *, bool)
void StoragePit::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00733750 mac 10151c60 StoragePit::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool StoragePit::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 00733810 mac 101519d0 StoragePit::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool StoragePit::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 007338d0 mac 10151930 StoragePit::Save(GameOSFile &)
bool StoragePit::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00733920 mac 10151890 StoragePit::Load(GameOSFile &)
bool StoragePit::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00733960 mac 10151770 StoragePit::StopBeingFunctional(GPlayer *)
void StoragePit::StopBeingFunctional(GPlayer* param_1)
{
}

// win1.41 007339d0 mac 10151670 StoragePit::RestartBeingFunctional(void)
void StoragePit::RestartBeingFunctional()
{
}

// win1.41 00733a20 mac 101515e0 StoragePit::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t StoragePit::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 00733b10 mac 10154cf0 GStream::ToBeDeleted(int)
void GStream::ToBeDeleted(int param_1)
{
}

// win1.41 00733ff0 mac 10154580 GStream::CreateAll(void)
void GStream::CreateAll()
{
}

// win1.41 00734170 mac 10154230 GWaterfall::ToBeDeleted(int)
void GWaterfall::ToBeDeleted(int param_1)
{
}

// win1.41 007341b0 mac 10154110 GWaterfall::CallVirtualFunctionsForCreation(MapCoords const &)
void GWaterfall::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 007341d0 mac 10154080 GWaterfall::SaveObject(LHOSFile &, MapCoords const &)
uint32_t GWaterfall::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00734380 mac 10153ac0 GStream::Save(GameOSFile &)
bool GStream::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007344e0 mac 10153560 GStream::Load(GameOSFile &)
bool GStream::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00734640 mac 101534f0 GStream::ResolveLoad(void)
void GStream::ResolveLoad()
{
}

// win1.41 00734650 mac 101534b0 GWaterfall::Save(GameOSFile &)
bool GWaterfall::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00734660 mac 10153470 GWaterfall::Load(GameOSFile &)
bool GWaterfall::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00734810 mac 105350a0 GStreetLantern::CallVirtualFunctionsForCreation(MapCoords const &)
void GStreetLantern::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 007349d0 mac 10535050 GStreetLantern::InteractsWithPhysicsObjects(void)
bool GStreetLantern::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00734a70 mac 1002d8c0 GStreetLantern::Draw(void)
void GStreetLantern::Draw()
{
}

// win1.41 00734ab0 mac 10534d50 GStreetLantern::ToBeDeleted(int)
void GStreetLantern::ToBeDeleted(int param_1)
{
}

// win1.41 00734b10 mac 10534be0 GStreetLantern::SaveObject(LHOSFile &, MapCoords const &)
uint32_t GStreetLantern::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00734be0 mac 10534ab0 GStreetLantern::Load(GameOSFile &)
bool GStreetLantern::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00734c90 mac 10534980 GStreetLantern::Save(GameOSFile &)
bool GStreetLantern::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00734d40 mac 10003680 GStreetLantern::GetScriptObjectType(void)
uint32_t GStreetLantern::GetScriptObjectType()
{
    return 0;
}

// win1.41 00734d50 mac 10534800 GStreetLantern::CreatureMustAvoid(Creature *)
bool GStreetLantern::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00734e00 mac 10535d70 GStreetLight::ToBeDeleted(int)
void GStreetLight::ToBeDeleted(int param_1)
{
}

// win1.41 00735110 mac 10535980 GStreetLight::GetDistanceFromObject(MapCoords const &)
float GStreetLight::GetDistanceFromObject(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00735140 mac 10535910 GStreetLight::Save(GameOSFile &)
bool GStreetLight::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00735160 mac 105358a0 GStreetLight::Load(GameOSFile &)
bool GStreetLight::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00735180 mac 10535840 GStreetLight::ResolveLoad(void)
void GStreetLight::ResolveLoad()
{
}

// win1.41 00735230 mac 10542330 GTerrainMaterialInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GTerrainMaterialInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00735290 mac 105420c0 GTerrainMaterialInfo::_dt(void)
GTerrainMaterialInfo::~GTerrainMaterialInfo()
{
}

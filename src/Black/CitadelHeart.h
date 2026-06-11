#ifndef BW1_DECOMP_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For LEASH_TYPE_LAST, enum ABODE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Citadel;
class Creature;
class GCitadelHeartInfo;
class GInterfaceStatus;
class GPlayer;
class GTribeInfo;
class GWorshipSiteInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DObject;
struct LH3DSprite;
struct LHMatrix;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
struct PhysOb;
class PhysicsObject;
class PlannedMultiMapFixed;
struct RPHolder;
struct TempleLeash;
class WorshipSite;

class LeashObj: public Object
{
public:
    int field_0x54;
    TempleLeash* temple_leash;
    LH3DObject* object;
    float field_0x60;
    float field_0x64;
    float field_0x68;
    uint32_t field_0x6c;
    LH3DSprite* sprite; /* 0x70 */
    float field_0x74;

    // Override methods

    // win1.41 00464890 mac 101c0f00 LeashObj::_dt(void)
    virtual ~LeashObj();
    // win1.41 00464580 mac 101c1870 LeashObj::GetOverwriteInteractableToolTip(void)
    virtual uint32_t GetOverwriteInteractableToolTip();
    // win1.41 00464860 mac 101c25e0 LeashObj::GetText(void)
    virtual const char* GetText();
    // win1.41 00464870 mac 101c2620 LeashObj::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00464880 mac 101c2690 LeashObj::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 00464850 mac 101c2590 LeashObj::ValidAsInterfaceLeashTarget(void)
    virtual uint32_t ValidAsInterfaceLeashTarget();
    // win1.41 00464450 mac 101c1a60 LeashObj::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00464490 mac 101c18f0 LeashObj::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 00464840 mac 101c2540 LeashObj::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

struct TempleLeash
{
    int field_0x0;
    LeashObj* leashes[LEASH_TYPE_LAST];

    // Constructors

    // win1.41 00464650 mac 101c1350 TempleLeash::TempleLeash(LH3DObject *, unsigned long)
    TempleLeash(LH3DObject* param_1, uint32_t param_2);
};

class CitadelHeart: public CitadelPart
{
public:
    uint32_t field_0x8c;
    uint32_t field_0x90;
    GameThing* field_0x94;
    GameThing* field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    int field_0xa4;
    uint32_t field_0xa8;
    GameThing* field_0xac;
    GameThing* field_0xb0;
    uint32_t field_0xb4;
    uint8_t field_0xb8;
    float field_0xbc;
    GameThing* field_0xc0;
    uint32_t field_0xc4;
    uint32_t field_0xc8;
    GameThing* field_0xcc;
    float field_0xd0;
    uint32_t field_0xd4;
    uint32_t field_0xd8;
    GameThing* field_0xdc;
    uint32_t field_0xe0;
    TempleLeash* leashes;

    // Override methods

    // win1.41 00464bc0 mac 101c0df0 CitadelHeart::_dt(void)
    virtual ~CitadelHeart();
    // win1.41 00464c50 mac 101c0b90 CitadelHeart::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00468020 mac 10075fd0 CitadelHeart::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00464bb0 mac 101c23c0 CitadelHeart::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004657f0 mac 101bf6e0 CitadelHeart::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 004655c0 mac 101bf9c0 CitadelHeart::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00464ba0 mac 101c2380 CitadelHeart::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00465a10 mac 101bf690 CitadelHeart::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00464b80 mac 101c2250 CitadelHeart::IsCitadelHeart(void)
    virtual uint32_t IsCitadelHeart();
    // win1.41 00468dc0 mac 101bbf10 CitadelHeart::CreateBuildingSite(void)
    virtual uint32_t CreateBuildingSite();
    // win1.41 004680b0 mac 101bd410 CitadelHeart::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00464b20 mac inlined CitadelHeart::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // win1.41 00464b30 mac 100173c0 CitadelHeart::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // win1.41 00468c30 mac 101bc080 CitadelHeart::GetActualObjectToEffect(GPlayer *, bool)
    virtual void* GetActualObjectToEffect(GPlayer* param_1, bool param_2);
    // win1.41 00468da0 mac 101bc010 CitadelHeart::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 004665a0 mac 1008a6f0 CitadelHeart::Process(void)
    virtual uint32_t Process();
    // win1.41 00464b90 mac 10011680 CitadelHeart::Draw(void)
    virtual void Draw();
    // win1.41 00467870 mac 101be3b0 CitadelHeart::GetWorldMatrix(LHMatrix *)
    virtual void GetWorldMatrix(LHMatrix* param_1);
    // win1.41 004675a0 mac 101be430 CitadelHeart::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 00464b40 mac 101be8a0 CitadelHeart::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 00467b60 mac 101bdef0 CitadelHeart::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00467b70 mac 101bde40 CitadelHeart::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 00467b40 mac 101bdf40 CitadelHeart::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00467b30 mac 101bdfc0 CitadelHeart::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // win1.41 00467bb0 mac 101bdc10 CitadelHeart::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 004680d0 mac 101bceb0 CitadelHeart::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 004680c0 mac 101bd390 CitadelHeart::GetRoutePlanRadius(Creature *)
    virtual float GetRoutePlanRadius(Creature* param_1);
    // win1.41 00464b50 mac 101c2180 CitadelHeart::GetObjectCollide(void)
    virtual uint32_t GetObjectCollide();
    // win1.41 004673a0 mac 101be8e0 CitadelHeart::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00464b70 mac 101c2200 CitadelHeart::ShouldFootpathsGoRound(void)
    virtual bool ShouldFootpathsGoRound();
    // win1.41 00467d10 mac inlined CitadelHeart::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // win1.41 00465000 mac 101c0570 CitadelHeart::Built(void)
    virtual bool Built();
    // win1.41 00464b60 mac 101c21c0 CitadelHeart::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
    // win1.41 00465430 mac 101bfcc0 CitadelHeart::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // win1.41 00468fb0 mac 101bb6e0 CitadelHeart::CreateCollideData(void)
    virtual void CreateCollideData();

    // Static methods

    // win1.41 00464e20 mac 101c0960 CitadelHeart::Create(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
    static CitadelHeart* Create(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5, float param_6, int param_7);

    // Constructors

    // win1.41 inlined mac inlined CitadelHeart::CitadelHeart(void)
    CitadelHeart();
    // win1.41 004649b0 mac 101c0f90 CitadelHeart::__ct(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
    CitadelHeart(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5, float param_6, int param_7);

    // Non-virtual methods

    // win1.41 00464950 mac 101c1180 CitadelHeart::CreateLeashes(void)
    void CreateLeashes();
    // win1.41 00464da0 mac 101c0af0 CitadelHeart::SetToZero(void)
    void SetToZero();
    // win1.41 00465110 mac 101c03b0 CitadelHeart::CreateBuiltWorshipSite(MapCoords const &, GWorshipSiteInfo const *, Citadel *, GTribeInfo const *)
    WorshipSite* CreateBuiltWorshipSite(const MapCoords* coords, const GWorshipSiteInfo* info, const Citadel* citadel, const GTribeInfo* tribe_info);
};

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */

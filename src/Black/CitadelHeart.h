#ifndef BW1_DECOMP_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                             /* For LEASH_TYPE_LAST, enum ABODE_TYPE */
#include <chlasm/HelpTextEnums.h>                    /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Object.h"      /* For struct Object */

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

class LeashObj : public Object
{
public:
	int          field_0x54;
	TempleLeash* temple_leash;
	LH3DObject*  object;
	float        field_0x60;
	float        field_0x64;
	float        field_0x68;
	uint32_t     field_0x6c;
	LH3DSprite*  sprite; /* 0x70 */
	float        field_0x74;

	// Override methods

	// BW1W120 00464890 BW1M100 101c0f00 LeashObj::_dt(void)
	virtual ~LeashObj();
	// BW1W120 00464580 BW1M100 101c1870 LeashObj::GetOverwriteInteractableToolTip(void)
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 00464860 BW1M100 101c25e0 LeashObj::GetText(void)
	virtual const char* GetText();
	// BW1W120 00464870 BW1M100 101c2620 LeashObj::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00464880 BW1M100 101c2690 LeashObj::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00464850 BW1M100 101c2590 LeashObj::ValidAsInterfaceLeashTarget(void)
	virtual uint32_t ValidAsInterfaceLeashTarget();
	// BW1W120 00464450 BW1M100 101c1a60 LeashObj::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00464490 BW1M100 101c18f0 LeashObj::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00464840 BW1M100 101c2540 LeashObj::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

struct TempleLeash
{
	int       field_0x0;
	LeashObj* leashes[LEASH_TYPE_LAST];

	// Constructors

	// BW1W120 00464650 BW1M100 101c1350 TempleLeash::TempleLeash(LH3DObject *, unsigned long)
	TempleLeash(LH3DObject* param_1, uint32_t param_2);
};

class CitadelHeart : public CitadelPart
{
public:
	uint32_t     field_0x8c;
	uint32_t     field_0x90;
	GameThing*   field_0x94;
	GameThing*   field_0x98;
	uint32_t     field_0x9c;
	uint32_t     field_0xa0;
	int          field_0xa4;
	uint32_t     field_0xa8;
	GameThing*   field_0xac;
	GameThing*   field_0xb0;
	uint32_t     field_0xb4;
	uint8_t      field_0xb8;
	float        field_0xbc;
	GameThing*   field_0xc0;
	uint32_t     field_0xc4;
	uint32_t     field_0xc8;
	GameThing*   field_0xcc;
	float        field_0xd0;
	uint32_t     field_0xd4;
	uint32_t     field_0xd8;
	GameThing*   field_0xdc;
	uint32_t     field_0xe0;
	TempleLeash* leashes;

	// Override methods

	// BW1W120 00464bc0 BW1M100 101c0df0 CitadelHeart::_dt(void)
	virtual ~CitadelHeart();
	// BW1W120 00464c50 BW1M100 101c0b90 CitadelHeart::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00468020 BW1M100 10075fd0 CitadelHeart::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00464bb0 BW1M100 101c23c0 CitadelHeart::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 004657f0 BW1M100 101bf6e0 CitadelHeart::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004655c0 BW1M100 101bf9c0 CitadelHeart::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00464ba0 BW1M100 101c2380 CitadelHeart::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00465a10 BW1M100 101bf690 CitadelHeart::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 00464b80 BW1M100 101c2250 CitadelHeart::IsCitadelHeart(void)
	virtual uint32_t IsCitadelHeart();
	// BW1W120 00468dc0 BW1M100 101bbf10 CitadelHeart::CreateBuildingSite(void)
	virtual uint32_t CreateBuildingSite();
	// BW1W120 004680b0 BW1M100 101bd410 CitadelHeart::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00464b20 BW1M100 inlined CitadelHeart::SetSpecularColor(LH3DColor)
	virtual void SetSpecularColor(LH3DColor param_1);
	// BW1W120 00464b30 BW1M100 100173c0 CitadelHeart::GetSpecularColor(void)
	virtual LH3DColor GetSpecularColor();
	// BW1W120 00468c30 BW1M100 101bc080 CitadelHeart::GetActualObjectToEffect(GPlayer *, bool)
	virtual void* GetActualObjectToEffect(GPlayer* param_1, bool param_2);
	// BW1W120 00468da0 BW1M100 101bc010 CitadelHeart::DestroyedByEffect(GPlayer *, float)
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 004665a0 BW1M100 1008a6f0 CitadelHeart::Process(void)
	virtual uint32_t Process();
	// BW1W120 00464b90 BW1M100 10011680 CitadelHeart::Draw(void)
	virtual void Draw();
	// BW1W120 00467870 BW1M100 101be3b0 CitadelHeart::GetWorldMatrix(LHMatrix *)
	virtual void GetWorldMatrix(LHMatrix* param_1);
	// BW1W120 004675a0 BW1M100 101be430 CitadelHeart::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
	// BW1W120 00464b40 BW1M100 101be8a0 CitadelHeart::Get3DType(void)
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00467b60 BW1M100 101bdef0 CitadelHeart::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00467b70 BW1M100 101bde40 CitadelHeart::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00467b40 BW1M100 101bdf40 CitadelHeart::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00467b30 BW1M100 101bdfc0 CitadelHeart::ChecksVerticesVObjects(void)
	virtual uint32_t ChecksVerticesVObjects();
	// BW1W120 00467bb0 BW1M100 101bdc10 CitadelHeart::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 004680d0 BW1M100 101bceb0 CitadelHeart::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 004680c0 BW1M100 101bd390 CitadelHeart::GetRoutePlanRadius(Creature *)
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 00464b50 BW1M100 101c2180 CitadelHeart::GetObjectCollide(void)
	virtual uint32_t GetObjectCollide();
	// BW1W120 004673a0 BW1M100 101be8e0 CitadelHeart::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 00464b70 BW1M100 101c2200 CitadelHeart::ShouldFootpathsGoRound(void)
	virtual bool ShouldFootpathsGoRound();
	// BW1W120 00467d10 BW1M100 inlined CitadelHeart::GetDoorPos(MapCoords *)
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 00465000 BW1M100 101c0570 CitadelHeart::Built(void)
	virtual bool Built();
	// BW1W120 00464b60 BW1M100 101c21c0 CitadelHeart::GetAbodeType(void)
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00465430 BW1M100 101bfcc0 CitadelHeart::ConvertToPlanned(void)
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 00468fb0 BW1M100 101bb6e0 CitadelHeart::CreateCollideData(void)
	virtual void CreateCollideData();

	// Static methods

	// BW1W120 00464e20 BW1M100 101c0960 CitadelHeart::Create(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
	static CitadelHeart* Create(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4,
	                            float param_5, float param_6, int param_7);

	// Constructors

	// BW1W120 inlined BW1M100 inlined CitadelHeart::CitadelHeart(void)
	CitadelHeart();
	// BW1W120 004649b0 BW1M100 101c0f90 CitadelHeart::__ct(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
	CitadelHeart(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5,
	             float param_6, int param_7);

	// Non-virtual methods

	// BW1W120 00464950 BW1M100 101c1180 CitadelHeart::CreateLeashes(void)
	void CreateLeashes();
	// BW1W120 00464da0 BW1M100 101c0af0 CitadelHeart::SetToZero(void)
	void SetToZero();
	// BW1W120 00465110 BW1M100 101c03b0 CitadelHeart::CreateBuiltWorshipSite(MapCoords const &, GWorshipSiteInfo const *, Citadel *, GTribeInfo const *)
	WorshipSite* CreateBuiltWorshipSite(const MapCoords* coords, const GWorshipSiteInfo* info, const Citadel* citadel,
	                                    const GTribeInfo* tribe_info);
};

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */

#ifndef BW1_DECOMP_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                             /* For LEASH_TYPE_LAST, enum ABODE_TYPE */
#include <chlasm/ScriptEnums.h>                      /* For enum SCRIPT_OBJECT_TYPE */
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

	// BW1W120 00464890 BW1M119 011c88e0
	virtual ~LeashObj();
	// BW1W120 00464580 BW1M119 011c9230
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 00464860 BW1M119 011c9fc0
	virtual const char* GetText();
	// BW1W120 00464870 BW1M119 011ca000
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00464880 BW1M119 011ca070
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00464850 BW1M119 011c9f70
	virtual uint32_t ValidAsInterfaceLeashTarget();
	// BW1W120 00464450 BW1M119 011c9420
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00464490 BW1M119 011c92b0
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00464840 BW1M119 011c9f20
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

struct TempleLeash
{
	int       field_0x0;
	LeashObj* leashes[LEASH_TYPE_LAST];

	// Constructors

	// BW1W120 00464650 BW1M119 011c8d20
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

	// BW1W120 00464bc0 BW1M119 011c87d0
	virtual ~CitadelHeart();
	// BW1W120 00464c50 BW1M119 011c8570
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00468020 BW1M119 01078550
	virtual GPlayer* GetPlayer();
	// BW1W120 00464bb0 BW1M119 011c9da0
	virtual char* GetDebugText();
	// BW1W120 004657f0 BW1M119 011c70e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004655c0 BW1M119 011c73c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00464ba0 BW1M119 011c9d60
	virtual uint32_t GetSaveType();
	// BW1W120 00465a10 BW1M119 011c7090
	virtual void ResolveLoad();
	// BW1W120 00464b80 BW1M119 011c9c10
	virtual uint32_t IsCitadelHeart();
	// BW1W120 00468dc0 BW1M119 011c41c0
	virtual uint32_t CreateBuildingSite();
	// BW1W120 004680b0 BW1M119 011c5260
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00464b20 BW1M119 inlined
	virtual void SetSpecularColor(LH3DColor param_1);
	// BW1W120 00464b30 BW1M119 01019f70
	virtual LH3DColor GetSpecularColor();
	// BW1W120 00468c30 BW1M119 011c4330
	virtual void* GetActualObjectToEffect(GPlayer* param_1, bool param_2);
	// BW1W120 00468da0 BW1M119 011c42c0
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 004665a0 BW1M119 0108ca30
	virtual uint32_t Process();
	// BW1W120 00464b90 BW1M119 01014250
	virtual void Draw();
	// BW1W120 00467870 BW1M119 011c6230
	virtual void GetWorldMatrix(LHMatrix* param_1);
	// BW1W120 004675a0 BW1M119 011c62b0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00464b40 BW1M119 011c6720
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00467b60 BW1M119 011c5d70
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00467b70 BW1M119 011c5cc0
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00467b40 BW1M119 011c5dc0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00467b30 BW1M119 011c5e40
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00467bb0 BW1M119 011c5a90
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 004680d0 BW1M119 011c4d00
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 004680c0 BW1M119 011c51e0
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 00464b50 BW1M119 011c9b40
	virtual uint32_t GetObjectCollide();
	// BW1W120 004673a0 BW1M119 011c6760
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00464b70 BW1M119 011c9bc0
	virtual bool32_t ShouldFootpathsGoRound();
	// BW1W120 00467d10 BW1M119 inlined
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 00465000 BW1M119 011c7f50
	virtual bool32_t Built();
	// BW1W120 00464b60 BW1M119 011c9b80
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00465430 BW1M119 011c76c0
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 00468fb0 BW1M119 011c39a0
	virtual void CreateCollideData();

	// Static methods

	// BW1W120 00464e20 BW1M119 011c8340
	static CitadelHeart* Create(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel, float param_4,
	                            float param_5, float param_6, int param_7);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CitadelHeart();
	// BW1W120 004649b0 BW1M119 011c8970
	CitadelHeart(MapCoords* coords, GCitadelHeartInfo* info, Citadel* citadel, float param_4, float param_5,
	             float param_6, int param_7);

	// Non-virtual methods

	// BW1W120 00464950 BW1M119 011c8b50
	void CreateLeashes();
	// BW1W120 00464da0 BW1M119 011c84d0
	void SetToZero();
	// BW1W120 00465110 BW1M119 011c7d90
	WorshipSite* CreateBuiltWorshipSite(const MapCoords& coords, const GWorshipSiteInfo* info, const Citadel* citadel,
	                                    const GTribeInfo* tribe_info);
};

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */

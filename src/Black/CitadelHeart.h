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
#include "LHPTR.h"       /* For LHPTR */
#include "Object.h"      /* For struct Object */

// Forward Declares

class LH3DObjectCollide;
class BuildingSite;
class Base;
class Citadel;
class CitadelEntrance;
class Creature;
struct CameraExclusion;
class Flock;
class GParticleContainer;
class GCitadelHeartInfo;
class GInterfaceStatus;
class GPlayer;
class GTribeInfo;
class GWorshipSiteInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DGJAnimVolFX;
class LH3DObject;
struct LH3DMesh;
struct LH3DSprite;
struct LHMatrix;
struct LHPoint;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
struct PhysOb;
struct Point2D;
class PhysicsObject;
class PlannedMultiMapFixed;
struct RPHolder;
struct TempleLeash;
class Town;
class WorshipSite;

#define ALIGNMENT_FLOCK_UPDATE_TURNS   100
#define HEART_BEAT_STAGES              3
#define DESTRUCTION_VOL_FX_STAGES      4
#define CITADEL_HEART_MASS             10000
#define CAMERA_EXCLUSION_ID_CITADEL    2
#define CITADEL_COLLIDE_SECTORS        7
#define CITADEL_COLLIDE_RINGS          6
#define CITADEL_COLLIDE_OBJ_COUNT      34
#define ALIGNMENT_FLOCK_DOMAIN_RADIUS  30
#define ALIGNMENT_FLOCK_DISTANCE       15
#define CITADEL_SPARK_SAMPLE_COUNT     5
#define CITADEL_SAVE_TEXT_LENGTH       200
#define CITADEL_SAVE_COORD_TEXT_LENGTH 100

class LeashObj : public Object
{
public:
	int          LeashIndex; /* 0x54 */
	TempleLeash* temple_leash;
	LH3DObject*  collar;
	float        CollarUVOffset;
	float        CollarXSpin;
	float        CollarZSpin;
	uint32_t     PlayerNumber;
	LH3DSprite*  sprite; /* 0x70 */
	float        SpriteFrame;

	// Override methods

	// BW1W120 00464840 BW1M119 011c9f20
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords) { return 0; }
	// BW1W120 00464850 BW1M119 011c9f70
	virtual bool32_t ValidAsInterfaceLeashTarget() { return false; }
	// BW1W120 00464860 BW1M119 011c9fc0
	virtual const char* GetText() { return "Leash Obj"; }
	// BW1W120 00464870 BW1M119 011ca000
	virtual HELP_TEXT GetQueryFirstEnumText() { return (HELP_TEXT)GetOverwriteInteractableToolTip(); }
	// BW1W120 00464880 BW1M119 011ca070
	virtual HELP_TEXT GetQueryLastEnumText() { return (HELP_TEXT)GetOverwriteInteractableToolTip(); }
	// BW1W120 00464580 BW1M119 011c9230
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 00464450 BW1M119 011c9420
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 00464490 BW1M119 011c92b0
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LeashObj(const MapCoords& coords, uint32_t player_number)
		: Object(coords, &GObjectInfo::Definitions[OBJECT_TYPE_DUMMY])
	{
		PlayerNumber = player_number;
	}
};

struct TempleLeash
{
	int       CurrentLeash;
	LeashObj* leashes[LEASH_TYPE_LAST];

	// Static methods

	// BW1W120 004645d0 BW1M119 inlined
	static void LoadCollarMeshes();
	// BW1W120 004645a0 BW1M119 011c9100
	static LH3DMesh* GetCollarMesh(LEASH_TYPE type);

	// Constructors

	// BW1W120 00464650 BW1M119 011c8d20
	TempleLeash(LH3DObject* object, unsigned long player_number);

	// BW1W120 004648c0 BW1M119 inlined
	~TempleLeash();
};

class CitadelHeart : public CitadelPart
{
public:
	uint32_t                 LastImpactTurn;
	LHPTR<LH3DObjectCollide> ObjectCollide;
	Town*                    town;
	Flock*                   AlignmentFlock;
	uint32_t                 HeartState;
	unsigned long            SpecularColor;
	int                      DrawColour;
	LH3DObject*              BeamObject;
	GParticleContainer*      TransferContainer;
	Object*                  TransferObject;
	uint32_t                 LastTransferTurn;
	uint8_t                  DestructionStarted;
	float                    DestructionTime;
	GParticleContainer*      DestructionPlasmaContainer;
	LH3DObject*              VolFXObject;
	LH3DGJAnimVolFX*         VolFX;
	GParticleContainer*      DestructionMagicContainer;
	float                    NextPlasmaTime;
	uint32_t                 DestructionReserved;
	CitadelHeart*            NextHeart;
	CitadelEntrance*         entrance;
	CameraExclusion*         camera_exclusion;
	TempleLeash*             leashes;

	// Override methods

	// BW1W120 00464b20 BW1M119 011c6c20
	virtual void SetSpecularColor(unsigned long color) { SpecularColor = color; }
	// BW1W120 00464b30 BW1M119 01019f70
	virtual unsigned long GetSpecularColor() { return SpecularColor; }
	// BW1W120 00464b40 BW1M119 011c6720
	virtual LH3DObject::ObjectType Get3DType() { return LH3DObject::CITADEL; }
	// BW1W120 00464b50 BW1M119 011c9b40
	virtual uint32_t GetObjectCollide() { return (uint32_t)ObjectCollide.Get(); }
	// BW1W120 00464b60 BW1M119 011c9b80
	virtual ABODE_TYPE GetAbodeType() { return ABODE_TYPE_CITADEL; }
	// BW1W120 00464b70 BW1M119 011c9bc0
	virtual bool32_t ShouldFootpathsGoRound() { return false; }
	// BW1W120 00464b80 BW1M119 011c9c10
	virtual bool32_t IsCitadelHeart() { return true; }
	// BW1W120 00464b90 BW1M119 01014250
	virtual void Draw() {}
	// BW1W120 00464ba0 BW1M119 011c9d60
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_CITADEL_HEART_1; }
	// BW1W120 00464bb0 BW1M119 011c9da0
	virtual char* GetDebugText() { return "CitadelHeart:"; }
	// BW1W120 00464bf0 BW1M119 011c87d0
	virtual ~CitadelHeart();
	// BW1W120 00464c50 BW1M119 011c8570
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00465000 BW1M119 011c7f50
	virtual bool32_t Built();
	// BW1W120 00465430 BW1M119 011c76c0
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 004655c0 BW1M119 011c73c0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 004657f0 BW1M119 011c70e0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00465a10 BW1M119 011c7090
	virtual void ResolveLoad();
	// BW1W120 004665a0 BW1M119 0108ca30
	virtual uint32_t Process();
	// BW1W120 004673a0 BW1M119 011c6760
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 004675a0 BW1M119 011c62b0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00467870 BW1M119 011c6230
	virtual void GetWorldMatrix(LHMatrix* matrix);
	// BW1W120 00467b30 BW1M119 011c5e40
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00467b40 BW1M119 011c5dc0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00467b60 BW1M119 011c5d70
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 00467b70 BW1M119 011c5cc0
	virtual void SetUpPhysOb(PhysOb* phys_ob);
	// BW1W120 00467bb0 BW1M119 011c5a90
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage);
	// BW1W120 00467d10 BW1M119 011c5980
	virtual MapCoords GetDoorPos();
	// BW1W120 00468020 BW1M119 01078550
	virtual GPlayer* GetPlayer();
	// BW1W120 004680b0 BW1M119 011c5260
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 004680c0 BW1M119 011c51e0
	virtual float GetRoutePlanRadius(Creature* creature);
	// BW1W120 004680d0 BW1M119 011c4d00
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* callback)(int, Point2D, float, int));
	// BW1W120 00468c30 BW1M119 011c4330
	virtual void* GetActualObjectToEffect(GPlayer* player, bool show_effect);
	// BW1W120 00468da0 BW1M119 011c42c0
	virtual uint32_t DestroyedByEffect(GPlayer* player, float damage);
	// BW1W120 00468dc0 BW1M119 011c41c0
	virtual BuildingSite* CreateBuildingSite();
	// BW1W120 00468fb0 BW1M119 011c39a0
	virtual void CreateCollideData();

	// Static methods

	// BW1W120 00464e20 BW1M119 011c8340
	static CitadelHeart* Create(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel, float y_angle,
	                            float scale, float food, int wood);
	// BW1W120 00464ec0 BW1M119 null
	static CitadelHeart* CreateTownHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Town* town,
	                                     float y_angle, float scale, float food, int wood);
	// BW1W120 004651d0 BW1M119 011c7c80
	static Flock* CreateAlignmentFlock(const MapCoords& coords, GPlayer* player);
	// BW1W120 00467360 BW1M119 01086290
	static void DrawAll();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CitadelHeart() { SetToZero(); }
	// BW1W120 004649b0 BW1M119 011c8970
	CitadelHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel, float y_angle, float scale,
	             float food, int wood);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011c7a10
	const GCitadelHeartInfo* GetInfo() const { return (const GCitadelHeartInfo*)info; }
	// BW1W120 004648e0 BW1M119 011c8c90
	void SetLeash(LEASH_TYPE type);
	// BW1W120 00464920 BW1M119 011c8c10
	LEASH_TYPE GetLeashToCreate();
	// BW1W120 00464950 BW1M119 011c8b50
	void CreateLeashes();
	// BW1W120 00464da0 BW1M119 011c84d0
	void SetToZero();
	// BW1W120 00464f50 BW1M119 011c8140
	bool32_t AddAllWorshipSitesNeeded(Citadel* citadel, float forced_desire);
	// BW1W120 00465110 BW1M119 011c7d90
	WorshipSite* CreateBuiltWorshipSite(const MapCoords& coords, const GWorshipSiteInfo* info, Citadel* citadel,
	                                    const GTribeInfo* tribe_info);
	// BW1W120 00465230 BW1M119 011c7bd0
	void RemoveAlignmentFlock();
	// BW1W120 00465270 BW1M119 0108e0c0
	void SetAlignmentFlock(float alignment, bool32_t force_resize);
	// BW1W120 00465ab0 BW1M119 011c6e60
	void DestructionSequenceStart();
	// BW1W120 00465b00 BW1M119 inlined
	float GetDestructionSequenceTime();
	// BW1W120 00465b10 BW1M119 inlined
	float GetDestructionTime();
	// BW1W120 00465c30 BW1M119 inlined
	void GetRandomSurfacePos(LHPoint* pos, LHPoint* normal);
	// BW1W120 00465c70 BW1M119 0108ce00
	void DestructionSequenceProcess();
	// BW1W120 004665c0 BW1M119 01024eb0
	void DrawLantern();
	// BW1W120 00466730 BW1M119 0107c290
	void DrawCreaturePen();
	// BW1W120 00466bb0 BW1M119 0106a070
	void DrawBeam();
	// BW1W120 00466d90 BW1M119 010250f0
	void DrawDestruction();
	// BW1W120 004670d0 BW1M119 0102b1e0
	void DrawNow();
	// BW1W120 00467890 BW1M119 011c5e90
	bool32_t GetSpecialPos(unsigned long index, float angle, MapCoords* coords);
	// BW1W120 00468050 BW1M119 011c52a0
	MapCoords GetCreatureHomePos();
	// BW1W120 004684a0 BW1M119 inlined
	void CreateTransferedEffectVisual();
	// BW1W120 004684f0 BW1M119 011c4a30
	void SetTransferedEffectSelf(bool show_effect);
	// BW1W120 004686b0 BW1M119 011c4680
	void SetTransferedEffectObject(Object* object, bool show_effect);
	// BW1W120 004688f0 BW1M119 inlined
	void ValidateTransferedEffectObjects();
	// BW1W120 00468940 BW1M119 0101b610
	void ProcessTransferedDamageEffect();
	// BW1W120 00468db0 BW1M119 011c4280
	void UpdateLeashes();
};

// TODO: placement unproven
inline void Wrap(float& value, float range)
{
	float t = value;
	value = t - (int)(t / range) * range;
}

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */

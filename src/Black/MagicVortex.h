#ifndef BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H
#define BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum VORTEX_STATE_TYPE, VORTEX_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>     /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>     /* For struct LHListNode */

#include "GJBaseUtils.h"          /* For class GJArray */
#include "KPSplineInterpolator.h" /* For class KPSplineInterpolator */
#include "MapCoords.h"            /* For struct MapCoords */
#include "MobileStatic.h"         /* For class MobileStatic */

#define VORTEX_FULL_RADIUS_TURNS     3
#define VORTEX_CHILD_INTERVAL        5
#define VORTEX_MAX_SPIRAL_CELLS      9999
#define VORTEX_PILE_TAKE_AMOUNT      1000
#define VORTEX_CREATE_TURNS          2
#define VORTEX_RADIUS                50.0f
#define VORTEX_INNER_RADIUS_MARGIN   2.0f
#define VORTEX_SUCK_RADIUS_SCALE     0.7f
#define VORTEX_TOWN_SEARCH_DISTANCE  200.0f
#define VORTEX_THROW_OUT_DISTANCE    16.0f
#define VORTEX_CHILD_MIN_AGE         1
#define VORTEX_CHILD_AGE_RANGE       9
#define VORTEX_ADULT_MIN_AGE         16
#define VORTEX_ADULT_AGE_RANGE       6
#define VORTEX_HEIGHT_PROFILE_POINTS 5
#define VORTEX_FOOTPRINT_MAX_ALPHA   235

// Forward Declares

class Base;
class Creature;
class EffectValues;
class Flock;
class GJPSysInterface;
class GInterfaceStatus;
class GVortexInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DMaterial;
class LH3DObject;
struct LandBlock;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class PSysInterface;
class Town;
class GMobileStaticInfo;
class GPlayer;
class Villager;
class VortexSave;
struct LHMatrix;

class LandscapeVortex : public MobileStatic
{
public:
	LHListNode<LandscapeVortex> next;                   /* 0x88 */
	float                       LastFootPrintFraction;  /* 0x8c */
	float                       LastHeightFraction;     /* 0x90 */
	GJPSysInterface*            LightMapParticle;       /* 0x94 */
	GJPSysInterface*            ObjectMoverParticle;    /* 0x98 */
	PSysInterface*              PreLandscapeParticle;   /* 0x9c */
	PSysInterface*              PostLandscapeParticle;  /* 0xa0 */
	LH3DMaterial*               FootPrintMaterial;      /* 0xa4 */
	LH3DMaterial*               FootPrintAlphaMaterial; /* 0xa8 */
	LH3DObject*                 ZCheatBox;              /* 0xac */
	LandBlock*                  FootPrintBlock;         /* 0xb0 */
	uint32_t                    FadeStartTurn;          /* 0xb4 */
	uint8_t                     field_0xb8;             /* 0xb8 */
	GJArray<uint8_t>            OriginalHeights;        /* 0xbc */
	float                       AverageHeight;          /* 0xc4 */
	KPSplineInterpolator<float> HeightSpline;           /* 0xc8 */
	LHPoint                     Centre;                 /* 0xd4 */
	VORTEX_TYPE                 Type;                   /* 0xe0 */
	VORTEX_STATE_TYPE           State;                  /* 0xe4 */
	float                       Radius;                 /* 0xe8 */

	// Override methods

	// BW1W120 005fe8f0 BW1M119 013be610
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00600210 BW1M119 013bbc90
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00600000 BW1M119 013bc060
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005fd610 BW1M119 013c15b0
	virtual void PhysicsEditorCreate(int keep_altitude);
	// BW1W120 005fd620 BW1M119 013c15f0
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 005fd630 BW1M119 013c1640
	virtual bool32_t CanBeSetOnFire(Creature* creature);
	// BW1W120 005fd640 BW1M119 013c1690
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 005fd650 BW1M119 013c16f0
	virtual bool32_t CanBeThrownByCreature(Creature* creature);
	// BW1W120 005fd660 BW1M119 013c1740
	virtual bool32_t CanBePutInAStoragePit(Creature* creature);
	// BW1W120 005fd670 BW1M119 013c1790
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature);
	// BW1W120 005fd680 BW1M119 013c17e0
	virtual bool32_t CanBeStonedAndEatenByCreature(Creature* creature);
	// BW1W120 005fd690 BW1M119 013c1840
	virtual bool32_t CanBeExaminedByCreature(Creature* creature);
	// BW1W120 005fd6a0 BW1M119 013c1890
	virtual bool32_t CanBeFoughtByCreature(Creature* creature);
	// BW1W120 005fd6b0 BW1M119 013c18e0
	virtual bool32_t CanActAsAContainer(Creature* creature);
	// BW1W120 005ffff0 BW1M119 013bc440
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 005fedf0 BW1M119 013bdfc0
	virtual void Create3DObject();
	// BW1W120 005fd600 BW1M119 013c1560
	virtual bool32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 005fee20 BW1M119 013bdf80
	virtual MESH_LIST GetMesh() const;
	// BW1W120 005ffdc0 BW1M119 013bc910
	virtual void Draw();
	// BW1W120 005fee30 BW1M119 013bd9e0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 005ff300 BW1M119 013bd980
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status);
	// BW1W120 005fffa0 BW1M119 013bc590
	virtual bool32_t IsEffectReceiver(EffectValues* effect);
	// BW1W120 005fff80 BW1M119 013bc630
	virtual bool InteractsWithPhysicsObjects() { return false; }
	// BW1W120 005fff90 BW1M119 013bc5e0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005fd580 BW1M119 013c0e40
	virtual void SetTown(Town* town);

	// New virtual methods

	// BW1W120 005fd6c0 BW1M119 013bd470
	virtual void ProcessContentsOfVortex();
	// BW1W120 005fd590 BW1M119 013c0df0
	virtual void SetFlockParams(const MapCoords& coords, float flock_distance, float domain_radius, Flock* flock);
	// BW1W120 005fd6d0 BW1M119 013c0d90
	virtual bool IsVillagerBeingThrownByThisVortex(Villager* villager);

	// Constructors

	// BW1W120 005fe7a0 BW1M119 013bec10
	LandscapeVortex();
	// BW1W120 005fe830 BW1M119 013bea60
	LandscapeVortex(const MapCoords& coords, VORTEX_TYPE type, float radius);

	// Non-virtual methods

	// BW1W120 005fd570 BW1M119 013c0e80
	GVortexInfo* GetVortexInfo();
	// BW1W120 005fe5f0 BW1M119 013bee80
	void ThrowOutObject(Object* object, GPlayer* player, float angle, float strength);
	// BW1W120 005fe8b0 BW1M119 013be9d0
	void ReleaseFootPrints();
	// BW1W120 005fe9d0 BW1M119 013be3d0
	void SetToZero();
	// BW1W120 005fea70 BW1M119 013be070
	void CreateFootPrints();
	// BW1W120 005ff230 BW1M119 inlined
	void ResetLandscapeHeights();
	// BW1W120 005ff350 BW1M119 013bd4c0
	float GetHeightRaise(float dx, float dz, float original, float average, float fraction);
	// BW1W120 005ff4d0 BW1M119 inlined
	int GetHeightMapSize();
	// BW1W120 005ff4f0 BW1M119 013bcfb0
	void ProcessVortex();
	// BW1W120 005ff920 BW1M119 013bceb0
	float GetTimeSinceFadeStarted();
	// BW1W120 005ff980 BW1M119 013bcd60
	float GetFractionLightmap();
	// BW1W120 005ffaa0 BW1M119 inlined
	float GetFractionHeight();
	// BW1W120 005ffad0 BW1M119 013bcc30
	float GetFractionFootPrintComplete();
	// BW1W120 005ffbb0 BW1M119 013bc9c0
	void PreLandscapeDraw(bool process);
	// BW1W120 005ffe10 BW1M119 013bc810
	void AddDrawing();
	// BW1W120 005ffe70 BW1M119 013bc680
	void DrawNow();
	// BW1W120 005fffb0 BW1M119 013bc510
	void StartFadeIn();
	// BW1W120 005fffd0 BW1M119 013bc490
	void StartFadeOut();

	// Static methods

	// BW1W120 005fd5a0 BW1M119 013c0cc0
	static bool IsVillagerBeingThrownByAVortex(Villager* villager);
	// BW1W120 005fe6e0 BW1M119 013becd0
	static LandscapeVortex* Create(const MapCoords& coords, VORTEX_TYPE type, float radius);
	// BW1W120 005ff2f0 BW1M119 inlined
	static GMobileStaticInfo* GetMobileStaticInfo();
	// BW1W120 005ff310 BW1M119 01091c70
	static void PreLandscapeDrawAll();
	// BW1W120 005ff330 BW1M119 0108f630
	static void ProcessAll();

	// Static data

	// BW1W120 00d38220
	static LHListHead<LandscapeVortex> Vortices;
};

static_assert(sizeof(LandscapeVortex) == 0xec, "LandscapeVortex size is incorrect");

class LandscapeVortexIn : public LandscapeVortex
{
public:
	VortexSave* VortexSaver;                  /* 0xec */
	uint32_t    Saved[VORTEX_STAT_TYPE_LAST]; /* 0xf0 */

	// Override methods

	// BW1W120 005fd860 BW1M119 013c09a0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 005fd7a0 BW1M119 013c1c00
	virtual char* GetDebugText();
	// BW1W120 00600550 BW1M119 013bba70
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00600460 BW1M119 013bbb80
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005fd790 BW1M119 013c1bc0
	virtual uint32_t GetSaveType();
	// BW1W120 005fd970 BW1M119 013c0770
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 005fd8c0 BW1M119 013c0950
	virtual bool InteractsWithPhysicsObjects() { return true; }
	// BW1W120 005fd8d0 BW1M119 013c08e0
	virtual bool ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* object);
	// BW1W120 005fd8e0 BW1M119 013c07c0
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage);
	// BW1W120 005fd980 BW1M119 013c06d0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 005fdb60 BW1M119 013c0060
	virtual void ProcessContentsOfVortex();

	// BW1W120 005fd770 BW1M119 013c0b40
	LandscapeVortexIn();
	// BW1W120 005fd7f0 BW1M119 013c0a40
	LandscapeVortexIn(const MapCoords& coords, float radius);

	// Non-virtual methods

	// BW1W120 005fd890 BW1M119 inlined
	void SetToZero();
	// BW1W120 005fd9b0 BW1M119 013c0440
	void AddObject(Object* object, const LHPoint& velocity, const LHMatrix& matrix, bool from_physics);
	// BW1W120 005fdac0 BW1M119 013c0330
	void SaveVortexObject(Object* object);
	// BW1W120 005fdaf0 BW1M119 inlined
	void RemoveObjectFromWorld(Object* object);
	// BW1W120 005fdb50 BW1M119 inlined
	float GetCreatureFizzRadius();
};

static_assert(sizeof(LandscapeVortexIn) == 0x104, "LandscapeVortexIn size is incorrect");

class LandscapeVortexOut : public LandscapeVortex
{
public:
	Flock*                AnimalFlock;                    /* 0xec */
	Flock*                FlockToJoin;                    /* 0xf0 */
	Town*                 TownToJoin;                     /* 0xf4 */
	VortexSave*           VortexSaver;                    /* 0xf8 */
	MapCoords             FlockCoords;                    /* 0xfc */
	float                 FlockDistance;                  /* 0x108 */
	float                 DomainRadius;                   /* 0x10c */
	uint32_t              field_0x110;                    /* 0x110 */
	uint32_t              field_0x114;                    /* 0x114 */
	int32_t               Created[VORTEX_STAT_TYPE_LAST]; /* 0x118 */
	LHLinkedList<Object*> ThrownObjects;                  /* 0x12c */

	// Override methods

	// BW1W120 005fdf10 BW1M119 013bfb40
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 005fddd0 BW1M119 013c1ab0
	virtual char* GetDebugText();
	// BW1W120 00600880 BW1M119 013bb240
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00600630 BW1M119 013bb690
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005fddc0 BW1M119 013c1a70
	virtual uint32_t GetSaveType();
	// BW1W120 005fdfe0 BW1M119 013bfa40
	virtual void SetTown(Town* town);
	// BW1W120 005fe030 BW1M119 013bf460
	virtual void ProcessContentsOfVortex();
	// BW1W120 005fdff0 BW1M119 013bf990
	virtual void SetFlockParams(const MapCoords& coords, float flock_distance, float domain_radius, Flock* flock);
	// BW1W120 005fdfb0 BW1M119 013bfa80
	virtual bool IsVillagerBeingThrownByThisVortex(Villager* villager);

	// BW1W120 005fdd80 BW1M119 013bffd0
	LandscapeVortexOut();
	// BW1W120 005fde20 BW1M119 013bfdf0
	LandscapeVortexOut(const MapCoords& coords, float radius);

	// Non-virtual methods

	// BW1W120 005fdeb0 BW1M119 013bfd20
	void SetToZero();
	// BW1W120 005fe3b0 BW1M119 013bf040
	void DoPostObjectCreateThings(Object* object, float angle);
};

static_assert(sizeof(LandscapeVortexOut) == 0x134, "LandscapeVortexOut size is incorrect");

class LandscapeVortexVolc : public LandscapeVortex
{
public:
	// Override methods

	// BW1W120 005fd6f0 BW1M119 013c1510
	virtual char* GetDebugText();
	// BW1W120 005fd6e0 BW1M119 013c14d0
	virtual uint32_t GetSaveType();

	// BW1W120 005fd5e0 BW1M119 013c0c50
	LandscapeVortexVolc();
	// BW1W120 005fd740 BW1M119 013c0bd0
	LandscapeVortexVolc(const MapCoords& coords, float radius);
};

static_assert(sizeof(LandscapeVortexVolc) == 0xec, "LandscapeVortexVolc size is incorrect");

#endif /* BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H */

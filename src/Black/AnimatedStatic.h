#ifndef BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class Creature;
class GAnimatedStaticInfo;
class Game3DObject;
struct LH3DMesh;
class GameOSFile;
class LHOSFile;
struct MapCoords;
class Object;
struct PhysOb;
struct Point2D;
struct RPHolder;

#define ANIMATED_STATIC_GATE_STONE_COUNT      3
#define ANIMATED_STATIC_GATE_LIGHT_COUNT      2
#define ANIMATED_STATIC_GATE_LIGHT_OFFSET_X   15.0f
#define ANIMATED_STATIC_GATE_LIGHT_OFFSET_Y   30.0f
#define ANIMATED_STATIC_GATE_ROUTE_POINTS     15
#define ANIMATED_STATIC_GATE_ROUTE_INNER_LAST 4
#define ANIMATED_STATIC_ROUTE_RADIUS          2.5f
#define ANIMATED_STATIC_ROUTE_DIAGONAL_SCALE  0.7f
#define ANIMATED_STATIC_PHYSICS_MASS          10000.0f
#define ANIMATED_STATIC_SAVE_SCALE            1000.0f
#define ANIMATED_STATIC_GATE_STONE_SINK       0.2f
#define ANIMATED_STATIC_ANIM_END_FRAME_MARGIN 2
#define ANIMATED_STATIC_ANIM_CYCLE_END_MARGIN 3
#ifdef VERSION_BW1WCI
#define ANIMATED_STATIC_BALISTA_PIVOT_HEIGHT 10.122f
#define ANIMATED_STATIC_BALISTA_OFFSET_X     -0.085f
#define ANIMATED_STATIC_BALISTA_OFFSET_Y     10.19f
#define ANIMATED_STATIC_BALISTA_OFFSET_Z     -0.061f
#endif

enum ANIMATED_STATIC_PADDING
{
	ANIMATED_STATIC_PADDING_0,
	ANIMATED_STATIC_PADDING_1,
	ANIMATED_STATIC_PADDING_2,
	ANIMATED_STATIC_PADDING_3,
	ANIMATED_STATIC_PADDING_4,
	ANIMATED_STATIC_PADDING_5,
	ANIMATED_STATIC_PADDING_6,
	ANIMATED_STATIC_PADDING_LAST
};

class AnimatedStatic : public Feature
{
public:
	enum STATE
	{
		STATE_CLOSED = 0,
		STATE_OPEN = 1,
	};

	STATE         State;
	Game3DObject* GateStones[ANIMATED_STATIC_GATE_STONE_COUNT];
	MESH_LIST     GateStoneMeshes[ANIMATED_STATIC_GATE_STONE_COUNT];
#ifdef VERSION_BW1WCI
	float BalistaXAngle;
	float BalistaYAngle;
#endif

	// Override methods

	// BW1W120 00422180 BW1M119 010a8470
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_ANIMATED_STATIC; }
	// BW1W120 00422190 BW1M119 010a84b0
	virtual char* GetDebugText() { return "AnimatedStatic:"; }
	// BW1W120 004221a0 BW1M119 010a9070
	virtual ~AnimatedStatic();
#ifdef VERSION_BW1WCI
	// BW1WCI 00424390 BW1MCI119 010b96e0
	virtual bool32_t IsBalista();
#endif
	// BW1W120 004221d0 BW1M119 010aafe0
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00422bc0 BW1M119 010a9920
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00422aa0 BW1M119 010a9c10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00422770 BW1M119 01030890
	virtual void Draw();
	// BW1W120 00422210 BW1M119 010aae00
	virtual void SetUpPhysOb(PhysOb* physob);
	// BW1W120 004221e0 BW1M119 010aaed0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00422ec0 BW1M119 010a9020
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 00422ed0 BW1M119 010a8d40
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, bool32_t update,
	                            void(__cdecl* add_function)(int, Point2D, float, int));
	// BW1W120 004225a0 BW1M119 010aa4c0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00422300 BW1M119 010aa720
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00422650 BW1M119 010aa210
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);

	// BW1W120 005614d0 BW1M119 inlined
	AnimatedStatic() { SetToZero(); }
	// BW1W120 inlined BW1M119 inlined
	AnimatedStatic(const MapCoords& coords, const GFeatureInfo* info, float y_angle, float scale, float percent_built,
	               bool32_t under_construction)
		: Feature(coords, info, y_angle, scale, percent_built, under_construction)
	{
		SetToZero();
	}
	// BW1W120 00422580 BW1M119 010aa6c0
	void SetToZero();

	// BW1W120 00422600 BW1M119 010aa3b0
	static int GetInfoFromText(char* text);
	// BW1W120 00421f50 BW1M119 010ab030
	static AnimatedStatic* Create(const MapCoords& coords, const GAnimatedStaticInfo* info, float y_angle, float scale,
	                              float percent_built, bool32_t under_construction);
	// BW1W120 00422250 BW1M119 010aac50
	LH3DMesh* GetCurrentPhysicsMesh();
	// BW1W120 004230d0 BW1M119 010a8c80
	bool32_t IsGate();
	// BW1W120 00422cd0 BW1M119 0101e530
	bool32_t IsTransition();
	// BW1W120 00422cc0 BW1M119 010a98c0
	void SetAnimatedState(STATE state);
	// BW1W120 00422df0 BW1M119 01014790
	uint32_t CountGateStones();
	// BW1W120 00422d50 BW1M119 010a9230
	bool32_t AddGateStone(MESH_LIST mesh);
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H */

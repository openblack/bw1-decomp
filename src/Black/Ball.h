#ifndef BW1_DECOMP_BALL_INCLUDED_H
#define BW1_DECOMP_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <LHPoint.h>                          /* For struct LHPoint */
#include <re_common.h>                        /* For bool32_t */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MapCoords.h"    /* For struct MapCoords */
#include "LHPTR.h"        /* For LHPTR */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class Football;
class GBallInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class Town;
class Villager;

#define BALL_SCRIPT_RADIUS 6.0f
#define BALL_SCRIPT_HEIGHT 4.0f

enum BALL_STATE
{
	BALL_STATE_FREE = 0x0,
	BALL_STATE_TOWN = 0x1,
	BALL_STATE_FOOTBALL = 0x2,
	BALL_STATE_OWNED = 0x3,
};

#ifdef VERSION_BW1W100
enum BALL_PADDING_BW1W100
{
	BALL_PADDING_BW1W100_0,
	BALL_PADDING_BW1W100_1,
	BALL_PADDING_BW1W100_2,
	BALL_PADDING_BW1W100_3,
	BALL_PADDING_BW1W100_4,
	BALL_PADDING_BW1W100_5,
	BALL_PADDING_BW1W100_6,
	BALL_PADDING_BW1W100_7,
	BALL_PADDING_BW1W100_8,
	BALL_PADDING_BW1W100_9,
	BALL_PADDING_BW1W100_10,
	BALL_PADDING_BW1W100_11,
	BALL_PADDING_BW1W100_12,
	BALL_PADDING_BW1W100_13,
	BALL_PADDING_BW1W100_14,
	BALL_PADDING_BW1W100_15,
	BALL_PADDING_BW1W100_16,
	BALL_PADDING_BW1W100_17,
	BALL_PADDING_BW1W100_18,
	BALL_PADDING_BW1W100_19,
	BALL_PADDING_BW1W100_20,
	BALL_PADDING_BW1W100_21,
	BALL_PADDING_BW1W100_22,
};
#endif

enum BALL_PADDING
{
	BALL_PADDING_0,
	BALL_PADDING_1,
	BALL_PADDING_2,
	BALL_PADDING_3,
	BALL_PADDING_4,
	BALL_PADDING_5,
	BALL_PADDING_6,
	BALL_PADDING_7,
	BALL_PADDING_8,
	BALL_PADDING_9,
	BALL_PADDING_10,
	BALL_PADDING_11,
	BALL_PADDING_12,
	BALL_PADDING_13,
	BALL_PADDING_14,
	BALL_PADDING_15,
	BALL_PADDING_16,
	BALL_PADDING_17,
	BALL_PADDING_18,
	BALL_PADDING_19,
	BALL_PADDING_20,
	BALL_PADDING_21,
	BALL_PADDING_22,
	BALL_PADDING_23,
	BALL_PADDING_24,
	BALL_PADDING_25,
	BALL_PADDING_26,
	BALL_PADDING_27,
	BALL_PADDING_28,
	BALL_PADDING_29,
	BALL_PADDING_30,
};

class Ball : public MobileObject
{
public:
	// BW1W120 00435f30 BW1M119 01091330
	static void ProcessBalls();

	LHListNode<Ball> next;
	LHPoint          LandscapePos;
	LHPoint          PrevLandscapePos;
	MapCoords        Destination;
	BALL_STATE       State;
	LHPTR<Football>  football;
	LHPTR<Villager>  Owner;
	LHPTR<Villager>  LastOwner;
	LHPTR<Town>      town;
	MapCoords        KickStart;
	uint32_t         ExtraValue;
	uint32_t         KickFlag;

	// Override methods

	// BW1W120 00435b10 BW1M119 010b3630
	virtual ~Ball();
	// BW1W120 00435f60 BW1M119 010b30e0
	virtual GPlayer* GetPlayer();
	// BW1W120 00436260 BW1M119 010b2b30
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00436110 BW1M119 010b2d10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00435ab0 BW1M119 010b2a00
	virtual bool32_t CanBePickedUpByCreature(Creature* creature) { return true; }
	// BW1W120 00435ac0 BW1M119 010b2a50
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_BALL; }
	// BW1W120 00435ad0 BW1M119 010b2a80
	virtual char* GetDebugText() { return "Ball:"; }
#ifndef VERSION_BW1W100
	// BW1W120 004363b0 BW1M119 010b2af0
	virtual bool32_t IsToy(Creature* creature);
	// BW1W120 004363c0 BW1M119 010b2ab0
	virtual bool32_t IsToyBall(Creature* creature);
#endif
	// BW1W120 00436100 BW1M119 010b2f00
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00435c30 BW1M119 010b3480
	virtual uint32_t Process();
	// BW1W120 00516870 BW1M119 010cf160
	virtual void Draw();
	// BW1W120 004360f0 BW1M119 010b2f40
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();

	// Static methods

	// BW1W120 00435b90 BW1M119 010b3500
	static Ball* Create(const MapCoords& coords, const GBallInfo* info, unsigned short y_angle, float radius,
	                    float height);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Ball() { SetToZero(); }
	// BW1W120 004359b0 BW1M119 010b3900
	Ball(const MapCoords& coords, const GBallInfo* info);

	// Non-virtual methods

	// BW1W120 00435c00 BW1M119 010b34b0
	void SetToZero();
	// BW1W120 00435c40 BW1M119 010b3200
	bool32_t KickBallAtDestination(const MapCoords& destination, float speed, int flag);
#ifndef VERSION_BW1W100
	// BW1W120 00435df0 BW1M119 null
	bool32_t KickBall(const MapCoords& destination, float speed, float lift);
	// BW1W120 00435f90 BW1M119 null
	void SetOwner(Villager* owner);
	// BW1W120 00435fa0 BW1M119 null
	Villager* GetOwner();
	// BW1W120 00435fb0 BW1M119 null
	void SetLastOwner(Villager* last_owner);
	// BW1W120 00435fc0 BW1M119 null
	Villager* GetLastOwner();
	// BW1W120 00435fd0 BW1M119 null
	void SetFootball(Football* football);
	// BW1W120 00435ff0 BW1M119 null
	Football* GetFootball();
	// BW1W120 00436080 BW1M119 null
	Town* GetBallTown();
	// BW1W120 00436090 BW1M119 null
	void SetExtraValue(uint32_t value);
	// BW1W120 004360a0 BW1M119 null
	uint32_t GetExtraValue();
	// BW1W120 004360b0 BW1M119 null
	void SetOwned();
	// BW1W120 004360c0 BW1M119 null
	void SetPlayingFootball();
	// BW1W120 004360d0 BW1M119 null
	bool32_t IsOwned();
#endif
	// BW1W120 00436000 BW1M119 010b3040
	bool32_t AddToTown(Town* town);
	// BW1W120 004360e0 BW1M119 010b2f80
	bool32_t IsBallFree();

	// BW1W120 00436050 BW1M119 010b2fc0
	void RemoveFromTown();
};

#endif /* BW1_DECOMP_BALL_INCLUDED_H */

#ifndef BW1_DECOMP_BALL_INCLUDED_H
#define BW1_DECOMP_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

#include "MapCoords.h"    /* For struct MapCoords */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class GBallInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class Town;

class Ball : public MobileObject
{
public:
	// BW1W120 00435f30 BW1M119 01091330
	static void ProcessBalls();

	uint32_t  field_0x68;
	LHPoint   field_0x6c;
	LHPoint   field_0x78;
	MapCoords Destination; /* 0x84 -- where the ball was last kicked at */
	bool32_t  IsOwned;     /* 0x90 */
	uint32_t  field_0x94;
	uint32_t  field_0x98;
	uint32_t  field_0x9c;
	Town*     town; /* 0xa0 */
	uint32_t  field_0xa4;
	uint32_t  field_0xa8;
	uint32_t  field_0xac;
	uint32_t  field_0xb0;
	uint32_t  field_0xb4;

	// Override methods

	// BW1W120 00435ae0 BW1M119 010b3630
	virtual ~Ball();
	// BW1W120 00435f60 BW1M119 010b30e0
	virtual GPlayer* GetPlayer();
	// BW1W120 00435ad0 BW1M119 010b2a80
	virtual char* GetDebugText();
	// BW1W120 00436260 BW1M119 010b2b30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00436110 BW1M119 010b2d10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00435ac0 BW1M119 010b2a50
	virtual uint32_t GetSaveType();
	// BW1W120 00435ab0 BW1M119 010b2a00
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004363b0 BW1M119 010b2af0
	virtual bool32_t IsToy(Creature* param_1);
	// BW1W120 004363c0 BW1M119 010b2ab0
	virtual bool32_t IsToyBall(Creature* param_1);
	// BW1W120 00436100 BW1M119 010b2f00
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00435c30 BW1M119 010b3480
	virtual uint32_t Process();
	// BW1W120 00516870 BW1M119 010cf160
	virtual void Draw();
	// BW1W120 004360f0 BW1M119 010b2f40
	virtual uint32_t GetPhysicsConstantsType();

	// Static methods

	// BW1W120 00435b90 BW1M119 010b3500
	static Ball* Create(const MapCoords& param_1, const GBallInfo* param_2, unsigned short param_3, float param_4,
	                    float param_5);

	// Constructors

	// BW1W120 004359b0 BW1M119 010b3900
	Ball(const MapCoords& coords, const GBallInfo* info);

	// Non-virtual methods

	// BW1W120 00435c40 BW1M119 010b3200
	void KickBallAtDestination(const MapCoords& destination, float speed, int flag);
	// BW1W120 004360e0 BW1M119 010b2f80
	bool IsBallFree();
};

#endif /* BW1_DECOMP_BALL_INCLUDED_H */

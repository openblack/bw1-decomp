#ifndef BW1_DECOMP_BALL_INCLUDED_H
#define BW1_DECOMP_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

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
	uint32_t field_0x68;
	LHPoint  field_0x6c;
	LHPoint  field_0x78;
	uint32_t field_0x84;
	uint32_t field_0x88;
	uint32_t field_0x8c;
	bool32_t IsOwned; /* 0x90 */
	uint32_t field_0x94;
	uint32_t field_0x98;
	uint32_t field_0x9c;
	Town*    town; /* 0xa0 */
	uint32_t field_0xa4;
	uint32_t field_0xa8;
	uint32_t field_0xac;
	uint32_t field_0xb0;
	uint32_t field_0xb4;

	// Override methods

	// BW1W120 00435ae0 BW1M100 100b0b20 Ball::_dt(void)
	virtual ~Ball();
	// BW1W120 00435f60 BW1M100 100b0630 Ball::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00435ad0 BW1M100 100affd0 Ball::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00436260 BW1M100 100b0080 Ball::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00436110 BW1M100 100b0260 Ball::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00435ac0 BW1M100 100affa0 Ball::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00435ab0 BW1M100 100aff50 Ball::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004363b0 BW1M100 100b0040 Ball::IsToy(Creature *)
	virtual uint32_t IsToy(Creature* param_1);
	// BW1W120 004363c0 BW1M100 100b0000 Ball::IsToyBall(Creature *)
	virtual uint32_t IsToyBall(Creature* param_1);
	// BW1W120 00436100 BW1M100 100b0450 Ball::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00435c30 BW1M100 100b0970 Ball::Process(void)
	virtual uint32_t Process();
	// BW1W120 00516870 BW1M100 100cb190 Ball::Draw(void)
	virtual void Draw();
	// BW1W120 004360f0 BW1M100 100b0490 Ball::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();

	// Static methods

	// BW1W120 00435b90 BW1M100 100b09f0 Ball::Create(MapCoords const &, GBallInfo const *, unsigned short, float, float)
	static Ball* Create(const MapCoords& param_1, const GBallInfo* param_2, unsigned short param_3, float param_4,
	                    float param_5);

	// Constructors

	// BW1W120 004359b0 BW1M100 100b0df0 Ball::Ball(MapCoords const &, GBallInfo const *)
	Ball(const MapCoords& coords, const GBallInfo* info);

	// Non-virtual methods

	// BW1W120 004360e0 BW1M100 100b04d0 Ball::IsBallFree(void)
	bool IsBallFree();
};

#endif /* BW1_DECOMP_BALL_INCLUDED_H */

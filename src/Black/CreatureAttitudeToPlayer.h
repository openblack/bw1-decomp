#ifndef BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h>         /* For enum MAGIC_TYPE */

#include "Base.h" /* For struct Base */

// Forward Declares

class GameThingWithPos;

struct CreaturePerceivedPlayerDesires_field_0x15c
{
	uint8_t field_0x0[0x20];
};

struct CreaturePerceivedPlayerDesires
{
	uint32_t                                   field_0x0[0x28];
	uint32_t                                   field_0xa0[0x11];
	uint8_t                                    field_0xe4[0x78];
	CreaturePerceivedPlayerDesires_field_0x15c field_0x15c[0x28];
	uint8_t                                    field_0x65c[0xf00];
	CreaturePerceivedPlayerDesires_field_0x15c field_0x155c[0x11];
};

struct CreatureAttitudeToPlayer_field_0x1da4
{
	DETECTED_PLAYER_ACTION detected_action; /* 0x0 */
	GameThingWithPos*      game_thing;
	uint32_t               field_0x8;
	MAGIC_TYPE             magic_type;
};

class CreatureAttitudeToPlayer : public Base
{
public:
	uint32_t                              field_0x8;
	uint32_t                              field_0xc;
	uint32_t                              field_0x10;
	uint32_t                              field_0x14;
	uint32_t                              field_0x18;
	uint32_t                              field_0x1c;
	uint32_t                              field_0x20;
	uint32_t                              field_0x24;
	float                                 field_0x28;
	uint32_t                              field_0x2c;
	uint32_t                              field_0x30;
	uint32_t                              field_0x34;
	uint32_t                              field_0x38;
	uint32_t                              field_0x3c;
	CreaturePerceivedPlayerDesires        field_0x40;
	uint8_t                               field_0x17bc[0x5e8];
	CreatureAttitudeToPlayer_field_0x1da4 field_0x1da4;

	// Override methods

	// BW1W120 004c81a0 BW1M100 10235cc0 CreatureAttitudeToPlayer::_dt(void)
	virtual ~CreatureAttitudeToPlayer();
};

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H */

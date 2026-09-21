#ifndef BW1_DECOMP_CREATURE_ROOM_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "TempleRoom.h" /* For struct TempleRoom */

class CreatureRoom : public TempleRoom
{
public:
	// BW1W120 007899f0 BW1M119 01093ca0
	static void ProcessScreenShot();
	// TODO: Original static member name is unrecovered.
	// BW1W120 00d96270
	static int CreatureInTemple;
	uint8_t    field_0xec[0x380];
	uint32_t   field_0x46c;
	uint8_t    field_0x470[0x68];

	// Override methods

	// BW1W120 007878e0 BW1M119 01288b10
	virtual void InitEngine();

	// Constructors

	// BW1W120 007865e0 BW1M119 0128b530
	CreatureRoom();
};

#endif /* BW1_DECOMP_CREATURE_ROOM_INCLUDED_H */

#ifndef BW1_DECOMP_TEMPLE_INCLUDED_H
#define BW1_DECOMP_TEMPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

// Forward Declares

class TempleRoom;

struct Temple
{
	TempleRoom* rooms[0x7];  /* 0x0 */
	TempleRoom* ActiveRoom; /* 0x1c */
	uintptr_t   field_0x20;
	uint32_t    field_0x24;
	float       fov;
	float       field_0x2c;
	float       field_0x30;
	float       field_0x34;
	float       field_0x38;
	float       field_0x3c;
	float       field_0x40;
	uint32_t    field_0x44;
	uint8_t     field_0x48;
	uint8_t     field_0x49;
	uint8_t     field_0x4a;
	uint8_t     field_0x4b;
	uint8_t     field_0x4c;
	uint8_t     field_0x4d;
	uint8_t     field_0x4e;
	uint8_t     field_0x4f;
	uint32_t    field_0x50;

	// Static methods

	// BW1W120 00794a30 BW1M100 105362a0 Temple::ProcessGameTurn(void)
	static void ProcessGameTurn();

	// Constructors

	// BW1W120 00793ac0 BW1M100 10537d50 Temple::Temple(void)
	Temple();

	// Non-virtual methods

	// BW1W120 00794a20 BW1M100 10536350 Temple::StartScript(unsigned long)
	bool StartScript(unsigned long param_1);
};

#endif /* BW1_DECOMP_TEMPLE_INCLUDED_H */

#ifndef BW1_DECOMP_INTRO_INCLUDED_H
#define BW1_DECOMP_INTRO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

class Intro
{
public:
	// BW1W120 00d19c94
	static bool32_t HandAnimFinished;

	// BW1W120 005dfc40 BW1M119 013796a0
	static void ReleaseAll();
	// BW1W120 005df9c0 BW1M119 013797c0
	static void Create(long type);
};

#ifdef VERSION_BW1WCI
enum PETIT_NAVIRE_TYPE
{
	PETIT_NAVIRE_TYPE_BOAT_LAUNCH = 11,
	PETIT_NAVIRE_TYPE_BOAT_CRASH = 12,
	PETIT_NAVIRE_TYPE_BOAT_CRASH2 = 13,
};

class PetitNavire
{
public:
	// BW1WCI 00d97f4c BW1MCI119 null
	static PetitNavire* Current;

	uint8_t field_0x0[0x70];

	// BW1WCI 005f68a0 BW1MCI119 0139c630
	PetitNavire(long type);
	// BW1WCI 005f6cc0 BW1MCI119 0139c460
	~PetitNavire();
};
static_assert(sizeof(PetitNavire) == 0x70, "Data type is of wrong size");

class AndyEye
{
public:
	// BW1WCI 00d97f54 BW1MCI119 null
	static AndyEye* Current;

	uint8_t field_0x0[0x14];
	bool    Zoom;
	uint8_t field_0x15[0x3];

	// BW1WCI 005f6f30 BW1MCI119 0139bf10
	AndyEye();
	// BW1WCI 005f6fd0 BW1MCI119 0139be90
	void Release();
};
static_assert(sizeof(AndyEye) == 0x18, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_INTRO_INCLUDED_H */

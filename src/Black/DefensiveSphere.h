#ifndef BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DefensiveShield.h" /* For struct DefensiveShield */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class DefensiveSphere : public DefensiveShield
{
public:
	// Override methods

	// BW1W120 006d0d00 BW1M100 10417570 DefensiveSphere::_dt(void)
	virtual ~DefensiveSphere();
	// BW1W120 006d0cf0 BW1M100 10417650 DefensiveSphere::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00699cd0 BW1M100 104179f0 DefensiveSphere::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006d06b0 BW1M100 1047f3d0 DefensiveSphere::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006d0ce0 BW1M100 10417610 DefensiveSphere::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H */

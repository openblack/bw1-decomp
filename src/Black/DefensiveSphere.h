#ifndef BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DefensiveShield.h" /* For struct DefensiveShield */
#include "TSphere.h"         /* For class TSphere */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class DefensiveSphere : public DefensiveShield
{
public:
	TSphere Sphere;

	// Override methods

	// BW1W120 006d0d00 BW1M119 01420580
	virtual ~DefensiveSphere();
	// BW1W120 006d0cf0 BW1M119 01420660
	virtual char* GetDebugText();
	// BW1W120 00699cd0 BW1M119 01420a00
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006d06b0 BW1M119 01487a50
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006d0ce0 BW1M119 01420620
	virtual uint32_t GetSaveType();
	// BW1W120 006d0d50 BW1M119 0148ec10
	virtual void FindIntersect(const LHPoint& from, const LHPoint& to, float radius, LHPoint* intersect);
	// BW1W120 006d0d80 BW1M119 0148eba0
	virtual void DeflectOffShield(const LHPoint& pos, LHPoint* velocity);
	// BW1W120 006d0dc0 BW1M119 0148ea60
	virtual bool HasCrossedIntoShield(const LHPoint& from, const LHPoint& to, float radius);
	// BW1W120 006d0da0 BW1M119 0148eb30
	virtual bool IsPointInShield(const LHPoint& pos, float radius);

	// BW1W120 006d0cb0 BW1M119 0148ed30
	DefensiveSphere();
	// BW1W120 006d0d20 BW1M119 0148ec90
	DefensiveSphere(PSysManager* manager);
};
static_assert(sizeof(DefensiveSphere) == 0x30, "Data type is of wrong size");

#endif /* BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H */

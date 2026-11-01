#ifndef BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class LandscapeVortex;
class Object;

class VortexObjectInfo : public PSysBase
{
public:
	GameThing*       Thing;          /* 0x14 */
	bool             field_0x18;     /* 0x18 */
	LHPoint          Velocity;       /* 0x1c */
	LHMatrix         Matrix;         /* 0x28 */
	bool             Indestructible; /* 0x58 */
	LandscapeVortex* Vortex;         /* 0x5c */

	// Override methods

	// BW1W120 0055d820 BW1M119 013babf0
	virtual char* GetDebugText() { return PSYS_DEBUG_TEXT; }
	// BW1W120 00600bf0 BW1M119 013bac40
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00600ad0 BW1M119 013baf40
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055d810 BW1M119 013babb0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_VORTEX_OBJECT_INFO; }

	// BW1W120 0055d7f0 BW1M119 inlined
	VortexObjectInfo() {}
	// BW1W120 inlined BW1M119 inlined
	VortexObjectInfo(Object* thing, bool param_2, const LHPoint& velocity, const LHMatrix& matrix, bool indestructible,
	                 LandscapeVortex* vortex)
		: Thing(thing), field_0x18(param_2), Velocity(velocity), Matrix(matrix), Indestructible(indestructible),
		  Vortex(vortex)
	{
	}
};

#endif /* BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H */

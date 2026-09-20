#ifndef BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class LHOSFile;
struct MapCoords;
class Object;

class AnimatedStatic : public Feature
{
public:
	uint8_t field_0x7c[0x1c];

	// Override methods

	// BW1W120 004221a0 BW1M100 100a5e20 AnimatedStatic::_dt(void)
	virtual ~AnimatedStatic();
	// BW1W120 004225a0 BW1M100 100a6cb0 AnimatedStatic::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00422300 BW1M100 100a6f10 AnimatedStatic::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00422650 BW1M100 100a6a10 AnimatedStatic::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H */

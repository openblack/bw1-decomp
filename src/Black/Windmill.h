#ifndef BW1_DECOMP_WINDMILL_INCLUDED_H
#define BW1_DECOMP_WINDMILL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class GAbodeInfo;
class GameThing;
struct MapCoords;
class Object;
class Town;

class Windmill : public Abode
{
public:
	// Override methods

	// BW1W120 00405920 BW1M119 010cf950
	virtual ~Windmill();
	// BW1W120 00405910 BW1M119 010cfa20
	virtual char* GetDebugText();
	// BW1W120 00405900 BW1M119 010cf9e0
	virtual uint32_t GetSaveType();
	// BW1W120 00516320 BW1M119 010cf6c0
	virtual void Draw();
	// BW1W120 00405950 BW1M119 013436d0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);

	// Static methods

	// BW1W120 00405890 BW1M119 013706e0
	static Windmill* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                        float food, int wood);

	// Non-virtual methods

	// BW1W120 00405980 BW1M119 013b5080
	static void Open();
	// BW1W120 004059d0 BW1M119 0156e020
	static void Close();
	// BW1W120 004059f0 BW1M119 0107fdf0
	void PreDraw();
};

#endif /* BW1_DECOMP_WINDMILL_INCLUDED_H */

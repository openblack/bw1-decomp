#ifndef BW1_DECOMP_HANOI_BLOCK_INCLUDED_H
#define BW1_DECOMP_HANOI_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;

class HanoiBlock : public MobileObject
{
public:
	// Override methods

	// BW1W120 00561850 BW1M119 01127e20
	virtual ~HanoiBlock();
	// BW1W120 00561840 BW1M119 01128020
	virtual char* GetDebugText();
	// BW1W120 006db960 BW1M119 0112d130
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006db9f0 BW1M119 0112d020
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561830 BW1M119 01127fe0
	virtual uint32_t GetSaveType();
	// BW1W120 006de440 BW1M119 01128060
	virtual bool32_t IsCannotBePickedUp() const;
	// BW1W120 006de3f0 BW1M119 01128130
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00561800 BW1M119 01127f00
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005617f0 BW1M119 01127eb0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00561820 BW1M119 01127f90
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_HANOI_BLOCK_INCLUDED_H */

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

	// BW1W120 00561850 BW1M100 1011ebc0 HanoiBlock::_dt(void)
	virtual ~HanoiBlock();
	// BW1W120 00561840 BW1M100 1011edc0 HanoiBlock::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 006db960 BW1M100 10123fa0 HanoiBlock::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006db9f0 BW1M100 10123e90 HanoiBlock::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561830 BW1M100 1011ed80 HanoiBlock::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 006de440 BW1M100 1011ee00 HanoiBlock::IsCannotBePickedUp( const(void))
	virtual bool IsCannotBePickedUp();
	// BW1W120 006de3f0 BW1M100 1011eed0 HanoiBlock::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00561800 BW1M100 1011eca0 HanoiBlock::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005617f0 BW1M100 1011ec50 HanoiBlock::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 00561820 BW1M100 1011ed30 HanoiBlock::GetInHandImmersionTexture(void)
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_HANOI_BLOCK_INCLUDED_H */

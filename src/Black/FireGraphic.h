#ifndef BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class FireGraphic : public PSysBase
{
public:
	// Override methods

	// BW1W120 00731390 BW1M100 1014b860 FireGraphic::_dt(void)
	virtual ~FireGraphic();
};

class FireGraphic__SpritePos : public PSysBase
{
public:
	// Override methods

	// BW1W120 00731a90 BW1M100 inlined FireGraphic::SpritePos::_dt( (void))
	virtual ~FireGraphic__SpritePos();
	// BW1W120 006cb040 BW1M100 inlined FireGraphic::SpritePos::Save( (GameOSFile &))
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004664e0 BW1M100 inlined FireGraphic::SpritePos::GetSaveType( (void))
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H */

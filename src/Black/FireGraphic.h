#ifndef BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class FireGraphic: public PSysBase
{
public:

    // Override methods

    // win1.41 00731390 mac 1014b860 FireGraphic::_dt(void)
    virtual ~FireGraphic();
};

class FireGraphic__SpritePos: public PSysBase
{
public:

    // Override methods

    // win1.41 00731a90 mac inlined FireGraphic::SpritePos::_dt( (void))
    virtual ~FireGraphic__SpritePos();
    // win1.41 006cb040 mac inlined FireGraphic::SpritePos::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 004664e0 mac inlined FireGraphic::SpritePos::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H */

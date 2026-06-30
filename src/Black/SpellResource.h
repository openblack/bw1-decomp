#ifndef BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H
#define BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct SpellEventInfo;

class SpellResource: public Spell
{
public:

    // Override methods

    // BW1W120 0055cfd0 BW1M100 1051fdd0 SpellResource::_dt(void)
    virtual ~SpellResource();
    // BW1W120 0055cfc0 BW1M100 1051feb0 SpellResource::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007252f0 BW1M100 1051f230 SpellResource::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00725350 BW1M100 1051f150 SpellResource::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055cfb0 BW1M100 1051fe70 SpellResource::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00724c90 BW1M100 1051fc70 SpellResource::HasEnoughChantsAndLifeForRecast(void)
    virtual void HasEnoughChantsAndLifeForRecast();
    // BW1W120 00724d80 BW1M100 1051f9d0 SpellResource::SpellEvent(SpellEventInfo const &)
    virtual void SpellEvent(const SpellEventInfo* param_1);
};

#endif /* BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H */

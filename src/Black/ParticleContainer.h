#ifndef BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;

class GParticleContainer: public GameThingWithPos
{
public:
    GameThingWithPos* thing; /* 0x28 */
    uint32_t field_0x2c;
    uint32_t field_0x30;
    float field_0x34;
    bool field_0x38;
    GParticleContainer* next;

    // Override methods

    // BW1W120 00560f80 BW1M100 1010fd40 GParticleContainer::_dt(void)
    virtual ~GParticleContainer();
    // BW1W120 0063e1d0 BW1M100 10110830 GParticleContainer::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0063e3c0 BW1M100 10000fb0 GParticleContainer::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 00560f70 BW1M100 1010feb0 GParticleContainer::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0063e6d0 BW1M100 1010ff00 GParticleContainer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0063e5d0 BW1M100 101100b0 GParticleContainer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00560f60 BW1M100 1010fe70 GParticleContainer::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0063e3f0 BW1M100 10110510 GParticleContainer::SetScale(float)
    virtual void SetScale(float param_1);
    // BW1W120 00560f40 BW1M100 1010fde0 GParticleContainer::GetText(void)
    virtual const char* GetText();
    // BW1W120 00560f50 BW1M100 1010fe20 GParticleContainer::IsParticleContainer(void)
    virtual uint32_t IsParticleContainer();
};

#endif /* BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H */

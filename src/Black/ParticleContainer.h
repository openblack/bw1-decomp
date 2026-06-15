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

    // win1.41 00560f80 mac 1010fd40 GParticleContainer::_dt(void)
    virtual ~GParticleContainer();
    // win1.41 0063e1d0 mac 10110830 GParticleContainer::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0063e3c0 mac 10000fb0 GParticleContainer::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // win1.41 00560f70 mac 1010feb0 GParticleContainer::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0063e6d0 mac 1010ff00 GParticleContainer::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0063e5d0 mac 101100b0 GParticleContainer::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00560f60 mac 1010fe70 GParticleContainer::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0063e3f0 mac 10110510 GParticleContainer::SetScale(float)
    virtual void SetScale(float param_1);
    // win1.41 00560f40 mac 1010fde0 GParticleContainer::GetText(void)
    virtual const char* GetText();
    // win1.41 00560f50 mac 1010fe20 GParticleContainer::IsParticleContainer(void)
    virtual uint32_t IsParticleContainer();
};

#endif /* BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H */

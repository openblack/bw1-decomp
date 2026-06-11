#ifndef BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Persistent.h" /* For struct Persistent */

// Forward Declares

struct PropertyList;

class ParticleCreator: public Persistent
{
public:

    // Override methods

    // win1.41 006a9400 mac 103dfee0 ParticleCreator::_dt(void)
    virtual ~ParticleCreator();
    // win1.41 006b34c0 mac 10457740 ParticleCreator::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */

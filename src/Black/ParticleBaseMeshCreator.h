#ifndef BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "ParticleCreator.h" /* For struct ParticleCreator */

// Forward Declares

class Persistent;
struct PropertyList;

class ParticleBaseMeshCreator: public ParticleCreator
{
public:

    // Override methods

    // BW1W120 006a8900 BW1M100 1043f270 ParticleBaseMeshCreator::_dt(void)
    virtual ~ParticleBaseMeshCreator();
    // BW1W120 006b37a0 BW1M100 10457110 ParticleBaseMeshCreator::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H */

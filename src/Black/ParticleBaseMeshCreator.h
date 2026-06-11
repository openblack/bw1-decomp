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

    // win1.41 006a8900 mac 1043f270 ParticleBaseMeshCreator::_dt(void)
    virtual ~ParticleBaseMeshCreator();
    // win1.41 006b37a0 mac 10457110 ParticleBaseMeshCreator::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H */

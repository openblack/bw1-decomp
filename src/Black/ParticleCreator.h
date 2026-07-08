#ifndef BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Persistent.h" /* For struct Persistent */

// Forward Declares

struct PropertyList;

class ParticleCreator : public Persistent
{
public:
	// Override methods

	// BW1W120 006a9400 BW1M100 103dfee0 ParticleCreator::_dt(void)
	virtual ~ParticleCreator();
	// BW1W120 006b34c0 BW1M100 10457740 ParticleCreator::DefineProperties(PropertyList *)
	virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */

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

	// BW1W120 006a9400 BW1M119 013e7f60
	virtual ~ParticleCreator();
	// BW1W120 006b34c0 BW1M119 01460880
	virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */

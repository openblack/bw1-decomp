#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class RenderParticle : public PSysBase
{
public:
	uint32_t field_0x14;

	// Override methods

	// BW1W120 0055ef70 BW1M119 0130d7e0
	virtual ~RenderParticle();
	// BW1W120 0055ef60 BW1M119 0142c8b0
	virtual char* GetDebugText();
	// BW1W120 00694fb0 BW1M119 01425b80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cbad0 BW1M119 0148c8e0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ef50 BW1M119 0142c870
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */

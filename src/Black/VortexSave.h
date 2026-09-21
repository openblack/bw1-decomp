#ifndef BW1_DECOMP_VORTEX_SAVE_INCLUDED_H
#define BW1_DECOMP_VORTEX_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class VortexSave : public GameThing
{
public:
	// Override methods

	// BW1W120 0076f870 BW1M119 01167650
	virtual ~VortexSave();
	// BW1W120 0076fdc0 BW1M119 01166a80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0076fb40 BW1M119 01166ff0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0076f860 BW1M119 01166920
	virtual uint32_t GetSaveType();
	// BW1W120 0076ffe0 BW1M119 01166960
	virtual void ResolveLoad();
};

#endif /* BW1_DECOMP_VORTEX_SAVE_INCLUDED_H */

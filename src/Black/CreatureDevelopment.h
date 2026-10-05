#ifndef BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h>           /* For DEVELOPMENT_PHASE_LAST */
#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureDevelopmentDurationEntry : public GBaseInfo
{
public:
	uint32_t field_0x10[0xe];

	// Override methods

	// BW1W120 004db5c0 BW1M119 012601f0
	virtual ~CreatureDevelopmentDurationEntry() {}
	// BW1W120 004db560 BW1M119 01260700
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c843b0
	static CreatureDevelopmentDurationEntry Infos[17];

	// Static methods

	// BW1W120 inlined BW1M119 01260030
	static CreatureDevelopmentDurationEntry* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in CreatureMentalDesire.h.
	// Out of line: LoadBinary at 0042e0c0, Load at 0042e080.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("CreatureMentalDesire.h", 189)
};

class CreatureDevelopmentPhaseEntry : public GBaseInfo
{
public:
	uint32_t field_0x10[0x1d];

	// Override methods

	// BW1W120 004db4f0 BW1M119 01260390
	virtual ~CreatureDevelopmentPhaseEntry() {}
	// BW1W120 004db480 BW1M119 01260640
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c84878
	static CreatureDevelopmentPhaseEntry Infos[DEVELOPMENT_PHASE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01260280
	static CreatureDevelopmentPhaseEntry* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in CreatureMentalDesire.h.
	// Out of line: LoadBinary at 0042e030, Load at 0042dff0.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("CreatureMentalDesire.h", 181)
};

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H */

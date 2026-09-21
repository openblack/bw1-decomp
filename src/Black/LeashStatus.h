#ifndef BW1_DECOMP_LEASH_STATUS_INCLUDED_H
#define BW1_DECOMP_LEASH_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;

class GLeashStatus : public GameThing
{
public:
	uint32_t          field_0x14;
	uint32_t          field_0x18;
	uint32_t          field_0x1c;
	uint32_t          field_0x20;
	uint32_t          field_0x24;
	uint32_t          field_0x28;
	uint32_t          field_0x2c;
	uint8_t           player_number; /* 0x30 */
	uint32_t          field_0x34;
	GInterfaceStatus* InterfaceStatus;

	// Override methods

	// BW1W120 005db940 BW1M119 01382a70
	virtual ~GLeashStatus();
	// BW1W120 005e7630 BW1M119 01382c20
	virtual GPlayer* GetPlayer();
	// BW1W120 005e7430 BW1M119 01382c80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005e7230 BW1M119 01382f70
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005db930 BW1M119 01382b00
	virtual uint32_t GetSaveType();
	// BW1W120 005e71d0 BW1M119 01383280
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 005e7650 BW1M119 01382be0
	virtual void ResolveLoad();
};

#endif /* BW1_DECOMP_LEASH_STATUS_INCLUDED_H */

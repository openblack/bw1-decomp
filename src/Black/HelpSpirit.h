#ifndef BW1_DECOMP_HELP_SPIRIT_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HELP_SPIRIT_TYPE */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GInterfaceStatus;
class LHOSFile;
struct MapCoords;

class HelpSpirit : public Object
{
public:
	uint32_t         field_0x54;
	HELP_SPIRIT_TYPE type;
	uint8_t          field_0x5c[0x8];

	// Override methods

	// BW1W120 005c4b10 BW1M119 01353a90
	virtual ~HelpSpirit();
	// BW1W120 005c4b00 BW1M119 01353bc0
	virtual void Create3DObject();
	// BW1W120 005c5270 BW1M119 01085730
	virtual uint32_t Process();
	// BW1W120 005c4b90 BW1M119 01354c80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 005c4af0 BW1M119 01353b70
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005c4ae0 BW1M119 01353b20
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Constructors

	// BW1W120 005c4aa0 BW1M119 01354e40
	HelpSpirit(const MapCoords& coords, HELP_SPIRIT_TYPE type);
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INCLUDED_H */

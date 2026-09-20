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

	// BW1W120 005c4b10 BW1M100 1034b510 HelpSpirit::_dt(void)
	virtual ~HelpSpirit();
	// BW1W120 005c4b00 BW1M100 1034b640 HelpSpirit::Create3DObject(void)
	virtual void Create3DObject();
	// BW1W120 005c5270 BW1M100 10083340 HelpSpirit::Process(void)
	virtual uint32_t Process();
	// BW1W120 005c4b90 BW1M100 1034c540 HelpSpirit::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 005c4af0 BW1M100 1034b5f0 HelpSpirit::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005c4ae0 BW1M100 1034b5a0 HelpSpirit::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

	// Constructors

	// BW1W120 005c4aa0 BW1M100 1034c700 HelpSpirit::HelpSpirit(MapCoords const &, HELP_SPIRIT_TYPE)
	HelpSpirit(const MapCoords* coords, HELP_SPIRIT_TYPE type);
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INCLUDED_H */

#ifndef BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H
#define BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class CitadelEntrance : public Object
{
public:
	// Override methods

	// BW1W120 00468e80 BW1M119 011c3750
	virtual ~CitadelEntrance();
	// BW1W120 00468e70 BW1M119 011c3870
	virtual char* GetDebugText();
	// BW1W120 00468e60 BW1M119 011c3830
	virtual uint32_t GetSaveType();
	// BW1W120 00469380 BW1M119 011c38b0
	virtual void ResolveLoad();
	// BW1W120 00468f90 BW1M119 011c3e90
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00468fa0 BW1M119 011c3e20
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00468f50 BW1M119 011c3ee0
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00468ef0 BW1M119 011c3f90
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00468e50 BW1M119 011c37e0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H */

#ifndef BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class VortexObjectInfo : public PSysBase
{
public:
	// Override methods

	// BW1W120 0055d830 BW1M100 103b2be0 VortexObjectInfo::_dt(void)
	virtual ~VortexObjectInfo();
	// BW1W120 0055d820 BW1M100 103b2cb0 VortexObjectInfo::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00600bf0 BW1M100 103b2d00 VortexObjectInfo::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00600ad0 BW1M100 103b3000 VortexObjectInfo::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d810 BW1M100 103b2c70 VortexObjectInfo::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H */

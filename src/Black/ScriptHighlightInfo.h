#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GScriptHighlightInfo : public GSingleMapFixedInfo
{
public:
	MESH_LIST     ActiveMesh; /* 0x104 */
	PARTICLE_TYPE ParticleType;
	PARTICLE_TYPE ActiveParticleType;
#ifdef VERSION_BW1WCI
	HELP_TEXT OverwriteTapToolTip;
#endif

	// Override methods

	// BW1W120 00709640 BW1M119 01503690
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = SCRIPT_HIGHLIGHT_INFO_LAST;
		return GetInfo();
	}

	// Static data

	// BW1W120 00d96390
	static GScriptHighlightInfo Infos[SCRIPT_HIGHLIGHT_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01052ea0
	static GScriptHighlightInfo* GetInfo() { return Infos; }
#ifdef VERSION_BW1WCI
	// BW1WCI inlined BW1MCI119 01523290
	HIGHLIGHT_INFO GetType() const { return (HIGHLIGHT_INFO)(this - Infos); }
#endif

	// Out of line: LoadBinary at 0042f8f0, Load at 0042f850.
#ifdef VERSION_BW1WCI
	INFO_DATA_BLOCK(ActiveMesh, OverwriteTapToolTip)
#else
	INFO_DATA_BLOCK(ActiveMesh, ActiveParticleType)
#endif
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "ScriptHighlight.h", 17)
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H */

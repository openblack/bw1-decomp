#ifndef BW1_DECOMP_SR_TEXTURED_INCLUDED_H
#define BW1_DECOMP_SR_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct SubCollideDataRender;

// A vertex for the software rasterisers, in pixels and texels.
struct SRVertex
{
	int X; /* 0x0 */
	int Y;
	int U;
	int V; /* 0xc */
};
static_assert(sizeof(SRVertex) == 0x10, "Data type is of wrong size");

// A software rasteriser for textured triangles.
struct SRTextured
{
	SubCollideDataRender* Target; /* 0x0 */

	// Static methods

	// BW1W120 008815d0 BW1M119 010b8520 (LHCombined Release)
	static SRTextured* Create();

	// Non-virtual methods

	// BW1W120 008815f0 BW1M119 010b8490 (LHCombined Release)
	void Release();
	// BW1W120 008816f0 BW1M119 010b81f0 (LHCombined Release)
	void StartRendering(SubCollideDataRender* target);
	// BW1W120 00881de0 BW1M119 010b71c0 (LHCombined Release)
	void AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c);
};

#endif /* BW1_DECOMP_SR_TEXTURED_INCLUDED_H */

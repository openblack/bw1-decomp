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

	// BW1W120 00881de0 BW1M119 010b71c0 (LHCombined Release)
	void AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c);
};

#endif /* BW1_DECOMP_SR_TEXTURED_INCLUDED_H */

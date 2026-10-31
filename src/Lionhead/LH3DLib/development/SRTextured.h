#ifndef BW1_DECOMP_SR_TEXTURED_INCLUDED_H
#define BW1_DECOMP_SR_TEXTURED_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

// Forward Declares

class LH3DObject;
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

// A software rasteriser for single-colour triangles.
struct SRMono
{
	enum Type
	{
		TYPE_SOLID = 0,
	};

	SubCollideDataRender* Target;
	int                   Top;
	int                   Bottom;
	int                   NumLines;
	int*                  Left;
	int*                  Right;

	// BW1W120 00881570 BW1M119 010b8620 (LHCombined Release)
	static SRMono* Create(Type type);

	// BW1W120 00881590 BW1M119 010b8590 (LHCombined Release)
	void Release();
	// BW1W120 00881690 BW1M119 010b82c0 (LHCombined Release)
	void StartRendering(SubCollideDataRender* target);
	// BW1W120 008817b0 BW1M119 010b7f40 (LHCombined Release)
	bool32_t AddEdge(SRVertex* a, SRVertex* b);
	// BW1W120 00881880 BW1M119 010b7c40 (LHCombined Release)
	void AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c);
	// BW1W120 008819d0 BW1M119 010b7b30 (LHCombined Release)
	void RenderTriangle();
};
static_assert(sizeof(SRMono) == 0x18, "Data type is of wrong size");

// One end of a textured span: the pixel column and the 16.16 texture coordinates.
struct SRTexturedEdge
{
	int X;
	int U;
	int V;
};
static_assert(sizeof(SRTexturedEdge) == 0xc, "Data type is of wrong size");

// A software rasteriser for textured triangles.
struct SRTextured
{
	SubCollideDataRender* Target; /* 0x0 */
	int                   Top;
	int                   Bottom;
	int                   NumLines;
	SRTexturedEdge*       Left;
	SRTexturedEdge*       Right;

	// BW1W120 008815d0 BW1M119 010b8520 (LHCombined Release)
	static SRTextured* Create();

	// BW1W120 008815f0 BW1M119 010b8490 (LHCombined Release)
	void Release();
	// BW1W120 008816f0 BW1M119 010b81f0 (LHCombined Release)
	void StartRendering(SubCollideDataRender* target);
	// BW1W120 00881a60 BW1M119 010b77d0 (LHCombined Release)
	bool32_t AddEdge(SRVertex* a, SRVertex* b);
	// BW1W120 00881de0 BW1M119 010b71c0 (LHCombined Release)
	void AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c);
	// BW1W120 00882080 BW1M119 010b6c70 (LHCombined Release)
	void RenderTriangle();
};
static_assert(sizeof(SRTextured) == 0x18, "Data type is of wrong size");

// One end of a shaded span: the pixel column and the 16.16 shade.
struct SRFlatShadeEdge
{
	int X;
	int Shade;
};
static_assert(sizeof(SRFlatShadeEdge) == 0x8, "Data type is of wrong size");

// A software rasteriser for shaded triangles, keeping the darkest shade of each pixel.
struct SRFlatShade
{
	SubCollideDataRender* Target;
	int                   Top;
	int                   Bottom;
	int                   NumLines;
	SRFlatShadeEdge*      Left;
	SRFlatShadeEdge*      Right;

	// BW1W120 00881630 BW1M119 010b8420 (LHCombined Release)
	static SRFlatShade* Create();

	// BW1W120 00881650 BW1M119 010b8390 (LHCombined Release)
	void Release();
	// BW1W120 00881750 BW1M119 010b8120 (LHCombined Release)
	void StartRendering(SubCollideDataRender* target);
	// BW1W120 00881c70 BW1M119 010b74d0 (LHCombined Release)
	bool32_t AddEdge(SRVertex* a, SRVertex* b);
	// BW1W120 00881f30 BW1M119 010b6eb0 (LHCombined Release)
	void AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c);
	// BW1W120 008821b0 BW1M119 010b6b20 (LHCombined Release)
	void RenderTriangle();
};
static_assert(sizeof(SRFlatShade) == 0x18, "Data type is of wrong size");

// BW1W120 00881090 BW1M119 010b86a0 (LHCombined Release)
void DrawCollide(SubCollideDataRender* collide, LH3DObject* object);
// BW1W120 008822a0 BW1M119 010b65f0 (LHCombined Release)
void DrawMaskForBuildingPos(SubCollideDataRender* collide, LH3DObject* object);

#endif /* BW1_DECOMP_SR_TEXTURED_INCLUDED_H */
